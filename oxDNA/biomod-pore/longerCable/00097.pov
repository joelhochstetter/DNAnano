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
	<24.032465, 34.651527, 34.992691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310080, 34.939487, 34.995697>,  <24.476648, 35.112263, 34.997501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310080, 34.939487, 34.995697>,  <24.032465, 34.651527, 34.992691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310080, 34.939487, 34.995697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448894, -0.424563, -0.786283,
		-0.562856, 0.549082, -0.617821,
		0.694037, 0.719900, 0.007512,
		24.518291, 35.155457, 34.997952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937000, 35.087612, 34.336636>,  <24.032465, 34.651527, 34.992691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937000, 35.087612, 34.336636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301561, 35.059200, 34.498772>,  <24.520298, 35.042152, 34.596054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301561, 35.059200, 34.498772>,  <23.937000, 35.087612, 34.336636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301561, 35.059200, 34.498772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345023, -0.404958, -0.846740,
		0.224292, 0.911572, -0.344572,
		0.911401, -0.071032, 0.405342,
		24.574982, 35.037891, 34.620373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478029, 35.600975, 34.172440>,  <23.937000, 35.087612, 34.336636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478029, 35.600975, 34.172440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599234, 35.222019, 34.213692>,  <24.671957, 34.994644, 34.238441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599234, 35.222019, 34.213692>,  <24.478029, 35.600975, 34.172440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599234, 35.222019, 34.213692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153390, -0.058320, -0.986443,
		0.940561, 0.314724, 0.127648,
		0.303013, -0.947390, 0.103129,
		24.690138, 34.937801, 34.244629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235672, 35.518185, 34.106915>,  <24.478029, 35.600975, 34.172440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235672, 35.518185, 34.106915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552834, 35.339176, 33.941494>,  <25.743130, 35.231770, 33.842239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552834, 35.339176, 33.941494>,  <25.235672, 35.518185, 34.106915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552834, 35.339176, 33.941494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608087, -0.537467, -0.584260,
		0.039199, 0.714738, -0.698294,
		0.792902, -0.447525, -0.413554,
		25.790705, 35.204918, 33.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057619, 35.530132, 33.481682>,  <25.235672, 35.518185, 34.106915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057619, 35.530132, 33.481682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320305, 35.232613, 33.531475>,  <25.477917, 35.054100, 33.561352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320305, 35.232613, 33.531475>,  <25.057619, 35.530132, 33.481682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320305, 35.232613, 33.531475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492411, -0.547935, -0.676239,
		0.571190, 0.382800, -0.726089,
		0.656714, -0.743795, 0.124480,
		25.517319, 35.009476, 33.568821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933580, 35.127106, 33.028103>,  <25.057619, 35.530132, 33.481682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933580, 35.127106, 33.028103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220098, 34.874660, 33.147179>,  <25.392010, 34.723194, 33.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220098, 34.874660, 33.147179>,  <24.933580, 35.127106, 33.028103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220098, 34.874660, 33.147179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198950, -0.593610, -0.779773,
		0.668835, 0.499322, -0.550760,
		0.716295, -0.631114, 0.297687,
		25.434986, 34.685326, 33.236485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070032, 34.657833, 33.597000>,  <24.933580, 35.127106, 33.028103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070032, 34.657833, 33.597000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424109, 34.485878, 33.668144>,  <25.636555, 34.382706, 33.710831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424109, 34.485878, 33.668144>,  <25.070032, 34.657833, 33.597000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424109, 34.485878, 33.668144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339047, -0.334303, 0.879368,
		-0.318547, -0.838723, -0.441670,
		0.885197, -0.429867, 0.177875,
		25.689665, 34.356911, 33.721504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972216, 34.060429, 33.873749>,  <25.070032, 34.657833, 33.597000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972216, 34.060429, 33.873749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339254, 34.182598, 33.975517>,  <25.559477, 34.255901, 34.036579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339254, 34.182598, 33.975517>,  <24.972216, 34.060429, 33.873749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339254, 34.182598, 33.975517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186562, -0.234289, 0.954098,
		0.351017, -0.922942, -0.158001,
		0.917596, 0.305428, 0.254425,
		25.614532, 34.274227, 34.051846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209625, 33.507645, 34.272121>,  <24.972216, 34.060429, 33.873749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209625, 33.507645, 34.272121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435991, 33.825333, 34.360622>,  <25.571810, 34.015945, 34.413723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435991, 33.825333, 34.360622>,  <25.209625, 33.507645, 34.272121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435991, 33.825333, 34.360622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002496, -0.270014, 0.962853,
		0.824460, -0.544340, -0.154787,
		0.565914, 0.794221, 0.221257,
		25.605766, 34.063599, 34.426998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717354, 33.253681, 34.496471>,  <25.209625, 33.507645, 34.272121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717354, 33.253681, 34.496471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680925, 33.621101, 34.650341>,  <25.659067, 33.841553, 34.742664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680925, 33.621101, 34.650341>,  <25.717354, 33.253681, 34.496471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680925, 33.621101, 34.650341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007846, -0.386928, 0.922077,
		0.995813, 0.080957, 0.042445,
		-0.091072, 0.918549, 0.384673,
		25.653605, 33.896667, 34.765743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149178, 33.220215, 34.981731>,  <25.717354, 33.253681, 34.496471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149178, 33.220215, 34.981731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934982, 33.542263, 35.083740>,  <25.806465, 33.735493, 35.144943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934982, 33.542263, 35.083740>,  <26.149178, 33.220215, 34.981731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934982, 33.542263, 35.083740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043320, -0.327747, 0.943772,
		0.843430, 0.494333, 0.210383,
		-0.535490, 0.805119, 0.255018,
		25.774336, 33.783798, 35.160244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460699, 33.538910, 35.608875>,  <26.149178, 33.220215, 34.981731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460699, 33.538910, 35.608875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068487, 33.513882, 35.534424>,  <25.833160, 33.498863, 35.489754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068487, 33.513882, 35.534424>,  <26.460699, 33.538910, 35.608875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068487, 33.513882, 35.534424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141474, -0.432233, 0.890595,
		-0.136175, 0.899589, 0.414966,
		-0.980531, -0.062570, -0.186127,
		25.774328, 33.495110, 35.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018381, 33.670311, 36.188019>,  <26.460699, 33.538910, 35.608875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018381, 33.670311, 36.188019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821695, 33.430878, 35.935062>,  <25.703684, 33.287216, 35.783291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821695, 33.430878, 35.935062>,  <26.018381, 33.670311, 36.188019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821695, 33.430878, 35.935062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173293, -0.644451, 0.744750,
		-0.853340, 0.475791, 0.213153,
		-0.491712, -0.598587, -0.632387,
		25.674181, 33.251301, 35.745346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613569, 33.198788, 36.354748>,  <26.018381, 33.670311, 36.188019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613569, 33.198788, 36.354748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560835, 33.588909, 36.425621>,  <25.529194, 33.822983, 36.468147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560835, 33.588909, 36.425621>,  <25.613569, 33.198788, 36.354748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560835, 33.588909, 36.425621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039497, 0.173435, -0.984053,
		-0.990484, -0.136731, 0.015657,
		-0.131835, 0.975308, 0.177185,
		25.521284, 33.881500, 36.478775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114380, 33.499485, 35.965416>,  <25.613569, 33.198788, 36.354748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114380, 33.499485, 35.965416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355066, 33.809048, 36.044422>,  <25.499477, 33.994785, 36.091827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355066, 33.809048, 36.044422>,  <25.114380, 33.499485, 35.965416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355066, 33.809048, 36.044422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044015, 0.214794, -0.975667,
		-0.797498, 0.595767, 0.095181,
		0.601714, 0.773903, 0.197520,
		25.535580, 34.041218, 36.103680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806837, 34.108604, 35.724121>,  <25.114380, 33.499485, 35.965416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806837, 34.108604, 35.724121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205889, 34.082088, 35.716774>,  <25.445320, 34.066177, 35.712368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205889, 34.082088, 35.716774>,  <24.806837, 34.108604, 35.724121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205889, 34.082088, 35.716774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003975, 0.322067, -0.946709,
		0.068675, 0.944393, 0.321567,
		0.997631, -0.066293, -0.018364,
		25.505178, 34.062199, 35.711266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076382, 34.838627, 35.458553>,  <24.806837, 34.108604, 35.724121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076382, 34.838627, 35.458553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290434, 34.508942, 35.384457>,  <25.418865, 34.311131, 35.339996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290434, 34.508942, 35.384457>,  <25.076382, 34.838627, 35.458553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290434, 34.508942, 35.384457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146723, 0.306635, -0.940451,
		0.831930, 0.476084, 0.285020,
		0.535130, -0.824208, -0.185246,
		25.450974, 34.261681, 35.328884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579586, 35.101379, 35.068584>,  <25.076382, 34.838627, 35.458553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579586, 35.101379, 35.068584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598803, 34.715500, 34.965012>,  <25.610332, 34.483971, 34.902870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598803, 34.715500, 34.965012>,  <25.579586, 35.101379, 35.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598803, 34.715500, 34.965012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351685, 0.258965, -0.899586,
		0.934885, -0.047845, 0.351712,
		0.048040, -0.964701, -0.258929,
		25.613214, 34.426090, 34.887333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275059, 35.130203, 34.773098>,  <25.579586, 35.101379, 35.068584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275059, 35.130203, 34.773098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102015, 34.785156, 34.668221>,  <25.998188, 34.578129, 34.605293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102015, 34.785156, 34.668221>,  <26.275059, 35.130203, 34.773098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102015, 34.785156, 34.668221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247977, 0.165754, -0.954480,
		0.866807, -0.477938, 0.142201,
		-0.432612, -0.862613, -0.262195,
		25.972231, 34.526371, 34.589561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810005, 34.669289, 34.401222>,  <26.275059, 35.130203, 34.773098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810005, 34.669289, 34.401222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449249, 34.542564, 34.283764>,  <26.232796, 34.466530, 34.213287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449249, 34.542564, 34.283764>,  <26.810005, 34.669289, 34.401222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449249, 34.542564, 34.283764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268248, 0.122078, -0.955584,
		0.338585, -0.940601, -0.025117,
		-0.901889, -0.316809, -0.293648,
		26.178682, 34.447521, 34.195671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900740, 34.055706, 34.012379>,  <26.810005, 34.669289, 34.401222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900740, 34.055706, 34.012379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592680, 34.295662, 33.925663>,  <26.407845, 34.439636, 33.873634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592680, 34.295662, 33.925663>,  <26.900740, 34.055706, 34.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592680, 34.295662, 33.925663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272572, 0.002237, -0.962133,
		-0.576692, -0.800077, -0.165237,
		-0.770150, 0.599893, -0.216789,
		26.361635, 34.475632, 33.860626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621355, 33.656509, 33.449707>,  <26.900740, 34.055706, 34.012379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621355, 33.656509, 33.449707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525703, 34.044903, 33.449146>,  <26.468313, 34.277939, 33.448811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525703, 34.044903, 33.449146>,  <26.621355, 33.656509, 33.449707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525703, 34.044903, 33.449146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250333, 0.060259, -0.966283,
		-0.938164, -0.231415, -0.257479,
		-0.239127, 0.970987, -0.001398,
		26.453964, 34.336201, 33.448727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375311, 33.858162, 32.811207>,  <26.621355, 33.656509, 33.449707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375311, 33.858162, 32.811207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562756, 34.174294, 32.969086>,  <26.675222, 34.363972, 33.063812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562756, 34.174294, 32.969086>,  <26.375311, 33.858162, 32.811207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562756, 34.174294, 32.969086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514994, 0.118613, -0.848948,
		-0.717764, 0.601091, -0.351432,
		0.468610, 0.790330, 0.394694,
		26.703339, 34.411392, 33.087494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077593, 34.070923, 32.705849>,  <26.375311, 33.858162, 32.811207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077593, 34.070923, 32.705849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131687, 33.738358, 32.921425>,  <27.164145, 33.538818, 33.050770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131687, 33.738358, 32.921425>,  <27.077593, 34.070923, 32.705849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131687, 33.738358, 32.921425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957149, 0.250207, 0.145812,
		-0.256078, 0.496129, 0.829627,
		0.135237, -0.831416, 0.538942,
		27.172258, 33.488934, 33.083107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383884, 34.246178, 33.338238>,  <27.077593, 34.070923, 32.705849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383884, 34.246178, 33.338238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465006, 33.862904, 33.257488>,  <27.513678, 33.632938, 33.209038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465006, 33.862904, 33.257488>,  <27.383884, 34.246178, 33.338238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465006, 33.862904, 33.257488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977758, 0.209408, -0.011692,
		0.053477, -0.195009, 0.979342,
		0.202802, -0.958186, -0.201870,
		27.525846, 33.575447, 33.196926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904457, 34.043232, 33.800179>,  <27.383884, 34.246178, 33.338238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904457, 34.043232, 33.800179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918533, 33.867687, 33.441032>,  <27.926979, 33.762360, 33.225544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918533, 33.867687, 33.441032>,  <27.904457, 34.043232, 33.800179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918533, 33.867687, 33.441032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975848, 0.208908, -0.063864,
		0.215599, -0.873931, 0.435618,
		0.035191, -0.438866, -0.897863,
		27.929090, 33.736027, 33.171673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538074, 34.493153, 33.751343>,  <27.904457, 34.043232, 33.800179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538074, 34.493153, 33.751343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331648, 34.348740, 34.062042>,  <28.207792, 34.262093, 34.248463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331648, 34.348740, 34.062042>,  <28.538074, 34.493153, 33.751343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331648, 34.348740, 34.062042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660948, 0.408952, 0.629210,
		-0.544815, 0.838103, 0.027575,
		-0.516066, -0.361029, 0.776746,
		28.176828, 34.240433, 34.295067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550720, 35.052986, 34.335461>,  <28.538074, 34.493153, 33.751343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550720, 35.052986, 34.335461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517511, 34.676113, 34.465317>,  <28.497587, 34.449989, 34.543232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517511, 34.676113, 34.465317>,  <28.550720, 35.052986, 34.335461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517511, 34.676113, 34.465317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819558, 0.120780, 0.560122,
		-0.566950, 0.312563, 0.762150,
		-0.083021, -0.942187, 0.324640,
		28.492605, 34.393456, 34.562710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458185, 35.051613, 35.092545>,  <28.550720, 35.052986, 34.335461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458185, 35.051613, 35.092545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665590, 34.746059, 34.938862>,  <28.790033, 34.562725, 34.846653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665590, 34.746059, 34.938862>,  <28.458185, 35.051613, 35.092545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665590, 34.746059, 34.938862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704987, 0.127644, 0.697639,
		-0.483876, -0.632599, 0.604717,
		0.518514, -0.763888, -0.384210,
		28.821144, 34.516891, 34.823597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459734, 34.609390, 35.533543>,  <28.458185, 35.051613, 35.092545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459734, 34.609390, 35.533543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796814, 34.508133, 35.343479>,  <28.999062, 34.447380, 35.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796814, 34.508133, 35.343479>,  <28.459734, 34.609390, 35.533543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796814, 34.508133, 35.343479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520141, 0.154995, 0.839898,
		-0.138965, -0.954933, 0.262284,
		0.842699, -0.253141, -0.475161,
		29.049623, 34.432190, 35.200932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881420, 34.270454, 36.097755>,  <28.459734, 34.609390, 35.533543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881420, 34.270454, 36.097755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122707, 34.341545, 35.786747>,  <29.267481, 34.384201, 35.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122707, 34.341545, 35.786747>,  <28.881420, 34.270454, 36.097755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122707, 34.341545, 35.786747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763627, 0.152690, 0.627344,
		0.230217, -0.972162, -0.043613,
		0.603220, 0.177729, -0.777520,
		29.303673, 34.394863, 35.553490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494909, 33.870811, 36.219009>,  <28.881420, 34.270454, 36.097755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494909, 33.870811, 36.219009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564747, 34.187134, 35.984352>,  <29.606649, 34.376926, 35.843559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564747, 34.187134, 35.984352>,  <29.494909, 33.870811, 36.219009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564747, 34.187134, 35.984352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603861, 0.384597, 0.698167,
		0.777733, -0.476145, -0.410387,
		0.174595, 0.790804, -0.586639,
		29.617125, 34.424374, 35.808361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184353, 33.983627, 36.325474>,  <29.494909, 33.870811, 36.219009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184353, 33.983627, 36.325474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041945, 34.321766, 36.166161>,  <29.956499, 34.524651, 36.070572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041945, 34.321766, 36.166161>,  <30.184353, 33.983627, 36.325474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041945, 34.321766, 36.166161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516701, 0.533213, 0.669854,
		0.778633, 0.032686, -0.626628,
		-0.356021, 0.845350, -0.398288,
		29.935139, 34.575371, 36.046673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797173, 34.327339, 36.168499>,  <30.184353, 33.983627, 36.325474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797173, 34.327339, 36.168499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487928, 34.578831, 36.201958>,  <30.302382, 34.729725, 36.222034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487928, 34.578831, 36.201958>,  <30.797173, 34.327339, 36.168499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487928, 34.578831, 36.201958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467999, 0.476445, 0.744297,
		0.428109, 0.614571, -0.662590,
		-0.773110, 0.628732, 0.083649,
		30.255995, 34.767448, 36.227051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985085, 35.083469, 36.089294>,  <30.797173, 34.327339, 36.168499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985085, 35.083469, 36.089294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674860, 35.039803, 36.337997>,  <30.488726, 35.013603, 36.487221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674860, 35.039803, 36.337997>,  <30.985085, 35.083469, 36.089294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674860, 35.039803, 36.337997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542663, 0.387919, 0.745007,
		-0.322524, 0.915206, -0.241613,
		-0.775561, -0.109168, 0.621761,
		30.442192, 35.007053, 36.524525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773695, 35.731571, 36.302116>,  <30.985085, 35.083469, 36.089294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773695, 35.731571, 36.302116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665375, 35.490860, 36.602657>,  <30.600384, 35.346436, 36.782982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665375, 35.490860, 36.602657>,  <30.773695, 35.731571, 36.302116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665375, 35.490860, 36.602657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627407, 0.481633, 0.611874,
		-0.730088, 0.637100, 0.247132,
		-0.270798, -0.601774, 0.751356,
		30.584135, 35.310329, 36.828064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623814, 36.094948, 37.031540>,  <30.773695, 35.731571, 36.302116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623814, 36.094948, 37.031540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765703, 35.735935, 37.136314>,  <30.850838, 35.520527, 37.199181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765703, 35.735935, 37.136314>,  <30.623814, 36.094948, 37.031540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765703, 35.735935, 37.136314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598273, 0.433184, 0.674108,
		-0.718498, -0.082415, 0.690629,
		0.354726, -0.897530, 0.261935,
		30.872122, 35.466675, 37.214893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862097, 35.962318, 36.973522>,  <30.623814, 36.094948, 37.031540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862097, 35.962318, 36.973522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890348, 35.687244, 37.262550>,  <29.907299, 35.522202, 37.435966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890348, 35.687244, 37.262550>,  <29.862097, 35.962318, 36.973522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890348, 35.687244, 37.262550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936518, 0.203682, 0.285389,
		-0.343431, -0.696854, -0.629642,
		0.070627, -0.687683, 0.722567,
		29.911537, 35.480938, 37.479321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430336, 35.315681, 36.992294>,  <29.862097, 35.962318, 36.973522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430336, 35.315681, 36.992294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756258, 35.260483, 36.767067>,  <29.951811, 35.227364, 36.631931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756258, 35.260483, 36.767067>,  <29.430336, 35.315681, 36.992294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756258, 35.260483, 36.767067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571824, -0.031396, -0.819775,
		0.095449, 0.989935, -0.104492,
		0.814805, -0.137998, -0.563072,
		30.000700, 35.219082, 36.598145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314892, 35.676472, 36.277382>,  <29.430336, 35.315681, 36.992294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314892, 35.676472, 36.277382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600370, 35.397221, 36.254570>,  <29.771658, 35.229671, 36.240883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600370, 35.397221, 36.254570>,  <29.314892, 35.676472, 36.277382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600370, 35.397221, 36.254570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408817, -0.349055, -0.843226,
		0.568773, 0.625123, -0.534527,
		0.713699, -0.698128, -0.057028,
		29.814480, 35.187782, 36.237461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521206, 35.710621, 35.598587>,  <29.314892, 35.676472, 36.277382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521206, 35.710621, 35.598587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627026, 35.354984, 35.748001>,  <29.690517, 35.141602, 35.837650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627026, 35.354984, 35.748001>,  <29.521206, 35.710621, 35.598587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627026, 35.354984, 35.748001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398759, -0.453522, -0.797063,
		0.878069, 0.061911, -0.474512,
		0.264548, -0.889092, 0.373536,
		29.706390, 35.088257, 35.860062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915751, 35.357147, 35.052944>,  <29.521206, 35.710621, 35.598587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915751, 35.357147, 35.052944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774471, 35.086609, 35.311497>,  <29.689705, 34.924286, 35.466629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774471, 35.086609, 35.311497>,  <29.915751, 35.357147, 35.052944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774471, 35.086609, 35.311497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451529, -0.481883, -0.750939,
		0.819374, -0.557091, -0.135189,
		-0.353196, -0.676342, 0.646385,
		29.668512, 34.883705, 35.505413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221931, 34.766354, 34.904491>,  <29.915751, 35.357147, 35.052944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221931, 34.766354, 34.904491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867973, 34.683006, 35.071125>,  <29.655598, 34.632999, 35.171104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867973, 34.683006, 35.071125>,  <30.221931, 34.766354, 34.904491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867973, 34.683006, 35.071125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260437, -0.520163, -0.813390,
		0.386178, -0.828259, 0.406023,
		-0.884895, -0.208370, 0.416585,
		29.602505, 34.620495, 35.196102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917233, 34.345463, 34.341446>,  <30.221931, 34.766354, 34.904491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917233, 34.345463, 34.341446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632772, 34.366283, 34.621891>,  <29.462097, 34.378777, 34.790157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632772, 34.366283, 34.621891>,  <29.917233, 34.345463, 34.341446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632772, 34.366283, 34.621891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678290, -0.313081, -0.664758,
		0.184902, -0.948299, 0.257954,
		-0.711150, 0.052053, 0.701111,
		29.419428, 34.381901, 34.832226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615532, 33.653828, 34.451546>,  <29.917233, 34.345463, 34.341446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615532, 33.653828, 34.451546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386358, 33.975700, 34.513805>,  <29.248854, 34.168823, 34.551163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386358, 33.975700, 34.513805>,  <29.615532, 33.653828, 34.451546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386358, 33.975700, 34.513805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618551, -0.299929, -0.726249,
		-0.537718, -0.512371, 0.669579,
		-0.572934, 0.804686, 0.155650,
		29.214478, 34.217106, 34.560501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239487, 33.719311, 34.101536>,  <29.615532, 33.653828, 34.451546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239487, 33.719311, 34.101536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327871, 33.664959, 34.487843>,  <30.380901, 33.632347, 34.719627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327871, 33.664959, 34.487843>,  <30.239487, 33.719311, 34.101536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327871, 33.664959, 34.487843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804032, -0.585853, 0.101531,
		0.552005, -0.798945, -0.238698,
		0.220960, -0.135876, 0.965772,
		30.394159, 33.624195, 34.777573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297487, 32.967464, 34.341682>,  <30.239487, 33.719311, 34.101536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297487, 32.967464, 34.341682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138494, 33.208603, 34.618401>,  <30.043098, 33.353287, 34.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138494, 33.208603, 34.618401>,  <30.297487, 32.967464, 34.341682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138494, 33.208603, 34.618401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692501, -0.691710, 0.204888,
		0.602037, -0.397628, 0.692418,
		-0.397484, 0.602851, 0.691793,
		30.019249, 33.389458, 34.825939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941721, 32.978001, 34.856960>,  <30.297487, 32.967464, 34.341682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941721, 32.978001, 34.856960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252909, 32.748703, 34.754074>,  <31.439621, 32.611126, 34.692345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252909, 32.748703, 34.754074>,  <30.941721, 32.978001, 34.856960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252909, 32.748703, 34.754074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080705, -0.497160, 0.863897,
		-0.623097, -0.651327, -0.433039,
		0.777970, -0.573240, -0.257214,
		31.486300, 32.576733, 34.676910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778122, 32.159363, 34.805717>,  <30.941721, 32.978001, 34.856960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778122, 32.159363, 34.805717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136559, 32.291965, 34.923782>,  <31.351620, 32.371529, 34.994621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136559, 32.291965, 34.923782>,  <30.778122, 32.159363, 34.805717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136559, 32.291965, 34.923782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176338, -0.344373, 0.922124,
		0.407338, -0.878356, -0.250132,
		0.896092, 0.331508, 0.295164,
		31.405386, 32.391418, 35.012333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292265, 31.644590, 35.254124>,  <30.778122, 32.159363, 34.805717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292265, 31.644590, 35.254124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353746, 32.032219, 35.331352>,  <31.390635, 32.264797, 35.377689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353746, 32.032219, 35.331352>,  <31.292265, 31.644590, 35.254124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353746, 32.032219, 35.331352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138289, -0.172370, 0.975277,
		0.978392, -0.176603, 0.107518,
		0.153704, 0.969072, 0.193068,
		31.399858, 32.322941, 35.389271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759174, 31.630617, 35.862522>,  <31.292265, 31.644590, 35.254124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759174, 31.630617, 35.862522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561735, 31.977835, 35.841118>,  <31.443272, 32.186165, 35.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561735, 31.977835, 35.841118>,  <31.759174, 31.630617, 35.862522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561735, 31.977835, 35.841118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231088, -0.071590, 0.970295,
		0.838426, 0.491302, 0.235931,
		-0.493599, 0.868042, -0.053511,
		31.413656, 32.238247, 35.825066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020947, 32.184170, 36.383858>,  <31.759174, 31.630617, 35.862522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020947, 32.184170, 36.383858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630571, 32.179153, 36.296780>,  <31.396347, 32.176144, 36.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630571, 32.179153, 36.296780>,  <32.020947, 32.184170, 36.383858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630571, 32.179153, 36.296780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211258, -0.192998, 0.958187,
		-0.054032, 0.981119, 0.185704,
		-0.975936, -0.012541, -0.217697,
		31.337791, 32.175392, 36.231472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117165, 31.442957, 36.601379>,  <32.020947, 32.184170, 36.383858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117165, 31.442957, 36.601379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453022, 31.330370, 36.787189>,  <32.654537, 31.262817, 36.898674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453022, 31.330370, 36.787189>,  <32.117165, 31.442957, 36.601379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453022, 31.330370, 36.787189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526592, 0.631385, -0.569257,
		-0.133066, 0.722585, 0.678354,
		0.839639, -0.281467, 0.464523,
		32.704914, 31.245930, 36.926548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574883, 31.995115, 36.845524>,  <32.117165, 31.442957, 36.601379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574883, 31.995115, 36.845524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842628, 31.708735, 36.766163>,  <33.003277, 31.536905, 36.718548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842628, 31.708735, 36.766163>,  <32.574883, 31.995115, 36.845524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842628, 31.708735, 36.766163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428438, 0.590164, -0.684213,
		0.606953, 0.372986, 0.701776,
		0.669365, -0.715952, -0.198401,
		33.043438, 31.493948, 36.706642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957733, 31.938984, 37.451233>,  <32.574883, 31.995115, 36.845524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957733, 31.938984, 37.451233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118736, 32.194321, 37.713688>,  <33.215336, 32.347523, 37.871159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118736, 32.194321, 37.713688>,  <32.957733, 31.938984, 37.451233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118736, 32.194321, 37.713688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792374, 0.601872, -0.099468,
		-0.458403, -0.479867, 0.748061,
		0.402505, 0.638340, 0.656134,
		33.239487, 32.385822, 37.910526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420784, 32.345486, 37.735767>,  <32.957733, 31.938984, 37.451233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420784, 32.345486, 37.735767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758923, 32.546410, 37.808506>,  <32.961807, 32.666965, 37.852150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758923, 32.546410, 37.808506>,  <32.420784, 32.345486, 37.735767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758923, 32.546410, 37.808506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509827, 0.860254, -0.006236,
		-0.159567, -0.087439, 0.983307,
		0.845349, 0.502312, 0.181847,
		33.012527, 32.697102, 37.863060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302162, 33.006569, 37.614883>,  <32.420784, 32.345486, 37.735767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302162, 33.006569, 37.614883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660740, 33.086033, 37.773338>,  <32.875885, 33.133713, 37.868412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660740, 33.086033, 37.773338>,  <32.302162, 33.006569, 37.614883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660740, 33.086033, 37.773338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149125, 0.976990, -0.152489,
		-0.417313, 0.077625, 0.905442,
		0.896444, 0.198660, 0.396134,
		32.929672, 33.145630, 37.892178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213688, 33.585861, 38.027283>,  <32.302162, 33.006569, 37.614883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213688, 33.585861, 38.027283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576344, 33.539421, 37.865036>,  <32.793938, 33.511555, 37.767689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576344, 33.539421, 37.865036>,  <32.213688, 33.585861, 38.027283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576344, 33.539421, 37.865036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062417, 0.987722, -0.143211,
		0.417262, 0.104524, 0.902755,
		0.906640, -0.116104, -0.405615,
		32.848335, 33.504589, 37.743351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691725, 32.882931, 38.059341>,  <32.213688, 33.585861, 38.027283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691725, 32.882931, 38.059341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685347, 32.563187, 37.819088>,  <31.681520, 32.371338, 37.674934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685347, 32.563187, 37.819088>,  <31.691725, 32.882931, 38.059341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685347, 32.563187, 37.819088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784178, -0.362691, 0.503509,
		-0.620331, 0.479033, -0.621060,
		-0.015945, -0.799364, -0.600636,
		31.680563, 32.323376, 37.638897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072811, 32.708172, 37.811626>,  <31.691725, 32.882931, 38.059341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072811, 32.708172, 37.811626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238396, 32.349434, 37.749275>,  <31.337746, 32.134190, 37.711864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238396, 32.349434, 37.749275>,  <31.072811, 32.708172, 37.811626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238396, 32.349434, 37.749275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827129, -0.442093, 0.347003,
		-0.380122, -0.014715, -0.924819,
		0.413962, -0.896849, -0.155877,
		31.362585, 32.080379, 37.702511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708073, 32.316628, 37.272190>,  <31.072811, 32.708172, 37.811626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708073, 32.316628, 37.272190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889503, 32.060982, 37.520641>,  <30.998362, 31.907595, 37.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889503, 32.060982, 37.520641>,  <30.708073, 32.316628, 37.272190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889503, 32.060982, 37.520641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887253, -0.389477, 0.247162,
		0.083952, -0.663208, -0.743712,
		0.453579, -0.639111, 0.621131,
		31.025578, 31.869249, 37.706982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518127, 32.225109, 36.594463>,  <30.708073, 32.316628, 37.272190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518127, 32.225109, 36.594463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858170, 32.433323, 36.626373>,  <31.062195, 32.558250, 36.645519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858170, 32.433323, 36.626373>,  <30.518127, 32.225109, 36.594463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858170, 32.433323, 36.626373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007340, 0.163187, -0.986568,
		-0.526560, 0.838102, 0.142546,
		0.850106, 0.520533, 0.079776,
		31.113201, 32.589481, 36.650307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435526, 32.877064, 36.238400>,  <30.518127, 32.225109, 36.594463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435526, 32.877064, 36.238400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828306, 32.801498, 36.242142>,  <31.063974, 32.756161, 36.244389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828306, 32.801498, 36.242142>,  <30.435526, 32.877064, 36.238400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828306, 32.801498, 36.242142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039771, 0.157853, -0.986662,
		0.184914, 0.969224, 0.162517,
		0.981950, -0.188911, 0.009358,
		31.122890, 32.744823, 36.244949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804209, 33.463638, 35.842289>,  <30.435526, 32.877064, 36.238400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804209, 33.463638, 35.842289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026447, 33.131069, 35.839375>,  <31.159790, 32.931526, 35.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026447, 33.131069, 35.839375>,  <30.804209, 33.463638, 35.842289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026447, 33.131069, 35.839375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159406, 0.115110, -0.980479,
		0.816029, 0.543588, 0.196488,
		0.555595, -0.831421, -0.007282,
		31.193127, 32.881641, 35.837189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520718, 33.588886, 35.668327>,  <30.804209, 33.463638, 35.842289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520718, 33.588886, 35.668327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477276, 33.201653, 35.577984>,  <31.451210, 32.969311, 35.523777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477276, 33.201653, 35.577984>,  <31.520718, 33.588886, 35.668327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477276, 33.201653, 35.577984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302429, 0.184253, -0.935194,
		0.946964, -0.169871, 0.272767,
		-0.108604, -0.968088, -0.225855,
		31.444695, 32.911224, 35.510227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177803, 33.139961, 35.600582>,  <31.520718, 33.588886, 35.668327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177803, 33.139961, 35.600582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875708, 33.003204, 35.376896>,  <31.694450, 32.921150, 35.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875708, 33.003204, 35.376896>,  <32.177803, 33.139961, 35.600582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875708, 33.003204, 35.376896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521728, 0.202876, -0.828638,
		0.396757, -0.917579, 0.025156,
		-0.755237, -0.341893, -0.559219,
		31.649136, 32.900635, 35.209129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499390, 32.650833, 35.178177>,  <32.177803, 33.139961, 35.600582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499390, 32.650833, 35.178177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167854, 32.805885, 35.016800>,  <31.968933, 32.898918, 34.919971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167854, 32.805885, 35.016800>,  <32.499390, 32.650833, 35.178177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167854, 32.805885, 35.016800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514605, 0.245204, -0.821618,
		-0.219558, -0.888605, -0.402711,
		-0.828840, 0.387630, -0.403444,
		31.919203, 32.922173, 34.895767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317089, 32.243267, 34.578876>,  <32.499390, 32.650833, 35.178177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317089, 32.243267, 34.578876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207390, 32.627590, 34.562641>,  <32.141571, 32.858185, 34.552902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207390, 32.627590, 34.562641>,  <32.317089, 32.243267, 34.578876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207390, 32.627590, 34.562641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653706, 0.155303, -0.740641,
		-0.705307, -0.229648, -0.670674,
		-0.274244, 0.960803, -0.040586,
		32.125118, 32.915833, 34.550465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082302, 32.396706, 33.893291>,  <32.317089, 32.243267, 34.578876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082302, 32.396706, 33.893291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200447, 32.745293, 34.049911>,  <32.271336, 32.954445, 34.143883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200447, 32.745293, 34.049911>,  <32.082302, 32.396706, 33.893291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200447, 32.745293, 34.049911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706741, 0.076469, -0.703328,
		-0.642866, 0.484461, -0.593313,
		0.295364, 0.871464, 0.391548,
		32.289055, 33.006733, 34.167377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130356, 32.970592, 33.242710>,  <32.082302, 32.396706, 33.893291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130356, 32.970592, 33.242710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335365, 33.087929, 33.565514>,  <32.458370, 33.158329, 33.759197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335365, 33.087929, 33.565514>,  <32.130356, 32.970592, 33.242710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335365, 33.087929, 33.565514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753867, 0.296239, -0.586453,
		-0.411096, 0.908953, -0.069306,
		0.512527, 0.293336, 0.807013,
		32.489124, 33.175930, 33.807617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444786, 33.607594, 33.002705>,  <32.130356, 32.970592, 33.242710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444786, 33.607594, 33.002705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673122, 33.481949, 33.306145>,  <32.810123, 33.406563, 33.488209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673122, 33.481949, 33.306145>,  <32.444786, 33.607594, 33.002705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673122, 33.481949, 33.306145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820811, 0.195675, -0.536638,
		0.020123, 0.929003, 0.369524,
		0.570845, -0.314108, 0.758599,
		32.844376, 33.387718, 33.533726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867832, 34.107635, 33.076374>,  <32.444786, 33.607594, 33.002705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867832, 34.107635, 33.076374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037045, 33.777828, 33.226688>,  <33.138573, 33.579945, 33.316879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037045, 33.777828, 33.226688>,  <32.867832, 34.107635, 33.076374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037045, 33.777828, 33.226688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807130, 0.154399, -0.569826,
		0.411810, 0.544364, 0.730808,
		0.423029, -0.824517, 0.375790,
		33.163952, 33.530472, 33.339424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489071, 34.285603, 33.341175>,  <32.867832, 34.107635, 33.076374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489071, 34.285603, 33.341175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490288, 33.892479, 33.267330>,  <33.491016, 33.656605, 33.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490288, 33.892479, 33.267330>,  <33.489071, 34.285603, 33.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490288, 33.892479, 33.267330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538546, 0.157164, -0.827809,
		0.842590, -0.096905, 0.529765,
		0.003042, -0.982807, -0.184613,
		33.491199, 33.597637, 33.211945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160686, 34.140076, 33.208893>,  <33.489071, 34.285603, 33.341175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160686, 34.140076, 33.208893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988117, 33.819794, 33.042641>,  <33.884575, 33.627625, 32.942890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988117, 33.819794, 33.042641>,  <34.160686, 34.140076, 33.208893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988117, 33.819794, 33.042641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655911, 0.037914, -0.753885,
		0.619396, -0.597862, 0.508832,
		-0.431427, -0.800702, -0.415628,
		33.858688, 33.579582, 32.917953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728535, 33.744064, 32.903629>,  <34.160686, 34.140076, 33.208893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728535, 33.744064, 32.903629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418442, 33.578629, 32.712650>,  <34.232388, 33.479366, 32.598061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418442, 33.578629, 32.712650>,  <34.728535, 33.744064, 32.903629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418442, 33.578629, 32.712650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418178, 0.230476, -0.878640,
		0.473437, -0.880809, -0.005719,
		-0.775232, -0.413590, -0.477451,
		34.185871, 33.454552, 32.569416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002598, 33.303139, 32.420952>,  <34.728535, 33.744064, 32.903629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002598, 33.303139, 32.420952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637909, 33.337593, 32.260281>,  <34.419094, 33.358265, 32.163879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637909, 33.337593, 32.260281>,  <35.002598, 33.303139, 32.420952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637909, 33.337593, 32.260281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409076, 0.100740, -0.906922,
		-0.037652, -0.991177, -0.127083,
		-0.911723, 0.086134, -0.401674,
		34.364391, 33.363434, 32.139778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077942, 32.979702, 31.645245>,  <35.002598, 33.303139, 32.420952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077942, 32.979702, 31.645245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739532, 33.192505, 31.659216>,  <34.536488, 33.320187, 31.667599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739532, 33.192505, 31.659216>,  <35.077942, 32.979702, 31.645245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739532, 33.192505, 31.659216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091614, 0.209606, -0.973485,
		-0.525220, -0.820388, -0.226070,
		-0.846021, 0.532005, 0.034930,
		34.485725, 33.352108, 31.669695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858006, 32.763046, 31.029530>,  <35.077942, 32.979702, 31.645245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858006, 32.763046, 31.029530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682014, 33.100830, 31.151714>,  <34.576420, 33.303501, 31.225025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682014, 33.100830, 31.151714>,  <34.858006, 32.763046, 31.029530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682014, 33.100830, 31.151714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081241, 0.376189, -0.922975,
		-0.894325, -0.381275, -0.234120,
		-0.439981, 0.844459, 0.305460,
		34.550018, 33.354168, 31.243353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326698, 32.848576, 30.515663>,  <34.858006, 32.763046, 31.029530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326698, 32.848576, 30.515663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370819, 33.204273, 30.693237>,  <34.397289, 33.417690, 30.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370819, 33.204273, 30.693237>,  <34.326698, 32.848576, 30.515663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370819, 33.204273, 30.693237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132622, 0.429497, -0.893277,
		-0.985011, 0.157402, -0.070561,
		0.110298, 0.889245, 0.443934,
		34.403908, 33.471046, 30.826418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828888, 33.351555, 30.232723>,  <34.326698, 32.848576, 30.515663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828888, 33.351555, 30.232723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106281, 33.604740, 30.370386>,  <34.272717, 33.756649, 30.452984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106281, 33.604740, 30.370386>,  <33.828888, 33.351555, 30.232723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106281, 33.604740, 30.370386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025976, 0.455408, -0.889904,
		-0.720006, 0.626072, 0.299375,
		0.693482, 0.632959, 0.344159,
		34.314327, 33.794628, 30.473635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529247, 33.943443, 30.041479>,  <33.828888, 33.351555, 30.232723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529247, 33.943443, 30.041479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915649, 34.025105, 30.104927>,  <34.147491, 34.074100, 30.142996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915649, 34.025105, 30.104927>,  <33.529247, 33.943443, 30.041479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915649, 34.025105, 30.104927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011102, 0.645721, -0.763492,
		-0.258296, 0.735774, 0.626035,
		0.966002, 0.204157, 0.158619,
		34.205452, 34.086353, 30.152514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575302, 34.660236, 29.975550>,  <33.529247, 33.943443, 30.041479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575302, 34.660236, 29.975550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941586, 34.511745, 29.914000>,  <34.161354, 34.422653, 29.877069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941586, 34.511745, 29.914000>,  <33.575302, 34.660236, 29.975550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941586, 34.511745, 29.914000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085584, 0.554287, -0.827914,
		0.392631, 0.744956, 0.539334,
		0.915705, -0.371223, -0.153874,
		34.216297, 34.400379, 29.867838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009800, 35.243645, 29.882710>,  <33.575302, 34.660236, 29.975550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009800, 35.243645, 29.882710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197216, 34.935066, 29.710503>,  <34.309666, 34.749920, 29.607180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197216, 34.935066, 29.710503>,  <34.009800, 35.243645, 29.882710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197216, 34.935066, 29.710503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239230, 0.579899, -0.778773,
		0.850437, 0.261891, 0.456257,
		0.468536, -0.771447, -0.430515,
		34.337776, 34.703632, 29.581348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523720, 35.578403, 29.528673>,  <34.009800, 35.243645, 29.882710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523720, 35.578403, 29.528673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526993, 35.232674, 29.327524>,  <34.528957, 35.025238, 29.206835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526993, 35.232674, 29.327524>,  <34.523720, 35.578403, 29.528673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526993, 35.232674, 29.327524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242572, 0.489584, -0.837536,
		0.970099, -0.115128, 0.213667,
		0.008184, -0.864322, -0.502872,
		34.529449, 34.973377, 29.176662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099262, 35.603081, 29.125748>,  <34.523720, 35.578403, 29.528673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099262, 35.603081, 29.125748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895187, 35.323914, 28.924706>,  <34.772743, 35.156414, 28.804079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895187, 35.323914, 28.924706>,  <35.099262, 35.603081, 29.125748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895187, 35.323914, 28.924706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212558, 0.463938, -0.859989,
		0.833384, -0.545588, -0.088346,
		-0.510186, -0.697922, -0.502607,
		34.742130, 35.114536, 28.773924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641415, 35.238556, 28.646442>,  <35.099262, 35.603081, 29.125748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641415, 35.238556, 28.646442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260887, 35.220020, 28.524565>,  <35.032570, 35.208900, 28.451437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260887, 35.220020, 28.524565>,  <35.641415, 35.238556, 28.646442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260887, 35.220020, 28.524565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282696, 0.262595, -0.922566,
		0.122756, -0.963793, -0.236714,
		-0.951322, -0.046332, -0.304695,
		34.975491, 35.206120, 28.433157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694744, 34.958549, 28.066971>,  <35.641415, 35.238556, 28.646442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694744, 34.958549, 28.066971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320789, 35.097984, 28.040192>,  <35.096416, 35.181644, 28.024124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320789, 35.097984, 28.040192>,  <35.694744, 34.958549, 28.066971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320789, 35.097984, 28.040192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196855, 0.352225, -0.914979,
		-0.295367, -0.868577, -0.397910,
		-0.934883, 0.348585, -0.066949,
		35.040325, 35.202560, 28.020107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483047, 34.794106, 27.423565>,  <35.694744, 34.958549, 28.066971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483047, 34.794106, 27.423565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248283, 35.097984, 27.535563>,  <35.107426, 35.280312, 27.602762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248283, 35.097984, 27.535563>,  <35.483047, 34.794106, 27.423565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248283, 35.097984, 27.535563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206439, 0.474807, -0.855536,
		-0.782889, -0.444324, -0.435501,
		-0.586914, 0.759694, 0.279995,
		35.072208, 35.325893, 27.619560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332771, 35.039364, 26.797815>,  <35.483047, 34.794106, 27.423565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332771, 35.039364, 26.797815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201218, 35.337479, 27.029810>,  <35.122284, 35.516346, 27.169006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201218, 35.337479, 27.029810>,  <35.332771, 35.039364, 26.797815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201218, 35.337479, 27.029810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033044, 0.604692, -0.795774,
		-0.943792, -0.280883, -0.174246,
		-0.328885, 0.745287, 0.579984,
		35.102551, 35.561066, 27.203806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708912, 35.200741, 26.504038>,  <35.332771, 35.039364, 26.797815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708912, 35.200741, 26.504038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859623, 35.521187, 26.690048>,  <34.950050, 35.713455, 26.801655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859623, 35.521187, 26.690048>,  <34.708912, 35.200741, 26.504038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859623, 35.521187, 26.690048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017806, 0.508196, -0.861058,
		-0.926133, 0.316147, 0.205741,
		0.376778, 0.801117, 0.465027,
		34.972656, 35.761520, 26.829556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346733, 35.858887, 26.423452>,  <34.708912, 35.200741, 26.504038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346733, 35.858887, 26.423452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708046, 35.997131, 26.525141>,  <34.924835, 36.080078, 26.586153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708046, 35.997131, 26.525141>,  <34.346733, 35.858887, 26.423452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708046, 35.997131, 26.525141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038259, 0.525287, -0.850065,
		-0.427330, 0.777578, 0.461262,
		0.903286, 0.345611, 0.254220,
		34.979031, 36.100815, 26.601406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338680, 36.425655, 26.080996>,  <34.346733, 35.858887, 26.423452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338680, 36.425655, 26.080996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722778, 36.390163, 26.186872>,  <34.953236, 36.368866, 26.250399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722778, 36.390163, 26.186872>,  <34.338680, 36.425655, 26.080996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722778, 36.390163, 26.186872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269592, 0.540940, -0.796683,
		-0.072490, 0.836368, 0.543355,
		0.960242, -0.088732, 0.264690,
		35.010853, 36.363544, 26.266279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614857, 37.136684, 26.235085>,  <34.338680, 36.425655, 26.080996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614857, 37.136684, 26.235085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890404, 36.863953, 26.136641>,  <35.055733, 36.700314, 26.077574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890404, 36.863953, 26.136641>,  <34.614857, 37.136684, 26.235085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890404, 36.863953, 26.136641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015118, 0.325927, -0.945274,
		0.724733, 0.654886, 0.214211,
		0.688864, -0.681833, -0.246110,
		35.097061, 36.659401, 26.062807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068581, 37.480644, 25.852734>,  <34.614857, 37.136684, 26.235085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068581, 37.480644, 25.852734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116482, 37.101318, 25.735188>,  <35.145222, 36.873722, 25.664660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116482, 37.101318, 25.735188>,  <35.068581, 37.480644, 25.852734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116482, 37.101318, 25.735188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082510, 0.285465, -0.954831,
		0.989370, 0.138587, -0.044062,
		0.119749, -0.948316, -0.293865,
		35.152405, 36.816822, 25.647028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486828, 37.483303, 25.373672>,  <35.068581, 37.480644, 25.852734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486828, 37.483303, 25.373672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345520, 37.118484, 25.290361>,  <35.260735, 36.899593, 25.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345520, 37.118484, 25.290361>,  <35.486828, 37.483303, 25.373672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345520, 37.118484, 25.290361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019732, 0.215319, -0.976344,
		0.935315, -0.349018, -0.058069,
		-0.353265, -0.912044, -0.208278,
		35.239540, 36.844872, 25.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910587, 37.253654, 24.944298>,  <35.486828, 37.483303, 25.373672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910587, 37.253654, 24.944298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554333, 37.081432, 24.885790>,  <35.340580, 36.978100, 24.850685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554333, 37.081432, 24.885790>,  <35.910587, 37.253654, 24.944298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554333, 37.081432, 24.885790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089964, 0.148468, -0.984817,
		0.445732, -0.890270, -0.093497,
		-0.890635, -0.430553, -0.146269,
		35.287144, 36.952267, 24.841909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048771, 36.801052, 24.503740>,  <35.910587, 37.253654, 24.944298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048771, 36.801052, 24.503740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660332, 36.881496, 24.452328>,  <35.427269, 36.929764, 24.421480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660332, 36.881496, 24.452328>,  <36.048771, 36.801052, 24.503740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660332, 36.881496, 24.452328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147373, 0.081657, -0.985704,
		-0.187742, -0.976159, -0.108935,
		-0.971099, 0.201112, -0.128529,
		35.369003, 36.941830, 24.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894279, 36.416172, 23.947323>,  <36.048771, 36.801052, 24.503740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894279, 36.416172, 23.947323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576717, 36.659328, 23.952721>,  <35.386181, 36.805222, 23.955959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576717, 36.659328, 23.952721>,  <35.894279, 36.416172, 23.947323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576717, 36.659328, 23.952721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093165, 0.143543, -0.985249,
		-0.600861, -0.780938, -0.170594,
		-0.793906, 0.607891, 0.013494,
		35.338547, 36.841694, 23.956768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490467, 36.269871, 23.330250>,  <35.894279, 36.416172, 23.947323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490467, 36.269871, 23.330250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372498, 36.640873, 23.422121>,  <35.301716, 36.863476, 23.477243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372498, 36.640873, 23.422121>,  <35.490467, 36.269871, 23.330250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372498, 36.640873, 23.422121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106851, 0.206850, -0.972520,
		-0.949528, -0.311361, 0.038099,
		-0.294925, 0.927506, 0.229679,
		35.284019, 36.919125, 23.491024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956841, 36.477757, 22.871302>,  <35.490467, 36.269871, 23.330250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956841, 36.477757, 22.871302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101501, 36.826225, 23.004122>,  <35.188297, 37.035309, 23.083815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101501, 36.826225, 23.004122>,  <34.956841, 36.477757, 22.871302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101501, 36.826225, 23.004122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172298, 0.412478, -0.894525,
		-0.916252, 0.266299, 0.299277,
		0.361657, 0.871175, 0.332051,
		35.209999, 37.087578, 23.103737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493999, 36.951347, 22.593454>,  <34.956841, 36.477757, 22.871302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493999, 36.951347, 22.593454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805115, 37.182892, 22.691402>,  <34.991783, 37.321819, 22.750172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805115, 37.182892, 22.691402>,  <34.493999, 36.951347, 22.593454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805115, 37.182892, 22.691402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036712, 0.430769, -0.901715,
		-0.627453, 0.692355, 0.356298,
		0.777789, 0.578864, 0.244869,
		35.038452, 37.356552, 22.764864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365002, 37.590343, 22.256853>,  <34.493999, 36.951347, 22.593454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365002, 37.590343, 22.256853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752090, 37.613716, 22.354916>,  <34.984344, 37.627739, 22.413754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752090, 37.613716, 22.354916>,  <34.365002, 37.590343, 22.256853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752090, 37.613716, 22.354916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201542, 0.404614, -0.892002,
		-0.151317, 0.912619, 0.379777,
		0.967721, 0.058434, 0.245156,
		35.042408, 37.631245, 22.428463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627876, 38.297543, 22.163734>,  <34.365002, 37.590343, 22.256853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627876, 38.297543, 22.163734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929253, 38.036880, 22.128683>,  <35.110077, 37.880486, 22.107653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929253, 38.036880, 22.128683>,  <34.627876, 38.297543, 22.163734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929253, 38.036880, 22.128683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321566, 0.481439, -0.815360,
		0.573518, 0.586147, 0.572284,
		0.753441, -0.651651, -0.087628,
		35.155285, 37.841385, 22.102394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205765, 38.719887, 22.024481>,  <34.627876, 38.297543, 22.163734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205765, 38.719887, 22.024481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309296, 38.354622, 21.898535>,  <35.371414, 38.135464, 21.822968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309296, 38.354622, 21.898535>,  <35.205765, 38.719887, 22.024481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309296, 38.354622, 21.898535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365635, 0.394339, -0.843094,
		0.894048, 0.103087, 0.435949,
		0.258824, -0.913165, -0.314865,
		35.386944, 38.080673, 21.804075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929974, 38.790409, 21.877338>,  <35.205765, 38.719887, 22.024481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929974, 38.790409, 21.877338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773663, 38.482864, 21.674894>,  <35.679874, 38.298336, 21.553429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773663, 38.482864, 21.674894>,  <35.929974, 38.790409, 21.877338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773663, 38.482864, 21.674894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420537, 0.339969, -0.841172,
		0.818805, -0.541549, 0.190482,
		-0.390777, -0.768860, -0.506110,
		35.656429, 38.252205, 21.523062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485481, 38.671799, 21.388439>,  <35.929974, 38.790409, 21.877338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485481, 38.671799, 21.388439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191509, 38.445869, 21.238314>,  <36.015125, 38.310314, 21.148237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191509, 38.445869, 21.238314>,  <36.485481, 38.671799, 21.388439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191509, 38.445869, 21.238314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252476, 0.285767, -0.924442,
		0.629395, -0.774156, -0.067414,
		-0.734927, -0.564819, -0.375316,
		35.971031, 38.276424, 21.125719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805378, 38.457470, 20.911577>,  <36.485481, 38.671799, 21.388439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805378, 38.457470, 20.911577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424213, 38.394711, 20.807774>,  <36.195515, 38.357056, 20.745491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424213, 38.394711, 20.807774>,  <36.805378, 38.457470, 20.911577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424213, 38.394711, 20.807774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163520, 0.454826, -0.875440,
		0.255389, -0.876650, -0.407752,
		-0.952910, -0.156902, -0.259507,
		36.138340, 38.347641, 20.729921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743561, 38.227589, 20.154793>,  <36.805378, 38.457470, 20.911577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743561, 38.227589, 20.154793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379646, 38.370914, 20.238596>,  <36.161297, 38.456909, 20.288877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379646, 38.370914, 20.238596>,  <36.743561, 38.227589, 20.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379646, 38.370914, 20.238596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070389, 0.364256, -0.928635,
		-0.409059, -0.859609, -0.306174,
		-0.909789, 0.358315, 0.209509,
		36.106709, 38.478409, 20.301449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282917, 38.004452, 19.628782>,  <36.743561, 38.227589, 20.154793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282917, 38.004452, 19.628782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089348, 38.322933, 19.774040>,  <35.973206, 38.514023, 19.861195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089348, 38.322933, 19.774040>,  <36.282917, 38.004452, 19.628782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089348, 38.322933, 19.774040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062114, 0.445176, -0.893286,
		-0.872901, -0.409729, -0.264888,
		-0.483927, 0.796204, 0.363145,
		35.944168, 38.561794, 19.882984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752628, 38.122078, 19.082994>,  <36.282917, 38.004452, 19.628782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752628, 38.122078, 19.082994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761429, 38.451611, 19.309559>,  <35.766708, 38.649330, 19.445498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761429, 38.451611, 19.309559>,  <35.752628, 38.122078, 19.082994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761429, 38.451611, 19.309559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046605, 0.566776, -0.822553,
		-0.998671, -0.008297, 0.050866,
		0.022005, 0.823830, 0.566410,
		35.768032, 38.698761, 19.479483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257195, 38.562817, 18.785349>,  <35.752628, 38.122078, 19.082994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257195, 38.562817, 18.785349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548588, 38.766499, 18.968664>,  <35.723423, 38.888706, 19.078653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548588, 38.766499, 18.968664>,  <35.257195, 38.562817, 18.785349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548588, 38.766499, 18.968664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078810, 0.602236, -0.794418,
		-0.680517, 0.614837, 0.398588,
		0.728482, 0.509202, 0.458288,
		35.767132, 38.919258, 19.106150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086266, 39.263508, 18.981829>,  <35.257195, 38.562817, 18.785349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086266, 39.263508, 18.981829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484818, 39.288631, 18.958927>,  <35.723949, 39.303703, 18.945187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484818, 39.288631, 18.958927>,  <35.086266, 39.263508, 18.981829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484818, 39.288631, 18.958927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084552, 0.800532, -0.593295,
		0.008569, 0.595990, 0.802946,
		0.996382, 0.062807, -0.057252,
		35.783733, 39.307472, 18.941751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456676, 39.944691, 19.213528>,  <35.086266, 39.263508, 18.981829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456676, 39.944691, 19.213528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663193, 39.792160, 18.906794>,  <35.787102, 39.700642, 18.722754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663193, 39.792160, 18.906794>,  <35.456676, 39.944691, 19.213528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663193, 39.792160, 18.906794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218037, 0.807372, -0.548280,
		0.828192, 0.450271, 0.333698,
		0.516293, -0.381323, -0.766834,
		35.818081, 39.677765, 18.676743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628643, 40.495617, 19.799162>,  <35.456676, 39.944691, 19.213528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628643, 40.495617, 19.799162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466843, 40.815910, 19.975887>,  <35.369762, 41.008087, 20.081923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466843, 40.815910, 19.975887>,  <35.628643, 40.495617, 19.799162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466843, 40.815910, 19.975887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044663, 0.465229, -0.884063,
		-0.913446, -0.377338, -0.152423,
		-0.404502, 0.800735, 0.441815,
		35.345493, 41.056129, 20.108431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947041, 40.601444, 19.611580>,  <35.628643, 40.495617, 19.799162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947041, 40.601444, 19.611580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078007, 40.956821, 19.740244>,  <35.156586, 41.170048, 19.817442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078007, 40.956821, 19.740244>,  <34.947041, 40.601444, 19.611580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078007, 40.956821, 19.740244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265664, 0.413251, -0.871003,
		-0.906765, 0.199726, 0.371332,
		0.327415, 0.888444, 0.321661,
		35.176231, 41.223354, 19.836742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321724, 41.090656, 19.834684>,  <34.947041, 40.601444, 19.611580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321724, 41.090656, 19.834684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650143, 41.271038, 19.694674>,  <34.847195, 41.379269, 19.610668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650143, 41.271038, 19.694674>,  <34.321724, 41.090656, 19.834684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650143, 41.271038, 19.694674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532058, 0.382321, -0.755476,
		-0.206864, 0.806517, 0.553839,
		0.821049, 0.450956, -0.350025,
		34.896458, 41.406326, 19.589666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324100, 41.836395, 19.791273>,  <34.321724, 41.090656, 19.834684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324100, 41.836395, 19.791273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545925, 41.698524, 19.488312>,  <34.679020, 41.615803, 19.306536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545925, 41.698524, 19.488312>,  <34.324100, 41.836395, 19.791273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545925, 41.698524, 19.488312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610380, 0.450149, -0.651769,
		0.565591, 0.823751, 0.039256,
		0.554566, -0.344673, -0.757401,
		34.712296, 41.595123, 19.261091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879822, 42.093330, 19.928869>,  <34.324100, 41.836395, 19.791273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879822, 42.093330, 19.928869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787640, 42.261848, 19.578007>,  <34.732330, 42.362961, 19.367489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787640, 42.261848, 19.578007>,  <34.879822, 42.093330, 19.928869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787640, 42.261848, 19.578007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782599, 0.615952, 0.090231,
		0.578299, -0.665666, -0.471656,
		-0.230454, 0.421298, -0.877154,
		34.718502, 42.388237, 19.314861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430420, 42.318382, 20.406971>,  <34.879822, 42.093330, 19.928869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430420, 42.318382, 20.406971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322414, 41.980293, 20.222498>,  <35.257610, 41.777439, 20.111814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322414, 41.980293, 20.222498>,  <35.430420, 42.318382, 20.406971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322414, 41.980293, 20.222498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275949, -0.390949, 0.878072,
		-0.922466, 0.364356, -0.127676,
		-0.270016, -0.845224, -0.461181,
		35.241409, 41.726727, 20.084143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745895, 42.058285, 20.698698>,  <35.430420, 42.318382, 20.406971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745895, 42.058285, 20.698698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921062, 41.744595, 20.522871>,  <35.026161, 41.556381, 20.417374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921062, 41.744595, 20.522871>,  <34.745895, 42.058285, 20.698698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921062, 41.744595, 20.522871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252268, -0.576492, 0.777185,
		-0.862896, -0.229453, -0.450291,
		0.437916, -0.784225, -0.439569,
		35.052437, 41.509327, 20.391001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291481, 41.544716, 20.912663>,  <34.745895, 42.058285, 20.698698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291481, 41.544716, 20.912663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607735, 41.338718, 20.780188>,  <34.797485, 41.215122, 20.700703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607735, 41.338718, 20.780188>,  <34.291481, 41.544716, 20.912663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607735, 41.338718, 20.780188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143328, -0.681535, 0.717613,
		-0.595278, -0.519900, -0.612656,
		0.790634, -0.514990, -0.331186,
		34.844925, 41.184223, 20.680832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037132, 40.864624, 20.979574>,  <34.291481, 41.544716, 20.912663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037132, 40.864624, 20.979574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436867, 40.878353, 20.974739>,  <34.676708, 40.886593, 20.971838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436867, 40.878353, 20.974739>,  <34.037132, 40.864624, 20.979574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436867, 40.878353, 20.974739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033099, -0.719162, 0.694054,
		0.015132, -0.693994, -0.719822,
		0.999338, 0.034327, -0.012088,
		34.736668, 40.888653, 20.971113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076073, 40.215069, 21.152107>,  <34.037132, 40.864624, 20.979574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076073, 40.215069, 21.152107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428307, 40.379780, 21.245918>,  <34.639648, 40.478607, 21.302206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428307, 40.379780, 21.245918>,  <34.076073, 40.215069, 21.152107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428307, 40.379780, 21.245918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058687, -0.585860, 0.808285,
		0.470237, -0.698001, -0.540066,
		0.880587, 0.411780, 0.234530,
		34.692482, 40.503315, 21.316277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459019, 39.627541, 21.396490>,  <34.076073, 40.215069, 21.152107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459019, 39.627541, 21.396490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649227, 39.952568, 21.531311>,  <34.763351, 40.147587, 21.612204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649227, 39.952568, 21.531311>,  <34.459019, 39.627541, 21.396490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649227, 39.952568, 21.531311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158281, -0.455921, 0.875833,
		0.865348, -0.363127, -0.345415,
		0.475521, 0.812573, 0.337054,
		34.791882, 40.196339, 21.632427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019230, 39.408791, 21.844473>,  <34.459019, 39.627541, 21.396490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019230, 39.408791, 21.844473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946907, 39.790173, 21.941000>,  <34.903511, 40.019001, 21.998917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946907, 39.790173, 21.941000>,  <35.019230, 39.408791, 21.844473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946907, 39.790173, 21.941000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083381, -0.259336, 0.962181,
		0.979977, 0.153850, 0.126391,
		-0.180809, 0.953454, 0.241316,
		34.892666, 40.076210, 22.013395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295502, 39.392040, 22.477917>,  <35.019230, 39.408791, 21.844473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295502, 39.392040, 22.477917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068954, 39.721531, 22.488520>,  <34.933025, 39.919224, 22.494883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068954, 39.721531, 22.488520>,  <35.295502, 39.392040, 22.477917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068954, 39.721531, 22.488520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253697, -0.204859, 0.945342,
		0.784132, 0.528688, 0.325002,
		-0.566370, 0.823724, 0.026509,
		34.899044, 39.968647, 22.496473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573296, 39.914951, 23.053564>,  <35.295502, 39.392040, 22.477917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573296, 39.914951, 23.053564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187435, 39.998245, 22.988958>,  <34.955917, 40.048222, 22.950195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187435, 39.998245, 22.988958>,  <35.573296, 39.914951, 23.053564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187435, 39.998245, 22.988958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185597, -0.101707, 0.977348,
		0.187092, 0.972776, 0.136760,
		-0.964650, 0.208237, -0.161516,
		34.898041, 40.060715, 22.940504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404606, 40.494968, 23.418549>,  <35.573296, 39.914951, 23.053564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404606, 40.494968, 23.418549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054161, 40.309795, 23.364693>,  <34.843895, 40.198692, 23.332378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054161, 40.309795, 23.364693>,  <35.404606, 40.494968, 23.418549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054161, 40.309795, 23.364693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027748, -0.230391, 0.972702,
		-0.481311, 0.855931, 0.189002,
		-0.876111, -0.462928, -0.134640,
		34.791328, 40.170918, 23.324301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895344, 40.731331, 23.873642>,  <35.404606, 40.494968, 23.418549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895344, 40.731331, 23.873642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766327, 40.366688, 23.771709>,  <34.688919, 40.147903, 23.710550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766327, 40.366688, 23.771709>,  <34.895344, 40.731331, 23.873642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766327, 40.366688, 23.771709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117677, -0.228512, 0.966403,
		-0.939213, 0.341691, -0.033571,
		-0.322540, -0.911608, -0.254831,
		34.669563, 40.093204, 23.695261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675003, 40.458431, 24.490473>,  <34.895344, 40.731331, 23.873642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675003, 40.458431, 24.490473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606747, 40.133518, 24.267374>,  <34.565792, 39.938572, 24.133514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606747, 40.133518, 24.267374>,  <34.675003, 40.458431, 24.490473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606747, 40.133518, 24.267374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212877, -0.522288, 0.825772,
		-0.962063, 0.259642, -0.083792,
		-0.170642, -0.812282, -0.557746,
		34.555553, 39.889835, 24.100050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958370, 40.161804, 24.671137>,  <34.675003, 40.458431, 24.490473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958370, 40.161804, 24.671137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220951, 39.896427, 24.527517>,  <34.378498, 39.737202, 24.441345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220951, 39.896427, 24.527517>,  <33.958370, 40.161804, 24.671137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220951, 39.896427, 24.527517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120129, -0.561819, 0.818491,
		-0.744745, -0.494165, -0.448504,
		0.656448, -0.663446, -0.359049,
		34.417885, 39.697392, 24.419804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631840, 39.520100, 24.679213>,  <33.958370, 40.161804, 24.671137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631840, 39.520100, 24.679213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026382, 39.454422, 24.674601>,  <34.263107, 39.415016, 24.671833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026382, 39.454422, 24.674601>,  <33.631840, 39.520100, 24.679213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026382, 39.454422, 24.674601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092818, -0.612676, 0.784865,
		-0.135937, -0.773089, -0.619559,
		0.986360, -0.164199, -0.011529,
		34.322289, 39.405163, 24.671143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648598, 38.864079, 25.061710>,  <33.631840, 39.520100, 24.679213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648598, 38.864079, 25.061710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031773, 38.977955, 25.047253>,  <34.261677, 39.046280, 25.038578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031773, 38.977955, 25.047253>,  <33.648598, 38.864079, 25.061710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031773, 38.977955, 25.047253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178729, -0.493305, 0.851297,
		0.224529, -0.821949, -0.523438,
		0.957937, 0.284694, -0.036145,
		34.319153, 39.063362, 25.036409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021088, 38.354332, 25.030260>,  <33.648598, 38.864079, 25.061710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021088, 38.354332, 25.030260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244225, 38.632885, 25.210863>,  <34.378105, 38.800018, 25.319225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244225, 38.632885, 25.210863>,  <34.021088, 38.354332, 25.030260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244225, 38.632885, 25.210863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305615, -0.333432, 0.891865,
		0.771629, -0.635507, 0.026823,
		0.557843, 0.696386, 0.451506,
		34.411579, 38.841801, 25.346315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284843, 38.042770, 25.546604>,  <34.021088, 38.354332, 25.030260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284843, 38.042770, 25.546604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330002, 38.425072, 25.655256>,  <34.357098, 38.654453, 25.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330002, 38.425072, 25.655256>,  <34.284843, 38.042770, 25.546604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330002, 38.425072, 25.655256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182129, -0.248841, 0.951266,
		0.976772, -0.156869, 0.145977,
		0.112899, 0.955756, 0.271631,
		34.363873, 38.711800, 25.736746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834866, 38.138977, 26.058657>,  <34.284843, 38.042770, 25.546604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834866, 38.138977, 26.058657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562080, 38.429916, 26.089334>,  <34.398407, 38.604481, 26.107740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562080, 38.429916, 26.089334>,  <34.834866, 38.138977, 26.058657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562080, 38.429916, 26.089334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120803, -0.215441, 0.969016,
		0.721337, 0.651572, 0.234790,
		-0.681967, 0.727350, 0.076694,
		34.357491, 38.648121, 26.112343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857029, 38.273319, 26.666010>,  <34.834866, 38.138977, 26.058657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857029, 38.273319, 26.666010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514088, 38.467220, 26.596769>,  <34.308323, 38.583561, 26.555225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514088, 38.467220, 26.596769>,  <34.857029, 38.273319, 26.666010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514088, 38.467220, 26.596769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294513, -0.186165, 0.937339,
		0.422152, 0.854609, 0.302375,
		-0.857350, 0.484753, -0.173104,
		34.256882, 38.612648, 26.544838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743343, 38.556553, 27.229956>,  <34.857029, 38.273319, 26.666010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743343, 38.556553, 27.229956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388847, 38.637440, 27.063253>,  <34.176151, 38.685974, 26.963232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388847, 38.637440, 27.063253>,  <34.743343, 38.556553, 27.229956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388847, 38.637440, 27.063253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457753, -0.244435, 0.854818,
		0.070991, 0.948345, 0.309195,
		-0.886241, 0.202220, -0.416755,
		34.122974, 38.698105, 26.938227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303040, 39.042492, 27.694521>,  <34.743343, 38.556553, 27.229956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303040, 39.042492, 27.694521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034969, 38.876122, 27.448637>,  <33.874126, 38.776299, 27.301105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034969, 38.876122, 27.448637>,  <34.303040, 39.042492, 27.694521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034969, 38.876122, 27.448637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597655, -0.188671, 0.779238,
		-0.440083, 0.889612, -0.122138,
		-0.670175, -0.415926, -0.614712,
		33.833916, 38.751343, 27.264223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658485, 39.292526, 27.998966>,  <34.303040, 39.042492, 27.694521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658485, 39.292526, 27.998966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566936, 38.987946, 27.756376>,  <33.512009, 38.805199, 27.610823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566936, 38.987946, 27.756376>,  <33.658485, 39.292526, 27.998966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566936, 38.987946, 27.756376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641339, -0.350742, 0.682396,
		-0.732326, 0.545138, -0.408072,
		-0.228872, -0.761449, -0.606476,
		33.498276, 38.759510, 27.574434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963722, 39.322754, 27.913168>,  <33.658485, 39.292526, 27.998966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963722, 39.322754, 27.913168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059357, 38.943459, 27.829569>,  <33.116737, 38.715881, 27.779409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059357, 38.943459, 27.829569>,  <32.963722, 39.322754, 27.913168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059357, 38.943459, 27.829569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708904, -0.317549, 0.629776,
		-0.663545, -0.002414, -0.748133,
		0.239089, -0.948239, -0.208997,
		33.131084, 38.658985, 27.766870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368660, 38.905861, 27.849762>,  <32.963722, 39.322754, 27.913168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368660, 38.905861, 27.849762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654301, 38.638458, 27.932865>,  <32.825684, 38.478016, 27.982727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654301, 38.638458, 27.932865>,  <32.368660, 38.905861, 27.849762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654301, 38.638458, 27.932865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615934, -0.458949, 0.640306,
		-0.332694, -0.585211, -0.739489,
		0.714101, -0.668502, 0.207762,
		32.868530, 38.437908, 27.995193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016823, 38.169258, 27.823036>,  <32.368660, 38.905861, 27.849762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016823, 38.169258, 27.823036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354809, 38.088337, 28.021069>,  <32.557602, 38.039783, 28.139887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354809, 38.088337, 28.021069>,  <32.016823, 38.169258, 27.823036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354809, 38.088337, 28.021069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459507, -0.748258, 0.478501,
		0.273648, -0.631810, -0.725212,
		0.844968, -0.202299, 0.495080,
		32.608299, 38.027649, 28.169592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943666, 37.478016, 27.946125>,  <32.016823, 38.169258, 27.823036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943666, 37.478016, 27.946125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233334, 37.593338, 28.196711>,  <32.407135, 37.662533, 28.347063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233334, 37.593338, 28.196711>,  <31.943666, 37.478016, 27.946125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233334, 37.593338, 28.196711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334359, -0.647717, 0.684592,
		0.603146, -0.705224, -0.372658,
		0.724168, 0.288308, 0.626466,
		32.450584, 37.679829, 28.384651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391071, 36.848347, 28.102577>,  <31.943666, 37.478016, 27.946125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391071, 36.848347, 28.102577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424271, 37.108570, 28.404541>,  <32.444191, 37.264702, 28.585720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424271, 37.108570, 28.404541>,  <32.391071, 36.848347, 28.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424271, 37.108570, 28.404541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201803, -0.730856, 0.652016,
		0.975903, -0.206462, 0.070621,
		0.083002, 0.650555, 0.754910,
		32.449173, 37.303738, 28.631014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919079, 36.571873, 28.602173>,  <32.391071, 36.848347, 28.102577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919079, 36.571873, 28.602173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713577, 36.846989, 28.807306>,  <32.590275, 37.012058, 28.930386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713577, 36.846989, 28.807306>,  <32.919079, 36.571873, 28.602173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713577, 36.846989, 28.807306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056781, -0.623701, 0.779598,
		0.856055, 0.371405, 0.359484,
		-0.513757, 0.687790, 0.512834,
		32.559448, 37.053326, 28.961157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193932, 36.606083, 29.288380>,  <32.919079, 36.571873, 28.602173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193932, 36.606083, 29.288380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837326, 36.780830, 29.336290>,  <32.623363, 36.885681, 29.365036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837326, 36.780830, 29.336290>,  <33.193932, 36.606083, 29.288380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837326, 36.780830, 29.336290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139728, -0.516721, 0.844674,
		0.430907, 0.736302, 0.521707,
		-0.891513, 0.436873, 0.119777,
		32.569874, 36.911892, 29.372223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092793, 36.958401, 29.983175>,  <33.193932, 36.606083, 29.288380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092793, 36.958401, 29.983175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710575, 36.946434, 29.865847>,  <32.481243, 36.939255, 29.795450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710575, 36.946434, 29.865847>,  <33.092793, 36.958401, 29.983175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710575, 36.946434, 29.865847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262349, -0.367744, 0.892153,
		-0.134558, 0.929446, 0.343547,
		-0.955546, -0.029917, -0.293322,
		32.423912, 36.937458, 29.777849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735222, 37.424637, 30.480324>,  <33.092793, 36.958401, 29.983175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735222, 37.424637, 30.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499733, 37.136772, 30.333086>,  <32.358440, 36.964054, 30.244743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499733, 37.136772, 30.333086>,  <32.735222, 37.424637, 30.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499733, 37.136772, 30.333086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149664, -0.350454, 0.924545,
		-0.794360, 0.599390, 0.098612,
		-0.588721, -0.719663, -0.368093,
		32.323116, 36.920872, 30.222658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283157, 37.372028, 30.951756>,  <32.735222, 37.424637, 30.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283157, 37.372028, 30.951756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200684, 37.050465, 30.728605>,  <32.151199, 36.857529, 30.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200684, 37.050465, 30.728605>,  <32.283157, 37.372028, 30.951756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200684, 37.050465, 30.728605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232693, -0.513488, 0.825944,
		-0.950443, 0.300111, -0.081190,
		-0.206185, -0.803905, -0.557875,
		32.138828, 36.809292, 30.561243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651924, 37.193241, 31.189337>,  <32.283157, 37.372028, 30.951756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651924, 37.193241, 31.189337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817968, 36.869835, 31.022488>,  <31.917595, 36.675793, 30.922379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817968, 36.869835, 31.022488>,  <31.651924, 37.193241, 31.189337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817968, 36.869835, 31.022488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100984, -0.496609, 0.862080,
		-0.904148, -0.315737, -0.287795,
		0.415112, -0.808511, -0.417124,
		31.942501, 36.627281, 30.897350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304695, 36.651043, 31.318552>,  <31.651924, 37.193241, 31.189337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304695, 36.651043, 31.318552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642902, 36.449379, 31.248220>,  <31.845827, 36.328381, 31.206020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642902, 36.449379, 31.248220>,  <31.304695, 36.651043, 31.318552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642902, 36.449379, 31.248220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174198, -0.571750, 0.801721,
		-0.504727, -0.647243, -0.571250,
		0.845520, -0.504161, -0.175829,
		31.896559, 36.298130, 31.195471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140650, 35.946335, 31.460920>,  <31.304695, 36.651043, 31.318552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140650, 35.946335, 31.460920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538862, 35.983498, 31.467688>,  <31.777790, 36.005795, 31.471748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538862, 35.983498, 31.467688>,  <31.140650, 35.946335, 31.460920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538862, 35.983498, 31.467688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031198, -0.492684, 0.869649,
		0.089130, -0.865234, -0.493381,
		0.995531, 0.092904, 0.016919,
		31.837523, 36.011368, 31.472763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406786, 35.229053, 31.603199>,  <31.140650, 35.946335, 31.460920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406786, 35.229053, 31.603199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658520, 35.514713, 31.725792>,  <31.809559, 35.686108, 31.799349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658520, 35.514713, 31.725792>,  <31.406786, 35.229053, 31.603199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658520, 35.514713, 31.725792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086778, -0.456488, 0.885488,
		0.772276, -0.530670, -0.349255,
		0.629333, 0.714149, 0.306484,
		31.847319, 35.728958, 31.817738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798223, 34.893002, 32.033340>,  <31.406786, 35.229053, 31.603199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798223, 34.893002, 32.033340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851870, 35.258865, 32.185867>,  <31.884058, 35.478386, 32.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851870, 35.258865, 32.185867>,  <31.798223, 34.893002, 32.033340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851870, 35.258865, 32.185867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151789, -0.399217, 0.904205,
		0.979271, -0.063389, -0.192377,
		0.134117, 0.914663, 0.381320,
		31.892105, 35.533264, 32.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331554, 34.914310, 32.473808>,  <31.798223, 34.893002, 32.033340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331554, 34.914310, 32.473808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156284, 35.252895, 32.594803>,  <32.051121, 35.456047, 32.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156284, 35.252895, 32.594803>,  <32.331554, 34.914310, 32.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156284, 35.252895, 32.594803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078759, -0.299066, 0.950977,
		0.895432, 0.440519, 0.064377,
		-0.438177, 0.846465, 0.302488,
		32.024830, 35.506836, 32.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729523, 35.189438, 33.075840>,  <32.331554, 34.914310, 32.473808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729523, 35.189438, 33.075840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360817, 35.342823, 33.098843>,  <32.139591, 35.434853, 33.112644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360817, 35.342823, 33.098843>,  <32.729523, 35.189438, 33.075840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360817, 35.342823, 33.098843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018461, -0.104733, 0.994329,
		0.387306, 0.917601, 0.089461,
		-0.921766, 0.383458, 0.057504,
		32.084286, 35.457859, 33.116093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829865, 35.668747, 33.605335>,  <32.729523, 35.189438, 33.075840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829865, 35.668747, 33.605335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441166, 35.580940, 33.570644>,  <32.207947, 35.528255, 33.549831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441166, 35.580940, 33.570644>,  <32.829865, 35.668747, 33.605335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441166, 35.580940, 33.570644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065391, -0.102654, 0.992565,
		-0.226787, 0.970193, 0.085399,
		-0.971747, -0.219516, -0.086723,
		32.149643, 35.515087, 33.544628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470158, 36.039989, 34.147015>,  <32.829865, 35.668747, 33.605335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470158, 36.039989, 34.147015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188019, 35.777420, 34.039982>,  <32.018738, 35.619877, 33.975761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188019, 35.777420, 34.039982>,  <32.470158, 36.039989, 34.147015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188019, 35.777420, 34.039982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167525, -0.212423, 0.962711,
		-0.688785, 0.723869, 0.039864,
		-0.705344, -0.656423, -0.267580,
		31.976416, 35.580494, 33.959709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449764, 36.733536, 34.275467>,  <32.470158, 36.039989, 34.147015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449764, 36.733536, 34.275467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785583, 36.794479, 34.484058>,  <32.987076, 36.831047, 34.609215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785583, 36.794479, 34.484058>,  <32.449764, 36.733536, 34.275467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785583, 36.794479, 34.484058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357805, 0.567233, -0.741770,
		-0.408819, 0.809341, 0.421704,
		0.839549, 0.152362, 0.521482,
		33.037449, 36.840187, 34.640503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507706, 37.410454, 34.251526>,  <32.449764, 36.733536, 34.275467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507706, 37.410454, 34.251526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871418, 37.276020, 34.349716>,  <33.089645, 37.195358, 34.408630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871418, 37.276020, 34.349716>,  <32.507706, 37.410454, 34.251526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871418, 37.276020, 34.349716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376623, 0.413477, -0.828971,
		0.177107, 0.846217, 0.502543,
		0.909279, -0.336086, 0.245475,
		33.144203, 37.175194, 34.423359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954559, 37.969700, 34.056610>,  <32.507706, 37.410454, 34.251526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954559, 37.969700, 34.056610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200676, 37.656807, 34.095657>,  <33.348347, 37.469070, 34.119083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200676, 37.656807, 34.095657>,  <32.954559, 37.969700, 34.056610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200676, 37.656807, 34.095657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576508, 0.362061, -0.732495,
		0.537640, 0.506973, 0.673737,
		0.615290, -0.782234, 0.097616,
		33.385262, 37.422138, 34.124943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631863, 38.205360, 34.300560>,  <32.954559, 37.969700, 34.056610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631863, 38.205360, 34.300560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690929, 37.852890, 34.120907>,  <33.726372, 37.641407, 34.013115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690929, 37.852890, 34.120907>,  <33.631863, 38.205360, 34.300560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690929, 37.852890, 34.120907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372984, 0.470198, -0.799873,
		0.916011, -0.049401, 0.398100,
		0.147671, -0.881177, -0.449133,
		33.735229, 37.588535, 33.986168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275909, 38.253052, 34.060921>,  <33.631863, 38.205360, 34.300560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275909, 38.253052, 34.060921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106339, 37.962658, 33.844318>,  <34.004597, 37.788422, 33.714359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106339, 37.962658, 33.844318>,  <34.275909, 38.253052, 34.060921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106339, 37.962658, 33.844318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483283, 0.324328, -0.813172,
		0.765978, -0.606426, 0.213365,
		-0.423928, -0.725988, -0.541504,
		33.979160, 37.744862, 33.681866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899902, 37.972279, 33.648960>,  <34.275909, 38.253052, 34.060921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899902, 37.972279, 33.648960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564831, 37.843628, 33.472397>,  <34.363789, 37.766438, 33.366459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564831, 37.843628, 33.472397>,  <34.899902, 37.972279, 33.648960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564831, 37.843628, 33.472397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432912, 0.101716, -0.895679,
		0.332978, -0.941386, 0.054033,
		-0.837683, -0.321633, -0.441406,
		34.313526, 37.747139, 33.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110706, 37.610077, 33.093536>,  <34.899902, 37.972279, 33.648960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110706, 37.610077, 33.093536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734161, 37.695896, 32.989380>,  <34.508236, 37.747387, 32.926888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734161, 37.695896, 32.989380>,  <35.110706, 37.610077, 33.093536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734161, 37.695896, 32.989380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301433, 0.188122, -0.934745,
		-0.151567, -0.958425, -0.241764,
		-0.941364, 0.214552, -0.260388,
		34.451752, 37.760262, 32.911263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984394, 37.180737, 32.468483>,  <35.110706, 37.610077, 33.093536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984394, 37.180737, 32.468483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721684, 37.481575, 32.446579>,  <34.564056, 37.662079, 32.433437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721684, 37.481575, 32.446579>,  <34.984394, 37.180737, 32.468483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721684, 37.481575, 32.446579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265617, 0.162761, -0.950240,
		-0.705757, -0.638641, -0.306666,
		-0.656776, 0.752095, -0.054764,
		34.524651, 37.707203, 32.430149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586956, 37.231808, 31.802811>,  <34.984394, 37.180737, 32.468483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586956, 37.231808, 31.802811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604877, 37.594284, 31.971010>,  <34.615631, 37.811768, 32.071930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604877, 37.594284, 31.971010>,  <34.586956, 37.231808, 31.802811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604877, 37.594284, 31.971010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313925, 0.386825, -0.867074,
		-0.948390, 0.170855, -0.267143,
		0.044806, 0.906187, 0.420497,
		34.618320, 37.866138, 32.097160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324268, 37.677719, 31.248013>,  <34.586956, 37.231808, 31.802811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324268, 37.677719, 31.248013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525318, 37.915806, 31.498796>,  <34.645947, 38.058659, 31.649267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525318, 37.915806, 31.498796>,  <34.324268, 37.677719, 31.248013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525318, 37.915806, 31.498796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314002, 0.550002, -0.773887,
		-0.805463, 0.585842, 0.089545,
		0.502625, 0.595220, 0.626961,
		34.676105, 38.094372, 31.686886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184540, 38.301426, 30.972633>,  <34.324268, 37.677719, 31.248013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184540, 38.301426, 30.972633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512085, 38.354828, 31.195932>,  <34.708611, 38.386868, 31.329912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512085, 38.354828, 31.195932>,  <34.184540, 38.301426, 30.972633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512085, 38.354828, 31.195932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346447, 0.660481, -0.666138,
		-0.457643, 0.738879, 0.494592,
		0.818863, 0.133504, 0.558247,
		34.757744, 38.394878, 31.363407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294403, 39.018147, 31.069450>,  <34.184540, 38.301426, 30.972633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294403, 39.018147, 31.069450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661987, 38.873333, 31.131987>,  <34.882538, 38.786446, 31.169508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661987, 38.873333, 31.131987>,  <34.294403, 39.018147, 31.069450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661987, 38.873333, 31.131987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354137, 0.583223, -0.731052,
		0.173482, 0.727175, 0.664169,
		0.918962, -0.362031, 0.156341,
		34.937675, 38.764725, 31.178888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712547, 39.563236, 30.921240>,  <34.294403, 39.018147, 31.069450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712547, 39.563236, 30.921240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001080, 39.286762, 30.903610>,  <35.174198, 39.120876, 30.893032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001080, 39.286762, 30.903610>,  <34.712547, 39.563236, 30.921240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001080, 39.286762, 30.903610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404178, 0.471768, -0.783629,
		0.562428, 0.547442, 0.619663,
		0.721329, -0.691189, -0.044072,
		35.217480, 39.079407, 30.890388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397167, 39.909912, 30.838930>,  <34.712547, 39.563236, 30.921240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397167, 39.909912, 30.838930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439381, 39.530109, 30.720749>,  <35.464710, 39.302227, 30.649839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439381, 39.530109, 30.720749>,  <35.397167, 39.909912, 30.838930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439381, 39.530109, 30.720749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355541, 0.313504, -0.880515,
		0.928683, -0.012118, 0.370676,
		0.105538, -0.949510, -0.295454,
		35.471043, 39.245258, 30.632113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126797, 39.778175, 30.770041>,  <35.397167, 39.909912, 30.838930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126797, 39.778175, 30.770041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901718, 39.545044, 30.535543>,  <35.766670, 39.405167, 30.394844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901718, 39.545044, 30.535543>,  <36.126797, 39.778175, 30.770041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901718, 39.545044, 30.535543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424491, 0.404815, -0.809896,
		0.709351, -0.704583, 0.019616,
		-0.562698, -0.582828, -0.586245,
		35.732910, 39.370197, 30.359671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602032, 39.709534, 30.167908>,  <36.126797, 39.778175, 30.770041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602032, 39.709534, 30.167908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262707, 39.555859, 30.022156>,  <36.059113, 39.463654, 29.934706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262707, 39.555859, 30.022156>,  <36.602032, 39.709534, 30.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262707, 39.555859, 30.022156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290229, 0.238205, -0.926836,
		0.442874, -0.891998, -0.090570,
		-0.848310, -0.384185, -0.364379,
		36.008213, 39.440601, 29.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664825, 39.225708, 29.596676>,  <36.602032, 39.709534, 30.167908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664825, 39.225708, 29.596676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290901, 39.357845, 29.544508>,  <36.066547, 39.437126, 29.513206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290901, 39.357845, 29.544508>,  <36.664825, 39.225708, 29.596676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290901, 39.357845, 29.544508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165683, 0.080812, -0.982863,
		-0.314140, -0.940396, -0.130275,
		-0.934808, 0.330341, -0.130421,
		36.010460, 39.456947, 29.505383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497780, 38.906528, 28.952984>,  <36.664825, 39.225708, 29.596676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497780, 38.906528, 28.952984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245331, 39.214272, 28.992519>,  <36.093861, 39.398918, 29.016241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245331, 39.214272, 28.992519>,  <36.497780, 38.906528, 28.952984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245331, 39.214272, 28.992519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177066, 0.266947, -0.947305,
		-0.755204, -0.580363, -0.304704,
		-0.631121, 0.769362, 0.098837,
		36.055996, 39.445080, 29.022171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216358, 38.901382, 28.280405>,  <36.497780, 38.906528, 28.952984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216358, 38.901382, 28.280405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109844, 39.253235, 28.438061>,  <36.045937, 39.464348, 28.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109844, 39.253235, 28.438061>,  <36.216358, 38.901382, 28.280405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109844, 39.253235, 28.438061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105159, 0.432972, -0.895253,
		-0.958142, -0.196942, -0.207794,
		-0.266282, 0.879630, 0.394138,
		36.029961, 39.517124, 28.556303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693420, 39.053654, 27.837902>,  <36.216358, 38.901382, 28.280405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693420, 39.053654, 27.837902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804432, 39.400173, 28.004034>,  <35.871040, 39.608086, 28.103714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804432, 39.400173, 28.004034>,  <35.693420, 39.053654, 27.837902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804432, 39.400173, 28.004034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087119, 0.407839, -0.908888,
		-0.956759, 0.288427, 0.037716,
		0.277529, 0.866301, 0.415331,
		35.887691, 39.660065, 28.128633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227901, 39.604496, 27.677046>,  <35.693420, 39.053654, 27.837902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227901, 39.604496, 27.677046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578293, 39.778618, 27.760149>,  <35.788528, 39.883091, 27.810011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578293, 39.778618, 27.760149>,  <35.227901, 39.604496, 27.677046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578293, 39.778618, 27.760149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144909, 0.173321, -0.974146,
		-0.460060, 0.883442, 0.088747,
		0.875983, 0.435305, 0.207757,
		35.841087, 39.909210, 27.822475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267548, 40.135384, 27.200764>,  <35.227901, 39.604496, 27.677046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267548, 40.135384, 27.200764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640907, 40.069904, 27.328495>,  <35.864922, 40.030617, 27.405134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640907, 40.069904, 27.328495>,  <35.267548, 40.135384, 27.200764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640907, 40.069904, 27.328495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354043, 0.275068, -0.893863,
		0.058489, 0.947385, 0.314705,
		0.933398, -0.163701, 0.319327,
		35.920925, 40.020794, 27.424294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608929, 40.666710, 26.896275>,  <35.267548, 40.135384, 27.200764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608929, 40.666710, 26.896275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891075, 40.398445, 26.988073>,  <36.060364, 40.237488, 27.043154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891075, 40.398445, 26.988073>,  <35.608929, 40.666710, 26.896275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891075, 40.398445, 26.988073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520844, 0.270767, -0.809572,
		0.480806, 0.690581, 0.540300,
		0.705370, -0.670659, 0.229499,
		36.102688, 40.197247, 27.056923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231728, 40.948368, 26.875463>,  <35.608929, 40.666710, 26.896275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231728, 40.948368, 26.875463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312576, 40.564751, 26.796076>,  <36.361084, 40.334579, 26.748444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312576, 40.564751, 26.796076>,  <36.231728, 40.948368, 26.875463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312576, 40.564751, 26.796076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408202, 0.266708, -0.873063,
		0.890235, 0.095446, 0.445389,
		0.202119, -0.959040, -0.198471,
		36.373211, 40.277039, 26.736534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821129, 41.078705, 26.423458>,  <36.231728, 40.948368, 26.875463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821129, 41.078705, 26.423458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695484, 40.700836, 26.385679>,  <36.620098, 40.474113, 26.363012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695484, 40.700836, 26.385679>,  <36.821129, 41.078705, 26.423458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695484, 40.700836, 26.385679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328305, -0.014738, -0.944457,
		0.890813, -0.327676, 0.314771,
		-0.314115, -0.944675, -0.094449,
		36.601250, 40.417435, 26.357344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335384, 40.767593, 25.997932>,  <36.821129, 41.078705, 26.423458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335384, 40.767593, 25.997932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046917, 40.490597, 25.990166>,  <36.873837, 40.324398, 25.985506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046917, 40.490597, 25.990166>,  <37.335384, 40.767593, 25.997932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046917, 40.490597, 25.990166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282439, -0.268310, -0.920998,
		0.632570, -0.669679, 0.389082,
		-0.721168, -0.692488, -0.019418,
		36.830566, 40.282852, 25.984341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655720, 40.182693, 25.718969>,  <37.335384, 40.767593, 25.997932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655720, 40.182693, 25.718969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270267, 40.163475, 25.613819>,  <37.038994, 40.151943, 25.550728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270267, 40.163475, 25.613819>,  <37.655720, 40.182693, 25.718969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270267, 40.163475, 25.613819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267149, -0.148828, -0.952093,
		0.006623, -0.987695, 0.156251,
		-0.963632, -0.048048, -0.262876,
		36.981178, 40.149059, 25.534956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542282, 39.565315, 25.286095>,  <37.655720, 40.182693, 25.718969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542282, 39.565315, 25.286095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234901, 39.807438, 25.203070>,  <37.050472, 39.952713, 25.153255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234901, 39.807438, 25.203070>,  <37.542282, 39.565315, 25.286095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234901, 39.807438, 25.203070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123143, -0.178413, -0.976220,
		-0.627943, -0.775741, 0.062563,
		-0.768455, 0.605305, -0.207561,
		37.004364, 39.989029, 25.140802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989899, 39.155510, 24.928600>,  <37.542282, 39.565315, 25.286095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989899, 39.155510, 24.928600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960541, 39.545074, 24.842712>,  <36.942928, 39.778812, 24.791180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960541, 39.545074, 24.842712>,  <36.989899, 39.155510, 24.928600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960541, 39.545074, 24.842712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098804, -0.221344, -0.970178,
		-0.992397, -0.049986, 0.112471,
		-0.073390, 0.973914, -0.214722,
		36.938522, 39.837250, 24.778296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547985, 39.145573, 24.311560>,  <36.989899, 39.155510, 24.928600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547985, 39.145573, 24.311560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715462, 39.508823, 24.312515>,  <36.815948, 39.726772, 24.313089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715462, 39.508823, 24.312515>,  <36.547985, 39.145573, 24.311560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715462, 39.508823, 24.312515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005703, 0.005260, -0.999970,
		-0.908108, 0.418670, 0.007382,
		0.418696, 0.908123, 0.002389,
		36.841072, 39.781261, 24.313232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345604, 39.490639, 23.705772>,  <36.547985, 39.145573, 24.311560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345604, 39.490639, 23.705772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636337, 39.748398, 23.800814>,  <36.810780, 39.903053, 23.857840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636337, 39.748398, 23.800814>,  <36.345604, 39.490639, 23.705772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636337, 39.748398, 23.800814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161904, 0.175444, -0.971085,
		-0.667456, 0.744289, 0.023188,
		0.726836, 0.644402, 0.237604,
		36.854389, 39.941719, 23.872095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188862, 40.194359, 23.345467>,  <36.345604, 39.490639, 23.705772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188862, 40.194359, 23.345467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581219, 40.182655, 23.422394>,  <36.816635, 40.175632, 23.468550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581219, 40.182655, 23.422394>,  <36.188862, 40.194359, 23.345467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581219, 40.182655, 23.422394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187615, 0.403597, -0.895494,
		-0.051417, 0.914469, 0.401377,
		0.980896, -0.029260, 0.192320,
		36.875488, 40.173878, 23.480089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498554, 40.799858, 22.963575>,  <36.188862, 40.194359, 23.345467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498554, 40.799858, 22.963575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809772, 40.554878, 23.019493>,  <36.996506, 40.407890, 23.053043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809772, 40.554878, 23.019493>,  <36.498554, 40.799858, 22.963575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809772, 40.554878, 23.019493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396640, 0.306370, -0.865341,
		0.487152, 0.728724, 0.481294,
		0.778049, -0.612453, 0.139792,
		37.043186, 40.371143, 23.061430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042858, 41.239052, 22.895800>,  <36.498554, 40.799858, 22.963575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042858, 41.239052, 22.895800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210598, 40.877544, 22.861515>,  <37.311241, 40.660641, 22.840944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210598, 40.877544, 22.861515>,  <37.042858, 41.239052, 22.895800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210598, 40.877544, 22.861515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554945, 0.329922, -0.763667,
		0.718456, 0.272681, 0.639895,
		0.419353, -0.903768, -0.085712,
		37.336403, 40.606415, 22.835802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803768, 41.303883, 22.787125>,  <37.042858, 41.239052, 22.895800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803768, 41.303883, 22.787125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713409, 40.943245, 22.639557>,  <37.659195, 40.726864, 22.551016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713409, 40.943245, 22.639557>,  <37.803768, 41.303883, 22.787125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713409, 40.943245, 22.639557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603141, 0.167949, -0.779753,
		0.764980, -0.398651, 0.505849,
		-0.225893, -0.901594, -0.368920,
		37.645641, 40.672768, 22.528881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447433, 40.994656, 22.651581>,  <37.803768, 41.303883, 22.787125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447433, 40.994656, 22.651581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190571, 40.790791, 22.422537>,  <38.036453, 40.668472, 22.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190571, 40.790791, 22.422537>,  <38.447433, 40.994656, 22.651581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190571, 40.790791, 22.422537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651978, 0.029767, -0.757653,
		0.403193, -0.859859, 0.313174,
		-0.642152, -0.509663, -0.572611,
		37.997925, 40.637890, 22.250753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802216, 40.642040, 22.327667>,  <38.447433, 40.994656, 22.651581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802216, 40.642040, 22.327667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471382, 40.647839, 22.102913>,  <38.272881, 40.651318, 21.968060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471382, 40.647839, 22.102913>,  <38.802216, 40.642040, 22.327667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471382, 40.647839, 22.102913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558310, 0.136657, -0.818300,
		0.064922, -0.990512, -0.121122,
		-0.827088, 0.014498, -0.561886,
		38.223255, 40.652187, 21.934347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177589, 40.615135, 21.685558>,  <38.802216, 40.642040, 22.327667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177589, 40.615135, 21.685558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545681, 40.462475, 21.650845>,  <39.766537, 40.370880, 21.630016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545681, 40.462475, 21.650845>,  <39.177589, 40.615135, 21.685558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545681, 40.462475, 21.650845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000667, -0.220203, 0.975454,
		-0.391390, -0.897694, -0.202381,
		0.920225, -0.381648, -0.086784,
		39.821747, 40.347980, 21.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177986, 39.870731, 21.962027>,  <39.177589, 40.615135, 21.685558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177986, 39.870731, 21.962027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563736, 39.976429, 21.957062>,  <39.795185, 40.039848, 21.954082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563736, 39.976429, 21.957062>,  <39.177986, 39.870731, 21.962027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563736, 39.976429, 21.957062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098213, -0.314078, 0.944304,
		0.245627, -0.911883, -0.328842,
		0.964376, 0.264243, -0.012413,
		39.853050, 40.055702, 21.953339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501560, 39.351646, 22.151463>,  <39.177986, 39.870731, 21.962027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501560, 39.351646, 22.151463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738609, 39.656311, 22.256281>,  <39.880840, 39.839111, 22.319172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738609, 39.656311, 22.256281>,  <39.501560, 39.351646, 22.151463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738609, 39.656311, 22.256281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031496, -0.303167, 0.952416,
		0.804863, -0.572679, -0.155675,
		0.592624, 0.761661, 0.262045,
		39.916397, 39.884808, 22.334894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964260, 39.157585, 22.747227>,  <39.501560, 39.351646, 22.151463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964260, 39.157585, 22.747227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046539, 39.548939, 22.755833>,  <40.095905, 39.783749, 22.760996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046539, 39.548939, 22.755833>,  <39.964260, 39.157585, 22.747227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046539, 39.548939, 22.755833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151783, -0.053614, 0.986959,
		0.966774, -0.199747, -0.159530,
		0.205695, 0.978380, 0.021515,
		40.108250, 39.842453, 22.762287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527260, 39.191135, 23.210798>,  <39.964260, 39.157585, 22.747227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527260, 39.191135, 23.210798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382912, 39.563942, 23.197365>,  <40.296303, 39.787624, 23.189304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382912, 39.563942, 23.197365>,  <40.527260, 39.191135, 23.210798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382912, 39.563942, 23.197365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026636, 0.046295, 0.998573,
		0.932237, 0.359456, -0.041531,
		-0.360866, 0.932013, -0.033583,
		40.274651, 39.843544, 23.187290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941914, 39.604889, 23.692841>,  <40.527260, 39.191135, 23.210798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941914, 39.604889, 23.692841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585953, 39.782970, 23.653101>,  <40.372375, 39.889820, 23.629257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585953, 39.782970, 23.653101>,  <40.941914, 39.604889, 23.692841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585953, 39.782970, 23.653101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092056, 0.038038, 0.995027,
		0.446773, 0.894619, 0.007134,
		-0.889898, 0.445208, -0.099349,
		40.318985, 39.916534, 23.623297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988029, 40.247471, 24.165831>,  <40.941914, 39.604889, 23.692841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988029, 40.247471, 24.165831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609737, 40.148750, 24.081278>,  <40.382763, 40.089516, 24.030546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609737, 40.148750, 24.081278>,  <40.988029, 40.247471, 24.165831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609737, 40.148750, 24.081278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208418, -0.038386, 0.977286,
		-0.249313, 0.968305, -0.015136,
		-0.945730, -0.246805, -0.211382,
		40.326019, 40.074707, 24.017862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679970, 40.803333, 24.570185>,  <40.988029, 40.247471, 24.165831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679970, 40.803333, 24.570185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390873, 40.538246, 24.491743>,  <40.217415, 40.379192, 24.444677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390873, 40.538246, 24.491743>,  <40.679970, 40.803333, 24.570185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390873, 40.538246, 24.491743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380155, 0.144240, 0.913607,
		-0.577176, 0.734848, -0.356182,
		-0.722738, -0.662716, -0.196104,
		40.174053, 40.339432, 24.432911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015797, 41.011162, 24.796066>,  <40.679970, 40.803333, 24.570185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015797, 41.011162, 24.796066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965919, 40.614815, 24.775560>,  <39.935993, 40.377007, 24.763256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965919, 40.614815, 24.775560>,  <40.015797, 41.011162, 24.796066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965919, 40.614815, 24.775560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305579, -0.010805, 0.952106,
		-0.943966, 0.134391, -0.301441,
		-0.124697, -0.990870, -0.051267,
		39.928509, 40.317554, 24.760180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497589, 40.916859, 25.318829>,  <40.015797, 41.011162, 24.796066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497589, 40.916859, 25.318829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598759, 40.540394, 25.229172>,  <39.659462, 40.314514, 25.175377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598759, 40.540394, 25.229172>,  <39.497589, 40.916859, 25.318829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598759, 40.540394, 25.229172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325993, -0.301031, 0.896163,
		-0.910910, -0.153595, -0.382952,
		0.252926, -0.941164, -0.224142,
		39.674637, 40.258045, 25.161930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937431, 40.427219, 25.395882>,  <39.497589, 40.916859, 25.318829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937431, 40.427219, 25.395882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286110, 40.242867, 25.462484>,  <39.495319, 40.132256, 25.502445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286110, 40.242867, 25.462484>,  <38.937431, 40.427219, 25.395882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286110, 40.242867, 25.462484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389218, -0.444722, 0.806679,
		-0.297733, -0.767992, -0.567048,
		0.871702, -0.460880, 0.166508,
		39.547619, 40.104603, 25.512436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755325, 39.763870, 25.649805>,  <38.937431, 40.427219, 25.395882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755325, 39.763870, 25.649805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138966, 39.814537, 25.751070>,  <39.369148, 39.844936, 25.811829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138966, 39.814537, 25.751070>,  <38.755325, 39.763870, 25.649805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138966, 39.814537, 25.751070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199030, -0.334216, 0.921242,
		0.201298, -0.933946, -0.295336,
		0.959096, 0.126664, 0.253160,
		39.426693, 39.852535, 25.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868034, 39.239674, 26.072926>,  <38.755325, 39.763870, 25.649805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868034, 39.239674, 26.072926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198185, 39.448818, 26.158134>,  <39.396275, 39.574306, 26.209259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198185, 39.448818, 26.158134>,  <38.868034, 39.239674, 26.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198185, 39.448818, 26.158134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026409, -0.341136, 0.939643,
		0.563971, -0.781181, -0.267756,
		0.825372, 0.522860, 0.213021,
		39.445797, 39.605675, 26.222040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282227, 38.904388, 26.339972>,  <38.868034, 39.239674, 26.072926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282227, 38.904388, 26.339972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417259, 39.253250, 26.481609>,  <39.498280, 39.462566, 26.566591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417259, 39.253250, 26.481609>,  <39.282227, 38.904388, 26.339972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417259, 39.253250, 26.481609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087991, -0.345292, 0.934361,
		0.937174, -0.346581, -0.039823,
		0.337582, 0.872155, 0.354095,
		39.518536, 39.514896, 26.587837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872406, 38.647072, 26.855692>,  <39.282227, 38.904388, 26.339972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872406, 38.647072, 26.855692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764221, 39.018337, 26.957962>,  <39.699310, 39.241096, 27.019323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764221, 39.018337, 26.957962>,  <39.872406, 38.647072, 26.855692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764221, 39.018337, 26.957962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070763, -0.245689, 0.966763,
		0.960127, 0.279562, 0.000770,
		-0.270459, 0.928160, 0.255676,
		39.683083, 39.296787, 27.034664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280773, 38.783646, 27.383009>,  <39.872406, 38.647072, 26.855692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280773, 38.783646, 27.383009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981331, 39.047279, 27.411863>,  <39.801666, 39.205460, 27.429176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981331, 39.047279, 27.411863>,  <40.280773, 38.783646, 27.383009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981331, 39.047279, 27.411863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131654, -0.254398, 0.958097,
		0.649817, 0.707736, 0.277213,
		-0.748602, 0.659084, 0.072136,
		39.756752, 39.245003, 27.433504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318737, 39.111801, 28.064415>,  <40.280773, 38.783646, 27.383009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318737, 39.111801, 28.064415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944378, 39.168983, 27.935631>,  <39.719761, 39.203293, 27.858360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944378, 39.168983, 27.935631>,  <40.318737, 39.111801, 28.064415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944378, 39.168983, 27.935631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343055, -0.162187, 0.925207,
		0.080050, 0.976349, 0.200833,
		-0.935898, 0.142959, -0.321958,
		39.663609, 39.211872, 27.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013844, 39.618275, 28.516027>,  <40.318737, 39.111801, 28.064415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013844, 39.618275, 28.516027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701469, 39.404396, 28.386887>,  <39.514046, 39.276070, 28.309402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701469, 39.404396, 28.386887>,  <40.013844, 39.618275, 28.516027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701469, 39.404396, 28.386887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412332, 0.053073, 0.909486,
		-0.469167, 0.843374, -0.261920,
		-0.780938, -0.534699, -0.322850,
		39.467190, 39.243988, 28.290031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420048, 40.034248, 28.541727>,  <40.013844, 39.618275, 28.516027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420048, 40.034248, 28.541727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320450, 39.648384, 28.576202>,  <39.260689, 39.416866, 28.596888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320450, 39.648384, 28.576202>,  <39.420048, 40.034248, 28.541727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320450, 39.648384, 28.576202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519319, 0.208102, 0.828856,
		-0.817501, 0.161624, -0.552784,
		-0.248998, -0.964661, 0.086189,
		39.245750, 39.358986, 28.602058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823055, 40.083569, 29.021740>,  <39.420048, 40.034248, 28.541727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823055, 40.083569, 29.021740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860298, 39.693260, 28.942541>,  <38.882645, 39.459076, 28.895021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860298, 39.693260, 28.942541>,  <38.823055, 40.083569, 29.021740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860298, 39.693260, 28.942541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575110, -0.215038, 0.789308,
		-0.812760, 0.040378, -0.581197,
		0.093109, -0.975771, -0.197997,
		38.888229, 39.400528, 28.883142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166946, 39.794647, 29.219097>,  <38.823055, 40.083569, 29.021740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166946, 39.794647, 29.219097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415245, 39.481091, 29.224483>,  <38.564224, 39.292957, 29.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415245, 39.481091, 29.224483>,  <38.166946, 39.794647, 29.219097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415245, 39.481091, 29.224483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483661, -0.369371, 0.793497,
		-0.617043, -0.499076, -0.608425,
		0.620750, -0.783893, 0.013465,
		38.601471, 39.245922, 29.228523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766472, 39.155384, 29.108541>,  <38.166946, 39.794647, 29.219097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766472, 39.155384, 29.108541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104679, 39.040409, 29.288530>,  <38.307606, 38.971424, 29.396523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104679, 39.040409, 29.288530>,  <37.766472, 39.155384, 29.108541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104679, 39.040409, 29.288530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526881, -0.585758, 0.615860,
		0.086552, -0.757803, -0.646717,
		0.845520, -0.287440, 0.449971,
		38.358334, 38.954178, 29.423521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569023, 38.440212, 29.385933>,  <37.766472, 39.155384, 29.108541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569023, 38.440212, 29.385933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896618, 38.525711, 29.598942>,  <38.093174, 38.577011, 29.726748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896618, 38.525711, 29.598942>,  <37.569023, 38.440212, 29.385933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896618, 38.525711, 29.598942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343017, -0.561600, 0.752957,
		0.460006, -0.799323, -0.386622,
		0.818983, 0.213747, 0.532521,
		38.142311, 38.589836, 29.758698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984940, 37.842617, 29.656593>,  <37.569023, 38.440212, 29.385933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984940, 37.842617, 29.656593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079815, 38.132053, 29.915871>,  <38.136742, 38.305717, 30.071438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079815, 38.132053, 29.915871>,  <37.984940, 37.842617, 29.656593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079815, 38.132053, 29.915871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482230, -0.491525, 0.725161,
		0.843324, -0.484578, 0.232354,
		0.237190, 0.723593, 0.648193,
		38.150970, 38.349133, 30.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264450, 37.475857, 30.218355>,  <37.984940, 37.842617, 29.656593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264450, 37.475857, 30.218355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148178, 37.835251, 30.349949>,  <38.078415, 38.050888, 30.428905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148178, 37.835251, 30.349949>,  <38.264450, 37.475857, 30.218355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148178, 37.835251, 30.349949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386130, -0.424745, 0.818838,
		0.875448, 0.110988, 0.470396,
		-0.290679, 0.898484, 0.328986,
		38.060974, 38.104797, 30.448645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439991, 37.360493, 30.906078>,  <38.264450, 37.475857, 30.218355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439991, 37.360493, 30.906078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206600, 37.684372, 30.931204>,  <38.066566, 37.878700, 30.946280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206600, 37.684372, 30.931204>,  <38.439991, 37.360493, 30.906078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206600, 37.684372, 30.931204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441699, -0.381294, 0.812107,
		0.681511, 0.446101, 0.580118,
		-0.583477, 0.809697, 0.062814,
		38.031559, 37.927280, 30.950048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477200, 37.588577, 31.565420>,  <38.439991, 37.360493, 30.906078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477200, 37.588577, 31.565420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131031, 37.738018, 31.431870>,  <37.923332, 37.827682, 31.351740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131031, 37.738018, 31.431870>,  <38.477200, 37.588577, 31.565420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131031, 37.738018, 31.431870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420490, -0.179178, 0.889429,
		0.272466, 0.910120, 0.312159,
		-0.865419, 0.373599, -0.333876,
		37.871407, 37.850098, 31.331707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400410, 38.025173, 31.984581>,  <38.477200, 37.588577, 31.565420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400410, 38.025173, 31.984581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028145, 38.004147, 31.839752>,  <37.804787, 37.991531, 31.752855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028145, 38.004147, 31.839752>,  <38.400410, 38.025173, 31.984581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028145, 38.004147, 31.839752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331686, -0.296451, 0.895601,
		-0.154418, 0.953600, 0.258461,
		-0.930666, -0.052570, -0.362073,
		37.748943, 37.988377, 31.731131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037148, 38.492924, 32.439537>,  <38.400410, 38.025173, 31.984581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037148, 38.492924, 32.439537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766884, 38.244720, 32.280312>,  <37.604725, 38.095798, 32.184776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766884, 38.244720, 32.280312>,  <38.037148, 38.492924, 32.439537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766884, 38.244720, 32.280312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402166, -0.142306, 0.904440,
		-0.617858, 0.771181, -0.153396,
		-0.675658, -0.620506, -0.398068,
		37.564186, 38.058567, 32.160892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370777, 38.615475, 32.794468>,  <38.037148, 38.492924, 32.439537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370777, 38.615475, 32.794468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308540, 38.241619, 32.666565>,  <37.271198, 38.017307, 32.589821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308540, 38.241619, 32.666565>,  <37.370777, 38.615475, 32.794468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308540, 38.241619, 32.666565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070386, -0.312390, 0.947343,
		-0.985311, 0.169904, -0.017181,
		-0.155590, -0.934636, -0.319761,
		37.261864, 37.961227, 32.570637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792110, 38.327168, 33.149326>,  <37.370777, 38.615475, 32.794468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792110, 38.327168, 33.149326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026302, 38.026287, 33.028393>,  <37.166817, 37.845760, 32.955833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026302, 38.026287, 33.028393>,  <36.792110, 38.327168, 33.149326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026302, 38.026287, 33.028393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139596, -0.460909, 0.876399,
		-0.798579, -0.470908, -0.374857,
		0.585478, -0.752202, -0.302335,
		37.201946, 37.800625, 32.937691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424095, 37.689907, 33.272949>,  <36.792110, 38.327168, 33.149326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424095, 37.689907, 33.272949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809216, 37.587906, 33.237202>,  <37.040287, 37.526707, 33.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809216, 37.587906, 33.237202>,  <36.424095, 37.689907, 33.272949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809216, 37.587906, 33.237202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082443, -0.592206, 0.801558,
		-0.257324, -0.764374, -0.591200,
		0.962802, -0.255000, -0.089372,
		37.098057, 37.511406, 33.210392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517368, 37.053902, 33.583828>,  <36.424095, 37.689907, 33.272949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517368, 37.053902, 33.583828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902138, 37.162762, 33.593983>,  <37.132999, 37.228077, 33.600075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902138, 37.162762, 33.593983>,  <36.517368, 37.053902, 33.583828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902138, 37.162762, 33.593983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133283, -0.548126, 0.825708,
		0.238633, -0.790881, -0.563526,
		0.961920, 0.272149, 0.025390,
		37.190712, 37.244408, 33.601601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753639, 36.497395, 33.825752>,  <36.517368, 37.053902, 33.583828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753639, 36.497395, 33.825752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047905, 36.760296, 33.891251>,  <37.224464, 36.918037, 33.930550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047905, 36.760296, 33.891251>,  <36.753639, 36.497395, 33.825752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047905, 36.760296, 33.891251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246972, -0.485389, 0.838691,
		0.630713, -0.576557, -0.519408,
		0.735667, 0.657252, 0.163748,
		37.268604, 36.957470, 33.940376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353470, 36.089611, 33.981224>,  <36.753639, 36.497395, 33.825752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353470, 36.089611, 33.981224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440739, 36.456833, 34.113636>,  <37.493099, 36.677166, 34.193085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440739, 36.456833, 34.113636>,  <37.353470, 36.089611, 33.981224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440739, 36.456833, 34.113636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238735, -0.379104, 0.894028,
		0.946260, -0.116021, -0.301881,
		0.218170, 0.918052, 0.331033,
		37.506191, 36.732250, 34.212944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022579, 36.020184, 34.326305>,  <37.353470, 36.089611, 33.981224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022579, 36.020184, 34.326305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908035, 36.384525, 34.445198>,  <37.839310, 36.603130, 34.516533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908035, 36.384525, 34.445198>,  <38.022579, 36.020184, 34.326305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908035, 36.384525, 34.445198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178938, -0.253920, 0.950529,
		0.941264, 0.325380, -0.090273,
		-0.286361, 0.910853, 0.297229,
		37.822128, 36.657780, 34.534367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622402, 36.299259, 34.643024>,  <38.022579, 36.020184, 34.326305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622402, 36.299259, 34.643024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288895, 36.462219, 34.792080>,  <38.088791, 36.559994, 34.881512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288895, 36.462219, 34.792080>,  <38.622402, 36.299259, 34.643024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288895, 36.462219, 34.792080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328220, -0.176973, 0.927875,
		0.443959, 0.895940, 0.013839,
		-0.833770, 0.407396, 0.372635,
		38.038765, 36.584438, 34.903870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790775, 36.907795, 35.030430>,  <38.622402, 36.299259, 34.643024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790775, 36.907795, 35.030430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466351, 36.723320, 35.174358>,  <38.271694, 36.612633, 35.260715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466351, 36.723320, 35.174358>,  <38.790775, 36.907795, 35.030430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466351, 36.723320, 35.174358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421532, -0.034322, 0.906164,
		-0.405564, 0.886637, 0.222244,
		-0.811067, -0.461190, 0.359826,
		38.223030, 36.584965, 35.282307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885078, 37.064480, 35.742992>,  <38.790775, 36.907795, 35.030430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885078, 37.064480, 35.742992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548828, 36.848980, 35.720730>,  <38.347076, 36.719681, 35.707371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548828, 36.848980, 35.720730>,  <38.885078, 37.064480, 35.742992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548828, 36.848980, 35.720730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006684, -0.092437, 0.995696,
		-0.541574, 0.837381, 0.074104,
		-0.840627, -0.538747, -0.055659,
		38.296638, 36.687355, 35.704033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311195, 37.408398, 36.186325>,  <38.885078, 37.064480, 35.742992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311195, 37.408398, 36.186325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213234, 37.022076, 36.152267>,  <38.154457, 36.790283, 36.131832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213234, 37.022076, 36.152267>,  <38.311195, 37.408398, 36.186325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213234, 37.022076, 36.152267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198540, -0.036002, 0.979432,
		-0.949001, 0.256774, -0.182933,
		-0.244907, -0.965801, -0.085146,
		38.139763, 36.732334, 36.126724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753376, 37.313686, 36.640545>,  <38.311195, 37.408398, 36.186325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753376, 37.313686, 36.640545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937424, 36.964966, 36.573315>,  <38.047852, 36.755733, 36.532974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937424, 36.964966, 36.573315>,  <37.753376, 37.313686, 36.640545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937424, 36.964966, 36.573315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124856, -0.123892, 0.984409,
		-0.879036, -0.473929, 0.051845,
		0.460117, -0.871804, -0.168079,
		38.075459, 36.703426, 36.522892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421738, 36.788498, 36.994896>,  <37.753376, 37.313686, 36.640545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421738, 36.788498, 36.994896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813599, 36.732883, 36.936985>,  <38.048714, 36.699516, 36.902241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813599, 36.732883, 36.936985>,  <37.421738, 36.788498, 36.994896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813599, 36.732883, 36.936985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138969, -0.050639, 0.989001,
		-0.144839, -0.988991, -0.030287,
		0.979648, -0.139037, -0.144774,
		38.107494, 36.691174, 36.893555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591946, 36.202866, 37.454876>,  <37.421738, 36.788498, 36.994896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591946, 36.202866, 37.454876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924103, 36.410793, 37.374638>,  <38.123398, 36.535549, 37.326496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924103, 36.410793, 37.374638>,  <37.591946, 36.202866, 37.454876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924103, 36.410793, 37.374638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202537, 0.053783, 0.977797,
		0.519068, -0.852580, -0.060622,
		0.830390, 0.519821, -0.200596,
		38.173222, 36.566738, 37.314457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166836, 35.788425, 37.732491>,  <37.591946, 36.202866, 37.454876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166836, 35.788425, 37.732491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314262, 36.159222, 37.704647>,  <38.402718, 36.381699, 37.687943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314262, 36.159222, 37.704647>,  <38.166836, 35.788425, 37.732491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314262, 36.159222, 37.704647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349748, -0.068904, 0.934306,
		0.861297, -0.368702, -0.349609,
		0.368571, 0.926990, -0.069606,
		38.424835, 36.437317, 37.683765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785648, 35.738731, 38.104332>,  <38.166836, 35.788425, 37.732491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785648, 35.738731, 38.104332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738777, 36.133633, 38.061253>,  <38.710655, 36.370575, 38.035404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738777, 36.133633, 38.061253>,  <38.785648, 35.738731, 38.104332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738777, 36.133633, 38.061253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624421, 0.157566, 0.765030,
		0.772249, 0.022394, -0.634925,
		-0.117175, 0.987255, -0.107697,
		38.703625, 36.429810, 38.028942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516647, 36.086376, 38.151917>,  <38.785648, 35.738731, 38.104332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516647, 36.086376, 38.151917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211559, 36.324535, 38.252926>,  <39.028507, 36.467430, 38.313530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211559, 36.324535, 38.252926>,  <39.516647, 36.086376, 38.151917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211559, 36.324535, 38.252926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341951, 0.039847, 0.938873,
		0.548938, 0.802445, -0.233988,
		-0.762717, 0.595395, 0.252523,
		38.982742, 36.503155, 38.328682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742886, 36.363899, 38.743351>,  <39.516647, 36.086376, 38.151917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742886, 36.363899, 38.743351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362385, 36.487259, 38.742264>,  <39.134083, 36.561275, 38.741611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362385, 36.487259, 38.742264>,  <39.742886, 36.363899, 38.743351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362385, 36.487259, 38.742264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045880, 0.150214, 0.987588,
		0.304982, 0.939321, -0.157041,
		-0.951252, 0.308402, -0.002716,
		39.077007, 36.579781, 38.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795010, 36.998425, 39.064056>,  <39.742886, 36.363899, 38.743351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795010, 36.998425, 39.064056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426727, 36.849415, 39.110584>,  <39.205757, 36.760010, 39.138500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426727, 36.849415, 39.110584>,  <39.795010, 36.998425, 39.064056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426727, 36.849415, 39.110584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102266, 0.057338, 0.993103,
		-0.376623, 0.926250, -0.014695,
		-0.920705, -0.372522, 0.116318,
		39.150517, 36.737659, 39.145481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657269, 37.343296, 39.621147>,  <39.795010, 36.998425, 39.064056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657269, 37.343296, 39.621147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397732, 37.039448, 39.603348>,  <39.242008, 36.857140, 39.592667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397732, 37.039448, 39.603348>,  <39.657269, 37.343296, 39.621147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397732, 37.039448, 39.603348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004731, -0.054453, 0.998505,
		-0.760910, 0.648081, 0.031738,
		-0.648841, -0.759622, -0.044500,
		39.203079, 36.811562, 39.589996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030258, 37.461266, 39.933949>,  <39.657269, 37.343296, 39.621147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030258, 37.461266, 39.933949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135509, 37.075867, 39.953674>,  <39.198658, 36.844627, 39.965511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135509, 37.075867, 39.953674>,  <39.030258, 37.461266, 39.933949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135509, 37.075867, 39.953674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019852, 0.056514, 0.998204,
		-0.964558, -0.261672, 0.033998,
		0.263124, -0.963501, 0.049316,
		39.214447, 36.786816, 39.968468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551308, 37.136284, 40.435959>,  <39.030258, 37.461266, 39.933949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551308, 37.136284, 40.435959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902931, 36.946522, 40.417221>,  <39.113907, 36.832664, 40.405979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902931, 36.946522, 40.417221>,  <38.551308, 37.136284, 40.435959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902931, 36.946522, 40.417221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119299, 0.123787, 0.985112,
		-0.461547, -0.871558, 0.165412,
		0.879057, -0.474409, -0.046843,
		39.166649, 36.804199, 40.403168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062168, 36.769386, 40.875675>,  <38.551308, 37.136284, 40.435959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062168, 36.769386, 40.875675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169140, 36.922939, 41.229198>,  <38.233322, 37.015072, 41.441311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169140, 36.922939, 41.229198>,  <38.062168, 36.769386, 40.875675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169140, 36.922939, 41.229198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174085, -0.882873, 0.436152,
		0.947722, -0.270497, -0.169275,
		0.267426, 0.383883, 0.883808,
		38.249367, 37.038105, 41.494343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664364, 36.355198, 41.176731>,  <38.062168, 36.769386, 40.875675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664364, 36.355198, 41.176731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037590, 36.327465, 41.035545>,  <39.261524, 36.310825, 40.950836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037590, 36.327465, 41.035545>,  <38.664364, 36.355198, 41.176731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037590, 36.327465, 41.035545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343058, -0.123549, 0.931153,
		-0.108165, -0.989914, -0.091495,
		0.933065, -0.069330, -0.352961,
		39.317509, 36.306664, 40.929657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202141, 35.806396, 41.536739>,  <38.664364, 36.355198, 41.176731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202141, 35.806396, 41.536739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374046, 36.144562, 41.409878>,  <39.477188, 36.347462, 41.333759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374046, 36.144562, 41.409878>,  <39.202141, 35.806396, 41.536739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374046, 36.144562, 41.409878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514910, 0.059079, 0.855206,
		0.741737, -0.530840, -0.409921,
		0.429760, 0.845410, -0.317156,
		39.502975, 36.398186, 41.314732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841648, 35.656822, 41.576805>,  <39.202141, 35.806396, 41.536739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841648, 35.656822, 41.576805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765934, 36.048862, 41.600746>,  <39.720505, 36.284084, 41.615108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765934, 36.048862, 41.600746>,  <39.841648, 35.656822, 41.576805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765934, 36.048862, 41.600746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669170, 0.084147, 0.738330,
		0.718598, 0.179803, -0.671779,
		-0.189282, 0.980097, 0.059851,
		39.709148, 36.342892, 41.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488449, 36.020718, 41.691002>,  <39.841648, 35.656822, 41.576805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488449, 36.020718, 41.691002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217945, 36.298828, 41.788383>,  <40.055645, 36.465694, 41.846813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217945, 36.298828, 41.788383>,  <40.488449, 36.020718, 41.691002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217945, 36.298828, 41.788383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586905, 0.308774, 0.748466,
		0.445216, 0.649040, -0.616870,
		-0.676258, 0.695273, 0.243454,
		40.015068, 36.507412, 41.861420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808491, 36.641586, 41.795277>,  <40.488449, 36.020718, 41.691002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808491, 36.641586, 41.795277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492683, 36.617325, 42.039566>,  <40.303200, 36.602768, 42.186138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492683, 36.617325, 42.039566>,  <40.808491, 36.641586, 41.795277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492683, 36.617325, 42.039566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576459, 0.268200, 0.771858,
		-0.210611, 0.961452, -0.176785,
		-0.789518, -0.060652, 0.610723,
		40.255829, 36.599129, 42.222782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055950, 37.066360, 42.328186>,  <40.808491, 36.641586, 41.795277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055950, 37.066360, 42.328186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703190, 36.916683, 42.442890>,  <40.491535, 36.826878, 42.511711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703190, 36.916683, 42.442890>,  <41.055950, 37.066360, 42.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703190, 36.916683, 42.442890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263090, 0.114106, 0.958000,
		-0.391196, 0.920305, -0.002184,
		-0.881901, -0.374191, 0.286761,
		40.438618, 36.804424, 42.528919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852489, 37.512604, 42.899551>,  <41.055950, 37.066360, 42.328186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852489, 37.512604, 42.899551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608917, 37.203430, 42.970863>,  <40.462776, 37.017925, 43.013649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608917, 37.203430, 42.970863>,  <40.852489, 37.512604, 42.899551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608917, 37.203430, 42.970863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260285, 0.017607, 0.965371,
		-0.749306, 0.634243, 0.190462,
		-0.608926, -0.772933, 0.178277,
		40.426239, 36.971550, 43.024345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514206, 37.659435, 43.570709>,  <40.852489, 37.512604, 42.899551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514206, 37.659435, 43.570709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519039, 37.262100, 43.524857>,  <40.521938, 37.023701, 43.497345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519039, 37.262100, 43.524857>,  <40.514206, 37.659435, 43.570709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519039, 37.262100, 43.524857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403053, -0.100072, 0.909689,
		-0.915097, -0.057194, 0.399158,
		0.012084, -0.993335, -0.114627,
		40.522663, 36.964100, 43.490467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287144, 37.352459, 44.136406>,  <40.514206, 37.659435, 43.570709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287144, 37.352459, 44.136406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555595, 37.107006, 43.970013>,  <40.716667, 36.959736, 43.870178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555595, 37.107006, 43.970013>,  <40.287144, 37.352459, 44.136406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555595, 37.107006, 43.970013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519002, -0.011766, 0.854692,
		-0.529361, -0.789504, 0.310580,
		0.671129, -0.613633, -0.415983,
		40.756935, 36.922916, 43.845219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493008, 36.824692, 44.623528>,  <40.287144, 37.352459, 44.136406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493008, 36.824692, 44.623528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821171, 36.839905, 44.395321>,  <41.018066, 36.849033, 44.258396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821171, 36.839905, 44.395321>,  <40.493008, 36.824692, 44.623528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821171, 36.839905, 44.395321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569948, 0.025507, 0.821285,
		0.045793, -0.998951, -0.000754,
		0.820404, 0.038039, -0.570518,
		41.067291, 36.851315, 44.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806976, 36.169632, 44.763714>,  <40.493008, 36.824692, 44.623528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806976, 36.169632, 44.763714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054611, 36.473518, 44.684147>,  <41.203194, 36.655849, 44.636406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054611, 36.473518, 44.684147>,  <40.806976, 36.169632, 44.763714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054611, 36.473518, 44.684147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409360, -0.096029, 0.907305,
		0.670189, -0.643130, -0.370447,
		0.619089, 0.759712, -0.198914,
		41.240337, 36.701431, 44.624474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469383, 35.882858, 44.971436>,  <40.806976, 36.169632, 44.763714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469383, 35.882858, 44.971436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407059, 36.277687, 44.986485>,  <41.369663, 36.514584, 44.995514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407059, 36.277687, 44.986485>,  <41.469383, 35.882858, 44.971436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407059, 36.277687, 44.986485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207115, -0.004595, 0.978306,
		0.965829, 0.160227, -0.203721,
		-0.155815, 0.987069, 0.037624,
		41.360313, 36.573807, 44.997772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871933, 35.672977, 44.412178>,  <41.469383, 35.882858, 44.971436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871933, 35.672977, 44.412178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827267, 35.652756, 44.015194>,  <41.800468, 35.640621, 43.777004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827267, 35.652756, 44.015194>,  <41.871933, 35.672977, 44.412178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827267, 35.652756, 44.015194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411879, -0.911238, 0.000078,
		-0.904371, -0.408765, 0.122576,
		-0.111664, -0.050558, -0.992459,
		41.793766, 35.637589, 43.717457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487083, 36.352009, 44.059711>,  <41.871933, 35.672977, 44.412178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487083, 36.352009, 44.059711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123978, 36.184418, 44.067837>,  <40.906113, 36.083862, 44.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123978, 36.184418, 44.067837>,  <41.487083, 36.352009, 44.059711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123978, 36.184418, 44.067837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224998, 0.445474, -0.866561,
		0.354019, -0.791209, -0.498657,
		-0.907770, -0.418976, 0.020314,
		40.851646, 36.058723, 44.073929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250008, 35.970211, 43.431412>,  <41.487083, 36.352009, 44.059711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250008, 35.970211, 43.431412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922874, 36.118721, 43.607277>,  <40.726597, 36.207829, 43.712795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922874, 36.118721, 43.607277>,  <41.250008, 35.970211, 43.431412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922874, 36.118721, 43.607277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275286, 0.418514, -0.865485,
		-0.505342, -0.828853, -0.240065,
		-0.817831, 0.371279, 0.439665,
		40.677525, 36.230106, 43.739178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589062, 35.670902, 43.234539>,  <41.250008, 35.970211, 43.431412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589062, 35.670902, 43.234539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527615, 36.053322, 43.334431>,  <40.490746, 36.282776, 43.394367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527615, 36.053322, 43.334431>,  <40.589062, 35.670902, 43.234539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527615, 36.053322, 43.334431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556299, 0.125199, -0.821496,
		-0.816660, -0.265121, 0.512618,
		-0.153617, 0.956052, 0.249732,
		40.481529, 36.340137, 43.409351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851517, 35.828297, 43.233162>,  <40.589062, 35.670902, 43.234539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851517, 35.828297, 43.233162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032158, 36.179218, 43.168179>,  <40.140541, 36.389771, 43.129189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032158, 36.179218, 43.168179>,  <39.851517, 35.828297, 43.233162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032158, 36.179218, 43.168179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592049, 0.158436, -0.790175,
		-0.667485, 0.453026, 0.590957,
		0.451599, 0.877306, -0.162460,
		40.167637, 36.442410, 43.119442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407967, 36.336987, 43.216316>,  <39.851517, 35.828297, 43.233162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407967, 36.336987, 43.216316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704929, 36.463966, 42.980331>,  <39.883106, 36.540154, 42.838741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704929, 36.463966, 42.980331>,  <39.407967, 36.336987, 43.216316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704929, 36.463966, 42.980331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667242, 0.271339, -0.693660,
		-0.060123, 0.908626, 0.413261,
		0.742411, 0.317450, -0.589959,
		39.927654, 36.559200, 42.803345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079113, 36.520473, 42.606010>,  <39.407967, 36.336987, 43.216316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079113, 36.520473, 42.606010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440273, 36.662670, 42.509357>,  <39.656971, 36.747990, 42.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440273, 36.662670, 42.509357>,  <39.079113, 36.520473, 42.606010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440273, 36.662670, 42.509357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355248, 0.300675, -0.885095,
		-0.241994, 0.884996, 0.397770,
		0.902905, 0.355495, -0.241632,
		39.711143, 36.769318, 42.436867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072407, 37.186798, 42.445534>,  <39.079113, 36.520473, 42.606010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072407, 37.186798, 42.445534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378696, 37.011429, 42.257298>,  <39.562469, 36.906208, 42.144356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378696, 37.011429, 42.257298>,  <39.072407, 37.186798, 42.445534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378696, 37.011429, 42.257298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477314, 0.103047, -0.872670,
		0.431090, 0.892843, -0.130359,
		0.765724, -0.438422, -0.470589,
		39.608414, 36.879902, 42.116119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238224, 37.561077, 41.899612>,  <39.072407, 37.186798, 42.445534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238224, 37.561077, 41.899612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400558, 37.209839, 41.798222>,  <39.497959, 36.999096, 41.737389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400558, 37.209839, 41.798222>,  <39.238224, 37.561077, 41.899612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400558, 37.209839, 41.798222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397080, 0.080397, -0.914256,
		0.823182, 0.471685, -0.316046,
		0.405832, -0.878094, -0.253478,
		39.522308, 36.946411, 41.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720989, 37.771763, 41.323132>,  <39.238224, 37.561077, 41.899612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720989, 37.771763, 41.323132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568108, 37.402172, 41.328518>,  <39.476379, 37.180416, 41.331749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568108, 37.402172, 41.328518>,  <39.720989, 37.771763, 41.323132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568108, 37.402172, 41.328518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470453, 0.182014, -0.863449,
		0.795358, -0.336350, -0.504256,
		-0.382203, -0.923980, 0.013470,
		39.453445, 37.124977, 41.332558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016052, 37.454926, 40.734001>,  <39.720989, 37.771763, 41.323132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016052, 37.454926, 40.734001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900734, 37.111813, 40.904221>,  <39.831543, 36.905945, 41.006351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900734, 37.111813, 40.904221>,  <40.016052, 37.454926, 40.734001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900734, 37.111813, 40.904221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273129, -0.352289, -0.895150,
		0.917760, -0.374300, -0.132721,
		-0.288299, -0.857783, 0.425550,
		39.814243, 36.854477, 41.031887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357983, 36.882160, 40.372871>,  <40.016052, 37.454926, 40.734001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357983, 36.882160, 40.372871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031239, 36.755096, 40.565468>,  <39.835194, 36.678860, 40.681026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031239, 36.755096, 40.565468>,  <40.357983, 36.882160, 40.372871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031239, 36.755096, 40.565468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350083, -0.390399, -0.851487,
		0.458457, -0.864107, 0.207693,
		-0.816859, -0.317661, 0.481491,
		39.786182, 36.659798, 40.709915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281685, 36.083668, 40.290970>,  <40.357983, 36.882160, 40.372871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281685, 36.083668, 40.290970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948277, 36.300659, 40.332840>,  <39.748230, 36.430855, 40.357964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948277, 36.300659, 40.332840>,  <40.281685, 36.083668, 40.290970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948277, 36.300659, 40.332840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360472, -0.390409, -0.847137,
		-0.418693, -0.743837, 0.520964,
		-0.833521, 0.542483, 0.104671,
		39.698219, 36.463402, 40.364243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654747, 35.591682, 40.231422>,  <40.281685, 36.083668, 40.290970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654747, 35.591682, 40.231422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552193, 35.969654, 40.150055>,  <39.490658, 36.196438, 40.101234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552193, 35.969654, 40.150055>,  <39.654747, 35.591682, 40.231422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552193, 35.969654, 40.150055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416872, -0.297972, -0.858738,
		-0.872056, -0.135374, 0.470310,
		-0.256390, 0.944927, -0.203415,
		39.475277, 36.253132, 40.089031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897465, 35.523800, 40.127579>,  <39.654747, 35.591682, 40.231422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897465, 35.523800, 40.127579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992413, 35.886211, 39.987423>,  <39.049381, 36.103657, 39.903328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992413, 35.886211, 39.987423>,  <38.897465, 35.523800, 40.127579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992413, 35.886211, 39.987423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643645, -0.123471, -0.755299,
		-0.727584, 0.404810, 0.553851,
		0.237368, 0.906026, -0.350389,
		39.063622, 36.158020, 39.882305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426929, 35.761852, 39.683529>,  <38.897465, 35.523800, 40.127579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426929, 35.761852, 39.683529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647942, 36.093548, 39.649899>,  <38.780548, 36.292564, 39.629719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647942, 36.093548, 39.649899>,  <38.426929, 35.761852, 39.683529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647942, 36.093548, 39.649899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402988, 0.177483, -0.897831,
		-0.729596, 0.529962, 0.432238,
		0.552531, 0.829241, -0.084078,
		38.813702, 36.342319, 39.624676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939369, 36.283680, 39.397869>,  <38.426929, 35.761852, 39.683529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939369, 36.283680, 39.397869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316734, 36.400711, 39.335415>,  <38.543152, 36.470928, 39.297943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316734, 36.400711, 39.335415>,  <37.939369, 36.283680, 39.397869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316734, 36.400711, 39.335415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246066, 0.301915, -0.921031,
		-0.222329, 0.907330, 0.356822,
		0.943409, 0.292574, -0.156139,
		38.599758, 36.488483, 39.288574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794933, 36.793240, 38.993210>,  <37.939369, 36.283680, 39.397869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794933, 36.793240, 38.993210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182129, 36.722744, 38.921715>,  <38.414444, 36.680447, 38.878819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182129, 36.722744, 38.921715>,  <37.794933, 36.793240, 38.993210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182129, 36.722744, 38.921715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145869, 0.184521, -0.971943,
		0.204271, 0.966899, 0.152906,
		0.967985, -0.176235, -0.178733,
		38.472523, 36.669872, 38.868095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078598, 37.384243, 38.652191>,  <37.794933, 36.793240, 38.993210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078598, 37.384243, 38.652191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347351, 37.108807, 38.543072>,  <38.508602, 36.943546, 38.477600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347351, 37.108807, 38.543072>,  <38.078598, 37.384243, 38.652191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347351, 37.108807, 38.543072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179947, 0.205526, -0.961966,
		0.718469, 0.695415, 0.014179,
		0.671879, -0.688591, -0.272802,
		38.548916, 36.902229, 38.461231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342712, 37.598190, 38.073761>,  <38.078598, 37.384243, 38.652191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342712, 37.598190, 38.073761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489300, 37.226959, 38.047283>,  <38.577251, 37.004223, 38.031395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489300, 37.226959, 38.047283>,  <38.342712, 37.598190, 38.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489300, 37.226959, 38.047283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005935, 0.068814, -0.997612,
		0.930413, 0.365982, 0.019710,
		0.366465, -0.928074, -0.066198,
		38.599239, 36.948536, 38.027424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890072, 37.621666, 37.622536>,  <38.342712, 37.598190, 38.073761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890072, 37.621666, 37.622536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762394, 37.242668, 37.630310>,  <38.685787, 37.015270, 37.634975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762394, 37.242668, 37.630310>,  <38.890072, 37.621666, 37.622536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762394, 37.242668, 37.630310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003160, -0.021575, -0.999762,
		0.947685, -0.319054, 0.009881,
		-0.319191, -0.947491, 0.019439,
		38.666637, 36.958420, 37.636143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295261, 37.189457, 37.165981>,  <38.890072, 37.621666, 37.622536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295261, 37.189457, 37.165981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960423, 36.977432, 37.220100>,  <38.759521, 36.850216, 37.252571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960423, 36.977432, 37.220100>,  <39.295261, 37.189457, 37.165981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960423, 36.977432, 37.220100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110957, -0.077674, -0.990785,
		0.535690, -0.844392, 0.006206,
		-0.837093, -0.530065, 0.135300,
		38.709293, 36.818413, 37.260689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370125, 36.682838, 36.708363>,  <39.295261, 37.189457, 37.165981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370125, 36.682838, 36.708363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974529, 36.660896, 36.763351>,  <38.737171, 36.647732, 36.796345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974529, 36.660896, 36.763351>,  <39.370125, 36.682838, 36.708363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974529, 36.660896, 36.763351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131769, -0.096702, -0.986552,
		0.067411, -0.993801, 0.088409,
		-0.988985, -0.054855, 0.137471,
		38.677834, 36.644440, 36.804592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165348, 36.109070, 36.273418>,  <39.370125, 36.682838, 36.708363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165348, 36.109070, 36.273418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840633, 36.337002, 36.324486>,  <38.645805, 36.473763, 36.355125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840633, 36.337002, 36.324486>,  <39.165348, 36.109070, 36.273418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840633, 36.337002, 36.324486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243386, -0.131424, -0.960984,
		-0.530822, -0.811183, 0.245377,
		-0.811783, 0.569833, 0.127668,
		38.597099, 36.507950, 36.362785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667713, 35.710468, 36.586582>,  <39.165348, 36.109070, 36.273418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667713, 35.710468, 36.586582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600124, 35.595306, 36.209526>,  <39.559570, 35.526211, 35.983292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600124, 35.595306, 36.209526>,  <39.667713, 35.710468, 36.586582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600124, 35.595306, 36.209526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976090, 0.083805, -0.200561,
		0.136740, -0.953986, 0.266857,
		-0.168969, -0.287902, -0.942636,
		39.549435, 35.508938, 35.926735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966007, 35.156178, 36.464737>,  <39.667713, 35.710468, 36.586582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966007, 35.156178, 36.464737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973034, 35.316502, 36.098339>,  <39.977249, 35.412697, 35.878502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973034, 35.316502, 36.098339>,  <39.966007, 35.156178, 36.464737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973034, 35.316502, 36.098339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990685, -0.130711, -0.038195,
		-0.135039, -0.906788, -0.399375,
		0.017568, 0.400813, -0.915991,
		39.978306, 35.436745, 35.823540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452091, 34.744724, 36.022873>,  <39.966007, 35.156178, 36.464737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452091, 34.744724, 36.022873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423126, 35.106911, 35.855595>,  <40.405746, 35.324223, 35.755226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423126, 35.106911, 35.855595>,  <40.452091, 34.744724, 36.022873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423126, 35.106911, 35.855595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985728, 0.001079, -0.168341,
		-0.151976, -0.424418, -0.892621,
		-0.072410, 0.905466, -0.418197,
		40.401402, 35.378551, 35.730137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902416, 34.797142, 35.380440>,  <40.452091, 34.744724, 36.022873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902416, 34.797142, 35.380440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813961, 35.164997, 35.510277>,  <40.760887, 35.385712, 35.588181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813961, 35.164997, 35.510277>,  <40.902416, 34.797142, 35.380440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813961, 35.164997, 35.510277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975241, 0.208146, 0.074703,
		0.001137, 0.333075, -0.942900,
		-0.221142, 0.919640, 0.324591,
		40.747620, 35.440887, 35.607655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409489, 35.283909, 34.994186>,  <40.902416, 34.797142, 35.380440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409489, 35.283909, 34.994186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256058, 35.459713, 35.319073>,  <41.163998, 35.565197, 35.514004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256058, 35.459713, 35.319073>,  <41.409489, 35.283909, 34.994186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256058, 35.459713, 35.319073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852707, 0.506277, 0.128739,
		-0.354624, 0.741964, -0.568974,
		-0.383579, 0.439514, 0.812216,
		41.140984, 35.591568, 35.562737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691074, 35.868092, 34.890137>,  <41.409489, 35.283909, 34.994186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691074, 35.868092, 34.890137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597988, 35.854404, 35.278915>,  <41.542137, 35.846191, 35.512180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597988, 35.854404, 35.278915>,  <41.691074, 35.868092, 34.890137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597988, 35.854404, 35.278915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858571, 0.462214, 0.221840,
		-0.456837, 0.886108, -0.078184,
		-0.232712, -0.034218, 0.971943,
		41.528175, 35.844139, 35.570499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371040, 35.614632, 35.054283>,  <41.691074, 35.868092, 34.890137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371040, 35.614632, 35.054283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684093, 35.536724, 34.817795>,  <42.871925, 35.489979, 34.675900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684093, 35.536724, 34.817795>,  <42.371040, 35.614632, 35.054283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684093, 35.536724, 34.817795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330251, 0.675173, -0.659603,
		0.527651, 0.711480, 0.464090,
		0.782636, -0.194774, -0.591223,
		42.918884, 35.478291, 34.640427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875221, 36.267216, 34.820827>,  <42.371040, 35.614632, 35.054283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875221, 36.267216, 34.820827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886227, 35.983601, 34.538975>,  <42.892830, 35.813431, 34.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886227, 35.983601, 34.538975>,  <42.875221, 36.267216, 34.820827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886227, 35.983601, 34.538975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194523, 0.687626, -0.699522,
		0.980512, 0.156310, -0.119008,
		0.027509, -0.709040, -0.704632,
		42.894478, 35.770889, 34.327583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331394, 36.480492, 34.263073>,  <42.875221, 36.267216, 34.820827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331394, 36.480492, 34.263073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055866, 36.222294, 34.131096>,  <42.890549, 36.067375, 34.051910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055866, 36.222294, 34.131096>,  <43.331394, 36.480492, 34.263073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055866, 36.222294, 34.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197835, 0.605246, -0.771063,
		0.697415, -0.465849, -0.544607,
		-0.688820, -0.645494, -0.329947,
		42.849220, 36.028645, 34.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959137, 36.336159, 34.392746>,  <43.331394, 36.480492, 34.263073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959137, 36.336159, 34.392746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896282, 36.687695, 34.212547>,  <43.858570, 36.898617, 34.104427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896282, 36.687695, 34.212547>,  <43.959137, 36.336159, 34.392746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896282, 36.687695, 34.212547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941857, -0.003827, -0.335991,
		-0.297008, -0.477096, -0.827143,
		-0.157135, 0.878843, -0.450493,
		43.849140, 36.951347, 34.077400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798664, 36.430645, 34.471111>,  <43.959137, 36.336159, 34.392746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798664, 36.430645, 34.471111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170429, 36.347893, 34.593349>,  <45.393490, 36.298241, 34.666691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170429, 36.347893, 34.593349>,  <44.798664, 36.430645, 34.471111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170429, 36.347893, 34.593349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318456, -0.031194, 0.947424,
		-0.186470, -0.977869, -0.094874,
		0.929417, -0.206879, 0.305592,
		45.449253, 36.285828, 34.685028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813145, 35.768330, 34.779655>,  <44.798664, 36.430645, 34.471111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813145, 35.768330, 34.779655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064995, 36.052258, 34.905979>,  <45.216106, 36.222614, 34.981773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064995, 36.052258, 34.905979>,  <44.813145, 35.768330, 34.779655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064995, 36.052258, 34.905979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276417, -0.175226, 0.944928,
		0.726063, -0.682244, 0.085878,
		0.629624, 0.709816, 0.315809,
		45.253883, 36.265202, 35.000721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127632, 35.434074, 35.323833>,  <44.813145, 35.768330, 34.779655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127632, 35.434074, 35.323833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205303, 35.818867, 35.400650>,  <45.251907, 36.049744, 35.446739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205303, 35.818867, 35.400650>,  <45.127632, 35.434074, 35.323833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205303, 35.818867, 35.400650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074821, -0.180672, 0.980693,
		0.978109, -0.204797, 0.036895,
		0.194178, 0.961985, 0.192040,
		45.263557, 36.107464, 35.458263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663895, 35.488632, 35.838272>,  <45.127632, 35.434074, 35.323833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663895, 35.488632, 35.838272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399899, 35.788715, 35.854294>,  <45.241501, 35.968765, 35.863907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399899, 35.788715, 35.854294>,  <45.663895, 35.488632, 35.838272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399899, 35.788715, 35.854294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058381, -0.104367, 0.992824,
		0.749004, 0.652914, 0.112679,
		-0.659989, 0.750207, 0.040053,
		45.201900, 36.013779, 35.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886425, 36.039909, 36.309605>,  <45.663895, 35.488632, 35.838272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886425, 36.039909, 36.309605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487133, 36.024406, 36.291603>,  <45.247559, 36.015102, 36.280804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487133, 36.024406, 36.291603>,  <45.886425, 36.039909, 36.309605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487133, 36.024406, 36.291603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045912, 0.022831, 0.998685,
		-0.037681, 0.998988, -0.024570,
		-0.998235, -0.038760, -0.045005,
		45.187664, 36.012779, 36.278103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203171, 35.360054, 36.362522>,  <45.886425, 36.039909, 36.309605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203171, 35.360054, 36.362522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196033, 35.109524, 36.050777>,  <46.191750, 34.959206, 35.863731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196033, 35.109524, 36.050777>,  <46.203171, 35.360054, 36.362522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196033, 35.109524, 36.050777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414232, 0.704809, -0.575895,
		0.909996, -0.333112, 0.246867,
		-0.017844, -0.626323, -0.779359,
		46.190681, 34.921627, 35.816971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861729, 35.280209, 36.187439>,  <46.203171, 35.360054, 36.362522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861729, 35.280209, 36.187439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606045, 35.223541, 35.885090>,  <46.452633, 35.189541, 35.703682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606045, 35.223541, 35.885090>,  <46.861729, 35.280209, 36.187439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606045, 35.223541, 35.885090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484000, 0.689706, -0.538563,
		0.597623, -0.710097, -0.372302,
		-0.639211, -0.141664, -0.755871,
		46.414280, 35.181042, 35.658329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116009, 34.907146, 35.471397>,  <46.861729, 35.280209, 36.187439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116009, 34.907146, 35.471397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831825, 35.188629, 35.468979>,  <46.661316, 35.357521, 35.467525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831825, 35.188629, 35.468979>,  <47.116009, 34.907146, 35.471397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831825, 35.188629, 35.468979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555451, 0.555464, -0.618816,
		-0.432107, -0.443005, -0.785513,
		-0.710463, 0.703709, -0.006048,
		46.618687, 35.399742, 35.467163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060127, 35.007538, 34.768642>,  <47.116009, 34.907146, 35.471397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060127, 35.007538, 34.768642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968510, 35.335136, 34.979080>,  <46.913540, 35.531696, 35.105343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968510, 35.335136, 34.979080>,  <47.060127, 35.007538, 34.768642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968510, 35.335136, 34.979080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580448, 0.548777, -0.601602,
		-0.781421, 0.167576, -0.601082,
		-0.229046, 0.819001, 0.526095,
		46.899796, 35.580837, 35.136909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554932, 35.399597, 35.194336>,  <47.060127, 35.007538, 34.768642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554932, 35.399597, 35.194336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741196, 35.259026, 34.869461>,  <47.852955, 35.174683, 34.674534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741196, 35.259026, 34.869461>,  <47.554932, 35.399597, 35.194336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741196, 35.259026, 34.869461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883958, 0.228427, 0.407970,
		0.042152, -0.907918, 0.417023,
		0.465663, -0.351434, -0.812190,
		47.880894, 35.153595, 34.625805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.432640, 34.527828, 26.567678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041496, 34.540363, 26.484909>,  <37.806812, 34.547886, 26.435247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041496, 34.540363, 26.484909>,  <38.432640, 34.527828, 26.567678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041496, 34.540363, 26.484909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208516, -0.061416, 0.976089,
		0.017881, 0.997620, 0.066591,
		-0.977856, 0.031339, -0.206922,
		37.748138, 34.549767, 26.422832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945957, 35.178814, 26.911701>,  <38.432640, 34.527828, 26.567678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945957, 35.178814, 26.911701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724483, 34.855206, 26.832794>,  <37.591599, 34.661041, 26.785450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724483, 34.855206, 26.832794>,  <37.945957, 35.178814, 26.911701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724483, 34.855206, 26.832794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263076, -0.054818, 0.963217,
		-0.790076, 0.585218, -0.182482,
		-0.553688, -0.809021, -0.197267,
		37.558376, 34.612499, 26.773615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404503, 35.296684, 27.439224>,  <37.945957, 35.178814, 26.911701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404503, 35.296684, 27.439224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368141, 34.918941, 27.312784>,  <37.346325, 34.692295, 27.236919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368141, 34.918941, 27.312784>,  <37.404503, 35.296684, 27.439224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368141, 34.918941, 27.312784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396231, -0.256911, 0.881475,
		-0.913639, 0.205380, -0.350830,
		-0.090905, -0.944360, -0.316102,
		37.340870, 34.635635, 27.217953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670479, 35.111328, 27.601229>,  <37.404503, 35.296684, 27.439224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670479, 35.111328, 27.601229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885826, 34.778236, 27.549503>,  <37.015034, 34.578381, 27.518467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885826, 34.778236, 27.549503>,  <36.670479, 35.111328, 27.601229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885826, 34.778236, 27.549503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391291, -0.382926, 0.836815,
		-0.746356, -0.399918, -0.531995,
		0.538372, -0.832726, -0.129315,
		37.047337, 34.528419, 27.510710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256348, 34.591972, 27.758633>,  <36.670479, 35.111328, 27.601229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256348, 34.591972, 27.758633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630035, 34.452915, 27.790564>,  <36.854248, 34.369480, 27.809723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630035, 34.452915, 27.790564>,  <36.256348, 34.591972, 27.758633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630035, 34.452915, 27.790564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242634, -0.455336, 0.856620,
		-0.261446, -0.819644, -0.509734,
		0.934224, -0.347639, 0.079828,
		36.910301, 34.348621, 27.814512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128178, 33.896820, 27.891073>,  <36.256348, 34.591972, 27.758633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128178, 33.896820, 27.891073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507912, 33.944195, 28.007515>,  <36.735752, 33.972618, 28.077379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507912, 33.944195, 28.007515>,  <36.128178, 33.896820, 27.891073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507912, 33.944195, 28.007515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236060, -0.342758, 0.909281,
		0.207469, -0.931928, -0.297433,
		0.949332, 0.118436, 0.291103,
		36.792713, 33.979725, 28.094845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149044, 33.450901, 28.354376>,  <36.128178, 33.896820, 27.891073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149044, 33.450901, 28.354376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493324, 33.630871, 28.449678>,  <36.699894, 33.738853, 28.506861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.493324, 33.630871, 28.449678>,  <36.149044, 33.450901, 28.354376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493324, 33.630871, 28.449678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073785, -0.352809, 0.932782,
		0.503739, -0.820424, -0.270465,
		0.860700, 0.449922, 0.238259,
		36.751534, 33.765846, 28.521156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553539, 32.897346, 28.698702>,  <36.149044, 33.450901, 28.354376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553539, 32.897346, 28.698702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691196, 33.254559, 28.814672>,  <36.773792, 33.468887, 28.884254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691196, 33.254559, 28.814672>,  <36.553539, 32.897346, 28.698702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691196, 33.254559, 28.814672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088571, -0.338289, 0.936865,
		0.934731, -0.296735, -0.195516,
		0.344142, 0.893034, 0.289927,
		36.794437, 33.522469, 28.901651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139812, 32.788586, 29.181267>,  <36.553539, 32.897346, 28.698702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139812, 32.788586, 29.181267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048588, 33.162663, 29.289637>,  <36.993855, 33.387108, 29.354658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048588, 33.162663, 29.289637>,  <37.139812, 32.788586, 29.181267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048588, 33.162663, 29.289637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081038, -0.259058, 0.962456,
		0.970269, 0.241451, -0.016706,
		-0.228058, 0.935195, 0.270923,
		36.980171, 33.443222, 29.370914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637482, 32.991745, 29.650324>,  <37.139812, 32.788586, 29.181267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637482, 32.991745, 29.650324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340664, 33.244785, 29.739040>,  <37.162575, 33.396610, 29.792271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340664, 33.244785, 29.739040>,  <37.637482, 32.991745, 29.650324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340664, 33.244785, 29.739040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037710, -0.290941, 0.955998,
		0.669292, 0.717754, 0.192034,
		-0.742041, 0.632600, 0.221791,
		37.118050, 33.434566, 29.805578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825214, 33.399944, 30.294218>,  <37.637482, 32.991745, 29.650324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825214, 33.399944, 30.294218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429165, 33.454571, 30.281479>,  <37.191536, 33.487347, 30.273836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429165, 33.454571, 30.281479>,  <37.825214, 33.399944, 30.294218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429165, 33.454571, 30.281479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056651, -0.181791, 0.981704,
		0.128277, 0.973808, 0.187731,
		-0.990119, 0.136565, -0.031847,
		37.132130, 33.495541, 30.271925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690338, 33.899139, 30.785616>,  <37.825214, 33.399944, 30.294218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690338, 33.899139, 30.785616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337955, 33.726315, 30.708427>,  <37.126526, 33.622620, 30.662113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337955, 33.726315, 30.708427>,  <37.690338, 33.899139, 30.785616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337955, 33.726315, 30.708427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115262, -0.199590, 0.973077,
		-0.458946, 0.879480, 0.126029,
		-0.880956, -0.432064, -0.192972,
		37.073669, 33.596695, 30.650536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203362, 34.039284, 31.394478>,  <37.690338, 33.899139, 30.785616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203362, 34.039284, 31.394478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067600, 33.707569, 31.216902>,  <36.986145, 33.508537, 31.110357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067600, 33.707569, 31.216902>,  <37.203362, 34.039284, 31.394478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067600, 33.707569, 31.216902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058704, -0.452359, 0.889901,
		-0.938808, 0.328095, 0.104849,
		-0.339402, -0.829291, -0.443939,
		36.965778, 33.458782, 31.083719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605396, 33.918694, 31.744873>,  <37.203362, 34.039284, 31.394478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605396, 33.918694, 31.744873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667667, 33.555134, 31.590124>,  <36.705029, 33.336998, 31.497274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667667, 33.555134, 31.590124>,  <36.605396, 33.918694, 31.744873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667667, 33.555134, 31.590124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041320, -0.397294, 0.916761,
		-0.986944, -0.126732, -0.099405,
		0.155676, -0.908898, -0.386870,
		36.714371, 33.282463, 31.474064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150513, 33.518257, 32.115414>,  <36.605396, 33.918694, 31.744873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150513, 33.518257, 32.115414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431911, 33.271496, 31.974262>,  <36.600750, 33.123440, 31.889570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431911, 33.271496, 31.974262>,  <36.150513, 33.518257, 32.115414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431911, 33.271496, 31.974262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193773, -0.311218, 0.930374,
		-0.683772, -0.722893, -0.099402,
		0.703497, -0.616903, -0.352880,
		36.642960, 33.086426, 31.868399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980591, 32.895473, 32.373875>,  <36.150513, 33.518257, 32.115414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980591, 32.895473, 32.373875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368092, 32.885078, 32.275215>,  <36.600594, 32.878841, 32.216019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368092, 32.885078, 32.275215>,  <35.980591, 32.895473, 32.373875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368092, 32.885078, 32.275215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213358, -0.419739, 0.882212,
		-0.126454, -0.907273, -0.401080,
		0.968755, -0.025986, -0.246652,
		36.658718, 32.877281, 32.201218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251457, 32.220734, 32.374023>,  <35.980591, 32.895473, 32.373875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251457, 32.220734, 32.374023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568848, 32.458473, 32.426392>,  <36.759281, 32.601116, 32.457813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568848, 32.458473, 32.426392>,  <36.251457, 32.220734, 32.374023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568848, 32.458473, 32.426392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189308, -0.445478, 0.875049,
		0.578407, -0.669549, -0.465993,
		0.793478, 0.594351, 0.130917,
		36.806892, 32.636780, 32.465668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864574, 31.750872, 32.648842>,  <36.251457, 32.220734, 32.374023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864574, 31.750872, 32.648842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963604, 32.130272, 32.727894>,  <37.023022, 32.357910, 32.775326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963604, 32.130272, 32.727894>,  <36.864574, 31.750872, 32.648842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963604, 32.130272, 32.727894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346813, -0.277223, 0.896029,
		0.904671, -0.153288, -0.397584,
		0.247570, 0.948499, 0.197633,
		37.037876, 32.414822, 32.787182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512691, 31.799103, 32.842960>,  <36.864574, 31.750872, 32.648842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512691, 31.799103, 32.842960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394184, 32.154198, 32.983898>,  <37.323078, 32.367256, 33.068462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394184, 32.154198, 32.983898>,  <37.512691, 31.799103, 32.842960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394184, 32.154198, 32.983898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422703, -0.208939, 0.881854,
		0.856474, 0.410202, -0.313348,
		-0.296267, 0.887738, 0.352344,
		37.305305, 32.420521, 33.089600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053699, 32.032349, 33.198841>,  <37.512691, 31.799103, 32.842960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053699, 32.032349, 33.198841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741325, 32.213001, 33.371429>,  <37.553902, 32.321392, 33.474983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.741325, 32.213001, 33.371429>,  <38.053699, 32.032349, 33.198841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741325, 32.213001, 33.371429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518104, 0.082551, 0.851325,
		0.348869, 0.888376, -0.298460,
		-0.780935, 0.451634, 0.431471,
		37.507046, 32.348492, 33.500870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323235, 32.496700, 33.546669>,  <38.053699, 32.032349, 33.198841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323235, 32.496700, 33.546669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960384, 32.482506, 33.714417>,  <37.742676, 32.473988, 33.815063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.960384, 32.482506, 33.714417>,  <38.323235, 32.496700, 33.546669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960384, 32.482506, 33.714417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420605, -0.041340, 0.906302,
		-0.014823, 0.998515, 0.052426,
		-0.907123, -0.035485, 0.419367,
		37.688248, 32.471859, 33.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301140, 32.949242, 34.202583>,  <38.323235, 32.496700, 33.546669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301140, 32.949242, 34.202583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986919, 32.706219, 34.249538>,  <37.798386, 32.560406, 34.277714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986919, 32.706219, 34.249538>,  <38.301140, 32.949242, 34.202583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986919, 32.706219, 34.249538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107398, 0.052965, 0.992804,
		-0.609405, 0.792507, 0.023644,
		-0.785552, -0.607559, 0.117391,
		37.751255, 32.523952, 34.284756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428318, 33.632343, 33.769299>,  <38.301140, 32.949242, 34.202583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428318, 33.632343, 33.769299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594563, 33.832211, 34.073299>,  <38.694309, 33.952129, 34.255699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594563, 33.832211, 34.073299>,  <38.428318, 33.632343, 33.769299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594563, 33.832211, 34.073299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606228, 0.470739, -0.641009,
		-0.678051, 0.727146, -0.107265,
		0.415613, 0.499664, 0.760001,
		38.719246, 33.982109, 34.301300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385174, 34.316658, 33.679344>,  <38.428318, 33.632343, 33.769299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385174, 34.316658, 33.679344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714554, 34.274525, 33.902355>,  <38.912182, 34.249245, 34.036163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714554, 34.274525, 33.902355>,  <38.385174, 34.316658, 33.679344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714554, 34.274525, 33.902355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518787, 0.537693, -0.664640,
		-0.229775, 0.836535, 0.497405,
		0.823446, -0.105330, 0.557532,
		38.961586, 34.242928, 34.069614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625183, 34.947174, 33.663273>,  <38.385174, 34.316658, 33.679344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625183, 34.947174, 33.663273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923653, 34.715694, 33.794930>,  <39.102734, 34.576805, 33.873924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.923653, 34.715694, 33.794930>,  <38.625183, 34.947174, 33.663273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923653, 34.715694, 33.794930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586892, 0.338387, -0.735562,
		0.314292, 0.742026, 0.592129,
		0.746175, -0.578698, 0.329137,
		39.147507, 34.542084, 33.893669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223839, 35.348351, 33.656464>,  <38.625183, 34.947174, 33.663273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223839, 35.348351, 33.656464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382877, 34.981892, 33.676849>,  <39.478302, 34.762016, 33.689079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.382877, 34.981892, 33.676849>,  <39.223839, 35.348351, 33.656464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382877, 34.981892, 33.676849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721867, 0.278029, -0.633726,
		0.566414, 0.288756, 0.771877,
		0.397597, -0.916144, 0.050964,
		39.502155, 34.707050, 33.692139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855705, 35.532501, 33.781971>,  <39.223839, 35.348351, 33.656464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855705, 35.532501, 33.781971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831318, 35.169807, 33.615059>,  <39.816685, 34.952190, 33.514912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831318, 35.169807, 33.615059>,  <39.855705, 35.532501, 33.781971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831318, 35.169807, 33.615059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743235, 0.237810, -0.625339,
		0.666247, -0.348259, 0.659417,
		-0.060964, -0.906732, -0.417278,
		39.813030, 34.897789, 33.489876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558830, 35.294777, 33.728516>,  <39.855705, 35.532501, 33.781971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558830, 35.294777, 33.728516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360203, 35.060162, 33.472580>,  <40.241024, 34.919392, 33.319019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360203, 35.060162, 33.472580>,  <40.558830, 35.294777, 33.728516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360203, 35.060162, 33.472580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722966, 0.128450, -0.678838,
		0.480349, -0.799673, 0.360260,
		-0.496573, -0.586535, -0.639838,
		40.211231, 34.884201, 33.280628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127422, 35.152409, 33.304344>,  <40.558830, 35.294777, 33.728516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127422, 35.152409, 33.304344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.785580, 35.028187, 33.137871>,  <40.580475, 34.953655, 33.037987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.785580, 35.028187, 33.137871>,  <41.127422, 35.152409, 33.304344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785580, 35.028187, 33.137871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435693, 0.007244, -0.900066,
		0.282532, -0.950529, 0.129115,
		-0.854604, -0.310551, -0.416185,
		40.529198, 34.935020, 33.013016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343418, 34.643665, 32.859253>,  <41.127422, 35.152409, 33.304344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343418, 34.643665, 32.859253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.994602, 34.790459, 32.729725>,  <40.785313, 34.878536, 32.652008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.994602, 34.790459, 32.729725>,  <41.343418, 34.643665, 32.859253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994602, 34.790459, 32.729725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354814, 0.018301, -0.934758,
		-0.337115, -0.930047, -0.146170,
		-0.872044, 0.366984, -0.323825,
		40.732990, 34.900555, 32.632576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079395, 34.253197, 32.214813>,  <41.343418, 34.643665, 32.859253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079395, 34.253197, 32.214813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851246, 34.581062, 32.193535>,  <40.714355, 34.777782, 32.180767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851246, 34.581062, 32.193535>,  <41.079395, 34.253197, 32.214813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851246, 34.581062, 32.193535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233136, 0.099451, -0.967345,
		-0.787605, -0.564151, -0.247817,
		-0.570374, 0.819661, -0.053196,
		40.680134, 34.826962, 32.177578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561264, 34.106281, 31.774384>,  <41.079395, 34.253197, 32.214813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561264, 34.106281, 31.774384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622398, 34.500633, 31.747026>,  <40.659081, 34.737244, 31.730612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622398, 34.500633, 31.747026>,  <40.561264, 34.106281, 31.774384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622398, 34.500633, 31.747026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082251, -0.081657, -0.993261,
		-0.984823, 0.146182, -0.093569,
		0.152837, 0.985882, -0.068394,
		40.668251, 34.796398, 31.726509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200375, 34.344574, 31.162603>,  <40.561264, 34.106281, 31.774384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200375, 34.344574, 31.162603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.455715, 34.643951, 31.234535>,  <40.608921, 34.823578, 31.277695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.455715, 34.643951, 31.234535>,  <40.200375, 34.344574, 31.162603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455715, 34.643951, 31.234535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007288, 0.227735, -0.973696,
		-0.769708, 0.622873, 0.139921,
		0.638354, 0.748442, 0.179829,
		40.647221, 34.868484, 31.288485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873905, 34.957317, 30.800327>,  <40.200375, 34.344574, 31.162603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873905, 34.957317, 30.800327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264248, 35.024551, 30.856110>,  <40.498455, 35.064892, 30.889578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264248, 35.024551, 30.856110>,  <39.873905, 34.957317, 30.800327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264248, 35.024551, 30.856110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121542, 0.112562, -0.986183,
		-0.181457, 0.979325, 0.089416,
		0.975859, 0.168082, 0.139455,
		40.557007, 35.074974, 30.897945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110779, 35.561100, 30.475115>,  <39.873905, 34.957317, 30.800327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110779, 35.561100, 30.475115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.396561, 35.281315, 30.482168>,  <40.568027, 35.113445, 30.486401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.396561, 35.281315, 30.482168>,  <40.110779, 35.561100, 30.475115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396561, 35.281315, 30.482168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147795, 0.126235, -0.980929,
		0.683897, 0.703432, 0.193566,
		0.714452, -0.699462, 0.017632,
		40.610897, 35.071476, 30.487457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653526, 35.833908, 30.103655>,  <40.110779, 35.561100, 30.475115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653526, 35.833908, 30.103655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.696484, 35.436340, 30.113338>,  <40.722260, 35.197800, 30.119148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.696484, 35.436340, 30.113338>,  <40.653526, 35.833908, 30.103655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696484, 35.436340, 30.113338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134299, -0.009621, -0.990894,
		0.985104, 0.109671, 0.132449,
		0.107398, -0.993921, 0.024207,
		40.728703, 35.138165, 30.120600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319496, 35.596294, 29.729322>,  <40.653526, 35.833908, 30.103655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319496, 35.596294, 29.729322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.083862, 35.273338, 29.742559>,  <40.942482, 35.079563, 29.750502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.083862, 35.273338, 29.742559>,  <41.319496, 35.596294, 29.729322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083862, 35.273338, 29.742559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088715, -0.105325, -0.990473,
		0.803185, -0.580539, 0.133673,
		-0.589087, -0.807392, 0.033093,
		40.907135, 35.031120, 29.752487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584297, 35.139004, 29.347130>,  <41.319496, 35.596294, 29.729322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584297, 35.139004, 29.347130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.210918, 34.996418, 29.363224>,  <40.986893, 34.910866, 29.372881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.210918, 34.996418, 29.363224>,  <41.584297, 35.139004, 29.347130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210918, 34.996418, 29.363224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010274, -0.138678, -0.990284,
		0.358576, -0.923961, 0.133110,
		-0.933444, -0.356460, 0.040234,
		40.930885, 34.889481, 29.375294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608315, 34.640373, 28.784206>,  <41.584297, 35.139004, 29.347130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608315, 34.640373, 28.784206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.220898, 34.698391, 28.865093>,  <40.988449, 34.733204, 28.913626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.220898, 34.698391, 28.865093>,  <41.608315, 34.640373, 28.784206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220898, 34.698391, 28.865093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216566, -0.090949, -0.972022,
		-0.122602, -0.985235, 0.119501,
		-0.968539, 0.145052, 0.202218,
		40.930336, 34.741905, 28.925758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138355, 34.143227, 28.388309>,  <41.608315, 34.640373, 28.784206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138355, 34.143227, 28.388309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888496, 34.443317, 28.474995>,  <40.738579, 34.623371, 28.527006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888496, 34.443317, 28.474995>,  <41.138355, 34.143227, 28.388309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888496, 34.443317, 28.474995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382722, -0.052214, -0.922387,
		-0.680687, -0.659111, 0.319745,
		-0.624651, 0.750231, 0.216715,
		40.701099, 34.668388, 28.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.261547, 33.925087, 28.081467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307705, 34.308708, 28.184933>,  <40.335400, 34.538879, 28.247013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.307705, 34.308708, 28.184933>,  <40.261547, 33.925087, 28.081467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307705, 34.308708, 28.184933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457967, 0.282446, -0.842906,
		-0.881448, -0.021193, 0.471806,
		0.115396, 0.959049, 0.258667,
		40.342323, 34.596424, 28.262533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667263, 34.230427, 27.847633>,  <40.261547, 33.925087, 28.081467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667263, 34.230427, 27.847633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910049, 34.546799, 27.878660>,  <40.055721, 34.736622, 27.897276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910049, 34.546799, 27.878660>,  <39.667263, 34.230427, 27.847633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910049, 34.546799, 27.878660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401691, 0.389543, -0.828795,
		-0.685736, 0.471894, 0.554150,
		0.606969, 0.790931, 0.077568,
		40.092140, 34.784077, 27.901930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225121, 34.932270, 27.715315>,  <39.667263, 34.230427, 27.847633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225121, 34.932270, 27.715315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609776, 35.012913, 27.640898>,  <39.840569, 35.061298, 27.596247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609776, 35.012913, 27.640898>,  <39.225121, 34.932270, 27.715315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609776, 35.012913, 27.640898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260034, 0.453789, -0.852325,
		-0.087410, 0.868003, 0.488804,
		0.961635, 0.201607, -0.186045,
		39.898266, 35.073395, 27.585085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122414, 35.404400, 27.261080>,  <39.225121, 34.932270, 27.715315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122414, 35.404400, 27.261080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515606, 35.353210, 27.208349>,  <39.751522, 35.322498, 27.176710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515606, 35.353210, 27.208349>,  <39.122414, 35.404400, 27.261080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515606, 35.353210, 27.208349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058971, 0.459784, -0.886071,
		0.174004, 0.878761, 0.444411,
		0.982978, -0.127972, -0.131826,
		39.810501, 35.314819, 27.168802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454227, 36.051105, 27.049269>,  <39.122414, 35.404400, 27.261080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454227, 36.051105, 27.049269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685211, 35.750515, 26.921633>,  <39.823799, 35.570160, 26.845051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.685211, 35.750515, 26.921633>,  <39.454227, 36.051105, 27.049269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685211, 35.750515, 26.921633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016591, 0.379960, -0.924854,
		0.816252, 0.539358, 0.206943,
		0.577458, -0.751481, -0.319092,
		39.858448, 35.525070, 26.825905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996281, 36.465622, 26.782484>,  <39.454227, 36.051105, 27.049269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996281, 36.465622, 26.782484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981964, 36.099720, 26.621517>,  <39.973373, 35.880180, 26.524937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981964, 36.099720, 26.621517>,  <39.996281, 36.465622, 26.782484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981964, 36.099720, 26.621517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245120, 0.382341, -0.890916,
		0.968832, -0.130531, 0.210539,
		-0.035794, -0.914755, -0.402419,
		39.971226, 35.825294, 26.500792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641331, 36.390011, 26.425880>,  <39.996281, 36.465622, 26.782484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641331, 36.390011, 26.425880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364414, 36.141296, 26.279396>,  <40.198265, 35.992065, 26.191505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364414, 36.141296, 26.279396>,  <40.641331, 36.390011, 26.425880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364414, 36.141296, 26.279396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243690, 0.276230, -0.929684,
		0.679226, -0.732855, -0.039707,
		-0.692291, -0.621789, -0.366212,
		40.156727, 35.954762, 26.169533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917950, 36.179291, 25.775194>,  <40.641331, 36.390011, 26.425880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917950, 36.179291, 25.775194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 36.044899, 25.726521>,  <40.320202, 35.964264, 25.697315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 36.044899, 25.726521>,  <40.917950, 36.179291, 25.775194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544357, 36.044899, 25.726521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049279, 0.216181, -0.975109,
		0.353918, -0.916726, -0.185351,
		-0.933977, -0.335975, -0.121685,
		40.264164, 35.944107, 25.690016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907372, 35.556778, 25.275026>,  <40.917950, 36.179291, 25.775194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907372, 35.556778, 25.275026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549229, 35.734577, 25.263998>,  <40.334343, 35.841255, 25.257381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549229, 35.734577, 25.263998>,  <40.907372, 35.556778, 25.275026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549229, 35.734577, 25.263998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043180, 0.025028, -0.998754,
		-0.443253, -0.895431, -0.041602,
		-0.895356, 0.444497, -0.027571,
		40.280621, 35.867928, 25.255726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545547, 35.194660, 24.734621>,  <40.907372, 35.556778, 25.275026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545547, 35.194660, 24.734621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347370, 35.534523, 24.806862>,  <40.228466, 35.738441, 24.850206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.347370, 35.534523, 24.806862>,  <40.545547, 35.194660, 24.734621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347370, 35.534523, 24.806862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041907, 0.184294, -0.981977,
		-0.867630, -0.494080, -0.055699,
		-0.495441, 0.849659, 0.180604,
		40.198738, 35.789421, 24.861044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986340, 35.204933, 24.224123>,  <40.545547, 35.194660, 24.734621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986340, 35.204933, 24.224123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064644, 35.581062, 24.335451>,  <40.111626, 35.806740, 24.402248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.064644, 35.581062, 24.335451>,  <39.986340, 35.204933, 24.224123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064644, 35.581062, 24.335451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134543, 0.306881, -0.942190,
		-0.971379, 0.146997, 0.186590,
		0.195760, 0.940328, 0.278321,
		40.123371, 35.863159, 24.418947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446278, 35.616539, 23.954409>,  <39.986340, 35.204933, 24.224123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446278, 35.616539, 23.954409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756638, 35.861626, 24.014486>,  <39.942852, 36.008678, 24.050533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756638, 35.861626, 24.014486>,  <39.446278, 35.616539, 23.954409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756638, 35.861626, 24.014486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062353, 0.311399, -0.948231,
		-0.627769, 0.726366, 0.279819,
		0.775898, 0.612718, 0.150195,
		39.989407, 36.045441, 24.059546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318241, 36.130478, 23.426973>,  <39.446278, 35.616539, 23.954409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318241, 36.130478, 23.426973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677616, 36.238319, 23.565607>,  <39.893242, 36.303024, 23.648787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677616, 36.238319, 23.565607>,  <39.318241, 36.130478, 23.426973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677616, 36.238319, 23.565607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183949, 0.485612, -0.854602,
		-0.398712, 0.831561, 0.386698,
		0.898438, 0.269608, 0.346584,
		39.947147, 36.319202, 23.669582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328053, 36.868401, 23.372583>,  <39.318241, 36.130478, 23.426973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328053, 36.868401, 23.372583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702129, 36.727253, 23.360518>,  <39.926575, 36.642567, 23.353279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.702129, 36.727253, 23.360518>,  <39.328053, 36.868401, 23.372583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702129, 36.727253, 23.360518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185067, 0.559537, -0.807879,
		0.301950, 0.749936, 0.588576,
		0.935188, -0.352865, -0.030164,
		39.982685, 36.621395, 23.351469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883839, 37.471733, 23.427549>,  <39.328053, 36.868401, 23.372583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883839, 37.471733, 23.427549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034210, 37.153301, 23.237839>,  <40.124432, 36.962242, 23.124012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034210, 37.153301, 23.237839>,  <39.883839, 37.471733, 23.427549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034210, 37.153301, 23.237839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130951, 0.552321, -0.823282,
		0.917349, 0.247389, 0.311880,
		0.375929, -0.796078, -0.474276,
		40.146988, 36.914478, 23.095556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510136, 37.579334, 23.274817>,  <39.883839, 37.471733, 23.427549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510136, 37.579334, 23.274817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431755, 37.281139, 23.019991>,  <40.384727, 37.102222, 22.867096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431755, 37.281139, 23.019991>,  <40.510136, 37.579334, 23.274817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431755, 37.281139, 23.019991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282517, 0.579194, -0.764669,
		0.939036, -0.329817, 0.097121,
		-0.195948, -0.745490, -0.637063,
		40.372971, 37.057491, 22.828873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996704, 37.591000, 22.800533>,  <40.510136, 37.579334, 23.274817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996704, 37.591000, 22.800533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.755554, 37.328861, 22.618517>,  <40.610867, 37.171577, 22.509306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.755554, 37.328861, 22.618517>,  <40.996704, 37.591000, 22.800533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755554, 37.328861, 22.618517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158591, 0.460529, -0.873362,
		0.781917, -0.598692, -0.173707,
		-0.602872, -0.655348, -0.455043,
		40.574692, 37.132256, 22.482004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375881, 37.577423, 22.254778>,  <40.996704, 37.591000, 22.800533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375881, 37.577423, 22.254778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008499, 37.441677, 22.173517>,  <40.788071, 37.360229, 22.124760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008499, 37.441677, 22.173517>,  <41.375881, 37.577423, 22.254778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008499, 37.441677, 22.173517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063556, 0.380329, -0.922665,
		0.390393, -0.860335, -0.327744,
		-0.918452, -0.339372, -0.203157,
		40.732964, 37.339870, 22.112572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390297, 37.405323, 21.630726>,  <41.375881, 37.577423, 22.254778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390297, 37.405323, 21.630726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997391, 37.471764, 21.665529>,  <40.761646, 37.511627, 21.686411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997391, 37.471764, 21.665529>,  <41.390297, 37.405323, 21.630726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997391, 37.471764, 21.665529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003356, 0.448358, -0.893848,
		-0.187483, -0.878285, -0.439847,
		-0.982262, 0.166105, 0.087007,
		40.702713, 37.521595, 21.691631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104797, 37.016163, 21.041039>,  <41.390297, 37.405323, 21.630726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104797, 37.016163, 21.041039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857239, 37.310196, 21.151768>,  <40.708706, 37.486614, 21.218204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.857239, 37.310196, 21.151768>,  <41.104797, 37.016163, 21.041039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857239, 37.310196, 21.151768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067228, 0.400705, -0.913737,
		-0.782592, -0.546896, -0.297412,
		-0.618894, 0.735078, 0.276822,
		40.671570, 37.530720, 21.234814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564892, 37.053875, 20.670544>,  <41.104797, 37.016163, 21.041039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564892, 37.053875, 20.670544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.569607, 37.437523, 20.783648>,  <40.572433, 37.667709, 20.851511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.569607, 37.437523, 20.783648>,  <40.564892, 37.053875, 20.670544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569607, 37.437523, 20.783648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039123, 0.283007, -0.958319,
		-0.999165, 0.000230, 0.040859,
		0.011784, 0.959118, 0.282762,
		40.573143, 37.725258, 20.868477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027493, 37.384823, 20.262798>,  <40.564892, 37.053875, 20.670544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027493, 37.384823, 20.262798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191814, 37.726566, 20.390108>,  <40.290409, 37.931614, 20.466494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191814, 37.726566, 20.390108>,  <40.027493, 37.384823, 20.262798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191814, 37.726566, 20.390108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029555, 0.361389, -0.931947,
		-0.911243, 0.373445, 0.173712,
		0.410809, 0.854363, 0.318276,
		40.315056, 37.982876, 20.485592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580135, 37.916958, 19.994913>,  <40.027493, 37.384823, 20.262798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580135, 37.916958, 19.994913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945271, 38.064465, 20.065037>,  <40.164352, 38.152969, 20.107111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945271, 38.064465, 20.065037>,  <39.580135, 37.916958, 19.994913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945271, 38.064465, 20.065037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012784, 0.454948, -0.890426,
		-0.408116, 0.810576, 0.420009,
		0.912841, 0.368766, 0.175309,
		40.219124, 38.175095, 20.117630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278534, 37.675545, 19.163624>,  <39.580135, 37.916958, 19.994913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278534, 37.675545, 19.163624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958660, 37.614872, 18.931246>,  <38.766735, 37.578468, 18.791819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958660, 37.614872, 18.931246>,  <39.278534, 37.675545, 19.163624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958660, 37.614872, 18.931246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556656, -0.175338, 0.812029,
		-0.225034, 0.972753, 0.055779,
		-0.799684, -0.151684, -0.580946,
		38.718754, 37.569366, 18.756962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845707, 38.012623, 19.396070>,  <39.278534, 37.675545, 19.163624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845707, 38.012623, 19.396070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618793, 37.750843, 19.196117>,  <38.482647, 37.593773, 19.076145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618793, 37.750843, 19.196117>,  <38.845707, 38.012623, 19.396070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618793, 37.750843, 19.196117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554588, -0.145132, 0.819371,
		-0.608790, 0.742042, -0.280622,
		-0.567281, -0.654454, -0.499882,
		38.448608, 37.554508, 19.046152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154148, 38.196472, 19.591097>,  <38.845707, 38.012623, 19.396070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154148, 38.196472, 19.591097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151310, 37.809330, 19.490538>,  <38.149609, 37.577045, 19.430202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151310, 37.809330, 19.490538>,  <38.154148, 38.196472, 19.591097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151310, 37.809330, 19.490538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659703, -0.184401, 0.728552,
		-0.751492, 0.171017, -0.637191,
		-0.007096, -0.967858, -0.251396,
		38.149181, 37.518974, 19.415119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441063, 37.840446, 19.732185>,  <38.154148, 38.196472, 19.591097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441063, 37.840446, 19.732185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666912, 37.511436, 19.704870>,  <37.802422, 37.314030, 19.688480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666912, 37.511436, 19.704870>,  <37.441063, 37.840446, 19.732185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666912, 37.511436, 19.704870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395872, -0.342487, 0.852049,
		-0.724218, -0.454049, -0.518988,
		0.564619, -0.822522, -0.068290,
		37.836296, 37.264679, 19.684383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992249, 37.202515, 19.912296>,  <37.441063, 37.840446, 19.732185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992249, 37.202515, 19.912296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378426, 37.126953, 19.984108>,  <37.610134, 37.081615, 20.027195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378426, 37.126953, 19.984108>,  <36.992249, 37.202515, 19.912296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378426, 37.126953, 19.984108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233805, -0.323557, 0.916867,
		-0.115115, -0.927159, -0.356544,
		0.965445, -0.188907, 0.179528,
		37.668060, 37.070282, 20.037966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028442, 36.615707, 20.200279>,  <36.992249, 37.202515, 19.912296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028442, 36.615707, 20.200279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385376, 36.754372, 20.315912>,  <37.599537, 36.837570, 20.385292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385376, 36.754372, 20.315912>,  <37.028442, 36.615707, 20.200279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385376, 36.754372, 20.315912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139798, -0.396698, 0.907242,
		0.429185, -0.849974, -0.305523,
		0.892332, 0.346663, 0.289082,
		37.653076, 36.858372, 20.402637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042843, 36.311855, 20.846544>,  <37.028442, 36.615707, 20.200279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042843, 36.311855, 20.846544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375713, 36.533340, 20.834620>,  <37.575436, 36.666233, 20.827465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375713, 36.533340, 20.834620>,  <37.042843, 36.311855, 20.846544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375713, 36.533340, 20.834620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004104, 0.047607, 0.998858,
		0.554502, -0.831344, 0.037345,
		0.832173, 0.553716, -0.029810,
		37.625366, 36.699455, 20.825676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529957, 35.910297, 21.128418>,  <37.042843, 36.311855, 20.846544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529957, 35.910297, 21.128418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645088, 36.290325, 21.176634>,  <37.714165, 36.518341, 21.205564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645088, 36.290325, 21.176634>,  <37.529957, 35.910297, 21.128418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645088, 36.290325, 21.176634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024306, -0.133075, 0.990808,
		0.957374, -0.282250, -0.061395,
		0.287825, 0.950066, 0.120542,
		37.731438, 36.575344, 21.212797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172413, 35.898109, 21.667530>,  <37.529957, 35.910297, 21.128418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172413, 35.898109, 21.667530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998974, 36.258316, 21.654480>,  <37.894913, 36.474442, 21.646650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998974, 36.258316, 21.654480>,  <38.172413, 35.898109, 21.667530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998974, 36.258316, 21.654480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067942, 0.068775, 0.995316,
		0.898544, 0.429345, -0.091004,
		-0.433593, 0.900518, -0.032626,
		37.868896, 36.528473, 21.644691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586395, 36.234184, 22.032026>,  <38.172413, 35.898109, 21.667530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586395, 36.234184, 22.032026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248173, 36.447647, 22.025795>,  <38.045238, 36.575726, 22.022057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248173, 36.447647, 22.025795>,  <38.586395, 36.234184, 22.032026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248173, 36.447647, 22.025795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015281, 0.004979, 0.999871,
		0.533669, 0.845685, 0.003945,
		-0.845556, 0.533660, -0.015580,
		37.994507, 36.607746, 22.021122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758320, 36.660389, 22.599903>,  <38.586395, 36.234184, 22.032026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758320, 36.660389, 22.599903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364368, 36.716419, 22.559137>,  <38.127998, 36.750038, 22.534678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364368, 36.716419, 22.559137>,  <38.758320, 36.660389, 22.599903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364368, 36.716419, 22.559137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112812, -0.072182, 0.990991,
		0.131454, 0.987507, 0.086893,
		-0.984882, 0.140072, -0.101914,
		38.068905, 36.758442, 22.528563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513996, 37.160988, 23.035526>,  <38.758320, 36.660389, 22.599903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513996, 37.160988, 23.035526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189701, 36.933762, 22.978964>,  <37.995125, 36.797424, 22.945026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189701, 36.933762, 22.978964>,  <38.513996, 37.160988, 23.035526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189701, 36.933762, 22.978964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141028, -0.044912, 0.988986,
		-0.568164, 0.821754, -0.043702,
		-0.810741, -0.568070, -0.141407,
		37.946480, 36.763340, 22.936543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133366, 37.309700, 23.610535>,  <38.513996, 37.160988, 23.035526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133366, 37.309700, 23.610535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970512, 36.962135, 23.497936>,  <37.872799, 36.753597, 23.430376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970512, 36.962135, 23.497936>,  <38.133366, 37.309700, 23.610535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970512, 36.962135, 23.497936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320448, -0.152720, 0.934874,
		-0.855310, 0.470824, -0.216262,
		-0.407134, -0.868908, -0.281498,
		37.848373, 36.701462, 23.413486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591347, 37.181019, 24.055983>,  <38.133366, 37.309700, 23.610535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591347, 37.181019, 24.055983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658283, 36.814396, 23.910696>,  <37.698444, 36.594421, 23.823524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658283, 36.814396, 23.910696>,  <37.591347, 37.181019, 24.055983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658283, 36.814396, 23.910696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026430, -0.372450, 0.927676,
		-0.985544, -0.145643, -0.086552,
		0.167346, -0.916553, -0.363216,
		37.708488, 36.539429, 23.801731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971912, 36.672642, 24.222029>,  <37.591347, 37.181019, 24.055983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971912, 36.672642, 24.222029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298996, 36.449009, 24.167221>,  <37.495247, 36.314827, 24.134336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298996, 36.449009, 24.167221>,  <36.971912, 36.672642, 24.222029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298996, 36.449009, 24.167221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253666, -0.563664, 0.786089,
		-0.516721, -0.608038, -0.602735,
		0.817712, -0.559082, -0.137018,
		37.544308, 36.281284, 24.126116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698311, 36.054211, 24.451860>,  <36.971912, 36.672642, 24.222029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698311, 36.054211, 24.451860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091660, 35.982647, 24.439362>,  <37.327667, 35.939709, 24.431862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091660, 35.982647, 24.439362>,  <36.698311, 36.054211, 24.451860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091660, 35.982647, 24.439362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098582, -0.670304, 0.735509,
		-0.152533, -0.720197, -0.676794,
		0.983369, -0.178910, -0.031245,
		37.386669, 35.928974, 24.429989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743855, 35.419994, 24.425201>,  <36.698311, 36.054211, 24.451860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743855, 35.419994, 24.425201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124046, 35.485382, 24.530924>,  <37.352161, 35.524616, 24.594357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.124046, 35.485382, 24.530924>,  <36.743855, 35.419994, 24.425201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124046, 35.485382, 24.530924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066034, -0.724822, 0.685764,
		0.303677, -0.669261, -0.678137,
		0.950484, 0.163471, 0.264306,
		37.409191, 35.534424, 24.610216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111179, 34.815037, 24.327854>,  <36.743855, 35.419994, 24.425201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111179, 34.815037, 24.327854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299431, 35.032825, 24.605577>,  <37.412380, 35.163498, 24.772211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.299431, 35.032825, 24.605577>,  <37.111179, 34.815037, 24.327854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299431, 35.032825, 24.605577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104668, -0.815796, 0.568790,
		0.876102, -0.195017, -0.440925,
		0.470628, 0.544468, 0.694308,
		37.440620, 35.196167, 24.813869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320984, 34.350731, 24.765175>,  <37.111179, 34.815037, 24.327854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320984, 34.350731, 24.765175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412884, 34.675003, 24.980583>,  <37.468025, 34.869568, 25.109829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412884, 34.675003, 24.980583>,  <37.320984, 34.350731, 24.765175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412884, 34.675003, 24.980583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001740, -0.553666, 0.832737,
		0.973247, -0.190387, -0.128617,
		0.229753, 0.810683, 0.538522,
		37.481812, 34.918209, 25.142139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874104, 34.095814, 25.229467>,  <37.320984, 34.350731, 24.765175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874104, 34.095814, 25.229467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727634, 34.424549, 25.404055>,  <37.639751, 34.621788, 25.508806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.727634, 34.424549, 25.404055>,  <37.874104, 34.095814, 25.229467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727634, 34.424549, 25.404055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018969, -0.462355, 0.886492,
		0.930353, 0.332890, 0.153713,
		-0.366175, 0.821835, 0.436467,
		37.617783, 34.671101, 25.534994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406780, 34.368618, 25.870140>,  <37.874104, 34.095814, 25.229467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406780, 34.368618, 25.870140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024937, 34.475185, 25.923410>,  <37.795830, 34.539127, 25.955372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024937, 34.475185, 25.923410>,  <38.406780, 34.368618, 25.870140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024937, 34.475185, 25.923410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034120, -0.346361, 0.937481,
		0.295889, 0.899475, 0.321550,
		-0.954613, 0.266419, 0.133174,
		37.738552, 34.555111, 25.963364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.825565, 35.261497, 31.134516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.430641, 35.280872, 31.074020>,  <41.193687, 35.292496, 31.037724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.430641, 35.280872, 31.074020>,  <41.825565, 35.261497, 31.134516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430641, 35.280872, 31.074020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156966, -0.153083, 0.975668,
		0.024102, 0.987025, 0.158742,
		-0.987310, 0.048433, -0.151240,
		41.134449, 35.295403, 31.028648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516453, 35.775742, 31.670265>,  <41.825565, 35.261497, 31.134516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516453, 35.775742, 31.670265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215813, 35.542675, 31.546597>,  <41.035427, 35.402836, 31.472395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215813, 35.542675, 31.546597>,  <41.516453, 35.775742, 31.670265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215813, 35.542675, 31.546597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316534, -0.092619, 0.944049,
		-0.578704, 0.807414, -0.114822,
		-0.751604, -0.582670, -0.309173,
		40.990330, 35.367874, 31.453844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847340, 36.051521, 31.922373>,  <41.516453, 35.775742, 31.670265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847340, 36.051521, 31.922373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796730, 35.663307, 31.840347>,  <40.766365, 35.430378, 31.791132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796730, 35.663307, 31.840347>,  <40.847340, 36.051521, 31.922373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796730, 35.663307, 31.840347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498239, -0.116581, 0.859167,
		-0.857759, 0.210874, -0.468809,
		-0.126521, -0.970537, -0.205064,
		40.758774, 35.372147, 31.778828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150433, 35.941174, 32.202248>,  <40.847340, 36.051521, 31.922373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150433, 35.941174, 32.202248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310787, 35.576881, 32.162540>,  <40.407001, 35.358307, 32.138718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310787, 35.576881, 32.162540>,  <40.150433, 35.941174, 32.202248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310787, 35.576881, 32.162540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451154, -0.290561, 0.843822,
		-0.797339, -0.293494, -0.527363,
		0.400888, -0.910734, -0.099265,
		40.431053, 35.303661, 32.132759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616726, 35.355671, 32.161640>,  <40.150433, 35.941174, 32.202248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616726, 35.355671, 32.161640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958519, 35.204163, 32.303848>,  <40.163593, 35.113258, 32.389172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958519, 35.204163, 32.303848>,  <39.616726, 35.355671, 32.161640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958519, 35.204163, 32.303848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474834, -0.291910, 0.830254,
		-0.210694, -0.878250, -0.429284,
		0.854483, -0.378768, 0.355519,
		40.214863, 35.090530, 32.410503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385292, 34.772739, 32.384808>,  <39.616726, 35.355671, 32.161640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385292, 34.772739, 32.384808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745399, 34.812115, 32.554432>,  <39.961464, 34.835739, 32.656208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745399, 34.812115, 32.554432>,  <39.385292, 34.772739, 32.384808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745399, 34.812115, 32.554432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309633, -0.539945, 0.782679,
		0.306020, -0.835924, -0.455613,
		0.900266, 0.098442, 0.424064,
		40.015480, 34.841648, 32.681652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581612, 34.118317, 32.512249>,  <39.385292, 34.772739, 32.384808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581612, 34.118317, 32.512249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795879, 34.351067, 32.757030>,  <39.924438, 34.490715, 32.903900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795879, 34.351067, 32.757030>,  <39.581612, 34.118317, 32.512249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795879, 34.351067, 32.757030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255777, -0.578843, 0.774286,
		0.804759, -0.571284, -0.161239,
		0.535669, 0.581873, 0.611950,
		39.956581, 34.525627, 32.940617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901279, 33.672131, 32.993259>,  <39.581612, 34.118317, 32.512249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901279, 33.672131, 32.993259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857605, 34.037933, 33.149082>,  <39.831402, 34.257416, 33.242577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857605, 34.037933, 33.149082>,  <39.901279, 33.672131, 32.993259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857605, 34.037933, 33.149082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328815, -0.403070, 0.854058,
		0.938061, -0.034842, 0.344713,
		-0.109186, 0.914506, 0.389561,
		39.824848, 34.312286, 33.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037823, 33.565163, 33.674255>,  <39.901279, 33.672131, 32.993259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037823, 33.565163, 33.674255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883644, 33.934208, 33.680252>,  <39.791138, 34.155636, 33.683849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.883644, 33.934208, 33.680252>,  <40.037823, 33.565163, 33.674255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883644, 33.934208, 33.680252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507898, -0.225698, 0.831324,
		0.770372, 0.312812, 0.555586,
		-0.385443, 0.922610, 0.014995,
		39.768013, 34.210991, 33.684750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057957, 33.799732, 34.377655>,  <40.037823, 33.565163, 33.674255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057957, 33.799732, 34.377655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782619, 34.040783, 34.216145>,  <39.617416, 34.185413, 34.119240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782619, 34.040783, 34.216145>,  <40.057957, 33.799732, 34.377655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782619, 34.040783, 34.216145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487239, 0.028262, 0.872811,
		0.537390, 0.797523, 0.274169,
		-0.688339, 0.602626, -0.403772,
		39.576118, 34.221569, 34.095013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890301, 34.035877, 34.892010>,  <40.057957, 33.799732, 34.377655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890301, 34.035877, 34.892010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596077, 34.134636, 34.639660>,  <39.419544, 34.193890, 34.488251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596077, 34.134636, 34.639660>,  <39.890301, 34.035877, 34.892010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596077, 34.134636, 34.639660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660150, -0.052023, 0.749330,
		0.152184, 0.967645, 0.201252,
		-0.735556, 0.246893, -0.630874,
		39.375412, 34.208702, 34.450397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406578, 34.429386, 35.278084>,  <39.890301, 34.035877, 34.892010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406578, 34.429386, 35.278084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177418, 34.329708, 34.965755>,  <39.039921, 34.269901, 34.778358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177418, 34.329708, 34.965755>,  <39.406578, 34.429386, 35.278084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177418, 34.329708, 34.965755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766501, -0.174494, 0.618084,
		-0.290274, 0.952603, -0.091042,
		-0.572903, -0.249197, -0.780822,
		39.005547, 34.254948, 34.731510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711395, 34.854778, 35.191406>,  <39.406578, 34.429386, 35.278084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711395, 34.854778, 35.191406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.738136, 34.470253, 35.084515>,  <38.754181, 34.239540, 35.020378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.738136, 34.470253, 35.084515>,  <38.711395, 34.854778, 35.191406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738136, 34.470253, 35.084515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701784, -0.235688, 0.672272,
		-0.709245, 0.142592, -0.690390,
		0.066856, -0.961311, -0.267230,
		38.758194, 34.181858, 35.004345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680882, 34.765289, 35.905727>,  <38.711395, 34.854778, 35.191406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680882, 34.765289, 35.905727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804733, 34.444485, 35.701412>,  <38.879044, 34.252003, 35.578823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804733, 34.444485, 35.701412>,  <38.680882, 34.765289, 35.905727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804733, 34.444485, 35.701412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355917, -0.595891, 0.719886,
		-0.881734, -0.041097, -0.469954,
		0.309627, -0.802013, -0.510790,
		38.897621, 34.203880, 35.548176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623100, 35.586952, 36.284428>,  <38.680882, 34.765289, 35.905727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623100, 35.586952, 36.284428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398499, 35.907173, 36.368172>,  <38.263737, 36.099304, 36.418419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398499, 35.907173, 36.368172>,  <38.623100, 35.586952, 36.284428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398499, 35.907173, 36.368172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178449, 0.129910, -0.975335,
		-0.808004, -0.585014, 0.069913,
		-0.561503, 0.800551, 0.209363,
		38.230049, 36.147339, 36.430981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932190, 35.503578, 35.874454>,  <38.623100, 35.586952, 36.284428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932190, 35.503578, 35.874454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995777, 35.885567, 35.974655>,  <38.033928, 36.114761, 36.034775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.995777, 35.885567, 35.974655>,  <37.932190, 35.503578, 35.874454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995777, 35.885567, 35.974655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317693, 0.289712, -0.902850,
		-0.934773, 0.063941, 0.349444,
		0.158967, 0.954976, 0.250502,
		38.043468, 36.172058, 36.049805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300053, 35.839939, 35.720379>,  <37.932190, 35.503578, 35.874454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300053, 35.839939, 35.720379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.589352, 36.116100, 35.713879>,  <37.762932, 36.281796, 35.709980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.589352, 36.116100, 35.713879>,  <37.300053, 35.839939, 35.720379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589352, 36.116100, 35.713879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347004, 0.342963, -0.872906,
		-0.597081, 0.636964, 0.487618,
		0.723245, 0.690401, -0.016252,
		37.806324, 36.323219, 35.709003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977131, 36.465149, 35.647968>,  <37.300053, 35.839939, 35.720379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977131, 36.465149, 35.647968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.355446, 36.548447, 35.548271>,  <37.582436, 36.598427, 35.488453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.355446, 36.548447, 35.548271>,  <36.977131, 36.465149, 35.647968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355446, 36.548447, 35.548271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322768, 0.517260, -0.792631,
		-0.036139, 0.830107, 0.556432,
		0.945788, 0.208243, -0.249239,
		37.639183, 36.610920, 35.473499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025070, 37.165123, 35.488091>,  <36.977131, 36.465149, 35.647968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025070, 37.165123, 35.488091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.340103, 37.002388, 35.302967>,  <37.529125, 36.904747, 35.191895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.340103, 37.002388, 35.302967>,  <37.025070, 37.165123, 35.488091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340103, 37.002388, 35.302967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242913, 0.485251, -0.839955,
		0.566305, 0.773959, 0.283350,
		0.787586, -0.406841, -0.462805,
		37.576378, 36.880337, 35.164127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328545, 37.715382, 35.143368>,  <37.025070, 37.165123, 35.488091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328545, 37.715382, 35.143368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457600, 37.382298, 34.963371>,  <37.535034, 37.182446, 34.855373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457600, 37.382298, 34.963371>,  <37.328545, 37.715382, 35.143368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457600, 37.382298, 34.963371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100039, 0.442754, -0.891045,
		0.941220, 0.332504, 0.059546,
		0.322641, -0.832713, -0.449992,
		37.554390, 37.132484, 34.828373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769035, 37.989521, 34.620541>,  <37.328545, 37.715382, 35.143368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769035, 37.989521, 34.620541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690876, 37.612377, 34.512592>,  <37.643982, 37.386089, 34.447823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.690876, 37.612377, 34.512592>,  <37.769035, 37.989521, 34.620541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690876, 37.612377, 34.512592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109112, 0.294367, -0.949443,
		0.974636, -0.156070, -0.160395,
		-0.195395, -0.942863, -0.269871,
		37.632256, 37.329517, 34.431629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230534, 37.869480, 34.070461>,  <37.769035, 37.989521, 34.620541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230534, 37.869480, 34.070461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943348, 37.591816, 34.049786>,  <37.771038, 37.425217, 34.037380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.943348, 37.591816, 34.049786>,  <38.230534, 37.869480, 34.070461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943348, 37.591816, 34.049786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121650, 0.198235, -0.972576,
		0.685372, -0.691983, -0.226769,
		-0.717960, -0.694163, -0.051685,
		37.727959, 37.383568, 34.034279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409771, 37.486244, 33.597145>,  <38.230534, 37.869480, 34.070461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409771, 37.486244, 33.597145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016048, 37.415813, 33.601894>,  <37.779816, 37.373554, 33.604744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016048, 37.415813, 33.601894>,  <38.409771, 37.486244, 33.597145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016048, 37.415813, 33.601894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048146, 0.203187, -0.977956,
		0.169781, -0.963178, -0.208475,
		-0.984305, -0.176076, 0.011875,
		37.720757, 37.362988, 33.605457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329636, 37.132702, 32.905125>,  <38.409771, 37.486244, 33.597145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329636, 37.132702, 32.905125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965981, 37.256943, 33.016113>,  <37.747787, 37.331486, 33.082706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965981, 37.256943, 33.016113>,  <38.329636, 37.132702, 32.905125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965981, 37.256943, 33.016113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189916, 0.283761, -0.939900,
		-0.370670, -0.907197, -0.198991,
		-0.909140, 0.310601, 0.277473,
		37.693237, 37.350124, 33.099354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931713, 36.836658, 32.474728>,  <38.329636, 37.132702, 32.905125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931713, 36.836658, 32.474728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689030, 37.119156, 32.620670>,  <37.543419, 37.288654, 32.708237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689030, 37.119156, 32.620670>,  <37.931713, 36.836658, 32.474728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689030, 37.119156, 32.620670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083427, 0.399880, -0.912763,
		-0.790535, -0.584220, -0.183691,
		-0.606708, 0.706246, 0.364859,
		37.507019, 37.331028, 32.730129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305962, 36.748287, 32.112232>,  <37.931713, 36.836658, 32.474728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305962, 36.748287, 32.112232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289764, 37.122696, 32.252071>,  <37.280045, 37.347340, 32.335976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289764, 37.122696, 32.252071>,  <37.305962, 36.748287, 32.112232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289764, 37.122696, 32.252071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024976, 0.348831, -0.936853,
		-0.998868, -0.046671, 0.009251,
		-0.040497, 0.936023, 0.349601,
		37.277615, 37.403503, 32.356953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821327, 37.132511, 31.702375>,  <37.305962, 36.748287, 32.112232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821327, 37.132511, 31.702375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.067169, 37.406475, 31.858913>,  <37.214676, 37.570854, 31.952837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.067169, 37.406475, 31.858913>,  <36.821327, 37.132511, 31.702375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067169, 37.406475, 31.858913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016017, 0.506840, -0.861891,
		-0.788671, 0.523455, 0.322478,
		0.614606, 0.684914, 0.391346,
		37.251553, 37.611950, 31.976316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610622, 37.730495, 31.231827>,  <36.821327, 37.132511, 31.702375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610622, 37.730495, 31.231827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964809, 37.822330, 31.393435>,  <37.177322, 37.877430, 31.490398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964809, 37.822330, 31.393435>,  <36.610622, 37.730495, 31.231827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964809, 37.822330, 31.393435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340156, 0.272112, -0.900138,
		-0.316599, 0.934475, 0.162851,
		0.885471, 0.229588, 0.404018,
		37.230450, 37.891209, 31.514641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063110, 38.203205, 31.480337>,  <36.610622, 37.730495, 31.231827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063110, 38.203205, 31.480337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.726482, 38.398277, 31.387445>,  <35.524506, 38.515320, 31.331711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.726482, 38.398277, 31.387445>,  <36.063110, 38.203205, 31.480337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726482, 38.398277, 31.387445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391208, -0.253855, 0.884598,
		0.372449, 0.835300, 0.404420,
		-0.841569, 0.487680, -0.232228,
		35.474010, 38.544582, 31.317778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828152, 38.538441, 32.065041>,  <36.063110, 38.203205, 31.480337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828152, 38.538441, 32.065041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487011, 38.518749, 31.857111>,  <35.282326, 38.506935, 31.732353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487011, 38.518749, 31.857111>,  <35.828152, 38.538441, 32.065041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487011, 38.518749, 31.857111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498095, -0.221995, 0.838224,
		-0.156667, 0.973804, 0.164806,
		-0.852852, -0.049233, -0.519826,
		35.231155, 38.503979, 31.701162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247978, 38.992851, 32.446915>,  <35.828152, 38.538441, 32.065041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247978, 38.992851, 32.446915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.060978, 38.715038, 32.228165>,  <34.948776, 38.548351, 32.096916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.060978, 38.715038, 32.228165>,  <35.247978, 38.992851, 32.446915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060978, 38.715038, 32.228165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628372, -0.174038, 0.758195,
		-0.621766, 0.698097, -0.355060,
		-0.467500, -0.694529, -0.546875,
		34.920727, 38.506680, 32.064102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480000, 39.053478, 32.533596>,  <35.247978, 38.992851, 32.446915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480000, 39.053478, 32.533596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.518963, 38.682724, 32.388599>,  <34.542343, 38.460274, 32.301601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.518963, 38.682724, 32.388599>,  <34.480000, 39.053478, 32.533596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518963, 38.682724, 32.388599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659938, -0.332793, 0.673595,
		-0.744978, 0.173609, -0.644102,
		0.097411, -0.926881, -0.362495,
		34.548187, 38.404659, 32.279850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836594, 38.812477, 32.472229>,  <34.480000, 39.053478, 32.533596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836594, 38.812477, 32.472229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.048954, 38.473515, 32.474918>,  <34.176373, 38.270138, 32.476532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.048954, 38.473515, 32.474918>,  <33.836594, 38.812477, 32.472229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048954, 38.473515, 32.474918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679337, -0.420836, 0.601164,
		-0.506600, -0.323729, -0.799097,
		0.530903, -0.847406, 0.006726,
		34.208225, 38.219292, 32.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297157, 38.293365, 32.596836>,  <33.836594, 38.812477, 32.472229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297157, 38.293365, 32.596836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.644665, 38.120586, 32.693726>,  <33.853168, 38.016918, 32.751858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.644665, 38.120586, 32.693726>,  <33.297157, 38.293365, 32.596836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644665, 38.120586, 32.693726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452805, -0.494784, 0.741725,
		-0.200538, -0.754063, -0.625438,
		0.868765, -0.431946, 0.242221,
		33.905293, 37.991001, 32.766392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259941, 37.490692, 32.592125>,  <33.297157, 38.293365, 32.596836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259941, 37.490692, 32.592125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.557266, 37.592087, 32.839745>,  <33.735661, 37.652924, 32.988316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.557266, 37.592087, 32.839745>,  <33.259941, 37.490692, 32.592125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557266, 37.592087, 32.839745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368330, -0.617413, 0.695079,
		0.558405, -0.744678, -0.365566,
		0.743315, 0.253486, 0.619054,
		33.780262, 37.668133, 33.025459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305969, 36.838089, 33.018394>,  <33.259941, 37.490692, 32.592125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305969, 36.838089, 33.018394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.530220, 37.105530, 33.213806>,  <33.664772, 37.265995, 33.331051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.530220, 37.105530, 33.213806>,  <33.305969, 36.838089, 33.018394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530220, 37.105530, 33.213806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179157, -0.478050, 0.859867,
		0.808453, -0.569591, -0.148224,
		0.560631, 0.668606, 0.488527,
		33.698410, 37.306110, 33.360363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762501, 36.396580, 33.440262>,  <33.305969, 36.838089, 33.018394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762501, 36.396580, 33.440262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729034, 36.771080, 33.576756>,  <33.708954, 36.995781, 33.658653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.729034, 36.771080, 33.576756>,  <33.762501, 36.396580, 33.440262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729034, 36.771080, 33.576756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118894, -0.349370, 0.929411,
		0.989376, 0.037187, 0.140543,
		-0.083664, 0.936246, 0.341237,
		33.703934, 37.051952, 33.679127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065365, 36.326439, 34.093079>,  <33.762501, 36.396580, 33.440262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065365, 36.326439, 34.093079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.850849, 36.663834, 34.105255>,  <33.722141, 36.866272, 34.112560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.850849, 36.663834, 34.105255>,  <34.065365, 36.326439, 34.093079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850849, 36.663834, 34.105255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161169, -0.137738, 0.977268,
		0.828506, 0.519189, 0.209811,
		-0.536286, 0.843488, 0.030440,
		33.689964, 36.916882, 34.114388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312187, 36.720230, 34.653782>,  <34.065365, 36.326439, 34.093079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312187, 36.720230, 34.653782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.942490, 36.856663, 34.585144>,  <33.720673, 36.938522, 34.543961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.942490, 36.856663, 34.585144>,  <34.312187, 36.720230, 34.653782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942490, 36.856663, 34.585144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236258, -0.157855, 0.958783,
		0.299936, 0.926685, 0.226479,
		-0.924241, 0.341081, -0.171590,
		33.665218, 36.958988, 34.533669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225868, 37.119865, 35.278843>,  <34.312187, 36.720230, 34.653782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225868, 37.119865, 35.278843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885185, 37.025925, 35.091465>,  <33.680775, 36.969563, 34.979038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.885185, 37.025925, 35.091465>,  <34.225868, 37.119865, 35.278843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885185, 37.025925, 35.091465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385464, -0.324786, 0.863673,
		-0.354977, 0.916166, 0.186097,
		-0.851709, -0.234850, -0.468441,
		33.629673, 36.955471, 34.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.929047, 40.472919, 28.179710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597782, 40.280262, 28.065054>,  <36.399021, 40.164669, 27.996260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597782, 40.280262, 28.065054>,  <36.929047, 40.472919, 28.179710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597782, 40.280262, 28.065054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271449, -0.102763, 0.956951,
		-0.490364, 0.870322, -0.045636,
		-0.828166, -0.481642, -0.286639,
		36.349331, 40.135769, 27.979063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470547, 40.708275, 28.638952>,  <36.929047, 40.472919, 28.179710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470547, 40.708275, 28.638952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287228, 40.383156, 28.495100>,  <36.177238, 40.188084, 28.408789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287228, 40.383156, 28.495100>,  <36.470547, 40.708275, 28.638952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287228, 40.383156, 28.495100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343752, -0.211044, 0.915038,
		-0.819635, 0.542979, -0.182680,
		-0.458293, -0.812794, -0.359629,
		36.149738, 40.139317, 28.387211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719818, 40.772018, 28.778122>,  <36.470547, 40.708275, 28.638952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719818, 40.772018, 28.778122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820236, 40.387821, 28.730055>,  <35.880486, 40.157303, 28.701216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820236, 40.387821, 28.730055>,  <35.719818, 40.772018, 28.778122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820236, 40.387821, 28.730055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417319, -0.219405, 0.881877,
		-0.873398, -0.171240, -0.455909,
		0.251042, -0.960489, -0.120166,
		35.895550, 40.099674, 28.694004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200874, 40.458221, 29.042408>,  <35.719818, 40.772018, 28.778122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200874, 40.458221, 29.042408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444771, 40.141376, 29.053545>,  <35.591110, 39.951271, 29.060228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444771, 40.141376, 29.053545>,  <35.200874, 40.458221, 29.042408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444771, 40.141376, 29.053545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303756, -0.201084, 0.931288,
		-0.732086, -0.576302, -0.363217,
		0.609740, -0.792112, 0.027844,
		35.627693, 39.903744, 29.061899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782757, 39.873569, 29.457302>,  <35.200874, 40.458221, 29.042408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782757, 39.873569, 29.457302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158913, 39.737881, 29.447496>,  <35.384605, 39.656467, 29.441612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158913, 39.737881, 29.447496>,  <34.782757, 39.873569, 29.457302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158913, 39.737881, 29.447496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146885, -0.470095, 0.870308,
		-0.306750, -0.814826, -0.491898,
		0.940388, -0.339219, -0.024516,
		35.441029, 39.636116, 29.440142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860714, 39.154762, 29.403578>,  <34.782757, 39.873569, 29.457302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860714, 39.154762, 29.403578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217651, 39.235104, 29.565260>,  <35.431812, 39.283310, 29.662270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217651, 39.235104, 29.565260>,  <34.860714, 39.154762, 29.403578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217651, 39.235104, 29.565260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232540, -0.562944, 0.793107,
		0.386846, -0.801717, -0.455631,
		0.892343, 0.200858, 0.404204,
		35.485355, 39.295361, 29.686522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245090, 38.506264, 29.590122>,  <34.860714, 39.154762, 29.403578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245090, 38.506264, 29.590122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404236, 38.776512, 29.838392>,  <35.499722, 38.938663, 29.987354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404236, 38.776512, 29.838392>,  <35.245090, 38.506264, 29.590122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404236, 38.776512, 29.838392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109875, -0.636567, 0.763354,
		0.910842, -0.371906, -0.179031,
		0.397861, 0.675624, 0.620676,
		35.523594, 38.979198, 30.024595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628323, 38.072098, 30.109819>,  <35.245090, 38.506264, 29.590122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628323, 38.072098, 30.109819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578022, 38.437103, 30.265514>,  <35.547840, 38.656105, 30.358932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578022, 38.437103, 30.265514>,  <35.628323, 38.072098, 30.109819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578022, 38.437103, 30.265514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283686, -0.409046, 0.867297,
		0.950636, -0.001356, 0.310306,
		-0.125753, 0.912513, 0.389238,
		35.540295, 38.710857, 30.382286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058243, 38.127430, 30.721453>,  <35.628323, 38.072098, 30.109819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058243, 38.127430, 30.721453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786861, 38.416122, 30.776314>,  <35.624035, 38.589336, 30.809231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786861, 38.416122, 30.776314>,  <36.058243, 38.127430, 30.721453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786861, 38.416122, 30.776314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315921, -0.455175, 0.832472,
		0.663250, 0.521461, 0.536823,
		-0.678450, 0.721730, 0.137154,
		35.583328, 38.632641, 30.817461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819435, 38.323551, 30.740322>,  <36.058243, 38.127430, 30.721453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819435, 38.323551, 30.740322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140736, 38.205986, 30.947550>,  <37.333515, 38.135445, 31.071886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140736, 38.205986, 30.947550>,  <36.819435, 38.323551, 30.740322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140736, 38.205986, 30.947550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595581, 0.408324, -0.691777,
		-0.008216, 0.864225, 0.503039,
		0.803253, -0.293917, 0.518070,
		37.381710, 38.117809, 31.102970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251225, 38.902695, 30.872734>,  <36.819435, 38.323551, 30.740322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251225, 38.902695, 30.872734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481857, 38.575886, 30.874603>,  <37.620239, 38.379799, 30.875725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481857, 38.575886, 30.874603>,  <37.251225, 38.902695, 30.872734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481857, 38.575886, 30.874603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613144, 0.428912, -0.663392,
		0.540003, 0.385367, 0.748258,
		0.576586, -0.817023, 0.004672,
		37.654835, 38.330780, 30.876005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857761, 39.365086, 30.715580>,  <37.251225, 38.902695, 30.872734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857761, 39.365086, 30.715580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932304, 38.972843, 30.691328>,  <37.977028, 38.737495, 30.676777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932304, 38.972843, 30.691328>,  <37.857761, 39.365086, 30.715580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932304, 38.972843, 30.691328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737821, 0.180433, -0.650434,
		0.648762, 0.076477, 0.757139,
		0.186356, -0.980610, -0.060632,
		37.988213, 38.678661, 30.673138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555782, 39.279163, 30.895094>,  <37.857761, 39.365086, 30.715580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555782, 39.279163, 30.895094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414211, 39.000790, 30.645164>,  <38.329269, 38.833763, 30.495207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414211, 39.000790, 30.645164>,  <38.555782, 39.279163, 30.895094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414211, 39.000790, 30.645164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573282, 0.366419, -0.732861,
		0.738972, -0.617582, 0.269282,
		-0.353931, -0.695938, -0.624822,
		38.308033, 38.792007, 30.457718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119900, 39.014988, 30.582430>,  <38.555782, 39.279163, 30.895094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119900, 39.014988, 30.582430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833221, 38.884689, 30.335779>,  <38.661213, 38.806511, 30.187788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833221, 38.884689, 30.335779>,  <39.119900, 39.014988, 30.582430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833221, 38.884689, 30.335779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544141, 0.291816, -0.786609,
		0.436178, -0.899294, -0.031892,
		-0.716700, -0.325748, -0.616627,
		38.618210, 38.786964, 30.150791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416893, 38.516262, 30.053621>,  <39.119900, 39.014988, 30.582430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416893, 38.516262, 30.053621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087128, 38.675423, 29.892616>,  <38.889267, 38.770920, 29.796013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087128, 38.675423, 29.892616>,  <39.416893, 38.516262, 30.053621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087128, 38.675423, 29.892616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499289, 0.176349, -0.848299,
		-0.266561, -0.900318, -0.344055,
		-0.824412, 0.397906, -0.402511,
		38.839806, 38.794796, 29.771862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391651, 38.191902, 29.330568>,  <39.416893, 38.516262, 30.053621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391651, 38.191902, 29.330568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145229, 38.501862, 29.273985>,  <38.997375, 38.687836, 29.240036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145229, 38.501862, 29.273985>,  <39.391651, 38.191902, 29.330568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145229, 38.501862, 29.273985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351187, 0.109448, -0.929886,
		-0.705084, -0.622540, -0.339560,
		-0.616055, 0.774897, -0.141457,
		38.960411, 38.734329, 29.231548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981625, 38.105743, 28.722660>,  <39.391651, 38.191902, 29.330568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981625, 38.105743, 28.722660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978607, 38.502460, 28.773714>,  <38.976795, 38.740490, 28.804346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978607, 38.502460, 28.773714>,  <38.981625, 38.105743, 28.722660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978607, 38.502460, 28.773714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394119, 0.120258, -0.911157,
		-0.919028, 0.043426, -0.391792,
		-0.007548, 0.991792, 0.127636,
		38.976341, 38.799999, 28.812004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636372, 38.324230, 28.159639>,  <38.981625, 38.105743, 28.722660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636372, 38.324230, 28.159639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841602, 38.644226, 28.284073>,  <38.964741, 38.836224, 28.358734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841602, 38.644226, 28.284073>,  <38.636372, 38.324230, 28.159639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841602, 38.644226, 28.284073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122601, 0.290406, -0.949017,
		-0.849542, 0.525058, 0.050921,
		0.513077, 0.799987, 0.311085,
		38.995525, 38.884224, 28.377398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506248, 38.687618, 27.611473>,  <38.636372, 38.324230, 28.159639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506248, 38.687618, 27.611473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777855, 38.885128, 27.828775>,  <38.940819, 39.003635, 27.959156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777855, 38.885128, 27.828775>,  <38.506248, 38.687618, 27.611473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777855, 38.885128, 27.828775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302847, 0.485700, -0.819988,
		-0.668749, 0.721305, 0.180258,
		0.679013, 0.493776, 0.543256,
		38.981560, 39.033260, 27.991753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417297, 39.409637, 27.548681>,  <38.506248, 38.687618, 27.611473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417297, 39.409637, 27.548681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800949, 39.333782, 27.632694>,  <39.031139, 39.288269, 27.683102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800949, 39.333782, 27.632694>,  <38.417297, 39.409637, 27.548681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800949, 39.333782, 27.632694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275749, 0.459636, -0.844214,
		0.063559, 0.867624, 0.493143,
		0.959126, -0.189641, 0.210032,
		39.088688, 39.276890, 27.695704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732422, 40.013229, 27.503471>,  <38.417297, 39.409637, 27.548681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732422, 40.013229, 27.503471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040684, 39.766399, 27.439827>,  <39.225639, 39.618301, 27.401640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040684, 39.766399, 27.439827>,  <38.732422, 40.013229, 27.503471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040684, 39.766399, 27.439827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269267, 0.541614, -0.796335,
		0.577574, 0.570854, 0.583553,
		0.770651, -0.617074, -0.159110,
		39.271877, 39.581276, 27.392094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305962, 40.457851, 27.430302>,  <38.732422, 40.013229, 27.503471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305962, 40.457851, 27.430302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424702, 40.103821, 27.286898>,  <39.495945, 39.891403, 27.200855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424702, 40.103821, 27.286898>,  <39.305962, 40.457851, 27.430302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424702, 40.103821, 27.286898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284974, 0.440430, -0.851358,
		0.911412, 0.150557, 0.382963,
		0.296846, -0.885073, -0.358508,
		39.513756, 39.838299, 27.179346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861134, 40.699276, 27.002958>,  <39.305962, 40.457851, 27.430302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861134, 40.699276, 27.002958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767918, 40.330669, 26.878698>,  <39.711987, 40.109505, 26.804142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767918, 40.330669, 26.878698>,  <39.861134, 40.699276, 27.002958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767918, 40.330669, 26.878698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261356, 0.248344, -0.932748,
		0.936688, -0.298561, 0.182968,
		-0.233043, -0.921513, -0.310651,
		39.698006, 40.054214, 26.785503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.880142, 35.719326, 24.964951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.068207, 36.064411, 25.039431>,  <35.181046, 36.271461, 25.084118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.068207, 36.064411, 25.039431>,  <34.880142, 35.719326, 24.964951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068207, 36.064411, 25.039431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181463, -0.300958, 0.936213,
		0.863723, -0.406385, -0.298050,
		0.470164, 0.862714, 0.186200,
		35.209255, 36.323227, 25.095291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513435, 35.569775, 25.328257>,  <34.880142, 35.719326, 24.964951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513435, 35.569775, 25.328257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398739, 35.941067, 25.423046>,  <35.329922, 36.163841, 25.479919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398739, 35.941067, 25.423046>,  <35.513435, 35.569775, 25.328257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398739, 35.941067, 25.423046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196336, -0.185172, 0.962893,
		0.937672, 0.322632, -0.129148,
		-0.286746, 0.928235, 0.236975,
		35.312714, 36.219536, 25.494139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984871, 35.730385, 25.836212>,  <35.513435, 35.569775, 25.328257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984871, 35.730385, 25.836212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709415, 36.016247, 25.885273>,  <35.544144, 36.187763, 25.914709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709415, 36.016247, 25.885273>,  <35.984871, 35.730385, 25.836212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709415, 36.016247, 25.885273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194360, 0.018965, 0.980747,
		0.698572, 0.699218, -0.151961,
		-0.688638, 0.714657, 0.122651,
		35.502823, 36.230644, 25.922068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247204, 36.162437, 26.342245>,  <35.984871, 35.730385, 25.836212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247204, 36.162437, 26.342245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851364, 36.219845, 26.346205>,  <35.613861, 36.254288, 26.348579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851364, 36.219845, 26.346205>,  <36.247204, 36.162437, 26.342245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851364, 36.219845, 26.346205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015592, -0.175402, 0.984373,
		0.143013, 0.973980, 0.175815,
		-0.989598, 0.143520, 0.009898,
		35.554485, 36.262901, 26.349174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107250, 36.480820, 27.003630>,  <36.247204, 36.162437, 26.342245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107250, 36.480820, 27.003630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753662, 36.357132, 26.863354>,  <35.541508, 36.282921, 26.779188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753662, 36.357132, 26.863354>,  <36.107250, 36.480820, 27.003630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753662, 36.357132, 26.863354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264405, -0.287997, 0.920406,
		-0.385602, 0.906335, 0.172822,
		-0.883969, -0.309216, -0.350692,
		35.488472, 36.264366, 26.758146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589931, 36.686909, 27.514177>,  <36.107250, 36.480820, 27.003630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589931, 36.686909, 27.514177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.413799, 36.401234, 27.296539>,  <35.308121, 36.229828, 27.165956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.413799, 36.401234, 27.296539>,  <35.589931, 36.686909, 27.514177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413799, 36.401234, 27.296539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446518, -0.351554, 0.822819,
		-0.778930, 0.605260, -0.164100,
		-0.440330, -0.714192, -0.544095,
		35.281700, 36.186977, 27.133310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953419, 36.698109, 27.712933>,  <35.589931, 36.686909, 27.514177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953419, 36.698109, 27.712933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001816, 36.331657, 27.560053>,  <35.030853, 36.111786, 27.468325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001816, 36.331657, 27.560053>,  <34.953419, 36.698109, 27.712933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001816, 36.331657, 27.560053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451579, -0.393677, 0.800684,
		-0.883990, 0.075720, -0.461333,
		0.120988, -0.916125, -0.382200,
		35.038113, 36.056820, 27.445393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384327, 36.411480, 27.890335>,  <34.953419, 36.698109, 27.712933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384327, 36.411480, 27.890335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603893, 36.086552, 27.811508>,  <34.735634, 35.891594, 27.764212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603893, 36.086552, 27.811508>,  <34.384327, 36.411480, 27.890335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603893, 36.086552, 27.811508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440728, -0.481587, 0.757517,
		-0.710250, -0.328957, -0.622360,
		0.548911, -0.812319, -0.197066,
		34.768566, 35.842857, 27.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897274, 35.730335, 27.805571>,  <34.384327, 36.411480, 27.890335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897274, 35.730335, 27.805571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.260784, 35.590023, 27.895979>,  <34.478889, 35.505836, 27.950224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.260784, 35.590023, 27.895979>,  <33.897274, 35.730335, 27.805571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260784, 35.590023, 27.895979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393093, -0.537865, 0.745774,
		-0.140037, -0.766585, -0.626687,
		0.908772, -0.350782, 0.226019,
		34.533417, 35.484787, 27.963785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795078, 35.049408, 27.920668>,  <33.897274, 35.730335, 27.805571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795078, 35.049408, 27.920668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145168, 35.138779, 28.092279>,  <34.355221, 35.192402, 28.195246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.145168, 35.138779, 28.092279>,  <33.795078, 35.049408, 27.920668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145168, 35.138779, 28.092279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194939, -0.648808, 0.735559,
		0.442700, -0.727413, -0.524297,
		0.875223, 0.223427, 0.429028,
		34.407734, 35.205807, 28.220987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032787, 34.354595, 28.104856>,  <33.795078, 35.049408, 27.920668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032787, 34.354595, 28.104856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244930, 34.610725, 28.327103>,  <34.372215, 34.764404, 28.460451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244930, 34.610725, 28.327103>,  <34.032787, 34.354595, 28.104856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244930, 34.610725, 28.327103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039070, -0.673146, 0.738477,
		0.846876, -0.369946, -0.382023,
		0.530354, 0.640324, 0.555617,
		34.404037, 34.802822, 28.493788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440540, 33.901066, 28.444122>,  <34.032787, 34.354595, 28.104856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440540, 33.901066, 28.444122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.478054, 34.228470, 28.670839>,  <34.500561, 34.424911, 28.806870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.478054, 34.228470, 28.670839>,  <34.440540, 33.901066, 28.444122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478054, 34.228470, 28.670839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026852, -0.567016, 0.823269,
		0.995231, -0.092426, -0.031196,
		0.093780, 0.818505, 0.566793,
		34.506187, 34.474022, 28.840878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083332, 33.837406, 28.936998>,  <34.440540, 33.901066, 28.444122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083332, 33.837406, 28.936998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841476, 34.092823, 29.127438>,  <34.696362, 34.246075, 29.241701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.841476, 34.092823, 29.127438>,  <35.083332, 33.837406, 28.936998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841476, 34.092823, 29.127438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144845, -0.499624, 0.854047,
		0.783218, 0.585352, 0.209603,
		-0.604641, 0.638544, 0.476100,
		34.660084, 34.284386, 29.270267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366901, 33.868526, 29.572102>,  <35.083332, 33.837406, 28.936998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366901, 33.868526, 29.572102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.018101, 34.033237, 29.677965>,  <34.808819, 34.132065, 29.741484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.018101, 34.033237, 29.677965>,  <35.366901, 33.868526, 29.572102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018101, 34.033237, 29.677965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185978, -0.221431, 0.957278,
		0.452789, 0.883973, 0.116508,
		-0.872006, 0.411777, 0.264661,
		34.756500, 34.156769, 29.757364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063438, 34.216389, 29.883818>,  <35.366901, 33.868526, 29.572102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063438, 34.216389, 29.883818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379520, 33.971287, 29.879730>,  <36.569172, 33.824226, 29.877277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379520, 33.971287, 29.879730>,  <36.063438, 34.216389, 29.883818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379520, 33.971287, 29.879730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349993, 0.464911, -0.813242,
		0.503067, 0.639054, 0.581836,
		0.790208, -0.612754, -0.010217,
		36.616581, 33.787460, 29.876665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575645, 34.611446, 29.756039>,  <36.063438, 34.216389, 29.883818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575645, 34.611446, 29.756039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684872, 34.248631, 29.627840>,  <36.750408, 34.030941, 29.550920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684872, 34.248631, 29.627840>,  <36.575645, 34.611446, 29.756039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684872, 34.248631, 29.627840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275043, 0.392863, -0.877502,
		0.921839, 0.151463, 0.356751,
		0.273064, -0.907038, -0.320498,
		36.766792, 33.976521, 29.531691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127968, 34.707481, 29.357529>,  <36.575645, 34.611446, 29.756039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127968, 34.707481, 29.357529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058590, 34.336407, 29.225275>,  <37.016964, 34.113762, 29.145922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058590, 34.336407, 29.225275>,  <37.127968, 34.707481, 29.357529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058590, 34.336407, 29.225275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165884, 0.303409, -0.938310,
		0.970773, -0.217592, 0.101263,
		-0.173444, -0.927683, -0.330636,
		37.006557, 34.058102, 29.126083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730797, 34.478603, 28.993174>,  <37.127968, 34.707481, 29.357529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730797, 34.478603, 28.993174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426800, 34.259682, 28.852961>,  <37.244404, 34.128330, 28.768833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426800, 34.259682, 28.852961>,  <37.730797, 34.478603, 28.993174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426800, 34.259682, 28.852961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266490, 0.229505, -0.936114,
		0.592789, -0.804851, -0.028570,
		-0.759990, -0.547304, -0.350533,
		37.198803, 34.095490, 28.747801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061749, 34.180843, 28.344101>,  <37.730797, 34.478603, 28.993174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061749, 34.180843, 28.344101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671535, 34.103691, 28.301895>,  <37.437408, 34.057400, 28.276571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671535, 34.103691, 28.301895>,  <38.061749, 34.180843, 28.344101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671535, 34.103691, 28.301895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074068, 0.163537, -0.983753,
		0.207004, -0.967498, -0.145249,
		-0.975532, -0.192882, -0.105514,
		37.378876, 34.045830, 28.270241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013531, 33.589756, 27.882505>,  <38.061749, 34.180843, 28.344101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013531, 33.589756, 27.882505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699730, 33.837315, 27.866943>,  <37.511448, 33.985851, 27.857605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.699730, 33.837315, 27.866943>,  <38.013531, 33.589756, 27.882505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699730, 33.837315, 27.866943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122140, 0.092701, -0.988174,
		-0.607973, -0.779981, -0.148316,
		-0.784506, 0.618899, -0.038907,
		37.464378, 34.022984, 27.855270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757080, 33.513691, 27.321938>,  <38.013531, 33.589756, 27.882505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757080, 33.513691, 27.321938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532246, 33.837528, 27.389606>,  <37.397346, 34.031830, 27.430208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532246, 33.837528, 27.389606>,  <37.757080, 33.513691, 27.321938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532246, 33.837528, 27.389606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112927, 0.127506, -0.985388,
		-0.819334, -0.572975, 0.019756,
		-0.562084, 0.809594, 0.169175,
		37.363621, 34.080406, 27.440359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106705, 33.420372, 26.993475>,  <37.757080, 33.513691, 27.321938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106705, 33.420372, 26.993475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200069, 33.809101, 27.006632>,  <37.256088, 34.042339, 27.014526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200069, 33.809101, 27.006632>,  <37.106705, 33.420372, 26.993475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200069, 33.809101, 27.006632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084837, 0.054051, -0.994927,
		-0.968670, 0.229439, 0.095063,
		0.233413, 0.971821, 0.032893,
		37.270092, 34.100647, 27.016500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881039, 33.659424, 26.351973>,  <37.106705, 33.420372, 26.993475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881039, 33.659424, 26.351973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069630, 33.977722, 26.504025>,  <37.182785, 34.168701, 26.595255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069630, 33.977722, 26.504025>,  <36.881039, 33.659424, 26.351973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069630, 33.977722, 26.504025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046161, 0.452722, -0.890456,
		-0.880669, 0.402282, 0.250181,
		0.471477, 0.795746, 0.380129,
		37.211071, 34.216446, 26.618063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507847, 34.308601, 26.049715>,  <36.881039, 33.659424, 26.351973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507847, 34.308601, 26.049715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.879272, 34.396217, 26.169575>,  <37.102127, 34.448788, 26.241491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.879272, 34.396217, 26.169575>,  <36.507847, 34.308601, 26.049715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879272, 34.396217, 26.169575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175766, 0.451561, -0.874757,
		-0.326915, 0.864937, 0.380804,
		0.928565, 0.219038, 0.299648,
		37.157841, 34.461929, 26.259470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532822, 34.995750, 25.968401>,  <36.507847, 34.308601, 26.049715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532822, 34.995750, 25.968401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911999, 34.868465, 25.973068>,  <37.139507, 34.792095, 25.975868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.911999, 34.868465, 25.973068>,  <36.532822, 34.995750, 25.968401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911999, 34.868465, 25.973068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223544, 0.638932, -0.736067,
		0.226771, 0.700361, 0.676808,
		0.947947, -0.318215, 0.011670,
		37.196384, 34.773003, 25.976570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927994, 35.644615, 25.989664>,  <36.532822, 34.995750, 25.968401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927994, 35.644615, 25.989664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171768, 35.357964, 25.854002>,  <37.318035, 35.185974, 25.772604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171768, 35.357964, 25.854002>,  <36.927994, 35.644615, 25.989664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171768, 35.357964, 25.854002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285418, 0.597406, -0.749428,
		0.739675, 0.359931, 0.568622,
		0.609440, -0.716628, -0.339155,
		37.354599, 35.142975, 25.752254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634102, 35.888935, 25.970863>,  <36.927994, 35.644615, 25.989664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634102, 35.888935, 25.970863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608055, 35.584976, 25.712152>,  <37.592426, 35.402603, 25.556927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.608055, 35.584976, 25.712152>,  <37.634102, 35.888935, 25.970863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608055, 35.584976, 25.712152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335758, 0.593676, -0.731311,
		0.939695, -0.264780, 0.216483,
		-0.065116, -0.759895, -0.646776,
		37.588520, 35.357006, 25.518120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225067, 35.857124, 25.584389>,  <37.634102, 35.888935, 25.970863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225067, 35.857124, 25.584389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957199, 35.665520, 25.357376>,  <37.796478, 35.550556, 25.221169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957199, 35.665520, 25.357376>,  <38.225067, 35.857124, 25.584389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957199, 35.665520, 25.357376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257024, 0.567476, -0.782247,
		0.696765, -0.669715, -0.256904,
		-0.669669, -0.479012, -0.567530,
		37.756298, 35.521816, 25.187117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012848, 35.716705, 25.604614>,  <38.225067, 35.857124, 25.584389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012848, 35.716705, 25.604614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.407299, 35.775116, 25.636185>,  <39.643970, 35.810162, 25.655127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.407299, 35.775116, 25.636185>,  <39.012848, 35.716705, 25.604614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407299, 35.775116, 25.636185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005011, -0.501451, 0.865172,
		0.165914, -0.852774, -0.495226,
		0.986128, 0.146026, 0.078924,
		39.703136, 35.818924, 25.659863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351170, 35.026543, 25.773907>,  <39.012848, 35.716705, 25.604614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351170, 35.026543, 25.773907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592438, 35.325920, 25.884190>,  <39.737198, 35.505547, 25.950359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592438, 35.325920, 25.884190>,  <39.351170, 35.026543, 25.773907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592438, 35.325920, 25.884190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175161, -0.461521, 0.869665,
		0.778141, -0.476264, -0.409474,
		0.603171, 0.748446, 0.275706,
		39.773388, 35.550453, 25.966902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022396, 34.659874, 25.913774>,  <39.351170, 35.026543, 25.773907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022396, 34.659874, 25.913774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981079, 35.002136, 26.116625>,  <39.956287, 35.207493, 26.238335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.981079, 35.002136, 26.116625>,  <40.022396, 34.659874, 25.913774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981079, 35.002136, 26.116625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400780, -0.430828, 0.808556,
		0.910333, 0.286762, -0.298431,
		-0.103291, 0.855660, 0.507126,
		39.950092, 35.258835, 26.268763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612465, 34.613663, 26.379675>,  <40.022396, 34.659874, 25.913774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612465, 34.613663, 26.379675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402531, 34.917038, 26.534241>,  <40.276569, 35.099064, 26.626980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402531, 34.917038, 26.534241>,  <40.612465, 34.613663, 26.379675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402531, 34.917038, 26.534241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245739, -0.299628, 0.921865,
		0.814960, 0.578785, -0.029123,
		-0.524836, 0.758440, 0.386415,
		40.245079, 35.144569, 26.650166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010639, 34.845356, 26.932730>,  <40.612465, 34.613663, 26.379675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010639, 34.845356, 26.932730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647911, 34.999199, 27.001726>,  <40.430275, 35.091503, 27.043123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647911, 34.999199, 27.001726>,  <41.010639, 34.845356, 26.932730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647911, 34.999199, 27.001726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100628, -0.199855, 0.974644,
		0.409330, 0.901185, 0.142530,
		-0.906820, 0.384609, 0.172491,
		40.375866, 35.114582, 27.053473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106503, 35.373562, 27.415134>,  <41.010639, 34.845356, 26.932730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106503, 35.373562, 27.415134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.728165, 35.253681, 27.465019>,  <40.501163, 35.181751, 27.494949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.728165, 35.253681, 27.465019>,  <41.106503, 35.373562, 27.415134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728165, 35.253681, 27.465019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118619, 0.038515, 0.992193,
		-0.302169, 0.953254, -0.000879,
		-0.945845, -0.299706, 0.124712,
		40.444412, 35.163769, 27.502432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828949, 35.849976, 27.931444>,  <41.106503, 35.373562, 27.415134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828949, 35.849976, 27.931444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617100, 35.510712, 27.927082>,  <40.489990, 35.307152, 27.924465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617100, 35.510712, 27.927082>,  <40.828949, 35.849976, 27.931444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617100, 35.510712, 27.927082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085485, -0.066164, 0.994140,
		-0.843914, 0.525587, 0.107547,
		-0.529623, -0.848163, -0.010907,
		40.458214, 35.256264, 27.923809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404377, 35.896656, 28.448168>,  <40.828949, 35.849976, 27.931444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404377, 35.896656, 28.448168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.388950, 35.502972, 28.379063>,  <40.379696, 35.266762, 28.337599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.388950, 35.502972, 28.379063>,  <40.404377, 35.896656, 28.448168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388950, 35.502972, 28.379063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262839, -0.176795, 0.948503,
		-0.964068, -0.008829, 0.265507,
		-0.038566, -0.984208, -0.172763,
		40.377380, 35.207710, 28.327234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935158, 35.622589, 28.920107>,  <40.404377, 35.896656, 28.448168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935158, 35.622589, 28.920107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166500, 35.317459, 28.804451>,  <40.305305, 35.134380, 28.735058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166500, 35.317459, 28.804451>,  <39.935158, 35.622589, 28.920107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166500, 35.317459, 28.804451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261718, -0.162199, 0.951418,
		-0.772666, -0.625927, 0.105838,
		0.578352, -0.762828, -0.289142,
		40.340004, 35.088612, 28.717709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650181, 35.012161, 29.203779>,  <39.935158, 35.622589, 28.920107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650181, 35.012161, 29.203779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.036324, 34.939873, 29.128483>,  <40.268009, 34.896500, 29.083305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.036324, 34.939873, 29.128483>,  <39.650181, 35.012161, 29.203779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036324, 34.939873, 29.128483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177012, -0.076524, 0.981229,
		-0.191734, -0.980553, -0.041883,
		0.965352, -0.180722, -0.188242,
		40.325928, 34.885658, 29.072010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768715, 34.375240, 29.657955>,  <39.650181, 35.012161, 29.203779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768715, 34.375240, 29.657955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126053, 34.517963, 29.548691>,  <40.340458, 34.603596, 29.483131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126053, 34.517963, 29.548691>,  <39.768715, 34.375240, 29.657955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126053, 34.517963, 29.548691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398067, -0.346313, 0.849476,
		0.208499, -0.867615, -0.451412,
		0.893348, 0.356807, -0.273163,
		40.394058, 34.625004, 29.466742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292603, 33.871468, 29.725674>,  <39.768715, 34.375240, 29.657955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292603, 33.871468, 29.725674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463242, 34.231426, 29.761898>,  <40.565624, 34.447403, 29.783632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463242, 34.231426, 29.761898>,  <40.292603, 33.871468, 29.725674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463242, 34.231426, 29.761898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192772, -0.188295, 0.963008,
		0.883661, -0.393356, -0.253801,
		0.426594, 0.899898, 0.090560,
		40.591221, 34.501396, 29.789066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878826, 33.847919, 30.127934>,  <40.292603, 33.871468, 29.725674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878826, 33.847919, 30.127934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.817272, 34.242737, 30.146097>,  <40.780338, 34.479626, 30.156996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.817272, 34.242737, 30.146097>,  <40.878826, 33.847919, 30.127934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817272, 34.242737, 30.146097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226416, -0.009509, 0.973984,
		0.961798, 0.160164, -0.222020,
		-0.153886, 0.987045, 0.045409,
		40.771107, 34.538849, 30.159719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327930, 34.007862, 30.602800>,  <40.878826, 33.847919, 30.127934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327930, 34.007862, 30.602800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.113216, 34.342018, 30.555479>,  <40.984390, 34.542511, 30.527086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.113216, 34.342018, 30.555479>,  <41.327930, 34.007862, 30.602800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113216, 34.342018, 30.555479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279270, 0.308232, 0.909396,
		0.796162, 0.455108, -0.398751,
		-0.536781, 0.835386, -0.118305,
		40.952183, 34.592632, 30.519987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.396893, 40.384056, 26.597610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.086769, 40.164196, 26.473167>,  <39.900696, 40.032280, 26.398502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.086769, 40.164196, 26.473167>,  <40.396893, 40.384056, 26.597610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086769, 40.164196, 26.473167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266271, 0.162209, -0.950152,
		0.572712, -0.819498, 0.020593,
		-0.775307, -0.549646, -0.311107,
		39.854176, 39.999302, 26.379835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687340, 40.002171, 26.022890>,  <40.396893, 40.384056, 26.597610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687340, 40.002171, 26.022890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294521, 39.951981, 25.966551>,  <40.058830, 39.921867, 25.932747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294521, 39.951981, 25.966551>,  <40.687340, 40.002171, 26.022890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294521, 39.951981, 25.966551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154155, -0.103509, -0.982610,
		0.108710, -0.986683, 0.120993,
		-0.982048, -0.125471, -0.140849,
		39.999908, 39.914341, 25.924295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541496, 39.324516, 25.613092>,  <40.687340, 40.002171, 26.022890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541496, 39.324516, 25.613092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259827, 39.602829, 25.556486>,  <40.090824, 39.769817, 25.522522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259827, 39.602829, 25.556486>,  <40.541496, 39.324516, 25.613092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259827, 39.602829, 25.556486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023578, -0.176284, -0.984057,
		-0.709634, -0.696286, 0.107729,
		-0.704176, 0.695780, -0.141514,
		40.048573, 39.811562, 25.514032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288090, 39.092339, 24.988823>,  <40.541496, 39.324516, 25.613092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288090, 39.092339, 24.988823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112530, 39.448639, 25.036026>,  <40.007195, 39.662418, 25.064348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112530, 39.448639, 25.036026>,  <40.288090, 39.092339, 24.988823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112530, 39.448639, 25.036026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149146, 0.057290, -0.987154,
		-0.886070, -0.450866, 0.107707,
		-0.438903, 0.890751, 0.118008,
		39.980858, 39.715866, 25.071428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564110, 39.103771, 24.601591>,  <40.288090, 39.092339, 24.988823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564110, 39.103771, 24.601591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.716797, 39.471664, 24.638222>,  <39.808407, 39.692402, 24.660200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.716797, 39.471664, 24.638222>,  <39.564110, 39.103771, 24.601591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716797, 39.471664, 24.638222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120892, 0.147911, -0.981584,
		-0.916340, 0.363614, 0.167648,
		0.381715, 0.919732, 0.091579,
		39.831310, 39.747585, 24.665695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277386, 39.386211, 24.064495>,  <39.564110, 39.103771, 24.601591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277386, 39.386211, 24.064495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539398, 39.666691, 24.177103>,  <39.696606, 39.834980, 24.244669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539398, 39.666691, 24.177103>,  <39.277386, 39.386211, 24.064495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539398, 39.666691, 24.177103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111483, 0.278817, -0.953852,
		-0.747331, 0.656188, 0.104463,
		0.655032, 0.701197, 0.281522,
		39.735909, 39.877048, 24.261560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012691, 40.029846, 23.830698>,  <39.277386, 39.386211, 24.064495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012691, 40.029846, 23.830698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409172, 40.042274, 23.882158>,  <39.647060, 40.049732, 23.913034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409172, 40.042274, 23.882158>,  <39.012691, 40.029846, 23.830698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409172, 40.042274, 23.882158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104863, 0.408707, -0.906622,
		-0.080748, 0.912137, 0.401853,
		0.991203, 0.031069, 0.128652,
		39.706532, 40.051594, 23.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230747, 40.563217, 23.442699>,  <39.012691, 40.029846, 23.830698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230747, 40.563217, 23.442699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.572807, 40.364040, 23.500353>,  <39.778042, 40.244534, 23.534945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.572807, 40.364040, 23.500353>,  <39.230747, 40.563217, 23.442699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572807, 40.364040, 23.500353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267299, 0.185331, -0.945623,
		0.444154, 0.847175, 0.291586,
		0.855148, -0.497943, 0.144134,
		39.829353, 40.214657, 23.543592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683037, 40.990513, 23.250883>,  <39.230747, 40.563217, 23.442699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683037, 40.990513, 23.250883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853233, 40.631065, 23.208101>,  <39.955353, 40.415398, 23.182432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.853233, 40.631065, 23.208101>,  <39.683037, 40.990513, 23.250883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853233, 40.631065, 23.208101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182493, 0.200965, -0.962450,
		0.886369, 0.390000, 0.249501,
		0.425496, -0.898618, -0.106957,
		39.980881, 40.361481, 23.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135818, 41.080383, 22.841312>,  <39.683037, 40.990513, 23.250883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135818, 41.080383, 22.841312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119755, 40.681175, 22.821928>,  <40.110115, 40.441650, 22.810297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.119755, 40.681175, 22.821928>,  <40.135818, 41.080383, 22.841312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119755, 40.681175, 22.821928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083266, 0.044990, -0.995512,
		0.995718, -0.044014, 0.081294,
		-0.040159, -0.998017, -0.048462,
		40.107708, 40.381771, 22.807390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827251, 40.747593, 22.589680>,  <40.135818, 41.080383, 22.841312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827251, 40.747593, 22.589680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.494930, 40.539433, 22.510738>,  <40.295536, 40.414536, 22.463373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.494930, 40.539433, 22.510738>,  <40.827251, 40.747593, 22.589680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494930, 40.539433, 22.510738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225819, 0.008911, -0.974129,
		0.508700, -0.853873, 0.110114,
		-0.830801, -0.520405, -0.197353,
		40.245689, 40.383312, 22.451532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091404, 40.528736, 21.973970>,  <40.827251, 40.747593, 22.589680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091404, 40.528736, 21.973970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.709591, 40.409496, 21.975473>,  <40.480503, 40.337952, 21.976376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.709591, 40.409496, 21.975473>,  <41.091404, 40.528736, 21.973970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709591, 40.409496, 21.975473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016869, 0.041431, -0.998999,
		0.297642, -0.953636, -0.044576,
		-0.954529, -0.298096, 0.003755,
		40.423233, 40.320068, 21.976601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036560, 39.978371, 21.459724>,  <41.091404, 40.528736, 21.973970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036560, 39.978371, 21.459724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661636, 40.107140, 21.513128>,  <40.436684, 40.184402, 21.545170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661636, 40.107140, 21.513128>,  <41.036560, 39.978371, 21.459724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661636, 40.107140, 21.513128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122272, 0.054968, -0.990973,
		-0.326356, -0.945169, -0.012160,
		-0.937305, 0.321923, 0.133507,
		40.380444, 40.203716, 21.553181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643330, 39.690990, 20.930300>,  <41.036560, 39.978371, 21.459724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643330, 39.690990, 20.930300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434662, 40.006611, 21.060072>,  <40.309460, 40.195984, 21.137936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434662, 40.006611, 21.060072>,  <40.643330, 39.690990, 20.930300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434662, 40.006611, 21.060072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113653, 0.312611, -0.943057,
		-0.845544, -0.528836, -0.073400,
		-0.521668, 0.789055, 0.324430,
		40.278160, 40.243328, 21.157400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922787, 39.039806, 20.920424>,  <40.643330, 39.690990, 20.930300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922787, 39.039806, 20.920424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688999, 38.736347, 20.805286>,  <40.548725, 38.554272, 20.736204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.688999, 38.736347, 20.805286>,  <40.922787, 39.039806, 20.920424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688999, 38.736347, 20.805286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077368, -0.405229, 0.910936,
		-0.807717, 0.510146, 0.295540,
		-0.584472, -0.758644, -0.287842,
		40.513657, 38.508755, 20.718933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186798, 38.910721, 21.282778>,  <40.922787, 39.039806, 20.920424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186798, 38.910721, 21.282778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284752, 38.549416, 21.141842>,  <40.343525, 38.332630, 21.057281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284752, 38.549416, 21.141842>,  <40.186798, 38.910721, 21.282778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284752, 38.549416, 21.141842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455761, -0.427994, 0.780450,
		-0.855752, -0.030540, -0.516483,
		0.244887, -0.903265, -0.352338,
		40.358219, 38.278435, 21.036140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811275, 38.453655, 21.789495>,  <40.186798, 38.910721, 21.282778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811275, 38.453655, 21.789495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076832, 38.197453, 21.635094>,  <40.236164, 38.043732, 21.542452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076832, 38.197453, 21.635094>,  <39.811275, 38.453655, 21.789495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076832, 38.197453, 21.635094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172443, -0.633373, 0.754389,
		-0.727678, -0.434266, -0.530941,
		0.663889, -0.640509, -0.386005,
		40.275997, 38.005299, 21.519293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466278, 37.731068, 21.686235>,  <39.811275, 38.453655, 21.789495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466278, 37.731068, 21.686235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862255, 37.676723, 21.701973>,  <40.099842, 37.644115, 21.711414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862255, 37.676723, 21.701973>,  <39.466278, 37.731068, 21.686235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862255, 37.676723, 21.701973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125631, -0.716785, 0.685884,
		-0.064985, -0.683931, -0.726647,
		0.989946, -0.135861, 0.039343,
		40.159241, 37.635963, 21.713776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502365, 37.002831, 21.687561>,  <39.466278, 37.731068, 21.686235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502365, 37.002831, 21.687561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.870876, 37.090019, 21.816391>,  <40.091984, 37.142330, 21.893688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.870876, 37.090019, 21.816391>,  <39.502365, 37.002831, 21.687561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870876, 37.090019, 21.816391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134883, -0.597675, 0.790311,
		0.364760, -0.771540, -0.521225,
		0.921280, 0.217969, 0.322075,
		40.147259, 37.155411, 21.913013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626938, 36.458096, 21.945677>,  <39.502365, 37.002831, 21.687561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626938, 36.458096, 21.945677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.920994, 36.686195, 22.092314>,  <40.097427, 36.823055, 22.180296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.920994, 36.686195, 22.092314>,  <39.626938, 36.458096, 21.945677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920994, 36.686195, 22.092314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071442, -0.602919, 0.794597,
		0.674142, -0.557949, -0.483969,
		0.735138, 0.570247, 0.366592,
		40.141537, 36.857269, 22.202291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224701, 36.036213, 22.107672>,  <39.626938, 36.458096, 21.945677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224701, 36.036213, 22.107672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254032, 36.361053, 22.339226>,  <40.271629, 36.555958, 22.478159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.254032, 36.361053, 22.339226>,  <40.224701, 36.036213, 22.107672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254032, 36.361053, 22.339226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018069, -0.581436, 0.813391,
		0.997144, -0.049184, -0.057309,
		0.073328, 0.812104, 0.578887,
		40.276031, 36.604683, 22.512892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812519, 35.907242, 22.711700>,  <40.224701, 36.036213, 22.107672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812519, 35.907242, 22.711700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.590347, 36.218723, 22.828405>,  <40.457047, 36.405613, 22.898428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.590347, 36.218723, 22.828405>,  <40.812519, 35.907242, 22.711700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590347, 36.218723, 22.828405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136481, -0.260736, 0.955714,
		0.820289, 0.570650, 0.038541,
		-0.555427, 0.778701, 0.291762,
		40.423717, 36.452335, 22.915934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195194, 36.196098, 23.293839>,  <40.812519, 35.907242, 22.711700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195194, 36.196098, 23.293839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.826794, 36.350525, 23.314693>,  <40.605755, 36.443180, 23.327206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.826794, 36.350525, 23.314693>,  <41.195194, 36.196098, 23.293839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826794, 36.350525, 23.314693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017092, -0.173750, 0.984641,
		0.389193, 0.905961, 0.166622,
		-0.920998, 0.386064, 0.052138,
		40.550495, 36.466343, 23.330336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187572, 36.654236, 23.884754>,  <41.195194, 36.196098, 23.293839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187572, 36.654236, 23.884754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.818398, 36.526203, 23.799212>,  <40.596893, 36.449383, 23.747887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.818398, 36.526203, 23.799212>,  <41.187572, 36.654236, 23.884754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818398, 36.526203, 23.799212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169275, -0.161491, 0.972248,
		-0.345735, 0.933525, 0.094864,
		-0.922938, -0.320082, -0.213855,
		40.541515, 36.430180, 23.735054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839417, 36.907146, 24.453598>,  <41.187572, 36.654236, 23.884754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839417, 36.907146, 24.453598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.594490, 36.624878, 24.310991>,  <40.447536, 36.455517, 24.225428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.594490, 36.624878, 24.310991>,  <40.839417, 36.907146, 24.453598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594490, 36.624878, 24.310991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222471, -0.278928, 0.934187,
		-0.758670, 0.651329, 0.013800,
		-0.612313, -0.705670, -0.356516,
		40.410797, 36.413177, 24.204037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255291, 37.102097, 24.787842>,  <40.839417, 36.907146, 24.453598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255291, 37.102097, 24.787842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213924, 36.721661, 24.671404>,  <40.189106, 36.493401, 24.601542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213924, 36.721661, 24.671404>,  <40.255291, 37.102097, 24.787842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213924, 36.721661, 24.671404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405118, -0.227012, 0.885633,
		-0.908397, 0.209516, -0.361826,
		-0.103415, -0.951088, -0.291096,
		40.182899, 36.436333, 24.584076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540630, 36.903343, 25.009251>,  <40.255291, 37.102097, 24.787842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540630, 36.903343, 25.009251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748474, 36.565598, 24.957022>,  <39.873180, 36.362949, 24.925684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748474, 36.565598, 24.957022>,  <39.540630, 36.903343, 25.009251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748474, 36.565598, 24.957022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184433, -0.260064, 0.947814,
		-0.834261, -0.468411, -0.290861,
		0.519609, -0.844368, -0.130571,
		39.904358, 36.312286, 24.917850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106152, 36.418861, 25.324915>,  <39.540630, 36.903343, 25.009251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106152, 36.418861, 25.324915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468418, 36.251740, 25.296080>,  <39.685780, 36.151466, 25.278778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468418, 36.251740, 25.296080>,  <39.106152, 36.418861, 25.324915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468418, 36.251740, 25.296080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097560, -0.370829, 0.923563,
		-0.412608, -0.829409, -0.376610,
		0.905669, -0.417811, -0.072090,
		39.740120, 36.126396, 25.274452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572868, 35.887146, 24.940481>,  <39.106152, 36.418861, 25.324915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572868, 35.887146, 24.940481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195904, 35.780178, 24.860140>,  <37.969723, 35.715996, 24.811935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195904, 35.780178, 24.860140>,  <38.572868, 35.887146, 24.940481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195904, 35.780178, 24.860140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008330, 0.581594, -0.813437,
		0.334344, -0.768268, -0.545875,
		-0.942414, -0.267421, -0.200852,
		37.913181, 35.699951, 24.799885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713085, 35.794540, 24.240263>,  <38.572868, 35.887146, 24.940481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713085, 35.794540, 24.240263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318832, 35.803394, 24.307249>,  <38.082283, 35.808704, 24.347441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318832, 35.803394, 24.307249>,  <38.713085, 35.794540, 24.240263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318832, 35.803394, 24.307249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139988, 0.447822, -0.883096,
		-0.094540, -0.893849, -0.438288,
		-0.985629, 0.022132, 0.167465,
		38.023144, 35.810036, 24.357489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443306, 35.437374, 23.705564>,  <38.713085, 35.794540, 24.240263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443306, 35.437374, 23.705564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177647, 35.702854, 23.843212>,  <38.018253, 35.862141, 23.925800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.177647, 35.702854, 23.843212>,  <38.443306, 35.437374, 23.705564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177647, 35.702854, 23.843212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041043, 0.491969, -0.869645,
		-0.746475, -0.563448, -0.353979,
		-0.664146, 0.663697, 0.344117,
		37.978401, 35.901962, 23.946447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965508, 35.405136, 23.168264>,  <38.443306, 35.437374, 23.705564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965508, 35.405136, 23.168264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895798, 35.741093, 23.373867>,  <37.853970, 35.942669, 23.497229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895798, 35.741093, 23.373867>,  <37.965508, 35.405136, 23.168264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895798, 35.741093, 23.373867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199374, 0.481088, -0.853701,
		-0.964302, -0.251260, 0.083610,
		-0.174277, 0.839895, 0.514008,
		37.843513, 35.993061, 23.528070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250877, 35.612831, 23.015774>,  <37.965508, 35.405136, 23.168264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250877, 35.612831, 23.015774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446594, 35.942509, 23.129826>,  <37.564022, 36.140316, 23.198257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.446594, 35.942509, 23.129826>,  <37.250877, 35.612831, 23.015774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446594, 35.942509, 23.129826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071379, 0.363687, -0.928783,
		-0.869196, 0.434091, 0.236778,
		0.489289, 0.824195, 0.285130,
		37.593380, 36.189766, 23.215364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871689, 36.073677, 22.686880>,  <37.250877, 35.612831, 23.015774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871689, 36.073677, 22.686880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.201473, 36.293194, 22.742147>,  <37.399345, 36.424904, 22.775309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.201473, 36.293194, 22.742147>,  <36.871689, 36.073677, 22.686880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201473, 36.293194, 22.742147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117036, 0.404213, -0.907146,
		-0.553685, 0.731736, 0.397486,
		0.824461, 0.548793, 0.138168,
		37.448811, 36.457832, 22.783598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759281, 36.835037, 22.600513>,  <36.871689, 36.073677, 22.686880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759281, 36.835037, 22.600513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149918, 36.792156, 22.525927>,  <37.384300, 36.766430, 22.481174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149918, 36.792156, 22.525927>,  <36.759281, 36.835037, 22.600513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149918, 36.792156, 22.525927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129077, 0.401365, -0.906778,
		0.172048, 0.909623, 0.378134,
		0.976596, -0.107201, -0.186465,
		37.442898, 36.759995, 22.469988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285488, 37.456253, 22.619493>,  <36.759281, 36.835037, 22.600513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285488, 37.456253, 22.619493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902035, 37.543613, 22.546478>,  <35.671963, 37.596027, 22.502668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.902035, 37.543613, 22.546478>,  <36.285488, 37.456253, 22.619493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902035, 37.543613, 22.546478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212791, -0.123963, 0.969202,
		0.189042, 0.967954, 0.165308,
		-0.958636, 0.218396, -0.182538,
		35.614445, 37.609131, 22.491716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144871, 37.937305, 23.053007>,  <36.285488, 37.456253, 22.619493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144871, 37.937305, 23.053007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806858, 37.748852, 22.951845>,  <35.604050, 37.635780, 22.891148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806858, 37.748852, 22.951845>,  <36.144871, 37.937305, 23.053007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806858, 37.748852, 22.951845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194648, -0.169491, 0.966118,
		-0.498034, 0.865626, 0.051520,
		-0.845029, -0.471131, -0.252905,
		35.553349, 37.607513, 22.875975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664173, 38.155445, 23.626797>,  <36.144871, 37.937305, 23.053007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664173, 38.155445, 23.626797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496315, 37.839439, 23.448013>,  <35.395599, 37.649837, 23.340744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496315, 37.839439, 23.448013>,  <35.664173, 38.155445, 23.626797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496315, 37.839439, 23.448013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339908, -0.319806, 0.884413,
		-0.841640, 0.523067, -0.134326,
		-0.419649, -0.790016, -0.446956,
		35.370419, 37.602436, 23.313927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902172, 38.075081, 23.761093>,  <35.664173, 38.155445, 23.626797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902172, 38.075081, 23.761093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015457, 37.699516, 23.682882>,  <35.083427, 37.474178, 23.635956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015457, 37.699516, 23.682882>,  <34.902172, 38.075081, 23.761093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015457, 37.699516, 23.682882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481977, -0.315598, 0.817371,
		-0.829149, -0.137252, -0.541917,
		0.283214, -0.938914, -0.195525,
		35.100422, 37.417843, 23.624226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351768, 37.681435, 24.020311>,  <34.902172, 38.075081, 23.761093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351768, 37.681435, 24.020311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664715, 37.432487, 24.010904>,  <34.852482, 37.283119, 24.005260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664715, 37.432487, 24.010904>,  <34.351768, 37.681435, 24.020311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664715, 37.432487, 24.010904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379453, -0.506265, 0.774410,
		-0.493869, -0.596956, -0.632247,
		0.782374, -0.622366, -0.023512,
		34.899426, 37.245777, 24.003849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048763, 37.100597, 24.254784>,  <34.351768, 37.681435, 24.020311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048763, 37.100597, 24.254784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443916, 37.051765, 24.293112>,  <34.681007, 37.022465, 24.316109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443916, 37.051765, 24.293112>,  <34.048763, 37.100597, 24.254784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443916, 37.051765, 24.293112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151600, -0.626987, 0.764137,
		-0.033207, -0.769405, -0.637897,
		0.987884, -0.122080, 0.095821,
		34.740280, 37.015141, 24.321857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119473, 36.511665, 24.550039>,  <34.048763, 37.100597, 24.254784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119473, 36.511665, 24.550039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492073, 36.632133, 24.631630>,  <34.715633, 36.704414, 24.680584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492073, 36.632133, 24.631630>,  <34.119473, 36.511665, 24.550039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492073, 36.632133, 24.631630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002454, -0.555554, 0.831477,
		0.363739, -0.775019, -0.516758,
		0.931498, 0.301172, 0.203978,
		34.771523, 36.722485, 24.692823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.622990, 41.059433, 20.792852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.889645, 40.883770, 21.033762>,  <38.049637, 40.778374, 21.178307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.889645, 40.883770, 21.033762>,  <37.622990, 41.059433, 20.792852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889645, 40.883770, 21.033762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745099, -0.370446, 0.554614,
		-0.020452, -0.818481, -0.574169,
		0.666640, -0.439156, 0.602273,
		38.089638, 40.752022, 21.214443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131622, 40.734905, 21.228941>,  <37.622990, 41.059433, 20.792852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131622, 40.734905, 21.228941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470680, 40.653748, 21.425035>,  <37.674114, 40.605053, 21.542692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.470680, 40.653748, 21.425035>,  <37.131622, 40.734905, 21.228941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470680, 40.653748, 21.425035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529681, -0.376948, 0.759834,
		0.030625, -0.903738, -0.426989,
		0.847644, -0.202898, 0.490237,
		37.724972, 40.592876, 21.572107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067387, 40.019901, 21.528780>,  <37.131622, 40.734905, 21.228941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067387, 40.019901, 21.528780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369232, 40.183899, 21.733704>,  <37.550339, 40.282299, 21.856657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369232, 40.183899, 21.733704>,  <37.067387, 40.019901, 21.528780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369232, 40.183899, 21.733704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370983, -0.377413, 0.848488,
		0.541229, -0.830339, -0.132699,
		0.754614, 0.409997, 0.512308,
		37.595615, 40.306896, 21.887396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288841, 39.586460, 22.007881>,  <37.067387, 40.019901, 21.528780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288841, 39.586460, 22.007881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434689, 39.920387, 22.172873>,  <37.522198, 40.120743, 22.271868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434689, 39.920387, 22.172873>,  <37.288841, 39.586460, 22.007881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434689, 39.920387, 22.172873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284716, -0.321805, 0.902983,
		0.886560, -0.446685, 0.120348,
		0.364620, 0.834814, 0.412478,
		37.544075, 40.170830, 22.296616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777107, 39.449982, 22.510708>,  <37.288841, 39.586460, 22.007881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777107, 39.449982, 22.510708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.627060, 39.798935, 22.636074>,  <37.537033, 40.008308, 22.711294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.627060, 39.798935, 22.636074>,  <37.777107, 39.449982, 22.510708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627060, 39.798935, 22.636074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196122, -0.405142, 0.892970,
		0.905994, 0.273499, 0.323069,
		-0.375116, 0.872386, 0.313417,
		37.514526, 40.060650, 22.730099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036678, 39.583080, 23.262877>,  <37.777107, 39.449982, 22.510708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036678, 39.583080, 23.262877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720234, 39.818825, 23.197411>,  <37.530365, 39.960274, 23.158131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720234, 39.818825, 23.197411>,  <38.036678, 39.583080, 23.262877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720234, 39.818825, 23.197411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258446, -0.079569, 0.962743,
		0.554385, 0.803939, 0.215267,
		-0.791115, 0.589365, -0.163663,
		37.482899, 39.995636, 23.148312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166119, 40.195885, 23.740690>,  <38.036678, 39.583080, 23.262877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166119, 40.195885, 23.740690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776478, 40.182274, 23.651279>,  <37.542694, 40.174107, 23.597633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776478, 40.182274, 23.651279>,  <38.166119, 40.195885, 23.740690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776478, 40.182274, 23.651279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224955, 0.046388, 0.973264,
		-0.022748, 0.998344, -0.052841,
		-0.974104, -0.034027, -0.223527,
		37.484245, 40.172066, 23.584221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831379, 40.753334, 24.143322>,  <38.166119, 40.195885, 23.740690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831379, 40.753334, 24.143322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528057, 40.507156, 24.057348>,  <37.346062, 40.359451, 24.005764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.528057, 40.507156, 24.057348>,  <37.831379, 40.753334, 24.143322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528057, 40.507156, 24.057348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236557, -0.047450, 0.970458,
		-0.607461, 0.786751, -0.109605,
		-0.758308, -0.615444, -0.214936,
		37.300564, 40.322525, 23.992867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232193, 41.005524, 24.336578>,  <37.831379, 40.753334, 24.143322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232193, 41.005524, 24.336578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134037, 40.617828, 24.329010>,  <37.075142, 40.385212, 24.324469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134037, 40.617828, 24.329010>,  <37.232193, 41.005524, 24.336578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134037, 40.617828, 24.329010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421407, 0.089075, 0.902486,
		-0.873040, 0.229437, -0.430303,
		-0.245393, -0.969239, -0.018920,
		37.060421, 40.327057, 24.323334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524952, 40.978779, 24.345156>,  <37.232193, 41.005524, 24.336578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524952, 40.978779, 24.345156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.659504, 40.629814, 24.486994>,  <36.740234, 40.420433, 24.572098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.659504, 40.629814, 24.486994>,  <36.524952, 40.978779, 24.345156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659504, 40.629814, 24.486994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564797, 0.114406, 0.817261,
		-0.753559, -0.475187, -0.454254,
		0.336382, -0.872415, 0.354596,
		36.760418, 40.368088, 24.593372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981556, 40.745796, 24.806433>,  <36.524952, 40.978779, 24.345156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981556, 40.745796, 24.806433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.284966, 40.506252, 24.909197>,  <36.467010, 40.362526, 24.970856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.284966, 40.506252, 24.909197>,  <35.981556, 40.745796, 24.806433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284966, 40.506252, 24.909197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404514, -0.123631, 0.906137,
		-0.510886, -0.791254, -0.336025,
		0.758528, -0.598859, 0.256912,
		36.512524, 40.326595, 24.986271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716179, 40.183239, 25.222300>,  <35.981556, 40.745796, 24.806433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716179, 40.183239, 25.222300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.106113, 40.168991, 25.310316>,  <36.340076, 40.160442, 25.363127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.106113, 40.168991, 25.310316>,  <35.716179, 40.183239, 25.222300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106113, 40.168991, 25.310316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222878, -0.139934, 0.964751,
		-0.003572, -0.989520, -0.144351,
		0.974839, -0.035619, 0.220042,
		36.398567, 40.158306, 25.376329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594322, 39.537125, 24.968294>,  <35.716179, 40.183239, 25.222300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594322, 39.537125, 24.968294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233871, 39.363701, 24.968729>,  <35.017601, 39.259647, 24.968990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233871, 39.363701, 24.968729>,  <35.594322, 39.537125, 24.968294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233871, 39.363701, 24.968729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166342, 0.343414, -0.924336,
		0.400379, -0.833124, -0.381577,
		-0.901126, -0.433557, 0.001087,
		34.963535, 39.233635, 24.969055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531963, 39.094990, 24.459299>,  <35.594322, 39.537125, 24.968294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531963, 39.094990, 24.459299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.149525, 39.185379, 24.533943>,  <34.920063, 39.239613, 24.578730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.149525, 39.185379, 24.533943>,  <35.531963, 39.094990, 24.459299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149525, 39.185379, 24.533943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089460, 0.381327, -0.920101,
		-0.279076, -0.896397, -0.344369,
		-0.956093, 0.225971, 0.186611,
		34.862698, 39.253170, 24.589926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195663, 38.817066, 23.889750>,  <35.531963, 39.094990, 24.459299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195663, 38.817066, 23.889750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945961, 39.075794, 24.064991>,  <34.796139, 39.231030, 24.170135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945961, 39.075794, 24.064991>,  <35.195663, 38.817066, 23.889750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945961, 39.075794, 24.064991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290290, 0.328584, -0.898757,
		-0.725285, -0.688230, -0.017357,
		-0.624255, 0.646816, 0.438103,
		34.758686, 39.269840, 24.196423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676651, 38.806221, 23.403107>,  <35.195663, 38.817066, 23.889750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676651, 38.806221, 23.403107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.627876, 39.136330, 23.623671>,  <34.598610, 39.334396, 23.756010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.627876, 39.136330, 23.623671>,  <34.676651, 38.806221, 23.403107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627876, 39.136330, 23.623671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231855, 0.516503, -0.824299,
		-0.965077, -0.228360, 0.128364,
		-0.121936, 0.825274, 0.551411,
		34.591297, 39.383911, 23.789095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995384, 39.048008, 23.194365>,  <34.676651, 38.806221, 23.403107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995384, 39.048008, 23.194365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.191460, 39.363098, 23.343609>,  <34.309105, 39.552151, 23.433155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.191460, 39.363098, 23.343609>,  <33.995384, 39.048008, 23.194365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191460, 39.363098, 23.343609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154385, 0.499766, -0.852290,
		-0.857837, 0.360177, 0.366590,
		0.490184, 0.787722, 0.373112,
		34.338516, 39.599415, 23.455542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667828, 39.639893, 22.994961>,  <33.995384, 39.048008, 23.194365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667828, 39.639893, 22.994961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.022213, 39.795944, 23.095257>,  <34.234844, 39.889576, 23.155434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.022213, 39.795944, 23.095257>,  <33.667828, 39.639893, 22.994961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022213, 39.795944, 23.095257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029216, 0.492646, -0.869739,
		-0.462835, 0.777882, 0.425068,
		0.885963, 0.390127, 0.250740,
		34.288002, 39.912983, 23.170479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631760, 40.369041, 22.854919>,  <33.667828, 39.639893, 22.994961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631760, 40.369041, 22.854919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021378, 40.280369, 22.873272>,  <34.255146, 40.227165, 22.884283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021378, 40.280369, 22.873272>,  <33.631760, 40.369041, 22.854919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021378, 40.280369, 22.873272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122036, 0.343478, -0.931198,
		0.190665, 0.912624, 0.361614,
		0.974040, -0.221677, 0.045883,
		34.313591, 40.213867, 22.887037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938740, 40.806843, 22.485132>,  <33.631760, 40.369041, 22.854919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938740, 40.806843, 22.485132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.278183, 40.596153, 22.504858>,  <34.481850, 40.469738, 22.516693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.278183, 40.596153, 22.504858>,  <33.938740, 40.806843, 22.485132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278183, 40.596153, 22.504858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282706, 0.372723, -0.883829,
		0.447154, 0.763963, 0.465203,
		0.848605, -0.526724, 0.049312,
		34.532764, 40.438137, 22.519651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468052, 41.288040, 22.289076>,  <33.938740, 40.806843, 22.485132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468052, 41.288040, 22.289076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.594563, 40.915306, 22.217916>,  <34.670467, 40.691666, 22.175220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.594563, 40.915306, 22.217916>,  <34.468052, 41.288040, 22.289076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594563, 40.915306, 22.217916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320940, 0.281566, -0.904277,
		0.892731, 0.228905, 0.388117,
		0.316274, -0.931839, -0.177898,
		34.689445, 40.635754, 22.164547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156166, 41.398216, 21.971931>,  <34.468052, 41.288040, 22.289076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156166, 41.398216, 21.971931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.020885, 41.033165, 21.880083>,  <34.939716, 40.814133, 21.824974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.020885, 41.033165, 21.880083>,  <35.156166, 41.398216, 21.971931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020885, 41.033165, 21.880083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261228, 0.143367, -0.954571,
		0.904092, -0.382818, 0.189918,
		-0.338199, -0.912632, -0.229620,
		34.919426, 40.759377, 21.811197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752621, 41.167778, 21.592676>,  <35.156166, 41.398216, 21.971931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752621, 41.167778, 21.592676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425690, 40.956654, 21.500244>,  <35.229530, 40.829979, 21.444784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425690, 40.956654, 21.500244>,  <35.752621, 41.167778, 21.592676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425690, 40.956654, 21.500244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101332, 0.263133, -0.959423,
		0.567200, -0.807574, -0.161580,
		-0.817323, -0.527811, -0.231082,
		35.180492, 40.798309, 21.430920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980980, 40.653923, 21.102116>,  <35.752621, 41.167778, 21.592676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980980, 40.653923, 21.102116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598343, 40.746304, 21.031010>,  <35.368763, 40.801731, 20.988346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598343, 40.746304, 21.031010>,  <35.980980, 40.653923, 21.102116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598343, 40.746304, 21.031010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257791, 0.386007, -0.885744,
		-0.135944, -0.893119, -0.428786,
		-0.956589, 0.230948, -0.177762,
		35.311367, 40.815590, 20.977680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912933, 40.487099, 20.460983>,  <35.980980, 40.653923, 21.102116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912933, 40.487099, 20.460983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.575153, 40.697933, 20.499102>,  <35.372486, 40.824432, 20.521973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.575153, 40.697933, 20.499102>,  <35.912933, 40.487099, 20.460983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575153, 40.697933, 20.499102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272795, 0.576325, -0.770345,
		-0.460957, -0.624525, -0.630466,
		-0.844453, 0.527085, 0.095294,
		35.321815, 40.856060, 20.527689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868767, 39.758297, 20.208035>,  <35.912933, 40.487099, 20.460983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868767, 39.758297, 20.208035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.788872, 39.445690, 19.971617>,  <35.740936, 39.258125, 19.829765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.788872, 39.445690, 19.971617>,  <35.868767, 39.758297, 20.208035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788872, 39.445690, 19.971617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122733, -0.578496, 0.806399,
		-0.972133, 0.233607, 0.019628,
		-0.199735, -0.781518, -0.591046,
		35.728951, 39.211235, 19.794302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210342, 39.518967, 20.396341>,  <35.868767, 39.758297, 20.208035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210342, 39.518967, 20.396341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.416294, 39.222374, 20.224245>,  <35.539867, 39.044418, 20.120987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.416294, 39.222374, 20.224245>,  <35.210342, 39.518967, 20.396341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416294, 39.222374, 20.224245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302734, -0.626808, 0.717958,
		-0.802028, -0.239415, -0.547203,
		0.514881, -0.741480, -0.430238,
		35.570759, 38.999931, 20.095173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943764, 38.905338, 20.480482>,  <35.210342, 39.518967, 20.396341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943764, 38.905338, 20.480482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.303528, 38.746067, 20.408354>,  <35.519386, 38.650505, 20.365076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.303528, 38.746067, 20.408354>,  <34.943764, 38.905338, 20.480482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303528, 38.746067, 20.408354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147326, -0.664538, 0.732588,
		-0.411532, -0.632330, -0.656354,
		0.899409, -0.398181, -0.180320,
		35.573349, 38.626614, 20.354258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821152, 38.229130, 20.491167>,  <34.943764, 38.905338, 20.480482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821152, 38.229130, 20.491167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.215221, 38.252243, 20.555773>,  <35.451664, 38.266109, 20.594536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.215221, 38.252243, 20.555773>,  <34.821152, 38.229130, 20.491167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215221, 38.252243, 20.555773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064838, -0.746270, 0.662478,
		0.158812, -0.663130, -0.731462,
		0.985177, 0.057783, 0.161513,
		35.510777, 38.269577, 20.604227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183174, 37.577370, 20.460539>,  <34.821152, 38.229130, 20.491167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183174, 37.577370, 20.460539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.410282, 37.810795, 20.692778>,  <35.546547, 37.950851, 20.832121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.410282, 37.810795, 20.692778>,  <35.183174, 37.577370, 20.460539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410282, 37.810795, 20.692778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156796, -0.615722, 0.772205,
		0.808118, -0.529469, -0.258087,
		0.567768, 0.583566, 0.580595,
		35.580612, 37.985863, 20.866957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470901, 37.118950, 20.906786>,  <35.183174, 37.577370, 20.460539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470901, 37.118950, 20.906786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.524006, 37.467880, 21.095007>,  <35.555866, 37.677238, 21.207939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.524006, 37.467880, 21.095007>,  <35.470901, 37.118950, 20.906786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524006, 37.467880, 21.095007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225341, -0.435758, 0.871399,
		0.965193, -0.221721, 0.138720,
		0.132759, 0.872327, 0.470553,
		35.563835, 37.729580, 21.236174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761471, 36.928085, 21.433815>,  <35.470901, 37.118950, 20.906786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761471, 36.928085, 21.433815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647808, 37.290550, 21.559116>,  <35.579609, 37.508030, 21.634296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647808, 37.290550, 21.559116>,  <35.761471, 36.928085, 21.433815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647808, 37.290550, 21.559116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173125, -0.369845, 0.912821,
		0.943018, 0.205152, 0.261973,
		-0.284157, 0.906161, 0.313253,
		35.562561, 37.562397, 21.653091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162170, 37.060471, 22.021376>,  <35.761471, 36.928085, 21.433815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162170, 37.060471, 22.021376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.849716, 37.308178, 22.053204>,  <35.662243, 37.456802, 22.072300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.849716, 37.308178, 22.053204>,  <36.162170, 37.060471, 22.021376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849716, 37.308178, 22.053204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216119, -0.387746, 0.896072,
		0.585759, 0.682762, 0.436719,
		-0.781140, 0.619265, 0.079568,
		35.615376, 37.493958, 22.077074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884274, 37.306477, 21.951584>,  <36.162170, 37.060471, 22.021376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884274, 37.306477, 21.951584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.219814, 37.092964, 21.994316>,  <37.421139, 36.964855, 22.019955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.219814, 37.092964, 21.994316>,  <36.884274, 37.306477, 21.951584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219814, 37.092964, 21.994316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328844, 0.340490, -0.880868,
		0.433815, 0.774045, 0.461150,
		0.838848, -0.533780, 0.106830,
		37.471470, 36.932831, 22.026365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439434, 37.736820, 21.808086>,  <36.884274, 37.306477, 21.951584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439434, 37.736820, 21.808086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549763, 37.359024, 21.736694>,  <37.615959, 37.132347, 21.693859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549763, 37.359024, 21.736694>,  <37.439434, 37.736820, 21.808086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549763, 37.359024, 21.736694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303690, 0.261800, -0.916097,
		0.911974, 0.198475, 0.359043,
		0.275820, -0.944494, -0.178480,
		37.632507, 37.075676, 21.683151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020321, 37.838806, 21.431131>,  <37.439434, 37.736820, 21.808086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020321, 37.838806, 21.431131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.933323, 37.452648, 21.373562>,  <37.881123, 37.220955, 21.339020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.933323, 37.452648, 21.373562>,  <38.020321, 37.838806, 21.431131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933323, 37.452648, 21.373562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189795, 0.102808, -0.976426,
		0.957430, -0.239688, 0.160866,
		-0.217499, -0.965391, -0.143923,
		37.868073, 37.163033, 21.330385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519680, 37.524784, 21.132536>,  <38.020321, 37.838806, 21.431131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519680, 37.524784, 21.132536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240250, 37.263084, 21.016638>,  <38.072590, 37.106064, 20.947098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.240250, 37.263084, 21.016638>,  <38.519680, 37.524784, 21.132536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240250, 37.263084, 21.016638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318844, 0.077889, -0.944601,
		0.640571, -0.752259, 0.154192,
		-0.698575, -0.654247, -0.289747,
		38.030678, 37.066811, 20.929714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869251, 37.181175, 20.614502>,  <38.519680, 37.524784, 21.132536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869251, 37.181175, 20.614502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493561, 37.060692, 20.548611>,  <38.268147, 36.988403, 20.509075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493561, 37.060692, 20.548611>,  <38.869251, 37.181175, 20.614502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493561, 37.060692, 20.548611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195071, -0.073387, -0.978040,
		0.282507, -0.950730, 0.127684,
		-0.939222, -0.301210, -0.164727,
		38.211796, 36.970329, 20.499193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927551, 36.601578, 20.223581>,  <38.869251, 37.181175, 20.614502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927551, 36.601578, 20.223581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560352, 36.746738, 20.159603>,  <38.340031, 36.833836, 20.121216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560352, 36.746738, 20.159603>,  <38.927551, 36.601578, 20.223581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560352, 36.746738, 20.159603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137510, -0.087015, -0.986671,
		-0.371978, -0.927757, 0.029978,
		-0.917999, 0.362898, -0.159944,
		38.284954, 36.855606, 20.111620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556065, 36.191280, 19.683764>,  <38.927551, 36.601578, 20.223581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556065, 36.191280, 19.683764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354351, 36.536377, 19.668985>,  <38.233322, 36.743435, 19.660118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354351, 36.536377, 19.668985>,  <38.556065, 36.191280, 19.683764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354351, 36.536377, 19.668985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084650, 0.006809, -0.996387,
		-0.859377, -0.505593, -0.076465,
		-0.504287, 0.862745, -0.036947,
		38.203064, 36.795200, 19.657902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310570, 36.275723, 19.048615>,  <38.556065, 36.191280, 19.683764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310570, 36.275723, 19.048615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226147, 36.656475, 19.137503>,  <38.175491, 36.884926, 19.190836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226147, 36.656475, 19.137503>,  <38.310570, 36.275723, 19.048615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226147, 36.656475, 19.137503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266483, 0.274763, -0.923846,
		-0.940448, -0.135765, -0.311650,
		-0.211056, 0.951879, 0.222221,
		38.162830, 36.942039, 19.204168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837391, 36.488216, 18.591450>,  <38.310570, 36.275723, 19.048615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837391, 36.488216, 18.591450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030823, 36.811005, 18.727074>,  <38.146881, 37.004677, 18.808447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030823, 36.811005, 18.727074>,  <37.837391, 36.488216, 18.591450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030823, 36.811005, 18.727074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411762, 0.132099, -0.901666,
		-0.772403, 0.575635, -0.268398,
		0.483576, 0.806966, 0.339058,
		38.175896, 37.053093, 18.828791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.734165, 31.805014, 34.467354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052486, 32.038303, 34.402184>,  <37.243481, 32.178276, 34.363083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052486, 32.038303, 34.402184>,  <36.734165, 31.805014, 34.467354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052486, 32.038303, 34.402184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406104, 0.314438, -0.858026,
		-0.449191, 0.748985, 0.487081,
		0.795806, 0.583223, -0.162923,
		37.291229, 32.213272, 34.353306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459938, 32.456905, 34.294250>,  <36.734165, 31.805014, 34.467354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459938, 32.456905, 34.294250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830265, 32.458954, 34.143078>,  <37.052460, 32.460182, 34.052376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830265, 32.458954, 34.143078>,  <36.459938, 32.456905, 34.294250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830265, 32.458954, 34.143078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364501, 0.276612, -0.889171,
		0.099990, 0.960968, 0.257958,
		0.925819, 0.005117, -0.377933,
		37.108009, 32.460487, 34.029697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480366, 33.048000, 33.945053>,  <36.459938, 32.456905, 34.294250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480366, 33.048000, 33.945053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801476, 32.843403, 33.822464>,  <36.994141, 32.720642, 33.748913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801476, 32.843403, 33.822464>,  <36.480366, 33.048000, 33.945053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801476, 32.843403, 33.822464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345276, 0.020286, -0.938282,
		0.486147, 0.859045, -0.160323,
		0.802774, -0.511498, -0.306469,
		37.042309, 32.689953, 33.730522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759300, 33.545532, 33.393345>,  <36.480366, 33.048000, 33.945053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759300, 33.545532, 33.393345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913960, 33.184406, 33.318058>,  <37.006756, 32.967731, 33.272884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913960, 33.184406, 33.318058>,  <36.759300, 33.545532, 33.393345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913960, 33.184406, 33.318058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065130, 0.176853, -0.982080,
		0.919924, 0.391980, 0.009580,
		0.386650, -0.902815, -0.188221,
		37.029953, 32.913563, 33.261593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376923, 33.654202, 33.040157>,  <36.759300, 33.545532, 33.393345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376923, 33.654202, 33.040157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265900, 33.278702, 32.958462>,  <37.199284, 33.053402, 32.909447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265900, 33.278702, 32.958462>,  <37.376923, 33.654202, 33.040157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265900, 33.278702, 32.958462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058760, 0.228778, -0.971704,
		0.958910, -0.257706, -0.118661,
		-0.277561, -0.938748, -0.204235,
		37.182632, 32.997078, 32.897190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792316, 33.452354, 32.367046>,  <37.376923, 33.654202, 33.040157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792316, 33.452354, 32.367046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521885, 33.160194, 32.405899>,  <37.359627, 32.984898, 32.429211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521885, 33.160194, 32.405899>,  <37.792316, 33.452354, 32.367046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521885, 33.160194, 32.405899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166180, 0.022714, -0.985834,
		0.717849, -0.682639, -0.136735,
		-0.676075, -0.730402, 0.097135,
		37.319061, 32.941074, 32.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912010, 32.898335, 31.782459>,  <37.792316, 33.452354, 32.367046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912010, 32.898335, 31.782459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535553, 32.860630, 31.912304>,  <37.309681, 32.838005, 31.990210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.535553, 32.860630, 31.912304>,  <37.912010, 32.898335, 31.782459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535553, 32.860630, 31.912304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330960, 0.061729, -0.941624,
		0.068768, -0.993627, -0.089308,
		-0.941136, -0.094311, 0.324606,
		37.253212, 32.832352, 32.009686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596474, 32.318241, 31.386072>,  <37.912010, 32.898335, 31.782459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596474, 32.318241, 31.386072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.299374, 32.545563, 31.527691>,  <37.121113, 32.681957, 31.612663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.299374, 32.545563, 31.527691>,  <37.596474, 32.318241, 31.386072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299374, 32.545563, 31.527691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178796, 0.341228, -0.922819,
		-0.645253, -0.748728, -0.151837,
		-0.742752, 0.568304, 0.354048,
		37.076550, 32.716053, 31.633905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966404, 32.135574, 31.012079>,  <37.596474, 32.318241, 31.386072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966404, 32.135574, 31.012079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900543, 32.500816, 31.161283>,  <36.861027, 32.719959, 31.250807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900543, 32.500816, 31.161283>,  <36.966404, 32.135574, 31.012079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900543, 32.500816, 31.161283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242272, 0.329148, -0.912670,
		-0.956135, -0.240641, 0.167025,
		-0.164650, 0.913101, 0.373011,
		36.851147, 32.774746, 31.273188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402248, 32.453316, 30.513216>,  <36.966404, 32.135574, 31.012079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402248, 32.453316, 30.513216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595764, 32.760445, 30.681211>,  <36.711876, 32.944721, 30.782009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595764, 32.760445, 30.681211>,  <36.402248, 32.453316, 30.513216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595764, 32.760445, 30.681211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000699, 0.480224, -0.877146,
		-0.875183, 0.424063, 0.232866,
		0.483792, 0.767825, 0.419987,
		36.740902, 32.990791, 30.807207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928703, 33.038311, 30.602753>,  <36.402248, 32.453316, 30.513216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928703, 33.038311, 30.602753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313595, 33.146675, 30.592056>,  <36.544529, 33.211693, 30.585638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313595, 33.146675, 30.592056>,  <35.928703, 33.038311, 30.602753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313595, 33.146675, 30.592056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126762, 0.358956, -0.924706,
		-0.240918, 0.893172, 0.379741,
		0.962232, 0.270915, -0.026741,
		36.602264, 33.227951, 30.584034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916725, 33.604000, 30.262793>,  <35.928703, 33.038311, 30.602753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916725, 33.604000, 30.262793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311062, 33.537785, 30.252129>,  <36.547665, 33.498055, 30.245731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311062, 33.537785, 30.252129>,  <35.916725, 33.604000, 30.262793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311062, 33.537785, 30.252129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053222, 0.459721, -0.886467,
		0.158997, 0.872499, 0.462023,
		0.985844, -0.165536, -0.026658,
		36.606815, 33.488125, 30.244131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462288, 34.151653, 30.410919>,  <35.916725, 33.604000, 30.262793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462288, 34.151653, 30.410919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070240, 34.144352, 30.331894>,  <34.835011, 34.139969, 30.284479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070240, 34.144352, 30.331894>,  <35.462288, 34.151653, 30.410919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070240, 34.144352, 30.331894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194892, -0.097947, 0.975922,
		-0.037169, 0.995024, 0.092442,
		-0.980120, -0.018258, -0.197562,
		34.776203, 34.138874, 30.272625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118286, 34.606476, 30.930130>,  <35.462288, 34.151653, 30.410919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118286, 34.606476, 30.930130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850426, 34.335274, 30.808893>,  <34.689709, 34.172550, 30.736151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850426, 34.335274, 30.808893>,  <35.118286, 34.606476, 30.930130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850426, 34.335274, 30.808893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266302, -0.161760, 0.950220,
		-0.693286, 0.717034, -0.072232,
		-0.669655, -0.678009, -0.303093,
		34.649529, 34.131870, 30.717966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525398, 34.679886, 31.361294>,  <35.118286, 34.606476, 30.930130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525398, 34.679886, 31.361294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503910, 34.317780, 31.192719>,  <34.491016, 34.100517, 31.091574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503910, 34.317780, 31.192719>,  <34.525398, 34.679886, 31.361294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503910, 34.317780, 31.192719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317246, -0.384709, 0.866807,
		-0.946821, 0.180264, -0.266525,
		-0.053719, -0.905264, -0.421439,
		34.487793, 34.046200, 31.066286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902332, 34.458450, 31.600372>,  <34.525398, 34.679886, 31.361294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902332, 34.458450, 31.600372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072891, 34.117207, 31.480118>,  <34.175228, 33.912460, 31.407965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072891, 34.117207, 31.480118>,  <33.902332, 34.458450, 31.600372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072891, 34.117207, 31.480118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419121, -0.480875, 0.770128,
		-0.801574, -0.202381, -0.562603,
		0.426401, -0.853113, -0.300634,
		34.200813, 33.861271, 31.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386585, 33.960697, 31.583277>,  <33.902332, 34.458450, 31.600372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386585, 33.960697, 31.583277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710682, 33.727051, 31.602530>,  <33.905140, 33.586861, 31.614082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710682, 33.727051, 31.602530>,  <33.386585, 33.960697, 31.583277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710682, 33.727051, 31.602530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385810, -0.469734, 0.794041,
		-0.441196, -0.661940, -0.605956,
		0.810245, -0.584111, 0.048139,
		33.953754, 33.551815, 31.616970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166378, 33.338322, 31.701941>,  <33.386585, 33.960697, 31.583277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166378, 33.338322, 31.701941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546795, 33.345947, 31.825335>,  <33.775043, 33.350521, 31.899372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546795, 33.345947, 31.825335>,  <33.166378, 33.338322, 31.701941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546795, 33.345947, 31.825335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289586, -0.293864, 0.910925,
		0.108018, -0.955657, -0.273955,
		0.951037, 0.019063, 0.308487,
		33.832108, 33.351665, 31.917881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170361, 32.763245, 32.070530>,  <33.166378, 33.338322, 31.701941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170361, 32.763245, 32.070530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477974, 32.982216, 32.202541>,  <33.662540, 33.113598, 32.281750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477974, 32.982216, 32.202541>,  <33.170361, 32.763245, 32.070530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477974, 32.982216, 32.202541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197596, -0.287429, 0.937198,
		0.607906, -0.785945, -0.112873,
		0.769029, 0.547425, 0.330030,
		33.708683, 33.146442, 32.301552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531174, 32.413059, 32.505077>,  <33.170361, 32.763245, 32.070530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531174, 32.413059, 32.505077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611588, 32.788597, 32.616898>,  <33.659836, 33.013920, 32.683990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611588, 32.788597, 32.616898>,  <33.531174, 32.413059, 32.505077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611588, 32.788597, 32.616898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149234, -0.252691, 0.955969,
		0.968150, -0.233903, 0.089308,
		0.201036, 0.938849, 0.279549,
		33.671898, 33.070251, 32.700764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738472, 32.311798, 33.217113>,  <33.531174, 32.413059, 32.505077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738472, 32.311798, 33.217113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657158, 32.702477, 33.189594>,  <33.608368, 32.936886, 33.173084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.657158, 32.702477, 33.189594>,  <33.738472, 32.311798, 33.217113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657158, 32.702477, 33.189594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364392, -0.010249, 0.931190,
		0.908787, 0.214366, 0.357985,
		-0.203284, 0.976700, -0.068799,
		33.596172, 32.995487, 33.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679390, 32.512535, 33.960133>,  <33.738472, 32.311798, 33.217113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679390, 32.512535, 33.960133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513737, 32.830662, 33.783058>,  <33.414345, 33.021538, 33.676815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513737, 32.830662, 33.783058>,  <33.679390, 32.512535, 33.960133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513737, 32.830662, 33.783058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666636, 0.066129, 0.742445,
		0.619752, 0.602577, 0.502800,
		-0.414130, 0.795316, -0.442683,
		33.389496, 33.069256, 33.650253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492424, 32.950935, 34.521393>,  <33.679390, 32.512535, 33.960133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492424, 32.950935, 34.521393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265404, 33.097294, 34.226368>,  <33.129192, 33.185108, 34.049351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265404, 33.097294, 34.226368>,  <33.492424, 32.950935, 34.521393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265404, 33.097294, 34.226368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752130, 0.134018, 0.645244,
		0.334939, 0.920956, 0.199139,
		-0.567553, 0.365895, -0.737567,
		33.095139, 33.207062, 34.005096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247227, 33.646046, 34.756687>,  <33.492424, 32.950935, 34.521393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247227, 33.646046, 34.756687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007530, 33.503197, 34.470085>,  <32.863712, 33.417488, 34.298126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007530, 33.503197, 34.470085>,  <33.247227, 33.646046, 34.756687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007530, 33.503197, 34.470085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798522, 0.202630, 0.566836,
		-0.057247, 0.911813, -0.406595,
		-0.599237, -0.357125, -0.716503,
		32.827759, 33.396061, 34.255135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632660, 34.118290, 34.775963>,  <33.247227, 33.646046, 34.756687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632660, 34.118290, 34.775963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530903, 33.781952, 34.584854>,  <32.469849, 33.580151, 34.470188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530903, 33.781952, 34.584854>,  <32.632660, 34.118290, 34.775963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530903, 33.781952, 34.584854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863153, -0.025402, 0.504304,
		-0.436178, 0.540679, -0.719316,
		-0.254394, -0.840845, -0.477768,
		32.454586, 33.529697, 34.441525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884733, 34.178005, 34.550770>,  <32.632660, 34.118290, 34.775963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884733, 34.178005, 34.550770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956398, 33.784851, 34.567883>,  <31.999397, 33.548958, 34.578152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956398, 33.784851, 34.567883>,  <31.884733, 34.178005, 34.550770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956398, 33.784851, 34.567883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859554, -0.135229, 0.492828,
		-0.478609, -0.125071, -0.869074,
		0.179163, -0.982889, 0.042783,
		32.010147, 33.489983, 34.580719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262897, 33.785782, 34.152115>,  <31.884733, 34.178005, 34.550770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262897, 33.785782, 34.152115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.457748, 33.594360, 34.444332>,  <31.574659, 33.479507, 34.619663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.457748, 33.594360, 34.444332>,  <31.262897, 33.785782, 34.152115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457748, 33.594360, 34.444332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871560, -0.213165, 0.441524,
		-0.055567, -0.851791, -0.520927,
		0.487129, -0.478553, 0.730542,
		31.603888, 33.450794, 34.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557264, 34.372009, 33.910843>,  <31.262897, 33.785782, 34.152115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557264, 34.372009, 33.910843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530031, 34.751747, 34.033546>,  <31.513691, 34.979591, 34.107170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530031, 34.751747, 34.033546>,  <31.557264, 34.372009, 33.910843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530031, 34.751747, 34.033546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142486, 0.313574, -0.938812,
		-0.987453, -0.020207, -0.156618,
		-0.068082, 0.949349, 0.306761,
		31.509607, 35.036552, 34.125576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072165, 34.756573, 33.502377>,  <31.557264, 34.372009, 33.910843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072165, 34.756573, 33.502377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353594, 34.998913, 33.650928>,  <31.522451, 35.144318, 33.740059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.353594, 34.998913, 33.650928>,  <31.072165, 34.756573, 33.502377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353594, 34.998913, 33.650928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007483, 0.516271, -0.856393,
		-0.710582, 0.605315, 0.358701,
		0.703574, 0.605853, 0.371383,
		31.564667, 35.180668, 33.762344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870588, 35.398933, 33.358459>,  <31.072165, 34.756573, 33.502377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870588, 35.398933, 33.358459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268724, 35.416412, 33.392838>,  <31.507607, 35.426899, 33.413464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268724, 35.416412, 33.392838>,  <30.870588, 35.398933, 33.358459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268724, 35.416412, 33.392838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052005, 0.507290, -0.860205,
		-0.081186, 0.860667, 0.502654,
		0.995341, 0.043696, 0.085944,
		31.567327, 35.429520, 33.418621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958801, 36.054585, 33.209381>,  <30.870588, 35.398933, 33.358459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958801, 36.054585, 33.209381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316431, 35.879452, 33.171574>,  <31.531008, 35.774372, 33.148888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316431, 35.879452, 33.171574>,  <30.958801, 36.054585, 33.209381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316431, 35.879452, 33.171574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161906, 0.512644, -0.843198,
		0.417637, 0.738577, 0.529230,
		0.894073, -0.437836, -0.094519,
		31.584652, 35.748100, 33.143219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446438, 36.628441, 32.971592>,  <30.958801, 36.054585, 33.209381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446438, 36.628441, 32.971592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615650, 36.278954, 32.875549>,  <31.717178, 36.069260, 32.817924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615650, 36.278954, 32.875549>,  <31.446438, 36.628441, 32.971592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615650, 36.278954, 32.875549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287666, 0.380779, -0.878780,
		0.859239, 0.302682, 0.412422,
		0.423033, -0.873722, -0.240109,
		31.742559, 36.016838, 32.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132687, 36.726696, 32.651268>,  <31.446438, 36.628441, 32.971592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132687, 36.726696, 32.651268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039951, 36.353416, 32.541443>,  <31.984310, 36.129448, 32.475548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039951, 36.353416, 32.541443>,  <32.132687, 36.726696, 32.651268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039951, 36.353416, 32.541443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377557, 0.173798, -0.909530,
		0.896494, -0.314526, 0.312044,
		-0.231838, -0.933203, -0.274561,
		31.970400, 36.073456, 32.459076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699680, 36.636650, 32.182693>,  <32.132687, 36.726696, 32.651268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699680, 36.636650, 32.182693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439163, 36.352039, 32.077206>,  <32.282852, 36.181274, 32.013912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439163, 36.352039, 32.077206>,  <32.699680, 36.636650, 32.182693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439163, 36.352039, 32.077206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260334, 0.116931, -0.958412,
		0.712772, -0.692863, 0.109078,
		-0.651293, -0.711525, -0.263721,
		32.243774, 36.138580, 31.998089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085415, 36.270233, 31.653156>,  <32.699680, 36.636650, 32.182693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085415, 36.270233, 31.653156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.698689, 36.185032, 31.596737>,  <32.466652, 36.133911, 31.562885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.698689, 36.185032, 31.596737>,  <33.085415, 36.270233, 31.653156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698689, 36.185032, 31.596737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069324, 0.312665, -0.947330,
		0.245880, -0.925674, -0.287525,
		-0.966818, -0.212997, -0.141050,
		32.408642, 36.121132, 31.554422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034355, 35.967476, 30.982788>,  <33.085415, 36.270233, 31.653156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034355, 35.967476, 30.982788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689396, 36.143257, 31.083307>,  <32.482422, 36.248726, 31.143620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689396, 36.143257, 31.083307>,  <33.034355, 35.967476, 30.982788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689396, 36.143257, 31.083307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059189, 0.405470, -0.912190,
		-0.502762, -0.801543, -0.323665,
		-0.862396, 0.439457, 0.251297,
		32.430676, 36.275093, 31.158697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581898, 35.625698, 30.430693>,  <33.034355, 35.967476, 30.982788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581898, 35.625698, 30.430693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.372467, 35.938351, 30.566292>,  <32.246811, 36.125942, 30.647652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.372467, 35.938351, 30.566292>,  <32.581898, 35.625698, 30.430693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372467, 35.938351, 30.566292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067508, 0.358580, -0.931055,
		-0.849303, -0.510359, -0.134976,
		-0.523572, 0.781635, 0.338996,
		32.215397, 36.172840, 30.667990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932753, 35.646980, 30.036051>,  <32.581898, 35.625698, 30.430693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932753, 35.646980, 30.036051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993011, 36.014729, 30.181412>,  <32.029167, 36.235378, 30.268627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993011, 36.014729, 30.181412>,  <31.932753, 35.646980, 30.036051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993011, 36.014729, 30.181412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113338, 0.381234, -0.917505,
		-0.982069, 0.097034, 0.161633,
		0.150649, 0.919372, 0.363400,
		32.038208, 36.290539, 30.290432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370018, 36.100128, 29.668812>,  <31.932753, 35.646980, 30.036051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370018, 36.100128, 29.668812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646229, 36.339207, 29.831751>,  <31.811954, 36.482655, 29.929514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646229, 36.339207, 29.831751>,  <31.370018, 36.100128, 29.668812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646229, 36.339207, 29.831751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066297, 0.613107, -0.787213,
		-0.720263, 0.516585, 0.462992,
		0.690526, 0.597696, 0.407350,
		31.853386, 36.518517, 29.953957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208118, 36.842670, 29.402655>,  <31.370018, 36.100128, 29.668812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208118, 36.842670, 29.402655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581196, 36.866943, 29.544867>,  <31.805042, 36.881508, 29.630194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581196, 36.866943, 29.544867>,  <31.208118, 36.842670, 29.402655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581196, 36.866943, 29.544867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198789, 0.736001, -0.647136,
		-0.300942, 0.674255, 0.674399,
		0.932693, 0.060687, 0.355528,
		31.861004, 36.885151, 29.651525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401476, 37.526619, 29.552856>,  <31.208118, 36.842670, 29.402655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401476, 37.526619, 29.552856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745947, 37.334423, 29.486511>,  <31.952629, 37.219105, 29.446705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.745947, 37.334423, 29.486511>,  <31.401476, 37.526619, 29.552856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745947, 37.334423, 29.486511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268004, 0.706464, -0.655043,
		0.431915, 0.519656, 0.737162,
		0.861176, -0.480485, -0.165862,
		32.004299, 37.190277, 29.436752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967857, 38.003246, 29.644148>,  <31.401476, 37.526619, 29.552856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967857, 38.003246, 29.644148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.135700, 37.708126, 29.432648>,  <32.236404, 37.531052, 29.305748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.135700, 37.708126, 29.432648>,  <31.967857, 38.003246, 29.644148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135700, 37.708126, 29.432648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375436, 0.671417, -0.638941,
		0.826426, 0.069591, 0.558729,
		0.419605, -0.737805, -0.528749,
		32.261581, 37.486786, 29.274023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705772, 38.134319, 29.569977>,  <31.967857, 38.003246, 29.644148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705772, 38.134319, 29.569977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607761, 37.880661, 29.276632>,  <32.548954, 37.728466, 29.100626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607761, 37.880661, 29.276632>,  <32.705772, 38.134319, 29.569977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607761, 37.880661, 29.276632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561580, 0.523769, -0.640541,
		0.790309, -0.568793, 0.227786,
		-0.245028, -0.634146, -0.733363,
		32.534252, 37.690418, 29.056623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340698, 38.122662, 29.231617>,  <32.705772, 38.134319, 29.569977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340698, 38.122662, 29.231617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073399, 37.976669, 28.972315>,  <32.913021, 37.889072, 28.816732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073399, 37.976669, 28.972315>,  <33.340698, 38.122662, 29.231617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073399, 37.976669, 28.972315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504967, 0.417367, -0.755522,
		0.546313, -0.832222, -0.094600,
		-0.668244, -0.364981, -0.648257,
		32.872925, 37.867176, 28.777838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781975, 37.799301, 28.702553>,  <33.340698, 38.122662, 29.231617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781975, 37.799301, 28.702553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422276, 37.879616, 28.547096>,  <33.206455, 37.927807, 28.453821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422276, 37.879616, 28.547096>,  <33.781975, 37.799301, 28.702553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422276, 37.879616, 28.547096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436031, 0.339984, -0.833239,
		-0.035175, -0.918746, -0.393280,
		-0.899244, 0.200791, -0.388643,
		33.152504, 37.939854, 28.430504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805336, 37.527748, 28.122938>,  <33.781975, 37.799301, 28.702553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805336, 37.527748, 28.122938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521973, 37.807995, 28.088781>,  <33.351955, 37.976143, 28.068287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521973, 37.807995, 28.088781>,  <33.805336, 37.527748, 28.122938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521973, 37.807995, 28.088781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485003, 0.395325, -0.780058,
		-0.512765, -0.594015, -0.619853,
		-0.708410, 0.700617, -0.085390,
		33.309448, 38.018181, 28.063164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583572, 37.452839, 27.493042>,  <33.805336, 37.527748, 28.122938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583572, 37.452839, 27.493042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442753, 37.815891, 27.584482>,  <33.358261, 38.033722, 27.639347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442753, 37.815891, 27.584482>,  <33.583572, 37.452839, 27.493042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442753, 37.815891, 27.584482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401380, 0.367041, -0.839151,
		-0.845549, -0.203669, -0.493524,
		-0.352053, 0.907634, 0.228603,
		33.337135, 38.088181, 27.653063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314732, 37.692596, 26.904646>,  <33.583572, 37.452839, 27.493042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314732, 37.692596, 26.904646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386921, 38.027687, 27.110806>,  <33.430233, 38.228741, 27.234501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386921, 38.027687, 27.110806>,  <33.314732, 37.692596, 26.904646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386921, 38.027687, 27.110806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277194, 0.459447, -0.843843,
		-0.943713, 0.295153, -0.149298,
		0.180469, 0.837731, 0.515401,
		33.441063, 38.279007, 27.265427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000637, 38.125336, 26.523348>,  <33.314732, 37.692596, 26.904646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000637, 38.125336, 26.523348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268272, 38.329140, 26.739761>,  <33.428856, 38.451424, 26.869610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.268272, 38.329140, 26.739761>,  <33.000637, 38.125336, 26.523348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268272, 38.329140, 26.739761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311153, 0.469064, -0.826537,
		-0.674907, 0.721373, 0.155312,
		0.669092, 0.509509, 0.541032,
		33.469002, 38.481991, 26.902071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029633, 38.764591, 26.314175>,  <33.000637, 38.125336, 26.523348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029633, 38.764591, 26.314175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369637, 38.749397, 26.524336>,  <33.573639, 38.740280, 26.650433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369637, 38.749397, 26.524336>,  <33.029633, 38.764591, 26.314175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369637, 38.749397, 26.524336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466687, 0.516895, -0.717650,
		-0.244320, 0.855206, 0.457090,
		0.850006, -0.037982, 0.525401,
		33.624638, 38.738003, 26.681955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184536, 39.445808, 26.247410>,  <33.029633, 38.764591, 26.314175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184536, 39.445808, 26.247410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496098, 39.208061, 26.327446>,  <33.683033, 39.065411, 26.375467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.496098, 39.208061, 26.327446>,  <33.184536, 39.445808, 26.247410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496098, 39.208061, 26.327446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508504, 0.411811, -0.756198,
		0.367063, 0.690750, 0.623001,
		0.778902, -0.594371, 0.200088,
		33.729767, 39.029751, 26.387472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778885, 39.873539, 26.304724>,  <33.184536, 39.445808, 26.247410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778885, 39.873539, 26.304724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938633, 39.511490, 26.246412>,  <34.034481, 39.294258, 26.211426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938633, 39.511490, 26.246412>,  <33.778885, 39.873539, 26.304724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938633, 39.511490, 26.246412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473651, 0.339851, -0.812500,
		0.784958, 0.255437, 0.564440,
		0.399368, -0.905126, -0.145780,
		34.058445, 39.239952, 26.202679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456360, 39.947495, 26.132412>,  <33.778885, 39.873539, 26.304724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456360, 39.947495, 26.132412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425152, 39.568787, 26.007488>,  <34.406425, 39.341560, 25.932533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425152, 39.568787, 26.007488>,  <34.456360, 39.947495, 26.132412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425152, 39.568787, 26.007488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526780, 0.226812, -0.819182,
		0.846414, -0.228431, 0.481044,
		-0.078020, -0.946771, -0.312310,
		34.401745, 39.284756, 25.913795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079510, 39.846794, 25.787046>,  <34.456360, 39.947495, 26.132412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079510, 39.846794, 25.787046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861362, 39.540821, 25.649958>,  <34.730476, 39.357239, 25.567705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861362, 39.540821, 25.649958>,  <35.079510, 39.846794, 25.787046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861362, 39.540821, 25.649958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382781, 0.136470, -0.913704,
		0.745691, -0.629489, 0.218375,
		-0.545365, -0.764931, -0.342721,
		34.697754, 39.311340, 25.547142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744682, 39.653053, 25.780670>,  <35.079510, 39.846794, 25.787046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744682, 39.653053, 25.780670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080002, 39.862022, 25.843058>,  <36.281193, 39.987404, 25.880489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080002, 39.862022, 25.843058>,  <35.744682, 39.653053, 25.780670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080002, 39.862022, 25.843058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198918, 0.026717, 0.979652,
		0.507627, -0.852267, 0.126317,
		0.838300, 0.522424, 0.155968,
		36.331493, 40.018749, 25.889849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105579, 39.228657, 26.267239>,  <35.744682, 39.653053, 25.780670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105579, 39.228657, 26.267239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287239, 39.584705, 26.282362>,  <36.396236, 39.798336, 26.291437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287239, 39.584705, 26.282362>,  <36.105579, 39.228657, 26.267239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287239, 39.584705, 26.282362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093324, -0.089735, 0.991584,
		0.886024, -0.446798, -0.123823,
		0.454149, 0.890123, 0.037811,
		36.423485, 39.851742, 26.293705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798695, 39.096569, 26.617725>,  <36.105579, 39.228657, 26.267239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798695, 39.096569, 26.617725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647865, 39.465546, 26.650988>,  <36.557369, 39.686932, 26.670944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.647865, 39.465546, 26.650988>,  <36.798695, 39.096569, 26.617725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647865, 39.465546, 26.650988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086365, -0.054372, 0.994779,
		0.922148, 0.382286, -0.059164,
		-0.377073, 0.922443, 0.083155,
		36.534744, 39.742279, 26.675934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116737, 39.429348, 27.215786>,  <36.798695, 39.096569, 26.617725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116737, 39.429348, 27.215786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779995, 39.638580, 27.162632>,  <36.577950, 39.764118, 27.130739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779995, 39.638580, 27.162632>,  <37.116737, 39.429348, 27.215786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779995, 39.638580, 27.162632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182417, -0.044055, 0.982234,
		0.507934, 0.851143, 0.132508,
		-0.841859, 0.523081, -0.132886,
		36.527435, 39.795506, 27.122766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157143, 39.821270, 27.732346>,  <37.116737, 39.429348, 27.215786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157143, 39.821270, 27.732346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770599, 39.871777, 27.642710>,  <36.538673, 39.902081, 27.588928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770599, 39.871777, 27.642710>,  <37.157143, 39.821270, 27.732346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770599, 39.871777, 27.642710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223072, 0.022306, 0.974547,
		0.128052, 0.991745, 0.006611,
		-0.966355, 0.126268, -0.224087,
		36.480694, 39.909657, 27.575483>
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
