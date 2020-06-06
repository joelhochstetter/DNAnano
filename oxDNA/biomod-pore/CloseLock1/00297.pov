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
	<24.270149, 34.853500, 34.495029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203306, 35.061310, 34.830212>,  <24.163200, 35.185993, 35.031322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203306, 35.061310, 34.830212>,  <24.270149, 34.853500, 34.495029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203306, 35.061310, 34.830212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833301, -0.379831, 0.401670,
		0.526958, 0.765393, -0.369443,
		-0.167109, 0.519521, 0.837958,
		24.153173, 35.217167, 35.081600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856733, 35.231331, 34.637486>,  <24.270149, 34.853500, 34.495029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856733, 35.231331, 34.637486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677950, 35.140099, 34.983482>,  <24.570681, 35.085358, 35.191078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677950, 35.140099, 34.983482>,  <24.856733, 35.231331, 34.637486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677950, 35.140099, 34.983482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800064, -0.534463, 0.272482,
		0.400155, 0.813835, 0.421365,
		-0.446959, -0.228084, 0.864988,
		24.543861, 35.071674, 35.242977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360418, 35.357971, 35.216354>,  <24.856733, 35.231331, 34.637486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360418, 35.357971, 35.216354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105350, 35.059635, 35.293400>,  <24.952311, 34.880634, 35.339626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105350, 35.059635, 35.293400>,  <25.360418, 35.357971, 35.216354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105350, 35.059635, 35.293400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770250, -0.614198, 0.171682,
		-0.009744, 0.257839, 0.966139,
		-0.637667, -0.745842, 0.192616,
		24.914051, 34.835884, 35.351185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581232, 35.610603, 34.517029>,  <25.360418, 35.357971, 35.216354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581232, 35.610603, 34.517029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895683, 35.845104, 34.595318>,  <26.084354, 35.985806, 34.642292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895683, 35.845104, 34.595318>,  <25.581232, 35.610603, 34.517029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895683, 35.845104, 34.595318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513955, -0.795960, 0.319840,
		0.343293, -0.150844, -0.927036,
		0.786130, 0.586254, 0.195720,
		26.131523, 36.020981, 34.654034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325090, 35.402451, 34.284019>,  <25.581232, 35.610603, 34.517029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325090, 35.402451, 34.284019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331978, 35.625412, 34.616047>,  <26.336111, 35.759190, 34.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331978, 35.625412, 34.616047>,  <26.325090, 35.402451, 34.284019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331978, 35.625412, 34.616047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389887, -0.768213, 0.507777,
		0.920702, 0.314889, -0.230550,
		0.017218, 0.557400, 0.830066,
		26.337143, 35.792633, 34.865067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710854, 35.216187, 33.544830>,  <26.325090, 35.402451, 34.284019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710854, 35.216187, 33.544830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074415, 35.054153, 33.584431>,  <27.292553, 34.956932, 33.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074415, 35.054153, 33.584431>,  <26.710854, 35.216187, 33.544830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074415, 35.054153, 33.584431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416972, -0.885895, 0.203282,
		0.005357, -0.226043, -0.974102,
		0.908903, -0.405085, 0.099000,
		27.347086, 34.932629, 33.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733891, 34.569416, 33.192337>,  <26.710854, 35.216187, 33.544830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733891, 34.569416, 33.192337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000622, 34.576057, 33.490345>,  <27.160662, 34.580044, 33.669151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000622, 34.576057, 33.490345>,  <26.733891, 34.569416, 33.192337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000622, 34.576057, 33.490345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369102, -0.861147, 0.349557,
		0.647380, -0.508086, -0.568109,
		0.666831, 0.016606, 0.745025,
		27.200670, 34.581039, 33.713852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123119, 34.047424, 33.143627>,  <26.733891, 34.569416, 33.192337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123119, 34.047424, 33.143627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136618, 34.132240, 33.534298>,  <27.144716, 34.183128, 33.768700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136618, 34.132240, 33.534298>,  <27.123119, 34.047424, 33.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136618, 34.132240, 33.534298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258540, -0.942119, 0.213467,
		0.965411, -0.259714, 0.023030,
		0.033744, 0.212037, 0.976679,
		27.146742, 34.195850, 33.827301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591009, 33.541740, 33.412750>,  <27.123119, 34.047424, 33.143627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591009, 33.541740, 33.412750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376801, 33.675545, 33.722931>,  <27.248276, 33.755829, 33.909039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376801, 33.675545, 33.722931>,  <27.591009, 33.541740, 33.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376801, 33.675545, 33.722931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167965, -0.942052, 0.290389,
		0.827651, 0.025261, 0.560675,
		-0.535520, 0.334515, 0.775447,
		27.216145, 33.775898, 33.955566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672009, 33.082310, 33.893764>,  <27.591009, 33.541740, 33.412750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672009, 33.082310, 33.893764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365894, 33.292130, 34.042995>,  <27.182226, 33.418022, 34.132534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365894, 33.292130, 34.042995>,  <27.672009, 33.082310, 33.893764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365894, 33.292130, 34.042995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303413, -0.805121, 0.509627,
		0.567698, 0.276813, 0.775302,
		-0.765284, 0.524551, 0.373077,
		27.136309, 33.449493, 34.154919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795589, 33.099380, 34.632141>,  <27.672009, 33.082310, 33.893764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795589, 33.099380, 34.632141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409557, 33.126919, 34.531044>,  <27.177938, 33.143440, 34.470387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409557, 33.126919, 34.531044>,  <27.795589, 33.099380, 34.632141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409557, 33.126919, 34.531044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191494, -0.843764, 0.501390,
		-0.178735, 0.532280, 0.827485,
		-0.965082, 0.068842, -0.252738,
		27.120033, 33.147572, 34.455223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447252, 32.881763, 35.210163>,  <27.795589, 33.099380, 34.632141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447252, 32.881763, 35.210163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159613, 32.849388, 34.934093>,  <26.987028, 32.829964, 34.768452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159613, 32.849388, 34.934093>,  <27.447252, 32.881763, 35.210163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159613, 32.849388, 34.934093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219043, -0.916160, 0.335666,
		-0.659480, 0.392556, 0.641082,
		-0.719101, -0.080940, -0.690175,
		26.943882, 32.825108, 34.727039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904673, 32.636925, 35.555492>,  <27.447252, 32.881763, 35.210163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904673, 32.636925, 35.555492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801756, 32.548618, 35.179180>,  <26.740005, 32.495636, 34.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801756, 32.548618, 35.179180>,  <26.904673, 32.636925, 35.555492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801756, 32.548618, 35.179180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213815, -0.936417, 0.278219,
		-0.942383, 0.272735, 0.193728,
		-0.257291, -0.220766, -0.940778,
		26.724569, 32.482388, 34.896946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299887, 32.234795, 35.655716>,  <26.904673, 32.636925, 35.555492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299887, 32.234795, 35.655716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421268, 32.182049, 35.278244>,  <26.494099, 32.150402, 35.051762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421268, 32.182049, 35.278244>,  <26.299887, 32.234795, 35.655716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421268, 32.182049, 35.278244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078847, -0.990456, 0.113048,
		-0.949577, 0.040101, -0.310957,
		0.303456, -0.131866, -0.943677,
		26.512306, 32.142490, 34.995140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767788, 31.853798, 35.274918>,  <26.299887, 32.234795, 35.655716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767788, 31.853798, 35.274918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122585, 31.794144, 35.100105>,  <26.335464, 31.758350, 34.995216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122585, 31.794144, 35.100105>,  <25.767788, 31.853798, 35.274918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122585, 31.794144, 35.100105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149702, -0.988168, 0.033377,
		-0.436839, 0.035819, -0.898826,
		0.886996, -0.149136, -0.437032,
		26.388683, 31.749403, 34.968994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703463, 31.170319, 34.874428>,  <25.767788, 31.853798, 35.274918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703463, 31.170319, 34.874428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094116, 31.242680, 34.920837>,  <26.328508, 31.286097, 34.948685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094116, 31.242680, 34.920837>,  <25.703463, 31.170319, 34.874428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094116, 31.242680, 34.920837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150076, -0.960500, 0.234343,
		0.153834, -0.211455, -0.965206,
		0.976633, 0.180904, 0.116023,
		26.387106, 31.296951, 34.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941755, 30.567675, 34.875256>,  <25.703463, 31.170319, 34.874428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941755, 30.567675, 34.875256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264154, 30.771627, 34.995514>,  <26.457594, 30.893999, 35.067669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264154, 30.771627, 34.995514>,  <25.941755, 30.567675, 34.875256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264154, 30.771627, 34.995514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369429, -0.830173, 0.417534,
		0.462479, -0.225466, -0.857484,
		0.806000, 0.509880, 0.300644,
		26.505955, 30.924591, 35.085709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524572, 29.992579, 34.809162>,  <25.941755, 30.567675, 34.875256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524572, 29.992579, 34.809162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589050, 30.282578, 35.077011>,  <26.627737, 30.456577, 35.237720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589050, 30.282578, 35.077011>,  <26.524572, 29.992579, 34.809162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589050, 30.282578, 35.077011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387478, -0.670508, 0.632677,
		0.907676, 0.157479, -0.389004,
		0.161197, 0.724996, 0.669624,
		26.637409, 30.500076, 35.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165426, 29.809502, 35.077824>,  <26.524572, 29.992579, 34.809162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165426, 29.809502, 35.077824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019823, 30.067408, 35.346680>,  <26.932461, 30.222151, 35.507996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019823, 30.067408, 35.346680>,  <27.165426, 29.809502, 35.077824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019823, 30.067408, 35.346680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319806, -0.591255, 0.740366,
		0.874770, 0.484455, 0.009022,
		-0.364008, 0.644765, 0.672143,
		26.910620, 30.260838, 35.548321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755756, 29.922844, 35.395557>,  <27.165426, 29.809502, 35.077824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755756, 29.922844, 35.395557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454817, 30.021408, 35.639935>,  <27.274252, 30.080547, 35.786560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454817, 30.021408, 35.639935>,  <27.755756, 29.922844, 35.395557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454817, 30.021408, 35.639935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416139, -0.541167, 0.730730,
		0.510682, 0.804002, 0.304606,
		-0.752351, 0.246412, 0.610941,
		27.229111, 30.095331, 35.823215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001152, 30.262894, 35.903919>,  <27.755756, 29.922844, 35.395557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001152, 30.262894, 35.903919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652508, 30.135258, 36.052765>,  <27.443321, 30.058676, 36.142075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652508, 30.135258, 36.052765>,  <28.001152, 30.262894, 35.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652508, 30.135258, 36.052765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479118, -0.394081, 0.784313,
		-0.103623, 0.861906, 0.496368,
		-0.871613, -0.319091, 0.372118,
		27.391024, 30.039530, 36.164402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939360, 30.474821, 36.608376>,  <28.001152, 30.262894, 35.903919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939360, 30.474821, 36.608376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684530, 30.166569, 36.601933>,  <27.531631, 29.981617, 36.598064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684530, 30.166569, 36.601933>,  <27.939360, 30.474821, 36.608376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684530, 30.166569, 36.601933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478885, -0.412096, 0.775142,
		-0.603990, 0.486109, 0.631581,
		-0.637076, -0.770633, -0.016111,
		27.493408, 29.935379, 36.597099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879097, 30.318373, 37.316639>,  <27.939360, 30.474821, 36.608376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879097, 30.318373, 37.316639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744740, 29.991365, 37.129517>,  <27.664125, 29.795162, 37.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744740, 29.991365, 37.129517>,  <27.879097, 30.318373, 37.316639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744740, 29.991365, 37.129517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479620, -0.575901, 0.662045,
		-0.810642, -0.001991, 0.585539,
		-0.335894, -0.817517, -0.467804,
		27.643970, 29.746111, 36.989174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743042, 29.957932, 37.815273>,  <27.879097, 30.318373, 37.316639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743042, 29.957932, 37.815273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783672, 29.697206, 37.514656>,  <27.808050, 29.540771, 37.334286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783672, 29.697206, 37.514656>,  <27.743042, 29.957932, 37.815273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783672, 29.697206, 37.514656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309324, -0.697312, 0.646586,
		-0.945516, -0.298149, 0.130792,
		0.101577, -0.651815, -0.751545,
		27.814146, 29.501661, 37.289192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399662, 29.338442, 38.027817>,  <27.743042, 29.957932, 37.815273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399662, 29.338442, 38.027817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642584, 29.193930, 37.744789>,  <27.788336, 29.107222, 37.574970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642584, 29.193930, 37.744789>,  <27.399662, 29.338442, 38.027817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642584, 29.193930, 37.744789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318045, -0.705586, 0.633242,
		-0.728034, -0.609609, -0.313598,
		0.607300, -0.361284, -0.707573,
		27.824776, 29.085545, 37.532516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083326, 28.612366, 37.764263>,  <27.399662, 29.338442, 38.027817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083326, 28.612366, 37.764263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476059, 28.680246, 37.730293>,  <27.711699, 28.720974, 37.709911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.476059, 28.680246, 37.730293>,  <27.083326, 28.612366, 37.764263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.476059, 28.680246, 37.730293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185022, -0.756641, 0.627105,
		0.042160, -0.631424, -0.774291,
		0.981829, 0.169699, -0.084928,
		27.770607, 28.731155, 37.704815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388361, 27.925562, 37.503620>,  <27.083326, 28.612366, 37.764263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388361, 27.925562, 37.503620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635492, 28.176958, 37.692635>,  <27.783772, 28.327795, 37.806042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635492, 28.176958, 37.692635>,  <27.388361, 27.925562, 37.503620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635492, 28.176958, 37.692635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273546, -0.735205, 0.620199,
		0.737197, -0.253917, -0.626152,
		0.617829, 0.628490, 0.472533,
		27.820841, 28.365505, 37.834396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350424, 27.882458, 38.230877>,  <27.388361, 27.925562, 37.503620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350424, 27.882458, 38.230877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215881, 27.582102, 38.003532>,  <27.135155, 27.401888, 37.867126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215881, 27.582102, 38.003532>,  <27.350424, 27.882458, 38.230877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215881, 27.582102, 38.003532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930536, -0.357798, -0.077992,
		-0.144794, -0.555110, 0.819077,
		-0.336358, -0.750888, -0.568357,
		27.114973, 27.356836, 37.833027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629873, 27.357143, 38.570980>,  <27.350424, 27.882458, 38.230877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629873, 27.357143, 38.570980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545971, 27.264095, 38.191109>,  <27.495628, 27.208267, 37.963184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545971, 27.264095, 38.191109>,  <27.629873, 27.357143, 38.570980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545971, 27.264095, 38.191109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924220, -0.364152, -0.114938,
		-0.319091, -0.901821, 0.291375,
		-0.209758, -0.232619, -0.949679,
		27.483044, 27.194309, 37.906204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033585, 26.745367, 38.335934>,  <27.629873, 27.357143, 38.570980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033585, 26.745367, 38.335934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971529, 26.953518, 38.000042>,  <27.934296, 27.078407, 37.798508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971529, 26.953518, 38.000042>,  <28.033585, 26.745367, 38.335934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971529, 26.953518, 38.000042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896492, -0.282931, -0.340959,
		-0.415011, -0.805704, -0.422618,
		-0.155141, 0.520376, -0.839726,
		27.924986, 27.109631, 37.748123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072392, 26.311428, 37.744968>,  <28.033585, 26.745367, 38.335934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072392, 26.311428, 37.744968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162523, 26.690979, 37.656551>,  <28.216602, 26.918709, 37.603500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162523, 26.690979, 37.656551>,  <28.072392, 26.311428, 37.744968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162523, 26.690979, 37.656551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888189, -0.293309, -0.353681,
		-0.400433, -0.116631, -0.908873,
		0.225331, 0.948877, -0.221041,
		28.230122, 26.975641, 37.590240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107552, 26.533039, 37.001049>,  <28.072392, 26.311428, 37.744968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107552, 26.533039, 37.001049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394119, 26.734467, 37.194199>,  <28.566059, 26.855322, 37.310089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394119, 26.734467, 37.194199>,  <28.107552, 26.533039, 37.001049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394119, 26.734467, 37.194199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677735, -0.666597, -0.310361,
		0.165594, 0.549608, -0.818846,
		0.716417, 0.503567, 0.482873,
		28.609045, 26.885536, 37.339062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624811, 26.670025, 36.477909>,  <28.107552, 26.533039, 37.001049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624811, 26.670025, 36.477909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773705, 26.672903, 36.849155>,  <28.863041, 26.674629, 37.071903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773705, 26.672903, 36.849155>,  <28.624811, 26.670025, 36.477909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773705, 26.672903, 36.849155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644732, -0.721331, -0.252987,
		0.667656, 0.692553, -0.273141,
		0.372232, 0.007195, 0.928112,
		28.885374, 26.675062, 37.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400919, 26.946312, 36.636520>,  <28.624811, 26.670025, 36.477909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400919, 26.946312, 36.636520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291439, 26.640087, 36.869419>,  <29.225752, 26.456352, 37.009159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291439, 26.640087, 36.869419>,  <29.400919, 26.946312, 36.636520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291439, 26.640087, 36.869419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678999, -0.582541, -0.446772,
		0.681212, 0.273062, 0.679256,
		-0.273698, -0.765560, 0.582243,
		29.209330, 26.410419, 37.044090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000046, 26.540348, 36.769550>,  <29.400919, 26.946312, 36.636520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000046, 26.540348, 36.769550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688702, 26.301130, 36.845970>,  <29.501896, 26.157600, 36.891823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688702, 26.301130, 36.845970>,  <30.000046, 26.540348, 36.769550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688702, 26.301130, 36.845970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451908, -0.744937, -0.490762,
		0.435815, -0.295654, 0.850090,
		-0.778360, -0.598044, 0.191047,
		29.455194, 26.121717, 36.903286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407675, 26.951971, 36.372101>,  <30.000046, 26.540348, 36.769550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407675, 26.951971, 36.372101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255821, 26.777351, 36.045837>,  <30.164709, 26.672581, 35.850079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255821, 26.777351, 36.045837>,  <30.407675, 26.951971, 36.372101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255821, 26.777351, 36.045837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257889, 0.796781, -0.546473,
		0.888465, -0.417810, -0.189905,
		-0.379635, -0.436548, -0.815661,
		30.141930, 26.646387, 35.801140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868065, 27.025208, 35.871315>,  <30.407675, 26.951971, 36.372101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868065, 27.025208, 35.871315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532280, 26.950699, 35.667114>,  <30.330809, 26.905993, 35.544594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532280, 26.950699, 35.667114>,  <30.868065, 27.025208, 35.871315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532280, 26.950699, 35.667114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192162, 0.776969, -0.599494,
		0.508311, -0.601350, -0.616440,
		-0.839460, -0.186273, -0.510498,
		30.280441, 26.894817, 35.513966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027983, 26.962294, 35.087490>,  <30.868065, 27.025208, 35.871315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027983, 26.962294, 35.087490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658710, 27.089987, 35.173122>,  <30.437147, 27.166603, 35.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658710, 27.089987, 35.173122>,  <31.027983, 26.962294, 35.087490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658710, 27.089987, 35.173122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141675, 0.800357, -0.582543,
		-0.357309, -0.507462, -0.784100,
		-0.923179, 0.319235, 0.214080,
		30.381758, 27.185757, 35.237347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893801, 27.460209, 34.606800>,  <31.027983, 26.962294, 35.087490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893801, 27.460209, 34.606800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567753, 27.532267, 34.827026>,  <30.372124, 27.575502, 34.959164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567753, 27.532267, 34.827026>,  <30.893801, 27.460209, 34.606800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567753, 27.532267, 34.827026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066921, 0.914771, -0.398391,
		-0.575412, -0.361582, -0.733594,
		-0.815121, 0.180147, 0.550568,
		30.323217, 27.586311, 34.992195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318048, 27.680780, 34.093658>,  <30.893801, 27.460209, 34.606800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318048, 27.680780, 34.093658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241121, 27.804600, 34.466152>,  <30.194965, 27.878891, 34.689648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241121, 27.804600, 34.466152>,  <30.318048, 27.680780, 34.093658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241121, 27.804600, 34.466152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247143, 0.903082, -0.351232,
		-0.949703, -0.297695, -0.097174,
		-0.192316, 0.309550, 0.931232,
		30.183426, 27.897465, 34.745522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737879, 28.131983, 33.971382>,  <30.318048, 27.680780, 34.093658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737879, 28.131983, 33.971382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871195, 28.217228, 34.338753>,  <29.951185, 28.268375, 34.559174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871195, 28.217228, 34.338753>,  <29.737879, 28.131983, 33.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871195, 28.217228, 34.338753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109956, 0.976257, -0.186633,
		-0.936390, -0.038783, 0.348811,
		0.333291, 0.213115, 0.918422,
		29.971182, 28.281162, 34.614281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191034, 28.612894, 34.355423>,  <29.737879, 28.131983, 33.971382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191034, 28.612894, 34.355423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527817, 28.673317, 34.562611>,  <29.729887, 28.709570, 34.686924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527817, 28.673317, 34.562611>,  <29.191034, 28.612894, 34.355423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527817, 28.673317, 34.562611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070614, 0.982602, -0.171777,
		-0.534905, 0.108053, 0.837974,
		0.841956, 0.151057, 0.517969,
		29.780403, 28.718634, 34.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089367, 29.130028, 34.743500>,  <29.191034, 28.612894, 34.355423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089367, 29.130028, 34.743500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488829, 29.148224, 34.753448>,  <29.728506, 29.159142, 34.759418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488829, 29.148224, 34.753448>,  <29.089367, 29.130028, 34.743500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488829, 29.148224, 34.753448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040135, 0.982014, -0.184496,
		-0.032818, 0.183249, 0.982519,
		0.998655, 0.045488, 0.024873,
		29.788425, 29.161871, 34.760910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255127, 29.678223, 35.165730>,  <29.089367, 29.130028, 34.743500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255127, 29.678223, 35.165730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596676, 29.638481, 34.961365>,  <29.801605, 29.614637, 34.838745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596676, 29.638481, 34.961365>,  <29.255127, 29.678223, 35.165730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596676, 29.638481, 34.961365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080605, 0.995012, -0.058776,
		0.514200, 0.009006, 0.857623,
		0.853874, -0.099351, -0.510909,
		29.852839, 29.608675, 34.808090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733412, 30.135254, 35.488525>,  <29.255127, 29.678223, 35.165730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733412, 30.135254, 35.488525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875216, 30.084541, 35.117958>,  <29.960297, 30.054113, 34.895618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875216, 30.084541, 35.117958>,  <29.733412, 30.135254, 35.488525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875216, 30.084541, 35.117958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316885, 0.948426, -0.008534,
		0.879720, -0.290542, 0.376401,
		0.354509, -0.126783, -0.926418,
		29.981567, 30.046507, 34.840034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282568, 30.547150, 35.587406>,  <29.733412, 30.135254, 35.488525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282568, 30.547150, 35.587406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269867, 30.489712, 35.191757>,  <30.262247, 30.455248, 34.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269867, 30.489712, 35.191757>,  <30.282568, 30.547150, 35.587406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269867, 30.489712, 35.191757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005467, 0.989586, -0.143838,
		0.999481, -0.009974, -0.030635,
		-0.031751, -0.143596, -0.989127,
		30.260342, 30.446632, 34.895020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797514, 30.930958, 35.233765>,  <30.282568, 30.547150, 35.587406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797514, 30.930958, 35.233765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510792, 30.867941, 34.962067>,  <30.338758, 30.830132, 34.799049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510792, 30.867941, 34.962067>,  <30.797514, 30.930958, 35.233765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510792, 30.867941, 34.962067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076486, 0.986028, -0.147983,
		0.693068, -0.054122, -0.718838,
		-0.716803, -0.157543, -0.679244,
		30.295752, 30.820679, 34.758293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995689, 31.374636, 34.714367>,  <30.797514, 30.930958, 35.233765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995689, 31.374636, 34.714367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605288, 31.306499, 34.660110>,  <30.371046, 31.265617, 34.627556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605288, 31.306499, 34.660110>,  <30.995689, 31.374636, 34.714367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605288, 31.306499, 34.660110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152638, 0.979463, -0.131736,
		0.155294, -0.107872, -0.981961,
		-0.976004, -0.170343, -0.135640,
		30.312487, 31.255396, 34.619419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827414, 31.742699, 34.067146>,  <30.995689, 31.374636, 34.714367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827414, 31.742699, 34.067146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502108, 31.715631, 34.298325>,  <30.306925, 31.699390, 34.437031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502108, 31.715631, 34.298325>,  <30.827414, 31.742699, 34.067146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502108, 31.715631, 34.298325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202759, 0.963924, -0.172453,
		-0.545425, -0.257434, -0.797646,
		-0.813265, -0.067670, 0.577945,
		30.258127, 31.695330, 34.471706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206593, 31.982176, 33.588207>,  <30.827414, 31.742699, 34.067146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206593, 31.982176, 33.588207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071655, 31.992023, 33.964630>,  <29.990692, 31.997932, 34.190483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071655, 31.992023, 33.964630>,  <30.206593, 31.982176, 33.588207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071655, 31.992023, 33.964630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286644, 0.949503, -0.127593,
		-0.896680, -0.312792, -0.313253,
		-0.337345, 0.024618, 0.941059,
		29.970451, 31.999409, 34.246948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503311, 32.255356, 33.528732>,  <30.206593, 31.982176, 33.588207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503311, 32.255356, 33.528732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615807, 32.322128, 33.906734>,  <29.683304, 32.362190, 34.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615807, 32.322128, 33.906734>,  <29.503311, 32.255356, 33.528732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615807, 32.322128, 33.906734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192365, 0.974573, -0.114905,
		-0.940160, -0.149471, 0.306200,
		0.281239, 0.166931, 0.945007,
		29.700178, 32.372208, 34.190235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974794, 32.689144, 33.880581>,  <29.503311, 32.255356, 33.528732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974794, 32.689144, 33.880581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298117, 32.729042, 34.112682>,  <29.492109, 32.752979, 34.251942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298117, 32.729042, 34.112682>,  <28.974794, 32.689144, 33.880581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298117, 32.729042, 34.112682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144773, 0.988958, 0.031672,
		-0.570688, -0.109606, 0.813819,
		0.808304, 0.099744, 0.580255,
		29.540607, 32.758965, 34.286758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797510, 33.276619, 34.298084>,  <28.974794, 32.689144, 33.880581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797510, 33.276619, 34.298084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192019, 33.258774, 34.361687>,  <29.428722, 33.248066, 34.399849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192019, 33.258774, 34.361687>,  <28.797510, 33.276619, 34.298084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192019, 33.258774, 34.361687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033532, 0.996861, 0.071716,
		-0.161704, -0.065400, 0.984670,
		0.986269, -0.044614, 0.159003,
		29.487900, 33.245388, 34.409389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978960, 33.637917, 34.901291>,  <28.797510, 33.276619, 34.298084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978960, 33.637917, 34.901291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331480, 33.608959, 34.714500>,  <29.542992, 33.591583, 34.602425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331480, 33.608959, 34.714500>,  <28.978960, 33.637917, 34.901291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331480, 33.608959, 34.714500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063996, 0.997376, -0.033850,
		0.468204, -0.000053, 0.883621,
		0.881300, -0.072397, -0.466978,
		29.595871, 33.587238, 34.574406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318851, 34.073750, 35.272896>,  <28.978960, 33.637917, 34.901291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318851, 34.073750, 35.272896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492296, 34.025982, 34.915634>,  <29.596363, 33.997322, 34.701279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492296, 34.025982, 34.915634>,  <29.318851, 34.073750, 35.272896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492296, 34.025982, 34.915634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035524, 0.992674, -0.115482,
		0.900400, 0.018346, 0.434676,
		0.433610, -0.119421, -0.893152,
		29.622379, 33.990154, 34.647690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761322, 34.603619, 35.291794>,  <29.318851, 34.073750, 35.272896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761322, 34.603619, 35.291794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710489, 34.517933, 34.904400>,  <29.679991, 34.466522, 34.671963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710489, 34.517933, 34.904400>,  <29.761322, 34.603619, 35.291794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710489, 34.517933, 34.904400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016931, 0.976727, -0.213818,
		0.991748, -0.010775, -0.127749,
		-0.127079, -0.214216, -0.968485,
		29.672365, 34.453667, 34.613853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255081, 34.909489, 34.875801>,  <29.761322, 34.603619, 35.291794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255081, 34.909489, 34.875801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929565, 34.862370, 34.648163>,  <29.734255, 34.834099, 34.511581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929565, 34.862370, 34.648163>,  <30.255081, 34.909489, 34.875801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929565, 34.862370, 34.648163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004998, 0.980624, -0.195834,
		0.581136, -0.156524, -0.798612,
		-0.813791, -0.117798, -0.569094,
		29.685429, 34.827030, 34.477436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342573, 35.123753, 34.085709>,  <30.255081, 34.909489, 34.875801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342573, 35.123753, 34.085709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972157, 35.171440, 34.228947>,  <29.749907, 35.200054, 34.314888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972157, 35.171440, 34.228947>,  <30.342573, 35.123753, 34.085709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972157, 35.171440, 34.228947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050066, 0.979216, -0.196544,
		-0.374086, -0.164079, -0.912763,
		-0.926041, 0.119223, 0.358096,
		29.694344, 35.207207, 34.336376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918486, 35.040138, 34.587372>,  <30.342573, 35.123753, 34.085709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918486, 35.040138, 34.587372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259195, 35.198917, 34.450600>,  <31.463621, 35.294186, 34.368538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259195, 35.198917, 34.450600>,  <30.918486, 35.040138, 34.587372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259195, 35.198917, 34.450600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243878, 0.277217, 0.929341,
		0.463687, -0.874977, 0.139319,
		0.851773, 0.396947, -0.341929,
		31.514727, 35.318001, 34.348022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350805, 34.730350, 34.984127>,  <30.918486, 35.040138, 34.587372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350805, 34.730350, 34.984127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460300, 35.086353, 34.838276>,  <31.525997, 35.299953, 34.750763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460300, 35.086353, 34.838276>,  <31.350805, 34.730350, 34.984127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460300, 35.086353, 34.838276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156602, 0.332811, 0.929899,
		0.948970, -0.311649, -0.048274,
		0.273736, 0.890007, -0.364633,
		31.542421, 35.353355, 34.728886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075783, 34.863918, 35.124706>,  <31.350805, 34.730350, 34.984127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075783, 34.863918, 35.124706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828520, 35.178314, 35.120758>,  <31.680162, 35.366951, 35.118389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828520, 35.178314, 35.120758>,  <32.075783, 34.863918, 35.124706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828520, 35.178314, 35.120758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229791, 0.192704, 0.953971,
		0.751719, 0.587433, -0.299735,
		-0.618155, 0.785994, -0.009873,
		31.643074, 35.414112, 35.117798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419064, 35.578041, 35.397503>,  <32.075783, 34.863918, 35.124706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419064, 35.578041, 35.397503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032978, 35.510170, 35.477070>,  <31.801327, 35.469448, 35.524811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032978, 35.510170, 35.477070>,  <32.419064, 35.578041, 35.397503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032978, 35.510170, 35.477070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161522, 0.211275, 0.963988,
		-0.205591, 0.962587, -0.176520,
		-0.965216, -0.169675, 0.198916,
		31.743414, 35.459267, 35.536743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140442, 36.141006, 35.787804>,  <32.419064, 35.578041, 35.397503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140442, 36.141006, 35.787804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980238, 35.778694, 35.843166>,  <31.884115, 35.561306, 35.876385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980238, 35.778694, 35.843166>,  <32.140442, 36.141006, 35.787804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980238, 35.778694, 35.843166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245814, 0.039300, 0.968520,
		-0.882704, 0.421925, 0.206913,
		-0.400512, -0.905778, 0.138405,
		31.860085, 35.506962, 35.884689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476833, 36.163654, 36.145969>,  <32.140442, 36.141006, 35.787804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476833, 36.163654, 36.145969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722557, 35.854187, 36.208023>,  <31.869991, 35.668507, 36.245255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722557, 35.854187, 36.208023>,  <31.476833, 36.163654, 36.145969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722557, 35.854187, 36.208023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048939, 0.233587, 0.971104,
		-0.787547, -0.588965, 0.181356,
		0.614308, -0.773665, 0.155137,
		31.906849, 35.622086, 36.254562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185247, 35.725372, 36.664803>,  <31.476833, 36.163654, 36.145969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185247, 35.725372, 36.664803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572329, 35.624794, 36.657585>,  <31.804577, 35.564445, 36.653255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572329, 35.624794, 36.657585>,  <31.185247, 35.725372, 36.664803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572329, 35.624794, 36.657585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013943, -0.018081, 0.999739,
		-0.251708, -0.967702, -0.013991,
		0.967703, -0.251447, -0.018044,
		31.862640, 35.549358, 36.652172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373878, 35.394207, 37.329109>,  <31.185247, 35.725372, 36.664803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373878, 35.394207, 37.329109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744736, 35.394077, 37.179230>,  <31.967251, 35.393997, 37.089302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744736, 35.394077, 37.179230>,  <31.373878, 35.394207, 37.329109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744736, 35.394077, 37.179230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356677, -0.305649, 0.882814,
		-0.114815, -0.952144, -0.283265,
		0.927146, -0.000326, -0.374701,
		32.022881, 35.393978, 37.066818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706276, 34.709297, 37.461357>,  <31.373878, 35.394207, 37.329109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706276, 34.709297, 37.461357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983408, 34.993965, 37.414848>,  <32.149689, 35.164764, 37.386944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983408, 34.993965, 37.414848>,  <31.706276, 34.709297, 37.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983408, 34.993965, 37.414848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458031, -0.309773, 0.833216,
		0.556953, -0.630533, -0.540585,
		0.692828, 0.711666, -0.116275,
		32.191257, 35.207466, 37.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352207, 34.292076, 37.717808>,  <31.706276, 34.709297, 37.461357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352207, 34.292076, 37.717808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437332, 34.682846, 37.725113>,  <32.488407, 34.917309, 37.729496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437332, 34.682846, 37.725113>,  <32.352207, 34.292076, 37.717808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437332, 34.682846, 37.725113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276802, -0.078199, 0.957740,
		0.937066, -0.198761, -0.287056,
		0.212809, 0.976923, 0.018260,
		32.501175, 34.975922, 37.730591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027390, 34.394032, 37.817051>,  <32.352207, 34.292076, 37.717808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027390, 34.394032, 37.817051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864693, 34.736439, 37.944675>,  <32.767075, 34.941883, 38.021248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864693, 34.736439, 37.944675>,  <33.027390, 34.394032, 37.817051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864693, 34.736439, 37.944675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457424, -0.111481, 0.882233,
		0.790775, 0.504784, -0.346219,
		-0.406740, 0.856017, 0.319057,
		32.742672, 34.993244, 38.040394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550930, 34.885529, 38.114487>,  <33.027390, 34.394032, 37.817051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550930, 34.885529, 38.114487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195667, 34.971451, 38.276985>,  <32.982510, 35.023003, 38.374485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195667, 34.971451, 38.276985>,  <33.550930, 34.885529, 38.114487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195667, 34.971451, 38.276985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371689, -0.184058, 0.909928,
		0.270229, 0.959157, 0.083632,
		-0.888157, 0.214804, 0.406246,
		32.929218, 35.035892, 38.398861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660133, 35.204308, 38.774132>,  <33.550930, 34.885529, 38.114487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660133, 35.204308, 38.774132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271656, 35.115421, 38.808537>,  <33.038570, 35.062088, 38.829178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271656, 35.115421, 38.808537>,  <33.660133, 35.204308, 38.774132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271656, 35.115421, 38.808537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139777, -0.238976, 0.960913,
		-0.192979, 0.945256, 0.263154,
		-0.971196, -0.222219, 0.086007,
		32.980297, 35.048756, 38.834339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666645, 35.261845, 39.413780>,  <33.660133, 35.204308, 38.774132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666645, 35.261845, 39.413780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313694, 35.086327, 39.345829>,  <33.101921, 34.981014, 39.305058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313694, 35.086327, 39.345829>,  <33.666645, 35.261845, 39.413780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313694, 35.086327, 39.345829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057868, -0.459497, 0.886292,
		-0.466965, 0.772216, 0.430843,
		-0.882380, -0.438800, -0.169883,
		33.048981, 34.954685, 39.294865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512821, 35.144070, 40.099510>,  <33.666645, 35.261845, 39.413780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512821, 35.144070, 40.099510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245754, 34.922882, 39.900135>,  <33.085514, 34.790169, 39.780510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245754, 34.922882, 39.900135>,  <33.512821, 35.144070, 40.099510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245754, 34.922882, 39.900135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190238, -0.520578, 0.832350,
		-0.719740, 0.650559, 0.242380,
		-0.667670, -0.552966, -0.498442,
		33.045452, 34.756992, 39.750603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785225, 35.271843, 40.333130>,  <33.512821, 35.144070, 40.099510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785225, 35.271843, 40.333130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841625, 34.905293, 40.183266>,  <32.875465, 34.685364, 40.093346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841625, 34.905293, 40.183266>,  <32.785225, 35.271843, 40.333130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841625, 34.905293, 40.183266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247275, -0.399048, 0.882959,
		-0.958631, -0.031854, -0.282863,
		0.141002, -0.916377, -0.374663,
		32.883926, 34.630379, 40.070866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231991, 34.948769, 40.589291>,  <32.785225, 35.271843, 40.333130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231991, 34.948769, 40.589291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476681, 34.649479, 40.486568>,  <32.623497, 34.469906, 40.424934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476681, 34.649479, 40.486568>,  <32.231991, 34.948769, 40.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476681, 34.649479, 40.486568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213403, -0.468678, 0.857205,
		-0.761739, -0.469575, -0.446378,
		0.611729, -0.748225, -0.256801,
		32.660198, 34.425011, 40.409527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919598, 34.360779, 40.892258>,  <32.231991, 34.948769, 40.589291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919598, 34.360779, 40.892258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287014, 34.224770, 40.811592>,  <32.507465, 34.143166, 40.763191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287014, 34.224770, 40.811592>,  <31.919598, 34.360779, 40.892258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287014, 34.224770, 40.811592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112234, -0.713428, 0.691682,
		-0.379061, -0.612704, -0.693474,
		0.918540, -0.340021, -0.201667,
		32.562576, 34.122765, 40.751091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920061, 33.670361, 40.971252>,  <31.919598, 34.360779, 40.892258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920061, 33.670361, 40.971252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307407, 33.765476, 41.001522>,  <32.539814, 33.822544, 41.019684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307407, 33.765476, 41.001522>,  <31.920061, 33.670361, 40.971252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307407, 33.765476, 41.001522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145829, -0.785337, 0.601648,
		0.202494, -0.571579, -0.795169,
		0.968365, 0.237788, 0.075674,
		32.597916, 33.836811, 41.024223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300171, 33.045765, 40.774933>,  <31.920061, 33.670361, 40.971252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300171, 33.045765, 40.774933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528217, 33.283180, 41.002155>,  <32.665047, 33.425629, 41.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528217, 33.283180, 41.002155>,  <32.300171, 33.045765, 40.774933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528217, 33.283180, 41.002155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289242, -0.792167, 0.537412,
		0.768966, -0.142082, -0.623301,
		0.570115, 0.593536, 0.568053,
		32.699253, 33.461243, 41.172573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035507, 32.655098, 40.943516>,  <32.300171, 33.045765, 40.774933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035507, 32.655098, 40.943516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973160, 32.925186, 41.231899>,  <32.935749, 33.087238, 41.404930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973160, 32.925186, 41.231899>,  <33.035507, 32.655098, 40.943516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973160, 32.925186, 41.231899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363650, -0.639391, 0.677450,
		0.918402, 0.367772, -0.145881,
		-0.155873, 0.675221, 0.720958,
		32.926399, 33.127754, 41.448185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658730, 32.558197, 41.439068>,  <33.035507, 32.655098, 40.943516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658730, 32.558197, 41.439068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360298, 32.751987, 41.621777>,  <33.181240, 32.868263, 41.731403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360298, 32.751987, 41.621777>,  <33.658730, 32.558197, 41.439068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360298, 32.751987, 41.621777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109623, -0.587264, 0.801938,
		0.656768, 0.648384, 0.385037,
		-0.746082, 0.484478, 0.456774,
		33.136475, 32.897331, 41.758808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826130, 32.547886, 42.176815>,  <33.658730, 32.558197, 41.439068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826130, 32.547886, 42.176815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426666, 32.562271, 42.191689>,  <33.186989, 32.570904, 42.200611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426666, 32.562271, 42.191689>,  <33.826130, 32.547886, 42.176815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426666, 32.562271, 42.191689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024082, -0.312877, 0.949488,
		0.045784, 0.949112, 0.311592,
		-0.998661, 0.035967, 0.037181,
		33.127068, 32.573063, 42.202843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732605, 32.830235, 42.887779>,  <33.826130, 32.547886, 42.176815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732605, 32.830235, 42.887779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379200, 32.702644, 42.750572>,  <33.167156, 32.626091, 42.668247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379200, 32.702644, 42.750572>,  <33.732605, 32.830235, 42.887779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379200, 32.702644, 42.750572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265491, -0.262304, 0.927745,
		-0.385899, 0.910744, 0.147065,
		-0.883514, -0.318971, -0.343017,
		33.114147, 32.606953, 42.647667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342934, 32.905758, 43.476200>,  <33.732605, 32.830235, 42.887779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342934, 32.905758, 43.476200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110676, 32.694901, 43.228016>,  <32.971321, 32.568386, 43.079105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110676, 32.694901, 43.228016>,  <33.342934, 32.905758, 43.476200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110676, 32.694901, 43.228016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514140, -0.353496, 0.781473,
		-0.631279, 0.772762, -0.065769,
		-0.580644, -0.527142, -0.620463,
		32.936481, 32.536758, 43.041878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678257, 33.134068, 43.599339>,  <33.342934, 32.905758, 43.476200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678257, 33.134068, 43.599339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673782, 32.763783, 43.448109>,  <32.671097, 32.541611, 43.357372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673782, 32.763783, 43.448109>,  <32.678257, 33.134068, 43.599339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673782, 32.763783, 43.448109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460679, -0.330808, 0.823614,
		-0.887496, 0.183384, -0.422754,
		-0.011187, -0.925709, -0.378072,
		32.670425, 32.486069, 43.334686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097118, 32.866592, 43.800362>,  <32.678257, 33.134068, 43.599339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097118, 32.866592, 43.800362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303059, 32.535862, 43.709778>,  <32.426624, 32.337425, 43.655430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303059, 32.535862, 43.709778>,  <32.097118, 32.866592, 43.800362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303059, 32.535862, 43.709778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432607, -0.478637, 0.764040,
		-0.740119, -0.295403, -0.604120,
		0.514854, -0.826827, -0.226455,
		32.457516, 32.287815, 43.641842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638668, 32.331249, 43.731056>,  <32.097118, 32.866592, 43.800362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638668, 32.331249, 43.731056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005169, 32.189816, 43.806377>,  <32.225071, 32.104954, 43.851570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005169, 32.189816, 43.806377>,  <31.638668, 32.331249, 43.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005169, 32.189816, 43.806377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338004, -0.430063, 0.837138,
		-0.215021, -0.830676, -0.513560,
		0.916253, -0.353587, 0.188299,
		32.280045, 32.083740, 43.862865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496634, 31.752228, 44.051270>,  <31.638668, 32.331249, 43.731056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496634, 31.752228, 44.051270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890368, 31.782740, 44.114849>,  <32.126610, 31.801046, 44.152996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890368, 31.782740, 44.114849>,  <31.496634, 31.752228, 44.051270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890368, 31.782740, 44.114849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107756, -0.453293, 0.884824,
		0.139546, -0.888091, -0.437973,
		0.984335, 0.076280, 0.158952,
		32.185669, 31.805624, 44.162537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762058, 31.096962, 44.198814>,  <31.496634, 31.752228, 44.051270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762058, 31.096962, 44.198814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025387, 31.355734, 44.352745>,  <32.183384, 31.510998, 44.445103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025387, 31.355734, 44.352745>,  <31.762058, 31.096962, 44.198814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025387, 31.355734, 44.352745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080550, -0.447755, 0.890521,
		0.748413, -0.617248, -0.242657,
		0.658323, 0.646932, 0.384825,
		32.222885, 31.549814, 44.468193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122692, 30.683430, 44.723869>,  <31.762058, 31.096962, 44.198814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122692, 30.683430, 44.723869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177250, 31.069839, 44.811684>,  <32.209984, 31.301685, 44.864372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177250, 31.069839, 44.811684>,  <32.122692, 30.683430, 44.723869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177250, 31.069839, 44.811684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003334, -0.222051, 0.975029,
		0.990649, -0.132254, -0.033506,
		0.136391, 0.966024, 0.219533,
		32.218166, 31.359646, 44.877544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740479, 30.697546, 45.154301>,  <32.122692, 30.683430, 44.723869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740479, 30.697546, 45.154301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511395, 31.022247, 45.200008>,  <32.373943, 31.217068, 45.227432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511395, 31.022247, 45.200008>,  <32.740479, 30.697546, 45.154301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511395, 31.022247, 45.200008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047576, -0.106251, 0.993200,
		0.818377, 0.574251, 0.022231,
		-0.572709, 0.811755, 0.114274,
		32.339581, 31.265774, 45.234291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078625, 31.235149, 45.622597>,  <32.740479, 30.697546, 45.154301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078625, 31.235149, 45.622597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682964, 31.292046, 45.637280>,  <32.445568, 31.326183, 45.646088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682964, 31.292046, 45.637280>,  <33.078625, 31.235149, 45.622597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682964, 31.292046, 45.637280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029614, -0.051635, 0.998227,
		0.143884, 0.988484, 0.046863,
		-0.989151, 0.142241, 0.036702,
		32.386219, 31.334719, 45.648289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055183, 31.866714, 46.009998>,  <33.078625, 31.235149, 45.622597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055183, 31.866714, 46.009998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715553, 31.658529, 46.046185>,  <32.511776, 31.533619, 46.067894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715553, 31.658529, 46.046185>,  <33.055183, 31.866714, 46.009998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715553, 31.658529, 46.046185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066710, 0.064236, 0.995703,
		-0.524036, 0.851465, -0.019821,
		-0.849079, -0.520462, 0.090463,
		32.460831, 31.502390, 46.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478497, 32.244720, 46.490234>,  <33.055183, 31.866714, 46.009998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478497, 32.244720, 46.490234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405006, 31.852135, 46.468452>,  <32.360912, 31.616583, 46.455383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405006, 31.852135, 46.468452>,  <32.478497, 32.244720, 46.490234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405006, 31.852135, 46.468452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050210, -0.045954, 0.997681,
		-0.981694, 0.186036, -0.040836,
		-0.183728, -0.981468, -0.054454,
		32.349888, 31.557693, 46.452118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938572, 32.077435, 46.872471>,  <32.478497, 32.244720, 46.490234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938572, 32.077435, 46.872471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098789, 31.710932, 46.869728>,  <32.194920, 31.491032, 46.868084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098789, 31.710932, 46.869728>,  <31.938572, 32.077435, 46.872471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098789, 31.710932, 46.869728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112859, -0.056756, 0.991989,
		-0.909301, -0.396560, -0.126141,
		0.400542, -0.916253, -0.006853,
		32.218952, 31.436056, 46.867672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489227, 31.539299, 47.286850>,  <31.938572, 32.077435, 46.872471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489227, 31.539299, 47.286850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838717, 31.345263, 47.272469>,  <32.048409, 31.228840, 47.263840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838717, 31.345263, 47.272469>,  <31.489227, 31.539299, 47.286850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838717, 31.345263, 47.272469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059166, -0.179346, 0.982005,
		-0.482811, -0.855874, -0.185400,
		0.873724, -0.485093, -0.035951,
		32.100834, 31.199736, 47.261684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422895, 30.985611, 47.673943>,  <31.489227, 31.539299, 47.286850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422895, 30.985611, 47.673943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820892, 30.958824, 47.644264>,  <32.059692, 30.942751, 47.626457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820892, 30.958824, 47.644264>,  <31.422895, 30.985611, 47.673943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820892, 30.958824, 47.644264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063431, -0.150560, 0.986564,
		-0.077236, -0.986330, -0.145559,
		0.994993, -0.066965, -0.074192,
		32.119389, 30.938734, 47.622005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698517, 30.225988, 47.918438>,  <31.422895, 30.985611, 47.673943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698517, 30.225988, 47.918438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999334, 30.484404, 47.970692>,  <32.179825, 30.639452, 48.002045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999334, 30.484404, 47.970692>,  <31.698517, 30.225988, 47.918438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999334, 30.484404, 47.970692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093523, -0.300782, 0.949096,
		0.652443, -0.701546, -0.286620,
		0.752045, 0.646037, 0.130632,
		32.224949, 30.678215, 48.009880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334126, 29.857224, 48.025558>,  <31.698517, 30.225988, 47.918438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334126, 29.857224, 48.025558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360641, 30.218229, 48.195770>,  <32.376553, 30.434834, 48.297897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360641, 30.218229, 48.195770>,  <32.334126, 29.857224, 48.025558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360641, 30.218229, 48.195770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058874, -0.429258, 0.901261,
		0.996062, -0.034691, -0.081589,
		0.066288, 0.902515, 0.425525,
		32.380527, 30.488983, 48.323429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698238, 29.660982, 48.498283>,  <32.334126, 29.857224, 48.025558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698238, 29.660982, 48.498283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644814, 30.037848, 48.621243>,  <32.612759, 30.263966, 48.695019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644814, 30.037848, 48.621243>,  <32.698238, 29.660982, 48.498283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644814, 30.037848, 48.621243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038750, -0.304975, 0.951572,
		0.990283, 0.139005, 0.004225,
		-0.133562, 0.942162, 0.307398,
		32.604744, 30.320496, 48.713463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264172, 29.781240, 49.075123>,  <32.698238, 29.660982, 48.498283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264172, 29.781240, 49.075123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938141, 30.006826, 49.128178>,  <32.742523, 30.142178, 49.160011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938141, 30.006826, 49.128178>,  <33.264172, 29.781240, 49.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938141, 30.006826, 49.128178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104372, -0.082263, 0.991130,
		0.569872, 0.821693, 0.008189,
		-0.815078, 0.563963, 0.132642,
		32.693619, 30.176016, 49.167969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417763, 30.286261, 49.577877>,  <33.264172, 29.781240, 49.075123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417763, 30.286261, 49.577877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020054, 30.245279, 49.565678>,  <32.781429, 30.220692, 49.558357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020054, 30.245279, 49.565678>,  <33.417763, 30.286261, 49.577877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020054, 30.245279, 49.565678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013563, -0.162109, 0.986680,
		-0.106031, 0.981440, 0.159790,
		-0.994270, -0.102452, -0.030500,
		32.721771, 30.214544, 49.556526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123341, 30.560865, 50.195450>,  <33.417763, 30.286261, 49.577877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123341, 30.560865, 50.195450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841805, 30.312395, 50.057613>,  <32.672882, 30.163313, 49.974911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841805, 30.312395, 50.057613>,  <33.123341, 30.560865, 50.195450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841805, 30.312395, 50.057613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161208, -0.332769, 0.929127,
		-0.691821, 0.709511, 0.134079,
		-0.703844, -0.621175, -0.344596,
		32.630650, 30.126043, 49.954235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585278, 30.604269, 50.653095>,  <33.123341, 30.560865, 50.195450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585278, 30.604269, 50.653095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426952, 30.296183, 50.453056>,  <32.331955, 30.111330, 50.333035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426952, 30.296183, 50.453056>,  <32.585278, 30.604269, 50.653095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426952, 30.296183, 50.453056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481720, -0.289489, 0.827129,
		-0.781841, 0.568296, -0.256445,
		-0.395816, -0.770218, -0.500094,
		32.308208, 30.065117, 50.303028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853741, 30.553686, 50.865051>,  <32.585278, 30.604269, 50.653095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853741, 30.553686, 50.865051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987408, 30.203842, 50.724545>,  <32.067608, 29.993937, 50.640240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987408, 30.203842, 50.724545>,  <31.853741, 30.553686, 50.865051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987408, 30.203842, 50.724545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406301, -0.469959, 0.783618,
		-0.850442, -0.119140, -0.512400,
		0.334168, -0.874611, -0.351266,
		32.087658, 29.941460, 50.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288109, 30.138145, 50.637653>,  <31.853741, 30.553686, 50.865051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288109, 30.138145, 50.637653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587627, 29.890928, 50.733425>,  <31.767338, 29.742598, 50.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587627, 29.890928, 50.733425>,  <31.288109, 30.138145, 50.637653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587627, 29.890928, 50.733425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606579, -0.493403, 0.623390,
		-0.267145, -0.612027, -0.744350,
		0.748796, -0.618042, 0.239432,
		31.812265, 29.705515, 50.805256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040941, 29.467243, 50.760006>,  <31.288109, 30.138145, 50.637653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040941, 29.467243, 50.760006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385302, 29.417515, 50.957344>,  <31.591919, 29.387678, 51.075748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385302, 29.417515, 50.957344>,  <31.040941, 29.467243, 50.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385302, 29.417515, 50.957344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434460, -0.684232, 0.585723,
		0.264746, -0.718590, -0.643069,
		0.860903, -0.124320, 0.493347,
		31.643572, 29.380219, 51.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231422, 28.718863, 50.853382>,  <31.040941, 29.467243, 50.760006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231422, 28.718863, 50.853382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384930, 28.913502, 51.167313>,  <31.477034, 29.030285, 51.355671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384930, 28.913502, 51.167313>,  <31.231422, 28.718863, 50.853382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384930, 28.913502, 51.167313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297569, -0.739398, 0.603940,
		0.874171, -0.465312, -0.138962,
		0.383769, 0.486596, 0.784822,
		31.500061, 29.059481, 51.402760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755928, 28.286684, 51.099957>,  <31.231422, 28.718863, 50.853382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755928, 28.286684, 51.099957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597759, 28.510056, 51.391655>,  <31.502859, 28.644079, 51.566673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597759, 28.510056, 51.391655>,  <31.755928, 28.286684, 51.099957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597759, 28.510056, 51.391655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049122, -0.805675, 0.590318,
		0.917186, 0.197602, 0.346011,
		-0.395420, 0.558428, 0.729247,
		31.479134, 28.677584, 51.610428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022228, 27.847160, 51.565918>,  <31.755928, 28.286684, 51.099957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022228, 27.847160, 51.565918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752249, 28.087097, 51.737797>,  <31.590261, 28.231060, 51.840923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752249, 28.087097, 51.737797>,  <32.022228, 27.847160, 51.565918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752249, 28.087097, 51.737797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119959, -0.663803, 0.738225,
		0.728052, 0.446714, 0.519986,
		-0.674944, 0.599843, 0.429696,
		31.549765, 28.267050, 51.866707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301609, 27.925024, 52.226791>,  <32.022228, 27.847160, 51.565918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301609, 27.925024, 52.226791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903086, 27.952620, 52.206356>,  <31.663971, 27.969177, 52.194096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903086, 27.952620, 52.206356>,  <32.301609, 27.925024, 52.226791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903086, 27.952620, 52.206356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085419, -0.737269, 0.670178,
		0.008569, 0.672068, 0.740440,
		-0.996308, 0.068990, -0.051089,
		31.604193, 27.973316, 52.191029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935745, 28.075865, 52.524872>,  <32.301609, 27.925024, 52.226791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935745, 28.075865, 52.524872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281712, 28.165005, 52.344975>,  <33.489292, 28.218489, 52.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281712, 28.165005, 52.344975>,  <32.935745, 28.075865, 52.524872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281712, 28.165005, 52.344975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408141, -0.833796, 0.371761,
		-0.292144, -0.505097, -0.812114,
		0.864912, 0.222849, -0.449739,
		33.541183, 28.231859, 52.210052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149162, 27.455597, 52.203331>,  <32.935745, 28.075865, 52.524872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149162, 27.455597, 52.203331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460102, 27.685373, 52.305897>,  <33.646664, 27.823240, 52.367435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460102, 27.685373, 52.305897>,  <33.149162, 27.455597, 52.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460102, 27.685373, 52.305897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499792, -0.811491, 0.302803,
		0.382023, -0.107228, -0.917911,
		0.777346, 0.574442, 0.256417,
		33.693306, 27.857706, 52.382820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930439, 27.299124, 51.529934>,  <33.149162, 27.455597, 52.203331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930439, 27.299124, 51.529934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606297, 27.279617, 51.296371>,  <32.411812, 27.267914, 51.156235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606297, 27.279617, 51.296371>,  <32.930439, 27.299124, 51.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606297, 27.279617, 51.296371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561633, 0.219392, -0.797769,
		0.167005, -0.974418, -0.150400,
		-0.810357, -0.048762, -0.583904,
		32.363190, 27.264988, 51.121201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021404, 26.821129, 50.929661>,  <32.930439, 27.299124, 51.529934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021404, 26.821129, 50.929661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779495, 27.123533, 50.829502>,  <32.634350, 27.304977, 50.769409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779495, 27.123533, 50.829502>,  <33.021404, 26.821129, 50.929661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779495, 27.123533, 50.829502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572421, 0.194050, -0.796668,
		-0.553703, -0.625131, -0.550113,
		-0.604771, 0.756014, -0.250392,
		32.598064, 27.350338, 50.754383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170811, 26.954226, 50.259296>,  <33.021404, 26.821129, 50.929661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170811, 26.954226, 50.259296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924259, 27.268562, 50.279388>,  <32.776329, 27.457165, 50.291443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924259, 27.268562, 50.279388>,  <33.170811, 26.954226, 50.259296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924259, 27.268562, 50.279388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210459, 0.225867, -0.951152,
		-0.758801, -0.575703, -0.304608,
		-0.616383, 0.785843, 0.050226,
		32.739346, 27.504314, 50.294456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947712, 26.820431, 49.585175>,  <33.170811, 26.954226, 50.259296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947712, 26.820431, 49.585175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000626, 27.204424, 49.683910>,  <33.032372, 27.434820, 49.743153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000626, 27.204424, 49.683910>,  <32.947712, 26.820431, 49.585175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000626, 27.204424, 49.683910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330695, 0.192018, -0.923997,
		-0.934421, 0.203857, -0.292062,
		0.132282, 0.959985, 0.246840,
		33.040310, 27.492420, 49.757961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715916, 27.175993, 49.023407>,  <32.947712, 26.820431, 49.585175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715916, 27.175993, 49.023407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940689, 27.451777, 49.206223>,  <33.075554, 27.617247, 49.315910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940689, 27.451777, 49.206223>,  <32.715916, 27.175993, 49.023407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940689, 27.451777, 49.206223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306454, 0.339680, -0.889215,
		-0.768322, 0.639738, -0.020410,
		0.561931, 0.689459, 0.457034,
		33.109268, 27.658613, 49.343334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511833, 27.774347, 48.698353>,  <32.715916, 27.175993, 49.023407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511833, 27.774347, 48.698353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878605, 27.814451, 48.852856>,  <33.098667, 27.838512, 48.945557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878605, 27.814451, 48.852856>,  <32.511833, 27.774347, 48.698353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878605, 27.814451, 48.852856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342846, 0.297423, -0.891065,
		-0.204219, 0.949467, 0.238342,
		0.916925, 0.100257, 0.386260,
		33.153683, 27.844528, 48.968735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752567, 28.454075, 48.443665>,  <32.511833, 27.774347, 48.698353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752567, 28.454075, 48.443665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097504, 28.284842, 48.554932>,  <33.304466, 28.183302, 48.621693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097504, 28.284842, 48.554932>,  <32.752567, 28.454075, 48.443665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097504, 28.284842, 48.554932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431570, 0.326840, -0.840787,
		0.264806, 0.845090, 0.464436,
		0.862337, -0.423082, 0.278166,
		33.356205, 28.157917, 48.638382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164818, 28.934227, 48.358437>,  <32.752567, 28.454075, 48.443665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164818, 28.934227, 48.358437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402851, 28.613293, 48.376888>,  <33.545673, 28.420732, 48.387959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402851, 28.613293, 48.376888>,  <33.164818, 28.934227, 48.358437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402851, 28.613293, 48.376888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465503, 0.297337, -0.833605,
		0.655118, 0.517539, 0.550431,
		0.595087, -0.802337, 0.046125,
		33.581379, 28.372591, 48.390724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872906, 29.182583, 48.242683>,  <33.164818, 28.934227, 48.358437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872906, 29.182583, 48.242683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852093, 28.790419, 48.166691>,  <33.839603, 28.555120, 48.121098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852093, 28.790419, 48.166691>,  <33.872906, 29.182583, 48.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852093, 28.790419, 48.166691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413192, 0.152053, -0.897860,
		0.909156, -0.125217, 0.397185,
		-0.052034, -0.980408, -0.189978,
		33.836483, 28.496296, 48.109699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501942, 28.969975, 48.020077>,  <33.872906, 29.182583, 48.242683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501942, 28.969975, 48.020077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284031, 28.664318, 47.881916>,  <34.153282, 28.480925, 47.799019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284031, 28.664318, 47.881916>,  <34.501942, 28.969975, 48.020077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284031, 28.664318, 47.881916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409973, 0.116613, -0.904613,
		0.731530, -0.634421, 0.249748,
		-0.544781, -0.764141, -0.345401,
		34.120598, 28.435076, 47.778297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974182, 28.668188, 47.504810>,  <34.501942, 28.969975, 48.020077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974182, 28.668188, 47.504810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633347, 28.485853, 47.401932>,  <34.428844, 28.376451, 47.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633347, 28.485853, 47.401932>,  <34.974182, 28.668188, 47.504810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633347, 28.485853, 47.401932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227876, 0.119284, -0.966356,
		0.471181, -0.882034, 0.002233,
		-0.852092, -0.455837, -0.257198,
		34.377720, 28.349102, 47.324772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043697, 28.228024, 46.864349>,  <34.974182, 28.668188, 47.504810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043697, 28.228024, 46.864349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652489, 28.310732, 46.853600>,  <34.417763, 28.360357, 46.847149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652489, 28.310732, 46.853600>,  <35.043697, 28.228024, 46.864349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652489, 28.310732, 46.853600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027325, -0.000682, -0.999626,
		-0.206715, -0.978389, -0.004983,
		-0.978020, 0.206774, -0.026875,
		34.359081, 28.372763, 46.845535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712120, 27.674688, 46.438419>,  <35.043697, 28.228024, 46.864349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712120, 27.674688, 46.438419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526951, 28.029245, 46.437126>,  <34.415848, 28.241980, 46.436352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526951, 28.029245, 46.437126>,  <34.712120, 27.674688, 46.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526951, 28.029245, 46.437126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054488, 0.024816, -0.998206,
		-0.884722, -0.462270, -0.059785,
		-0.462924, 0.886392, -0.003233,
		34.388073, 28.295162, 46.436157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381527, 27.659800, 45.819336>,  <34.712120, 27.674688, 46.438419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381527, 27.659800, 45.819336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356960, 28.045063, 45.924065>,  <34.342220, 28.276222, 45.986900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356960, 28.045063, 45.924065>,  <34.381527, 27.659800, 45.819336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356960, 28.045063, 45.924065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091305, 0.266639, -0.959462,
		-0.993927, -0.035024, -0.104318,
		-0.061419, 0.963160, 0.261822,
		34.338535, 28.334011, 46.002613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887291, 27.901852, 45.343678>,  <34.381527, 27.659800, 45.819336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887291, 27.901852, 45.343678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086380, 28.214659, 45.493729>,  <34.205833, 28.402344, 45.583759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086380, 28.214659, 45.493729>,  <33.887291, 27.901852, 45.343678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086380, 28.214659, 45.493729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133216, 0.358443, -0.923998,
		-0.857045, 0.509867, 0.074228,
		0.497723, 0.782019, 0.375124,
		34.235699, 28.449265, 45.606266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635326, 28.496208, 44.968704>,  <33.887291, 27.901852, 45.343678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635326, 28.496208, 44.968704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978264, 28.650188, 45.105389>,  <34.184029, 28.742577, 45.187401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978264, 28.650188, 45.105389>,  <33.635326, 28.496208, 44.968704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978264, 28.650188, 45.105389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144697, 0.456848, -0.877697,
		-0.493981, 0.801937, 0.335977,
		0.857348, 0.384951, 0.341712,
		34.235470, 28.765675, 45.207901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614456, 29.228283, 44.818703>,  <33.635326, 28.496208, 44.968704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614456, 29.228283, 44.818703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998791, 29.130220, 44.870396>,  <34.229389, 29.071383, 44.901413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998791, 29.130220, 44.870396>,  <33.614456, 29.228283, 44.818703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998791, 29.130220, 44.870396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229048, 0.439987, -0.868302,
		0.156008, 0.863893, 0.478906,
		0.960832, -0.245155, 0.129231,
		34.287041, 29.056675, 44.909164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045994, 29.836386, 44.671719>,  <33.614456, 29.228283, 44.818703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045994, 29.836386, 44.671719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281136, 29.515598, 44.629242>,  <34.422218, 29.323126, 44.603756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281136, 29.515598, 44.629242>,  <34.045994, 29.836386, 44.671719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281136, 29.515598, 44.629242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241318, 0.299129, -0.923194,
		0.772137, 0.517077, 0.369373,
		0.587852, -0.801969, -0.106188,
		34.457493, 29.275007, 44.597385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645226, 30.061750, 44.562515>,  <34.045994, 29.836386, 44.671719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645226, 30.061750, 44.562515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671375, 29.695587, 44.403641>,  <34.687065, 29.475889, 44.308315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671375, 29.695587, 44.403641>,  <34.645226, 30.061750, 44.562515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671375, 29.695587, 44.403641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227503, 0.401228, -0.887276,
		0.971580, -0.032355, 0.234488,
		0.065376, -0.915407, -0.397186,
		34.690987, 29.420965, 44.284485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124336, 30.131874, 44.078148>,  <34.645226, 30.061750, 44.562515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124336, 30.131874, 44.078148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913383, 29.807617, 43.976379>,  <34.786812, 29.613062, 43.915318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913383, 29.807617, 43.976379>,  <35.124336, 30.131874, 44.078148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913383, 29.807617, 43.976379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000407, 0.299692, -0.954036,
		0.849631, -0.503033, -0.158381,
		-0.527377, -0.810643, -0.254423,
		34.755169, 29.564425, 43.900051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436470, 29.889179, 43.427296>,  <35.124336, 30.131874, 44.078148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436470, 29.889179, 43.427296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081043, 29.705711, 43.424099>,  <34.867786, 29.595631, 43.422180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081043, 29.705711, 43.424099>,  <35.436470, 29.889179, 43.427296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081043, 29.705711, 43.424099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097171, 0.205222, -0.973880,
		0.448332, -0.864583, -0.226924,
		-0.888569, -0.458672, -0.007995,
		34.814472, 29.568110, 43.421700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456760, 29.552357, 42.873119>,  <35.436470, 29.889179, 43.427296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456760, 29.552357, 42.873119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068619, 29.568319, 42.968472>,  <34.835735, 29.577898, 43.025684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068619, 29.568319, 42.968472>,  <35.456760, 29.552357, 42.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068619, 29.568319, 42.968472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218311, 0.278563, -0.935277,
		-0.103731, -0.959588, -0.261591,
		-0.970351, 0.039909, 0.238384,
		34.777515, 29.580292, 43.039986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036613, 29.065344, 42.448498>,  <35.456760, 29.552357, 42.873119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036613, 29.065344, 42.448498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736092, 29.296955, 42.575157>,  <34.555779, 29.435921, 42.651154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736092, 29.296955, 42.575157>,  <35.036613, 29.065344, 42.448498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736092, 29.296955, 42.575157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365886, 0.033860, -0.930044,
		-0.549243, -0.814605, 0.186418,
		-0.751306, 0.579027, 0.316650,
		34.510700, 29.470663, 42.670151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303410, 28.791492, 42.157097>,  <35.036613, 29.065344, 42.448498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303410, 28.791492, 42.157097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268620, 29.181433, 42.239170>,  <34.247746, 29.415398, 42.288414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268620, 29.181433, 42.239170>,  <34.303410, 28.791492, 42.157097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268620, 29.181433, 42.239170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417095, 0.151412, -0.896162,
		-0.904692, -0.163524, 0.393437,
		-0.086973, 0.974851, 0.205186,
		34.242527, 29.473888, 42.300728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609333, 28.896955, 42.018539>,  <34.303410, 28.791492, 42.157097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609333, 28.896955, 42.018539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801502, 29.247480, 42.004269>,  <33.916805, 29.457796, 41.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801502, 29.247480, 42.004269>,  <33.609333, 28.896955, 42.018539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801502, 29.247480, 42.004269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405158, 0.185675, -0.895194,
		-0.777845, 0.444525, 0.444246,
		0.480421, 0.876312, -0.035677,
		33.945629, 29.510374, 41.993565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118717, 29.372707, 41.870682>,  <33.609333, 28.896955, 42.018539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118717, 29.372707, 41.870682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458500, 29.551052, 41.757805>,  <33.662369, 29.658058, 41.690079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458500, 29.551052, 41.757805>,  <33.118717, 29.372707, 41.870682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458500, 29.551052, 41.757805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428416, 0.270566, -0.862122,
		-0.308034, 0.853231, 0.420847,
		0.849456, 0.445860, -0.282194,
		33.713337, 29.684811, 41.673145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837521, 29.946486, 41.561127>,  <33.118717, 29.372707, 41.870682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837521, 29.946486, 41.561127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223026, 29.951506, 41.454544>,  <33.454330, 29.954517, 41.390594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223026, 29.951506, 41.454544>,  <32.837521, 29.946486, 41.561127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223026, 29.951506, 41.454544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242705, 0.455719, -0.856396,
		0.110680, 0.890035, 0.442253,
		0.963766, 0.012551, -0.266455,
		33.512157, 29.955271, 41.374607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993732, 30.673412, 41.288036>,  <32.837521, 29.946486, 41.561127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993732, 30.673412, 41.288036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265194, 30.413057, 41.151936>,  <33.428070, 30.256844, 41.070274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265194, 30.413057, 41.151936>,  <32.993732, 30.673412, 41.288036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265194, 30.413057, 41.151936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170561, 0.310929, -0.935004,
		0.714376, 0.692580, 0.099999,
		0.678657, -0.650888, -0.340248,
		33.468792, 30.217791, 41.049862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494507, 31.080519, 41.070347>,  <32.993732, 30.673412, 41.288036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494507, 31.080519, 41.070347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533813, 30.727715, 40.886002>,  <33.557396, 30.516031, 40.775394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533813, 30.727715, 40.886002>,  <33.494507, 31.080519, 41.070347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533813, 30.727715, 40.886002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049126, 0.458245, -0.887467,
		0.993947, 0.109848, 0.001700,
		0.098265, -0.882012, -0.460867,
		33.563293, 30.463110, 40.747742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833195, 31.334726, 40.419724>,  <33.494507, 31.080519, 41.070347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833195, 31.334726, 40.419724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713470, 30.956820, 40.366314>,  <33.641636, 30.730076, 40.334267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713470, 30.956820, 40.366314>,  <33.833195, 31.334726, 40.419724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713470, 30.956820, 40.366314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169945, 0.190488, -0.966868,
		0.938898, -0.266706, -0.217574,
		-0.299314, -0.944766, -0.133524,
		33.623676, 30.673389, 40.326256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230255, 31.105396, 39.926155>,  <33.833195, 31.334726, 40.419724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230255, 31.105396, 39.926155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896275, 30.885960, 39.908726>,  <33.695885, 30.754297, 39.898270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896275, 30.885960, 39.908726>,  <34.230255, 31.105396, 39.926155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896275, 30.885960, 39.908726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063883, 0.175265, -0.982447,
		0.546600, -0.817514, -0.181384,
		-0.834954, -0.548592, -0.043575,
		33.645790, 30.721382, 39.895653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357422, 30.830057, 39.372028>,  <34.230255, 31.105396, 39.926155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357422, 30.830057, 39.372028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965130, 30.782722, 39.434200>,  <33.729755, 30.754322, 39.471504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965130, 30.782722, 39.434200>,  <34.357422, 30.830057, 39.372028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965130, 30.782722, 39.434200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178234, 0.216404, -0.959897,
		0.079955, -0.969106, -0.233326,
		-0.980734, -0.118335, 0.155425,
		33.670910, 30.747223, 39.480827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116665, 30.560078, 38.829128>,  <34.357422, 30.830057, 39.372028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116665, 30.560078, 38.829128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779587, 30.700665, 38.992264>,  <33.577339, 30.785017, 39.090145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779587, 30.700665, 38.992264>,  <34.116665, 30.560078, 38.829128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779587, 30.700665, 38.992264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312906, 0.296724, -0.902244,
		-0.438125, -0.887934, -0.140073,
		-0.842696, 0.351466, 0.407842,
		33.526779, 30.806105, 39.114616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571320, 30.341848, 38.382900>,  <34.116665, 30.560078, 38.829128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571320, 30.341848, 38.382900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449646, 30.662056, 38.589451>,  <33.376640, 30.854179, 38.713379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449646, 30.662056, 38.589451>,  <33.571320, 30.341848, 38.382900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449646, 30.662056, 38.589451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308065, 0.430269, -0.848507,
		-0.901425, -0.417182, 0.115729,
		-0.304187, 0.800517, 0.516375,
		33.358391, 30.902210, 38.744362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091805, 30.442106, 37.925625>,  <33.571320, 30.341848, 38.382900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091805, 30.442106, 37.925625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141380, 30.775082, 38.141655>,  <33.171127, 30.974867, 38.271275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141380, 30.775082, 38.141655>,  <33.091805, 30.442106, 37.925625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141380, 30.775082, 38.141655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232899, 0.553475, -0.799640,
		-0.964571, -0.026677, 0.262472,
		0.123939, 0.832438, 0.540079,
		33.178562, 31.024813, 38.303680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465897, 30.816687, 37.721069>,  <33.091805, 30.442106, 37.925625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465897, 30.816687, 37.721069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728710, 31.077137, 37.873039>,  <32.886398, 31.233408, 37.964222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728710, 31.077137, 37.873039>,  <32.465897, 30.816687, 37.721069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728710, 31.077137, 37.873039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274797, 0.676158, -0.683591,
		-0.701992, 0.344740, 0.623186,
		0.657034, 0.651125, 0.379924,
		32.925819, 31.272474, 37.987015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073578, 31.417826, 37.589886>,  <32.465897, 30.816687, 37.721069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073578, 31.417826, 37.589886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441559, 31.545710, 37.680634>,  <32.662350, 31.622440, 37.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441559, 31.545710, 37.680634>,  <32.073578, 31.417826, 37.589886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441559, 31.545710, 37.680634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076467, 0.713928, -0.696031,
		-0.384496, 0.622969, 0.681229,
		0.919954, 0.319712, 0.226866,
		32.717545, 31.641623, 37.748692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055283, 32.199326, 37.700550>,  <32.073578, 31.417826, 37.589886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055283, 32.199326, 37.700550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417915, 32.078316, 37.582844>,  <32.635494, 32.005711, 37.512218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417915, 32.078316, 37.582844>,  <32.055283, 32.199326, 37.700550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417915, 32.078316, 37.582844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015392, 0.720493, -0.693292,
		0.421758, 0.623994, 0.657839,
		0.906578, -0.302527, -0.294269,
		32.689888, 31.987558, 37.494564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435410, 32.833298, 37.656204>,  <32.055283, 32.199326, 37.700550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435410, 32.833298, 37.656204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649982, 32.573730, 37.440372>,  <32.778725, 32.417992, 37.310875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649982, 32.573730, 37.440372>,  <32.435410, 32.833298, 37.656204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649982, 32.573730, 37.440372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107551, 0.686704, -0.718937,
		0.837061, 0.327630, 0.438163,
		0.536434, -0.648919, -0.539576,
		32.810913, 32.379055, 37.278500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954163, 33.269161, 37.404011>,  <32.435410, 32.833298, 37.656204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954163, 33.269161, 37.404011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004440, 32.949745, 37.168541>,  <33.034607, 32.758095, 37.027260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004440, 32.949745, 37.168541>,  <32.954163, 33.269161, 37.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004440, 32.949745, 37.168541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064836, 0.598720, -0.798330,
		0.989948, 0.062178, 0.127030,
		0.125694, -0.798541, -0.588670,
		33.042149, 32.710182, 36.991940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515778, 33.433586, 36.882607>,  <32.954163, 33.269161, 37.404011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515778, 33.433586, 36.882607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298676, 33.136074, 36.726547>,  <33.168415, 32.957569, 36.632912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298676, 33.136074, 36.726547>,  <33.515778, 33.433586, 36.882607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298676, 33.136074, 36.726547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006292, 0.460909, -0.887425,
		0.839869, -0.484107, -0.245479,
		-0.542752, -0.743776, -0.390149,
		33.135849, 32.912941, 36.609501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926418, 33.105221, 36.299683>,  <33.515778, 33.433586, 36.882607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926418, 33.105221, 36.299683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553276, 32.997215, 36.204288>,  <33.329391, 32.932411, 36.147053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553276, 32.997215, 36.204288>,  <33.926418, 33.105221, 36.299683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553276, 32.997215, 36.204288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122255, 0.385426, -0.914604,
		0.338874, -0.882349, -0.326536,
		-0.932855, -0.270015, -0.238482,
		33.273418, 32.916210, 36.132744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578892, 33.498421, 36.385418>,  <33.926418, 33.105221, 36.299683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578892, 33.498421, 36.385418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862949, 33.422192, 36.114307>,  <35.033382, 33.376453, 35.951641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862949, 33.422192, 36.114307>,  <34.578892, 33.498421, 36.385418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862949, 33.422192, 36.114307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677313, -0.077899, 0.731560,
		-0.192210, -0.978578, 0.073755,
		0.710143, -0.190568, -0.677776,
		35.075993, 33.365021, 35.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920418, 32.924194, 36.553692>,  <34.578892, 33.498421, 36.385418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920418, 32.924194, 36.553692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214592, 33.093044, 36.341671>,  <35.391094, 33.194355, 36.214458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214592, 33.093044, 36.341671>,  <34.920418, 32.924194, 36.553692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214592, 33.093044, 36.341671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651279, -0.224463, 0.724881,
		0.187011, -0.878310, -0.439996,
		0.735433, 0.422121, -0.530048,
		35.435223, 33.219681, 36.182655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426823, 32.349892, 36.271183>,  <34.920418, 32.924194, 36.553692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426823, 32.349892, 36.271183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552471, 32.716316, 36.370911>,  <35.627861, 32.936172, 36.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552471, 32.716316, 36.370911>,  <35.426823, 32.349892, 36.271183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552471, 32.716316, 36.370911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566649, -0.391614, 0.724947,
		0.761732, -0.086446, -0.642099,
		0.314123, 0.916060, 0.249320,
		35.646709, 32.991135, 36.445705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162228, 32.271534, 36.263641>,  <35.426823, 32.349892, 36.271183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162228, 32.271534, 36.263641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076553, 32.598011, 36.478287>,  <36.025146, 32.793896, 36.607075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076553, 32.598011, 36.478287>,  <36.162228, 32.271534, 36.263641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076553, 32.598011, 36.478287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705570, -0.250630, 0.662839,
		0.675495, 0.520590, -0.522199,
		-0.214189, 0.816193, 0.536612,
		36.012299, 32.842869, 36.639271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800060, 32.523785, 36.435703>,  <36.162228, 32.271534, 36.263641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800060, 32.523785, 36.435703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566044, 32.698921, 36.708763>,  <36.425632, 32.804005, 36.872601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566044, 32.698921, 36.708763>,  <36.800060, 32.523785, 36.435703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566044, 32.698921, 36.708763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527849, -0.433469, 0.730397,
		0.615710, 0.787652, 0.022482,
		-0.585044, 0.437846, 0.682652,
		36.390530, 32.830276, 36.913559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216476, 32.691837, 36.926041>,  <36.800060, 32.523785, 36.435703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216476, 32.691837, 36.926041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864738, 32.703087, 37.116180>,  <36.653694, 32.709835, 37.230267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864738, 32.703087, 37.116180>,  <37.216476, 32.691837, 36.926041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864738, 32.703087, 37.116180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435659, -0.355470, 0.826948,
		0.192232, 0.934264, 0.300328,
		-0.879345, 0.028125, 0.475354,
		36.600933, 32.711525, 37.258785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412670, 33.106430, 37.570072>,  <37.216476, 32.691837, 36.926041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412670, 33.106430, 37.570072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060780, 32.929691, 37.640343>,  <36.849648, 32.823650, 37.682507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060780, 32.929691, 37.640343>,  <37.412670, 33.106430, 37.570072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060780, 32.929691, 37.640343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341733, -0.330616, 0.879722,
		-0.330616, 0.833947, 0.441843,
		-0.879722, -0.441843, 0.175680,
		36.796864, 32.797138, 37.693047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276901, 33.217770, 38.182823>,  <37.412670, 33.106430, 37.570072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276901, 33.217770, 38.182823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027508, 32.911369, 38.120205>,  <36.877872, 32.727528, 38.082634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027508, 32.911369, 38.120205>,  <37.276901, 33.217770, 38.182823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027508, 32.911369, 38.120205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383361, -0.474035, 0.792670,
		-0.681396, 0.434203, 0.589209,
		-0.623485, -0.766002, -0.156550,
		36.840462, 32.681568, 38.073238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839565, 33.156513, 38.828320>,  <37.276901, 33.217770, 38.182823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839565, 33.156513, 38.828320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852417, 32.810234, 38.628510>,  <36.860126, 32.602467, 38.508621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852417, 32.810234, 38.628510>,  <36.839565, 33.156513, 38.828320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852417, 32.810234, 38.628510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338640, -0.460799, 0.820359,
		-0.940368, -0.195515, 0.278357,
		0.032126, -0.865701, -0.499529,
		36.862057, 32.550522, 38.478649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431244, 32.610989, 39.207798>,  <36.839565, 33.156513, 38.828320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431244, 32.610989, 39.207798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665543, 32.400002, 38.961651>,  <36.806122, 32.273411, 38.813961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665543, 32.400002, 38.961651>,  <36.431244, 32.610989, 39.207798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665543, 32.400002, 38.961651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337313, -0.531722, 0.776847,
		-0.736964, -0.662610, -0.133536,
		0.585751, -0.527465, -0.615367,
		36.841267, 32.241760, 38.777042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355988, 31.930275, 39.443665>,  <36.431244, 32.610989, 39.207798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355988, 31.930275, 39.443665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686768, 31.885225, 39.223316>,  <36.885235, 31.858196, 39.091106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686768, 31.885225, 39.223316>,  <36.355988, 31.930275, 39.443665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686768, 31.885225, 39.223316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299997, -0.740254, 0.601686,
		-0.475549, -0.662828, -0.578370,
		0.826955, -0.112622, -0.550874,
		36.934853, 31.851439, 39.058056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366425, 31.227825, 39.149117>,  <36.355988, 31.930275, 39.443665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366425, 31.227825, 39.149117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742313, 31.358997, 39.187855>,  <36.967846, 31.437700, 39.211098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742313, 31.358997, 39.187855>,  <36.366425, 31.227825, 39.149117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742313, 31.358997, 39.187855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248506, -0.849539, 0.465326,
		0.234865, -0.413213, -0.879826,
		0.939725, 0.327931, 0.096842,
		37.024231, 31.457376, 39.216908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783470, 30.677837, 39.008408>,  <36.366425, 31.227825, 39.149117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783470, 30.677837, 39.008408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016380, 30.915491, 39.230385>,  <37.156124, 31.058083, 39.363571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016380, 30.915491, 39.230385>,  <36.783470, 30.677837, 39.008408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016380, 30.915491, 39.230385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267195, -0.784528, 0.559574,
		0.767833, -0.177545, -0.615557,
		0.582271, 0.594133, 0.554947,
		37.191063, 31.093731, 39.396870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402885, 30.327114, 39.207836>,  <36.783470, 30.677837, 39.008408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402885, 30.327114, 39.207836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377110, 30.617729, 39.481476>,  <37.361645, 30.792097, 39.645660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377110, 30.617729, 39.481476>,  <37.402885, 30.327114, 39.207836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377110, 30.617729, 39.481476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095984, -0.677834, 0.728922,
		0.993294, 0.112637, -0.026054,
		-0.064443, 0.726535, 0.684100,
		37.357777, 30.835690, 39.686707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917950, 30.127556, 39.695797>,  <37.402885, 30.327114, 39.207836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917950, 30.127556, 39.695797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716587, 30.403467, 39.903946>,  <37.595772, 30.569014, 40.028835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716587, 30.403467, 39.903946>,  <37.917950, 30.127556, 39.695797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716587, 30.403467, 39.903946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102526, -0.550309, 0.828643,
		0.857946, 0.470494, 0.206308,
		-0.503405, 0.689779, 0.520373,
		37.565567, 30.610401, 40.060059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179581, 30.202248, 40.281475>,  <37.917950, 30.127556, 39.695797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179581, 30.202248, 40.281475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808849, 30.329111, 40.361866>,  <37.586411, 30.405230, 40.410099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808849, 30.329111, 40.361866>,  <38.179581, 30.202248, 40.281475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808849, 30.329111, 40.361866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015291, -0.502933, 0.864190,
		0.375165, 0.804032, 0.461284,
		-0.926832, 0.317160, 0.200978,
		37.530800, 30.424259, 40.422161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250904, 30.447721, 40.974892>,  <38.179581, 30.202248, 40.281475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250904, 30.447721, 40.974892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857849, 30.380571, 40.943287>,  <37.622017, 30.340281, 40.924324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857849, 30.380571, 40.943287>,  <38.250904, 30.447721, 40.974892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857849, 30.380571, 40.943287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019534, -0.517077, 0.855716,
		-0.184508, 0.839315, 0.511378,
		-0.982637, -0.167876, -0.079010,
		37.563057, 30.330208, 40.919582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915253, 30.674831, 41.689560>,  <38.250904, 30.447721, 40.974892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915253, 30.674831, 41.689560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645977, 30.430878, 41.522293>,  <37.484413, 30.284506, 41.421932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645977, 30.430878, 41.522293>,  <37.915253, 30.674831, 41.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645977, 30.430878, 41.522293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014561, -0.554451, 0.832089,
		-0.739330, 0.566240, 0.364368,
		-0.673187, -0.609882, -0.418167,
		37.444019, 30.247913, 41.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376938, 30.607811, 42.221626>,  <37.915253, 30.674831, 41.689560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376938, 30.607811, 42.221626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349377, 30.288340, 41.982506>,  <37.332840, 30.096657, 41.839035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349377, 30.288340, 41.982506>,  <37.376938, 30.607811, 42.221626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349377, 30.288340, 41.982506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160089, -0.582606, 0.796832,
		-0.984695, 0.150605, -0.087716,
		-0.068903, -0.798679, -0.597799,
		37.328705, 30.048737, 41.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782597, 30.218431, 42.497692>,  <37.376938, 30.607811, 42.221626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782597, 30.218431, 42.497692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985779, 29.964556, 42.264744>,  <37.107689, 29.812231, 42.124977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985779, 29.964556, 42.264744>,  <36.782597, 30.218431, 42.497692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985779, 29.964556, 42.264744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121221, -0.722027, 0.681163,
		-0.852811, -0.275406, -0.443696,
		0.507957, -0.634688, -0.582367,
		37.138165, 29.774149, 42.090034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393597, 29.621025, 42.410683>,  <36.782597, 30.218431, 42.497692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393597, 29.621025, 42.410683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770153, 29.496260, 42.359318>,  <36.996086, 29.421400, 42.328499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770153, 29.496260, 42.359318>,  <36.393597, 29.621025, 42.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770153, 29.496260, 42.359318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126724, -0.679851, 0.722318,
		-0.312603, -0.663712, -0.679534,
		0.941393, -0.311912, -0.128415,
		37.052570, 29.402685, 42.320793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298477, 29.003405, 42.479393>,  <36.393597, 29.621025, 42.410683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298477, 29.003405, 42.479393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685459, 29.058277, 42.564449>,  <36.917648, 29.091202, 42.615482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685459, 29.058277, 42.564449>,  <36.298477, 29.003405, 42.479393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685459, 29.058277, 42.564449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100425, -0.563160, 0.820222,
		0.232273, -0.814881, -0.531054,
		0.967452, 0.137184, 0.212641,
		36.975697, 29.099432, 42.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411938, 28.446836, 42.844154>,  <36.298477, 29.003405, 42.479393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411938, 28.446836, 42.844154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730892, 28.676741, 42.917728>,  <36.922264, 28.814682, 42.961872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730892, 28.676741, 42.917728>,  <36.411938, 28.446836, 42.844154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730892, 28.676741, 42.917728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014275, -0.322676, 0.946402,
		0.603304, -0.752019, -0.265501,
		0.797383, 0.574759, 0.183937,
		36.970108, 28.849169, 42.972908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948837, 28.034092, 43.092255>,  <36.411938, 28.446836, 42.844154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948837, 28.034092, 43.092255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055603, 28.397024, 43.222179>,  <37.119663, 28.614784, 43.300133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055603, 28.397024, 43.222179>,  <36.948837, 28.034092, 43.092255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055603, 28.397024, 43.222179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161922, -0.374472, 0.912990,
		0.950019, -0.191098, -0.246870,
		0.266917, 0.907332, 0.324813,
		37.135677, 28.669224, 43.319622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441818, 27.906044, 43.486343>,  <36.948837, 28.034092, 43.092255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441818, 27.906044, 43.486343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335285, 28.274513, 43.599838>,  <37.271366, 28.495594, 43.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335285, 28.274513, 43.599838>,  <37.441818, 27.906044, 43.486343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335285, 28.274513, 43.599838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271909, -0.210609, 0.938994,
		0.924734, 0.327235, -0.194383,
		-0.266333, 0.921174, 0.283736,
		37.255386, 28.550865, 43.684959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938007, 28.186533, 43.960815>,  <37.441818, 27.906044, 43.486343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938007, 28.186533, 43.960815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594791, 28.378103, 44.035007>,  <37.388863, 28.493046, 44.079521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594791, 28.378103, 44.035007>,  <37.938007, 28.186533, 43.960815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594791, 28.378103, 44.035007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085864, -0.222288, 0.971193,
		0.506358, 0.849246, 0.149609,
		-0.858038, 0.478925, 0.185476,
		37.337379, 28.521780, 44.090649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038109, 28.249718, 44.595299>,  <37.938007, 28.186533, 43.960815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038109, 28.249718, 44.595299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660038, 28.378281, 44.572208>,  <37.433193, 28.455418, 44.558353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660038, 28.378281, 44.572208>,  <38.038109, 28.249718, 44.595299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660038, 28.378281, 44.572208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084587, -0.070243, 0.993937,
		0.315403, 0.944332, 0.093580,
		-0.945180, 0.321407, -0.057723,
		37.376484, 28.474703, 44.554890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960773, 28.868881, 45.116943>,  <38.038109, 28.249718, 44.595299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960773, 28.868881, 45.116943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598103, 28.722149, 45.033646>,  <37.380501, 28.634109, 44.983669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598103, 28.722149, 45.033646>,  <37.960773, 28.868881, 45.116943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598103, 28.722149, 45.033646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244621, 0.055082, 0.968053,
		-0.343640, 0.928656, -0.139676,
		-0.906682, -0.366829, -0.208241,
		37.326099, 28.612101, 44.971172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496296, 29.181974, 45.566933>,  <37.960773, 28.868881, 45.116943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496296, 29.181974, 45.566933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277679, 28.865425, 45.457375>,  <37.146511, 28.675495, 45.391640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277679, 28.865425, 45.457375>,  <37.496296, 29.181974, 45.566933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277679, 28.865425, 45.457375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210216, -0.186943, 0.959615,
		-0.810618, 0.582047, -0.064187,
		-0.546542, -0.791375, -0.273895,
		37.113716, 28.628014, 45.375206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905144, 29.173086, 45.989265>,  <37.496296, 29.181974, 45.566933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905144, 29.173086, 45.989265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013283, 28.811356, 45.857143>,  <37.078167, 28.594316, 45.777870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013283, 28.811356, 45.857143>,  <36.905144, 29.173086, 45.989265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013283, 28.811356, 45.857143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010289, -0.340349, 0.940243,
		-0.962708, -0.257592, -0.082708,
		0.270349, -0.904328, -0.330307,
		37.094387, 28.540058, 45.758053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539101, 28.713400, 46.467720>,  <36.905144, 29.173086, 45.989265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539101, 28.713400, 46.467720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782803, 28.469006, 46.265526>,  <36.929024, 28.322369, 46.144211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782803, 28.469006, 46.265526>,  <36.539101, 28.713400, 46.467720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782803, 28.469006, 46.265526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177352, -0.516312, 0.837835,
		-0.772890, -0.600101, -0.206205,
		0.609251, -0.610984, -0.505481,
		36.965576, 28.285711, 46.113880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280151, 28.025055, 46.659260>,  <36.539101, 28.713400, 46.467720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280151, 28.025055, 46.659260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662239, 28.011259, 46.541714>,  <36.891491, 28.002981, 46.471184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662239, 28.011259, 46.541714>,  <36.280151, 28.025055, 46.659260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662239, 28.011259, 46.541714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238589, -0.497606, 0.833945,
		-0.174994, -0.866717, -0.467095,
		0.955224, -0.034492, -0.293868,
		36.948807, 28.000912, 46.453552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399288, 27.339411, 46.595127>,  <36.280151, 28.025055, 46.659260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399288, 27.339411, 46.595127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746567, 27.530943, 46.647217>,  <36.954933, 27.645863, 46.678471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746567, 27.530943, 46.647217>,  <36.399288, 27.339411, 46.595127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746567, 27.530943, 46.647217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173490, -0.538768, 0.824397,
		0.464907, -0.693144, -0.550828,
		0.868195, 0.478831, 0.130224,
		37.007027, 27.674593, 46.686283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997341, 26.813608, 46.820045>,  <36.399288, 27.339411, 46.595127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997341, 26.813608, 46.820045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127914, 27.166330, 46.956196>,  <37.206257, 27.377964, 47.037888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127914, 27.166330, 46.956196>,  <36.997341, 26.813608, 46.820045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127914, 27.166330, 46.956196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226290, -0.422542, 0.877640,
		0.917733, -0.209466, -0.337476,
		0.326433, 0.881806, 0.340380,
		37.225845, 27.430872, 47.058311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459278, 26.633369, 47.297165>,  <36.997341, 26.813608, 46.820045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459278, 26.633369, 47.297165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470097, 27.026514, 47.370102>,  <37.476585, 27.262402, 47.413864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470097, 27.026514, 47.370102>,  <37.459278, 26.633369, 47.297165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470097, 27.026514, 47.370102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120499, -0.184284, 0.975459,
		0.992345, -0.004408, -0.123417,
		0.027043, 0.982863, 0.182342,
		37.478210, 27.321373, 47.424805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028244, 26.708672, 47.761036>,  <37.459278, 26.633369, 47.297165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028244, 26.708672, 47.761036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802349, 27.036375, 47.800804>,  <37.666813, 27.232998, 47.824665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802349, 27.036375, 47.800804>,  <38.028244, 26.708672, 47.761036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802349, 27.036375, 47.800804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094952, -0.055165, 0.993952,
		0.819790, 0.570762, -0.046637,
		-0.564738, 0.819260, 0.099419,
		37.632927, 27.282154, 47.830631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407158, 27.040123, 48.201511>,  <38.028244, 26.708672, 47.761036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407158, 27.040123, 48.201511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053417, 27.222588, 48.241180>,  <37.841171, 27.332067, 48.264980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053417, 27.222588, 48.241180>,  <38.407158, 27.040123, 48.201511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053417, 27.222588, 48.241180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076548, -0.067864, 0.994754,
		0.460500, 0.887305, 0.025097,
		-0.884353, 0.456163, 0.099173,
		37.788113, 27.359436, 48.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490223, 27.665703, 48.672997>,  <38.407158, 27.040123, 48.201511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490223, 27.665703, 48.672997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096806, 27.593596, 48.677689>,  <37.860756, 27.550331, 48.680504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096806, 27.593596, 48.677689>,  <38.490223, 27.665703, 48.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096806, 27.593596, 48.677689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016501, -0.024976, 0.999552,
		-0.179894, 0.983301, 0.027539,
		-0.983548, -0.180268, 0.011732,
		37.801743, 27.539515, 48.681210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113987, 28.149826, 49.190575>,  <38.490223, 27.665703, 48.672997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113987, 28.149826, 49.190575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897652, 27.815809, 49.150181>,  <37.767853, 27.615398, 49.125946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897652, 27.815809, 49.150181>,  <38.113987, 28.149826, 49.190575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897652, 27.815809, 49.150181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182402, -0.000769, 0.983224,
		-0.821113, 0.550182, -0.151898,
		-0.540835, -0.835044, -0.100986,
		37.735401, 27.565296, 49.119884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904518, 28.371304, 49.790394>,  <38.113987, 28.149826, 49.190575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904518, 28.371304, 49.790394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978336, 28.699192, 50.007278>,  <38.022629, 28.895926, 50.137409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978336, 28.699192, 50.007278>,  <37.904518, 28.371304, 49.790394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978336, 28.699192, 50.007278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037369, 0.545440, -0.837317,
		-0.982113, 0.174787, 0.070027,
		0.184547, 0.819723, 0.542215,
		38.033699, 28.945108, 50.169945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415646, 28.944803, 49.683464>,  <37.904518, 28.371304, 49.790394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415646, 28.944803, 49.683464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758526, 29.126766, 49.780018>,  <37.964252, 29.235945, 49.837952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758526, 29.126766, 49.780018>,  <37.415646, 28.944803, 49.683464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758526, 29.126766, 49.780018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069639, 0.566809, -0.820901,
		-0.510253, 0.686866, 0.517548,
		0.857200, 0.454909, 0.241384,
		38.015686, 29.263239, 49.852432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279774, 29.555443, 49.534618>,  <37.415646, 28.944803, 49.683464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279774, 29.555443, 49.534618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678204, 29.520109, 49.537045>,  <37.917259, 29.498909, 49.538498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678204, 29.520109, 49.537045>,  <37.279774, 29.555443, 49.534618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678204, 29.520109, 49.537045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061943, 0.646296, -0.760569,
		0.063264, 0.757958, 0.649229,
		0.996073, -0.088332, 0.006063,
		37.977024, 29.493610, 49.538864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584648, 30.233202, 49.338661>,  <37.279774, 29.555443, 49.534618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584648, 30.233202, 49.338661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868450, 29.959179, 49.272572>,  <38.038731, 29.794765, 49.232918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868450, 29.959179, 49.272572>,  <37.584648, 30.233202, 49.338661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868450, 29.959179, 49.272572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330817, 0.530806, -0.780260,
		0.622225, 0.498939, 0.603238,
		0.709504, -0.685059, -0.165223,
		38.081303, 29.753662, 49.223003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155567, 30.684963, 49.187271>,  <37.584648, 30.233202, 49.338661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155567, 30.684963, 49.187271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251656, 30.318302, 49.059498>,  <38.309307, 30.098305, 48.982834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251656, 30.318302, 49.059498>,  <38.155567, 30.684963, 49.187271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251656, 30.318302, 49.059498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103773, 0.351437, -0.930442,
		0.965155, 0.190362, 0.179547,
		0.240220, -0.916654, -0.319437,
		38.323723, 30.043306, 48.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827168, 30.711044, 48.797508>,  <38.155567, 30.684963, 49.187271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827168, 30.711044, 48.797508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633614, 30.391172, 48.655319>,  <38.517483, 30.199249, 48.570004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633614, 30.391172, 48.655319>,  <38.827168, 30.711044, 48.797508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633614, 30.391172, 48.655319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094485, 0.356083, -0.929665,
		0.870016, -0.483439, -0.096745,
		-0.483886, -0.799682, -0.355476,
		38.488449, 30.151268, 48.548676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238098, 30.549755, 48.175041>,  <38.827168, 30.711044, 48.797508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238098, 30.549755, 48.175041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886742, 30.362967, 48.134315>,  <38.675926, 30.250893, 48.109882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886742, 30.362967, 48.134315>,  <39.238098, 30.549755, 48.175041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886742, 30.362967, 48.134315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023373, 0.254737, -0.966728,
		0.477372, -0.846785, -0.234674,
		-0.878390, -0.466973, -0.101812,
		38.623226, 30.222874, 48.103771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220177, 30.241055, 47.525280>,  <39.238098, 30.549755, 48.175041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220177, 30.241055, 47.525280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834908, 30.284990, 47.623451>,  <38.603745, 30.311352, 47.682354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834908, 30.284990, 47.623451>,  <39.220177, 30.241055, 47.525280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834908, 30.284990, 47.623451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224791, 0.171906, -0.959123,
		-0.147539, -0.978971, -0.140884,
		-0.963172, 0.109839, 0.245426,
		38.545956, 30.317942, 47.697079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942707, 29.979349, 47.077099>,  <39.220177, 30.241055, 47.525280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942707, 29.979349, 47.077099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630653, 30.189783, 47.212528>,  <38.443420, 30.316044, 47.293785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630653, 30.189783, 47.212528>,  <38.942707, 29.979349, 47.077099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630653, 30.189783, 47.212528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285223, 0.182582, -0.940910,
		-0.556814, -0.830603, 0.007613,
		-0.780132, 0.526083, 0.338571,
		38.396614, 30.347609, 47.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384171, 29.762815, 46.637280>,  <38.942707, 29.979349, 47.077099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384171, 29.762815, 46.637280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229282, 30.087818, 46.811584>,  <38.136349, 30.282820, 46.916168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229282, 30.087818, 46.811584>,  <38.384171, 29.762815, 46.637280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229282, 30.087818, 46.811584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426450, 0.261200, -0.865976,
		-0.817434, -0.521157, 0.245351,
		-0.387224, 0.812509, 0.435761,
		38.113113, 30.331570, 46.942314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842278, 29.753397, 46.373539>,  <38.384171, 29.762815, 46.637280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842278, 29.753397, 46.373539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831463, 30.127876, 46.513710>,  <37.824974, 30.352564, 46.597813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831463, 30.127876, 46.513710>,  <37.842278, 29.753397, 46.373539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831463, 30.127876, 46.513710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405313, 0.310182, -0.859947,
		-0.913778, -0.165288, 0.371066,
		-0.027041, 0.936198, 0.350430,
		37.823349, 30.408735, 46.618839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191574, 30.028345, 46.162319>,  <37.842278, 29.753397, 46.373539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191574, 30.028345, 46.162319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435211, 30.333780, 46.248051>,  <37.581394, 30.517040, 46.299488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435211, 30.333780, 46.248051>,  <37.191574, 30.028345, 46.162319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435211, 30.333780, 46.248051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160472, 0.383309, -0.909573,
		-0.776691, 0.519625, 0.356007,
		0.609097, 0.763587, 0.214327,
		37.617939, 30.562857, 46.312347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759075, 30.691191, 45.928383>,  <37.191574, 30.028345, 46.162319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759075, 30.691191, 45.928383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151882, 30.764797, 45.945240>,  <37.387566, 30.808960, 45.955357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151882, 30.764797, 45.945240>,  <36.759075, 30.691191, 45.928383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151882, 30.764797, 45.945240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041523, 0.428339, -0.902663,
		-0.184156, 0.884683, 0.428279,
		0.982020, 0.184014, 0.042147,
		37.446487, 30.820002, 45.957886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862026, 31.358963, 45.613434>,  <36.759075, 30.691191, 45.928383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862026, 31.358963, 45.613434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223297, 31.187675, 45.601444>,  <37.440060, 31.084904, 45.594250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223297, 31.187675, 45.601444>,  <36.862026, 31.358963, 45.613434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223297, 31.187675, 45.601444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150362, 0.380997, -0.912268,
		0.402072, 0.819432, 0.408496,
		0.903177, -0.428220, -0.029976,
		37.494251, 31.059210, 45.592453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306149, 31.896475, 45.518311>,  <36.862026, 31.358963, 45.613434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306149, 31.896475, 45.518311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462547, 31.556618, 45.376759>,  <37.556385, 31.352703, 45.291828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462547, 31.556618, 45.376759>,  <37.306149, 31.896475, 45.518311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462547, 31.556618, 45.376759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222953, 0.460468, -0.859221,
		0.892982, 0.257051, 0.369470,
		0.390992, -0.849644, -0.353880,
		37.579845, 31.301725, 45.270596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046719, 32.090206, 45.264721>,  <37.306149, 31.896475, 45.518311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046719, 32.090206, 45.264721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989002, 31.726227, 45.109192>,  <37.954372, 31.507839, 45.015877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989002, 31.726227, 45.109192>,  <38.046719, 32.090206, 45.264721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989002, 31.726227, 45.109192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336711, 0.324334, -0.883987,
		0.930487, -0.258472, 0.259589,
		-0.144293, -0.909945, -0.388819,
		37.945713, 31.453243, 44.992546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503155, 32.027004, 44.767742>,  <38.046719, 32.090206, 45.264721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503155, 32.027004, 44.767742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223618, 31.762835, 44.657867>,  <38.055893, 31.604332, 44.591942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223618, 31.762835, 44.657867>,  <38.503155, 32.027004, 44.767742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223618, 31.762835, 44.657867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121802, 0.268541, -0.955537,
		0.704826, -0.701229, -0.107227,
		-0.698845, -0.660427, -0.274685,
		38.013966, 31.564707, 44.575462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753082, 31.700766, 44.307167>,  <38.503155, 32.027004, 44.767742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753082, 31.700766, 44.307167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367897, 31.625849, 44.229576>,  <38.136787, 31.580898, 44.183022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367897, 31.625849, 44.229576>,  <38.753082, 31.700766, 44.307167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367897, 31.625849, 44.229576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133226, 0.294960, -0.946176,
		0.234424, -0.936974, -0.259083,
		-0.962962, -0.187290, -0.193975,
		38.079010, 31.569660, 44.171383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799786, 31.132048, 43.842987>,  <38.753082, 31.700766, 44.307167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799786, 31.132048, 43.842987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449799, 31.322021, 43.805313>,  <38.239807, 31.436007, 43.782707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449799, 31.322021, 43.805313>,  <38.799786, 31.132048, 43.842987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449799, 31.322021, 43.805313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180380, 0.139210, -0.973696,
		-0.449332, -0.868940, -0.207473,
		-0.874965, 0.474937, -0.094187,
		38.187309, 31.464502, 43.777058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529453, 30.959759, 43.228622>,  <38.799786, 31.132048, 43.842987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529453, 30.959759, 43.228622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323532, 31.293211, 43.308662>,  <38.199978, 31.493282, 43.356686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323532, 31.293211, 43.308662>,  <38.529453, 30.959759, 43.228622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323532, 31.293211, 43.308662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100129, 0.290269, -0.951692,
		-0.851442, -0.469898, -0.232901,
		-0.514802, 0.833631, 0.200097,
		38.169090, 31.543301, 43.368690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011768, 31.025162, 42.710815>,  <38.529453, 30.959759, 43.228622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011768, 31.025162, 42.710815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072941, 31.397348, 42.843990>,  <38.109646, 31.620661, 42.923897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072941, 31.397348, 42.843990>,  <38.011768, 31.025162, 42.710815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072941, 31.397348, 42.843990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068130, 0.346026, -0.935748,
		-0.985885, 0.120425, 0.116312,
		0.152934, 0.930464, 0.332937,
		38.118820, 31.676487, 42.943871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571007, 31.435556, 42.322784>,  <38.011768, 31.025162, 42.710815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571007, 31.435556, 42.322784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830082, 31.711025, 42.453156>,  <37.985527, 31.876307, 42.531380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830082, 31.711025, 42.453156>,  <37.571007, 31.435556, 42.322784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830082, 31.711025, 42.453156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102213, 0.502453, -0.858541,
		-0.755019, 0.522752, 0.395824,
		0.647687, 0.688673, 0.325930,
		38.024387, 31.917627, 42.550934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282467, 32.061897, 42.086243>,  <37.571007, 31.435556, 42.322784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282467, 32.061897, 42.086243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668262, 32.129498, 42.167427>,  <37.899742, 32.170055, 42.216137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668262, 32.129498, 42.167427>,  <37.282467, 32.061897, 42.086243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668262, 32.129498, 42.167427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061586, 0.603381, -0.795072,
		-0.256829, 0.779341, 0.571549,
		0.964493, 0.168998, 0.202962,
		37.957611, 32.180199, 42.228317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333485, 32.742355, 41.980766>,  <37.282467, 32.061897, 42.086243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333485, 32.742355, 41.980766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717232, 32.630741, 41.964046>,  <37.947479, 32.563770, 41.954014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717232, 32.630741, 41.964046>,  <37.333485, 32.742355, 41.980766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717232, 32.630741, 41.964046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183095, 0.728406, -0.660228,
		0.214676, 0.625749, 0.749901,
		0.959370, -0.279039, -0.041799,
		38.005043, 32.547031, 41.951508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787506, 33.346092, 42.048721>,  <37.333485, 32.742355, 41.980766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787506, 33.346092, 42.048721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005516, 33.056015, 41.880417>,  <38.136322, 32.881969, 41.779434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005516, 33.056015, 41.880417>,  <37.787506, 33.346092, 42.048721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005516, 33.056015, 41.880417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233599, 0.613327, -0.754494,
		0.805221, 0.312927, 0.503682,
		0.545023, -0.725195, -0.420764,
		38.169022, 32.838455, 41.754189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313023, 33.702343, 41.757923>,  <37.787506, 33.346092, 42.048721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313023, 33.702343, 41.757923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345562, 33.347210, 41.576759>,  <38.365086, 33.134129, 41.468060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345562, 33.347210, 41.576759>,  <38.313023, 33.702343, 41.757923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345562, 33.347210, 41.576759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123169, 0.459889, -0.879393,
		0.989046, 0.015757, 0.146767,
		0.081353, -0.887837, -0.452910,
		38.369968, 33.080860, 41.440887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969513, 33.640148, 41.535961>,  <38.313023, 33.702343, 41.757923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969513, 33.640148, 41.535961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751377, 33.405724, 41.296249>,  <38.620495, 33.265068, 41.152420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751377, 33.405724, 41.296249>,  <38.969513, 33.640148, 41.535961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751377, 33.405724, 41.296249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476849, 0.371079, -0.796815,
		0.689366, -0.720299, 0.077101,
		-0.545335, -0.586063, -0.599283,
		38.587776, 33.229904, 41.116463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393471, 33.555462, 41.029118>,  <38.969513, 33.640148, 41.535961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393471, 33.555462, 41.029118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038055, 33.447773, 40.880512>,  <38.824806, 33.383160, 40.791348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038055, 33.447773, 40.880512>,  <39.393471, 33.555462, 41.029118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038055, 33.447773, 40.880512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213788, 0.473524, -0.854441,
		0.405952, -0.838628, -0.363188,
		-0.888537, -0.269217, -0.371517,
		38.771496, 33.367008, 40.769058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486130, 33.269711, 40.302704>,  <39.393471, 33.555462, 41.029118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486130, 33.269711, 40.302704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103374, 33.383987, 40.323696>,  <38.873722, 33.452553, 40.336292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103374, 33.383987, 40.323696>,  <39.486130, 33.269711, 40.302704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103374, 33.383987, 40.323696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063304, 0.381427, -0.922229,
		-0.283488, -0.879144, -0.383066,
		-0.956884, 0.285691, 0.052477,
		38.816311, 33.469696, 40.339439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155449, 32.985310, 39.636181>,  <39.486130, 33.269711, 40.302704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155449, 32.985310, 39.636181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945320, 33.281857, 39.803234>,  <38.819244, 33.459785, 39.903465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945320, 33.281857, 39.803234>,  <39.155449, 32.985310, 39.636181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945320, 33.281857, 39.803234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068664, 0.452276, -0.889231,
		-0.848131, -0.495806, -0.186684,
		-0.525319, 0.741365, 0.417634,
		38.787724, 33.504265, 39.928524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649353, 33.150513, 39.180832>,  <39.155449, 32.985310, 39.636181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649353, 33.150513, 39.180832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631062, 33.476753, 39.411552>,  <38.620087, 33.672497, 39.549984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631062, 33.476753, 39.411552>,  <38.649353, 33.150513, 39.180832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631062, 33.476753, 39.411552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012881, 0.577838, -0.816050,
		-0.998871, -0.029887, -0.036930,
		-0.045729, 0.815604, 0.576800,
		38.617344, 33.721436, 39.584591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125690, 33.528728, 38.888290>,  <38.649353, 33.150513, 39.180832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125690, 33.528728, 38.888290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374352, 33.764072, 39.095123>,  <38.523548, 33.905277, 39.219223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374352, 33.764072, 39.095123>,  <38.125690, 33.528728, 38.888290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374352, 33.764072, 39.095123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163158, 0.548399, -0.820145,
		-0.766109, 0.594215, 0.244921,
		0.621657, 0.588360, 0.517084,
		38.560848, 33.940578, 39.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980331, 34.167305, 38.614571>,  <38.125690, 33.528728, 38.888290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980331, 34.167305, 38.614571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340012, 34.165764, 38.789574>,  <38.555820, 34.164837, 38.894577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340012, 34.165764, 38.789574>,  <37.980331, 34.167305, 38.614571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340012, 34.165764, 38.789574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349704, 0.607280, -0.713385,
		-0.262941, 0.794479, 0.547418,
		0.899205, -0.003856, 0.437511,
		38.609772, 34.164608, 38.920826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209419, 34.816036, 38.451008>,  <37.980331, 34.167305, 38.614571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209419, 34.816036, 38.451008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545750, 34.640087, 38.577198>,  <38.747547, 34.534519, 38.652912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545750, 34.640087, 38.577198>,  <38.209419, 34.816036, 38.451008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545750, 34.640087, 38.577198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522246, 0.505936, -0.686504,
		0.142362, 0.741987, 0.655124,
		0.840828, -0.439868, 0.315474,
		38.797997, 34.508125, 38.671841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750721, 35.330490, 38.533405>,  <38.209419, 34.816036, 38.451008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750721, 35.330490, 38.533405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972763, 34.998096, 38.518898>,  <39.105988, 34.798660, 38.510193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972763, 34.998096, 38.518898>,  <38.750721, 35.330490, 38.533405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972763, 34.998096, 38.518898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621641, 0.443445, -0.645692,
		0.552646, 0.335881, 0.762736,
		0.555108, -0.830987, -0.036271,
		39.139294, 34.748798, 38.508018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482674, 35.494911, 38.612934>,  <38.750721, 35.330490, 38.533405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482674, 35.494911, 38.612934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486977, 35.147396, 38.414906>,  <39.489559, 34.938889, 38.296089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486977, 35.147396, 38.414906>,  <39.482674, 35.494911, 38.612934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486977, 35.147396, 38.414906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588957, 0.405614, -0.699004,
		0.808092, -0.284055, 0.516042,
		0.010758, -0.868787, -0.495070,
		39.490204, 34.886761, 38.266384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088211, 35.477425, 38.386127>,  <39.482674, 35.494911, 38.612934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088211, 35.477425, 38.386127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918144, 35.192966, 38.162159>,  <39.816105, 35.022293, 38.027779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918144, 35.192966, 38.162159>,  <40.088211, 35.477425, 38.386127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918144, 35.192966, 38.162159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591746, 0.249706, -0.766475,
		0.684889, -0.657207, 0.314650,
		-0.425163, -0.711143, -0.559921,
		39.790596, 34.979622, 37.994183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635262, 35.176140, 38.089603>,  <40.088211, 35.477425, 38.386127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635262, 35.176140, 38.089603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348152, 35.060524, 37.836224>,  <40.175888, 34.991154, 37.684196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348152, 35.060524, 37.836224>,  <40.635262, 35.176140, 38.089603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348152, 35.060524, 37.836224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524118, 0.374616, -0.764829,
		0.458370, -0.880974, -0.117395,
		-0.717773, -0.289045, -0.633447,
		40.132820, 34.973812, 37.646191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978436, 35.009464, 37.453114>,  <40.635262, 35.176140, 38.089603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978436, 35.009464, 37.453114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603237, 35.053326, 37.321579>,  <40.378117, 35.079643, 37.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603237, 35.053326, 37.321579>,  <40.978436, 35.009464, 37.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603237, 35.053326, 37.321579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344858, 0.391227, -0.853238,
		0.035089, -0.913738, -0.404785,
		-0.937998, 0.109654, -0.328838,
		40.321838, 35.086224, 37.222927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820065, 34.551647, 36.894451>,  <40.978436, 35.009464, 37.453114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820065, 34.551647, 36.894451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612915, 34.893475, 36.878830>,  <40.488625, 35.098572, 36.869457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612915, 34.893475, 36.878830>,  <40.820065, 34.551647, 36.894451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612915, 34.893475, 36.878830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385947, 0.192658, -0.902179,
		-0.763448, -0.482285, -0.429590,
		-0.517872, 0.854566, -0.039052,
		40.457554, 35.149845, 36.867115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550732, 34.658264, 36.228848>,  <40.820065, 34.551647, 36.894451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550732, 34.658264, 36.228848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635864, 35.002239, 36.414410>,  <40.686943, 35.208626, 36.525745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635864, 35.002239, 36.414410>,  <40.550732, 34.658264, 36.228848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635864, 35.002239, 36.414410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399916, 0.356525, -0.844368,
		-0.891498, 0.365234, -0.268022,
		0.212836, 0.859939, 0.463904,
		40.699715, 35.260220, 36.553581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243992, 35.402634, 36.043606>,  <40.550732, 34.658264, 36.228848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243992, 35.402634, 36.043606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615116, 35.432079, 36.189888>,  <40.837791, 35.449749, 36.277657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615116, 35.432079, 36.189888>,  <40.243992, 35.402634, 36.043606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615116, 35.432079, 36.189888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323011, 0.331880, -0.886296,
		-0.186618, 0.940445, 0.284144,
		0.927814, 0.073617, 0.365708,
		40.893459, 35.454163, 36.299599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548450, 36.107769, 35.980930>,  <40.243992, 35.402634, 36.043606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548450, 36.107769, 35.980930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796627, 35.794647, 35.961880>,  <40.945534, 35.606773, 35.950451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796627, 35.794647, 35.961880>,  <40.548450, 36.107769, 35.980930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796627, 35.794647, 35.961880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340882, 0.323872, -0.882557,
		0.706295, 0.531340, 0.467788,
		0.620441, -0.782806, -0.047625,
		40.982758, 35.559807, 35.947594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334740, 36.236126, 35.903305>,  <40.548450, 36.107769, 35.980930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334740, 36.236126, 35.903305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267765, 35.935539, 35.648037>,  <41.227581, 35.755188, 35.494877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267765, 35.935539, 35.648037>,  <41.334740, 36.236126, 35.903305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267765, 35.935539, 35.648037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153657, 0.619507, -0.769806,
		0.973835, -0.226952, 0.011741,
		-0.167436, -0.751468, -0.638170,
		41.217533, 35.710098, 35.456585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976593, 36.051434, 35.522346>,  <41.334740, 36.236126, 35.903305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976593, 36.051434, 35.522346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624889, 36.015026, 35.335316>,  <41.413868, 35.993179, 35.223099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624889, 36.015026, 35.335316>,  <41.976593, 36.051434, 35.522346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624889, 36.015026, 35.335316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356736, 0.524657, -0.772965,
		0.315673, -0.846434, -0.428837,
		-0.879256, -0.091023, -0.467573,
		41.361115, 35.987720, 35.195045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685535, 35.853542, 35.820198>,  <41.976593, 36.051434, 35.522346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685535, 35.853542, 35.820198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785992, 35.981037, 36.185783>,  <42.846264, 36.057533, 36.405136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785992, 35.981037, 36.185783>,  <42.685535, 35.853542, 35.820198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785992, 35.981037, 36.185783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377877, 0.837020, -0.395736,
		-0.891144, 0.444752, 0.089765,
		0.251140, 0.318738, 0.913967,
		42.861332, 36.076660, 36.459972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384380, 36.533749, 36.039688>,  <42.685535, 35.853542, 35.820198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384380, 36.533749, 36.039688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751385, 36.488338, 36.192158>,  <42.971588, 36.461094, 36.283638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751385, 36.488338, 36.192158>,  <42.384380, 36.533749, 36.039688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751385, 36.488338, 36.192158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264055, 0.890568, -0.370356,
		-0.297416, 0.440455, 0.847079,
		0.917507, -0.113526, 0.381174,
		43.026638, 36.454281, 36.306511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596306, 37.086361, 36.475296>,  <42.384380, 36.533749, 36.039688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596306, 37.086361, 36.475296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902287, 36.908752, 36.288666>,  <43.085876, 36.802189, 36.176685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902287, 36.908752, 36.288666>,  <42.596306, 37.086361, 36.475296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902287, 36.908752, 36.288666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302473, 0.887199, -0.348408,
		0.568649, 0.125388, 0.812968,
		0.764950, -0.444022, -0.466578,
		43.131771, 36.775547, 36.148693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171696, 37.356087, 36.740807>,  <42.596306, 37.086361, 36.475296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171696, 37.356087, 36.740807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221680, 37.211864, 36.371075>,  <43.251671, 37.125332, 36.149235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.221680, 37.211864, 36.371075>,  <43.171696, 37.356087, 36.740807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221680, 37.211864, 36.371075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161271, 0.926622, -0.339651,
		0.978967, -0.106624, 0.173940,
		0.124961, -0.360558, -0.924328,
		43.259167, 37.103699, 36.093777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756931, 37.668636, 36.507717>,  <43.171696, 37.356087, 36.740807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756931, 37.668636, 36.507717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565590, 37.562481, 36.172874>,  <43.450783, 37.498787, 35.971970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565590, 37.562481, 36.172874>,  <43.756931, 37.668636, 36.507717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565590, 37.562481, 36.172874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271308, 0.861946, -0.428301,
		0.835204, -0.431994, -0.340317,
		-0.478359, -0.265388, -0.837104,
		43.422085, 37.482864, 35.921741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326267, 37.790409, 36.005436>,  <43.756931, 37.668636, 36.507717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326267, 37.790409, 36.005436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973694, 37.781406, 35.816730>,  <43.762150, 37.776005, 35.703506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973694, 37.781406, 35.816730>,  <44.326267, 37.790409, 36.005436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973694, 37.781406, 35.816730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213537, 0.871951, -0.440573,
		0.421271, -0.489076, -0.763763,
		-0.881438, -0.022509, -0.471764,
		43.709263, 37.774654, 35.675201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438717, 38.198795, 35.396980>,  <44.326267, 37.790409, 36.005436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438717, 38.198795, 35.396980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039700, 38.172035, 35.388691>,  <43.800289, 38.155979, 35.383717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039700, 38.172035, 35.388691>,  <44.438717, 38.198795, 35.396980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039700, 38.172035, 35.388691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051499, 0.901208, -0.430316,
		0.047462, -0.428192, -0.902440,
		-0.997545, -0.066898, -0.020722,
		43.740437, 38.151966, 35.382473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211342, 38.334270, 34.667709>,  <44.438717, 38.198795, 35.396980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211342, 38.334270, 34.667709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909946, 38.393612, 34.923912>,  <43.729111, 38.429218, 35.077633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909946, 38.393612, 34.923912>,  <44.211342, 38.334270, 34.667709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909946, 38.393612, 34.923912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200683, 0.875818, -0.438942,
		-0.626088, -0.459275, -0.630143,
		-0.753485, 0.148357, 0.640508,
		43.683899, 38.438118, 35.116066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717899, 38.592239, 34.296276>,  <44.211342, 38.334270, 34.667709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717899, 38.592239, 34.296276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611214, 38.714867, 34.661762>,  <43.547203, 38.788445, 34.881054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611214, 38.714867, 34.661762>,  <43.717899, 38.592239, 34.296276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611214, 38.714867, 34.661762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086549, 0.936611, -0.339512,
		-0.959882, -0.169634, -0.223274,
		-0.266714, 0.306567, 0.913718,
		43.531200, 38.806835, 34.935879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084557, 39.131752, 34.205700>,  <43.717899, 38.592239, 34.296276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084557, 39.131752, 34.205700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270374, 39.200695, 34.553146>,  <43.381863, 39.242062, 34.761616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270374, 39.200695, 34.553146>,  <43.084557, 39.131752, 34.205700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270374, 39.200695, 34.553146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016829, 0.982417, -0.185941,
		-0.885392, 0.071759, 0.459273,
		0.464541, 0.172359, 0.868616,
		43.409737, 39.252403, 34.813732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820305, 39.812393, 34.380974>,  <43.084557, 39.131752, 34.205700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820305, 39.812393, 34.380974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135681, 39.776215, 34.624344>,  <43.324905, 39.754509, 34.770367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135681, 39.776215, 34.624344>,  <42.820305, 39.812393, 34.380974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135681, 39.776215, 34.624344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174987, 0.981242, -0.080895,
		-0.589698, 0.170248, 0.789476,
		0.788439, -0.090445, 0.608428,
		43.372211, 39.749081, 34.806873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698929, 40.379368, 34.849949>,  <42.820305, 39.812393, 34.380974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698929, 40.379368, 34.849949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081158, 40.261471, 34.851048>,  <43.310493, 40.190731, 34.851707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081158, 40.261471, 34.851048>,  <42.698929, 40.379368, 34.849949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081158, 40.261471, 34.851048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283979, 0.918087, -0.276537,
		0.078988, 0.265031, 0.960999,
		0.955571, -0.294747, 0.002746,
		43.367828, 40.173046, 34.851871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077225, 40.936676, 35.221783>,  <42.698929, 40.379368, 34.849949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077225, 40.936676, 35.221783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363136, 40.750572, 35.012928>,  <43.534683, 40.638908, 34.887615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363136, 40.750572, 35.012928>,  <43.077225, 40.936676, 35.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363136, 40.750572, 35.012928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391897, 0.884832, -0.251969,
		0.579235, -0.024523, 0.814791,
		0.714775, -0.465264, -0.522137,
		43.577568, 40.610992, 34.856285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578484, 41.178192, 35.687176>,  <43.077225, 40.936676, 35.221783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578484, 41.178192, 35.687176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718010, 41.057831, 35.332150>,  <43.801727, 40.985615, 35.119133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718010, 41.057831, 35.332150>,  <43.578484, 41.178192, 35.687176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718010, 41.057831, 35.332150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474012, 0.873634, -0.109893,
		0.808478, -0.382385, 0.447375,
		0.348821, -0.300908, -0.887569,
		43.822655, 40.967560, 35.065880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312435, 41.295418, 35.758247>,  <43.578484, 41.178192, 35.687176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312435, 41.295418, 35.758247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215290, 41.283855, 35.370396>,  <44.157001, 41.276917, 35.137684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215290, 41.283855, 35.370396>,  <44.312435, 41.295418, 35.758247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215290, 41.283855, 35.370396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469071, 0.871429, -0.143469,
		0.849110, -0.489669, -0.198083,
		-0.242867, -0.028906, -0.969629,
		44.142429, 41.275185, 35.079506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796757, 41.578255, 35.466652>,  <44.312435, 41.295418, 35.758247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796757, 41.578255, 35.466652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540977, 41.606445, 35.160416>,  <44.387508, 41.623360, 34.976673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540977, 41.606445, 35.160416>,  <44.796757, 41.578255, 35.466652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540977, 41.606445, 35.160416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053339, 0.997457, 0.047274,
		0.766979, -0.010607, -0.641584,
		-0.639451, 0.070479, -0.765594,
		44.349144, 41.627590, 34.930737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086712, 41.987251, 34.934898>,  <44.796757, 41.578255, 35.466652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086712, 41.987251, 34.934898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691315, 42.012112, 34.879730>,  <44.454079, 42.027027, 34.846630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691315, 42.012112, 34.879730>,  <45.086712, 41.987251, 34.934898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691315, 42.012112, 34.879730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094186, 0.966292, -0.239603,
		0.118384, -0.249836, -0.961024,
		-0.988491, 0.062150, -0.137925,
		44.394768, 42.030758, 34.838352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013130, 42.362232, 34.255646>,  <45.086712, 41.987251, 34.934898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013130, 42.362232, 34.255646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661507, 42.402645, 34.441998>,  <44.450531, 42.426891, 34.553810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661507, 42.402645, 34.441998>,  <45.013130, 42.362232, 34.255646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661507, 42.402645, 34.441998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046285, 0.990755, -0.127525,
		-0.474460, -0.090538, -0.875609,
		-0.879059, 0.101033, 0.465883,
		44.397789, 42.432957, 34.581764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649960, 42.652966, 33.799141>,  <45.013130, 42.362232, 34.255646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649960, 42.652966, 33.799141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479263, 42.737389, 34.150902>,  <44.376846, 42.788040, 34.361958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479263, 42.737389, 34.150902>,  <44.649960, 42.652966, 33.799141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479263, 42.737389, 34.150902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061891, 0.963293, -0.261222,
		-0.902253, -0.165901, -0.398015,
		-0.426742, 0.211055, 0.879402,
		44.351242, 42.800705, 34.414722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070667, 43.093094, 33.667313>,  <44.649960, 42.652966, 33.799141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070667, 43.093094, 33.667313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116177, 43.158634, 34.059273>,  <44.143482, 43.197956, 34.294449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116177, 43.158634, 34.059273>,  <44.070667, 43.093094, 33.667313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116177, 43.158634, 34.059273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313278, 0.941906, -0.121121,
		-0.942822, -0.293202, 0.158490,
		0.113770, 0.163847, 0.979903,
		44.150307, 43.207787, 34.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536026, 43.636246, 33.744717>,  <44.070667, 43.093094, 33.667313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536026, 43.636246, 33.744717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753849, 43.646790, 34.080040>,  <43.884541, 43.653114, 34.281235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753849, 43.646790, 34.080040>,  <43.536026, 43.636246, 33.744717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753849, 43.646790, 34.080040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103104, 0.994029, 0.035719,
		-0.832365, -0.105885, 0.544019,
		0.544553, 0.026359, 0.838312,
		43.917213, 43.654697, 34.331535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234604, 44.043522, 34.312466>,  <43.536026, 43.636246, 33.744717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234604, 44.043522, 34.312466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627834, 44.038834, 34.385586>,  <43.863773, 44.036022, 34.429459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627834, 44.038834, 34.385586>,  <43.234604, 44.043522, 34.312466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627834, 44.038834, 34.385586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012365, 0.991431, 0.130048,
		-0.182757, -0.130108, 0.974511,
		0.983080, -0.011717, 0.182800,
		43.922760, 44.035316, 34.440426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348331, 44.461521, 34.893417>,  <43.234604, 44.043522, 34.312466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348331, 44.461521, 34.893417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704662, 44.464111, 34.711700>,  <43.918461, 44.465664, 34.602669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704662, 44.464111, 34.711700>,  <43.348331, 44.461521, 34.893417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704662, 44.464111, 34.711700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074639, 0.984229, 0.160381,
		0.448170, -0.176780, 0.876295,
		0.890827, 0.006472, -0.454296,
		43.971909, 44.466053, 34.575413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920822, 44.593071, 35.394043>,  <43.348331, 44.461521, 34.893417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920822, 44.593071, 35.394043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010555, 44.709538, 35.022045>,  <44.064396, 44.779419, 34.798847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010555, 44.709538, 35.022045>,  <43.920822, 44.593071, 35.394043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010555, 44.709538, 35.022045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097899, 0.956227, 0.275765,
		0.969582, 0.029182, 0.243019,
		0.224334, 0.291169, -0.929998,
		44.077854, 44.796886, 34.743046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416740, 45.038635, 35.517578>,  <43.920822, 44.593071, 35.394043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416740, 45.038635, 35.517578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729359, 45.132256, 35.748890>,  <43.916927, 45.188427, 35.887676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729359, 45.132256, 35.748890>,  <43.416740, 45.038635, 35.517578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729359, 45.132256, 35.748890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316822, 0.947430, 0.044720,
		-0.537416, -0.218163, 0.814610,
		0.781542, 0.234054, 0.578283,
		43.963821, 45.202473, 35.922375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191917, 45.424587, 36.042175>,  <43.416740, 45.038635, 35.517578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191917, 45.424587, 36.042175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565662, 45.530025, 35.946270>,  <43.789909, 45.593288, 35.888725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565662, 45.530025, 35.946270>,  <43.191917, 45.424587, 36.042175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565662, 45.530025, 35.946270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239165, 0.962720, 0.126370,
		0.264137, -0.060732, 0.962571,
		0.934362, 0.263592, -0.239765,
		43.845970, 45.609104, 35.874340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282562, 45.914341, 36.652534>,  <43.191917, 45.424587, 36.042175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282562, 45.914341, 36.652534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476254, 45.986309, 36.310036>,  <43.592468, 46.029491, 36.104538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476254, 45.986309, 36.310036>,  <43.282562, 45.914341, 36.652534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476254, 45.986309, 36.310036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087130, 0.983679, 0.157427,
		0.870595, -0.001625, 0.491998,
		0.484224, 0.179923, -0.856245,
		43.621521, 46.040287, 36.053162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958572, 45.698788, 36.629276>,  <43.282562, 45.914341, 36.652534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958572, 45.698788, 36.629276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825138, 45.914616, 36.938492>,  <43.745075, 46.044113, 37.124020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825138, 45.914616, 36.938492>,  <43.958572, 45.698788, 36.629276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825138, 45.914616, 36.938492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617681, -0.494369, 0.611612,
		0.712171, 0.681517, -0.168365,
		-0.333590, 0.539568, 0.773035,
		43.725060, 46.076485, 37.170403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446388, 46.216675, 37.181355>,  <43.958572, 45.698788, 36.629276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446388, 46.216675, 37.181355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128719, 46.037609, 37.345734>,  <43.938118, 45.930168, 37.444363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128719, 46.037609, 37.345734>,  <44.446388, 46.216675, 37.181355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128719, 46.037609, 37.345734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595616, -0.439305, 0.672498,
		-0.120524, 0.778848, 0.615524,
		-0.794176, -0.447668, 0.410947,
		43.890465, 45.903309, 37.469017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357635, 45.647472, 37.567657>,  <44.446388, 46.216675, 37.181355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357635, 45.647472, 37.567657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517326, 45.493637, 37.900574>,  <44.613140, 45.401337, 38.100323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517326, 45.493637, 37.900574>,  <44.357635, 45.647472, 37.567657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517326, 45.493637, 37.900574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102237, -0.883433, -0.457267,
		0.911132, 0.267646, -0.313375,
		0.399232, -0.384592, 0.832288,
		44.637096, 45.378258, 38.150261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528305, 44.921902, 37.440407>,  <44.357635, 45.647472, 37.567657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528305, 44.921902, 37.440407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640003, 44.949963, 37.823467>,  <44.707020, 44.966797, 38.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640003, 44.949963, 37.823467>,  <44.528305, 44.921902, 37.440407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640003, 44.949963, 37.823467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411826, -0.909694, -0.053447,
		0.867423, 0.409312, -0.282915,
		0.279242, 0.070151, 0.957655,
		44.723778, 44.971008, 38.110764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200184, 44.932911, 37.390537>,  <44.528305, 44.921902, 37.440407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200184, 44.932911, 37.390537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048115, 44.748829, 37.711456>,  <44.956875, 44.638378, 37.904007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048115, 44.748829, 37.711456>,  <45.200184, 44.932911, 37.390537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048115, 44.748829, 37.711456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352985, -0.873962, -0.334054,
		0.854910, 0.156199, 0.494703,
		-0.380173, -0.460209, 0.802294,
		44.934063, 44.610767, 37.952145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759834, 44.637482, 37.723618>,  <45.200184, 44.932911, 37.390537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759834, 44.637482, 37.723618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448334, 44.420795, 37.850163>,  <45.261433, 44.290783, 37.926090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448334, 44.420795, 37.850163>,  <45.759834, 44.637482, 37.723618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448334, 44.420795, 37.850163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462224, -0.836443, -0.294468,
		0.424136, -0.083089, 0.901779,
		-0.778754, -0.541719, 0.316360,
		45.214706, 44.258282, 37.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990448, 44.087822, 38.113647>,  <45.759834, 44.637482, 37.723618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990448, 44.087822, 38.113647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637650, 43.983288, 37.956787>,  <45.425972, 43.920567, 37.862671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637650, 43.983288, 37.956787>,  <45.990448, 44.087822, 38.113647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637650, 43.983288, 37.956787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393408, -0.866449, -0.307402,
		-0.259442, -0.425403, 0.867019,
		-0.881998, -0.261340, -0.392150,
		45.373051, 43.904884, 37.839142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891438, 43.453022, 38.365841>,  <45.990448, 44.087822, 38.113647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891438, 43.453022, 38.365841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622032, 43.448689, 38.070206>,  <45.460388, 43.446087, 37.892822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622032, 43.448689, 38.070206>,  <45.891438, 43.453022, 38.365841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622032, 43.448689, 38.070206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128624, -0.986356, -0.102751,
		-0.727894, -0.164270, 0.665723,
		-0.673518, -0.010837, -0.739091,
		45.419975, 43.445438, 37.848476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415859, 42.949158, 38.577991>,  <45.891438, 43.453022, 38.365841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415859, 42.949158, 38.577991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394302, 42.964115, 38.178852>,  <45.381367, 42.973091, 37.939369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394302, 42.964115, 38.178852>,  <45.415859, 42.949158, 38.577991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394302, 42.964115, 38.178852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079112, -0.996317, -0.033066,
		-0.995408, 0.077159, 0.056654,
		-0.053894, 0.037396, -0.997846,
		45.378136, 42.975334, 37.879498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038979, 42.306309, 38.321526>,  <45.415859, 42.949158, 38.577991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038979, 42.306309, 38.321526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201733, 42.441418, 37.982029>,  <45.299385, 42.522484, 37.778332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201733, 42.441418, 37.982029>,  <45.038979, 42.306309, 38.321526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201733, 42.441418, 37.982029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051453, -0.936126, -0.347879,
		-0.912029, 0.097877, -0.398276,
		0.406886, 0.337768, -0.848738,
		45.323799, 42.542747, 37.727406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838680, 41.787731, 37.793781>,  <45.038979, 42.306309, 38.321526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838680, 41.787731, 37.793781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129475, 42.001659, 37.621521>,  <45.303951, 42.130016, 37.518166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129475, 42.001659, 37.621521>,  <44.838680, 41.787731, 37.793781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129475, 42.001659, 37.621521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288084, -0.806865, -0.515730,
		-0.623299, 0.250864, -0.740652,
		0.726984, 0.534824, -0.430648,
		45.347569, 42.162106, 37.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734798, 41.785252, 37.177406>,  <44.838680, 41.787731, 37.793781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734798, 41.785252, 37.177406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131474, 41.833694, 37.194778>,  <45.369480, 41.862759, 37.205204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131474, 41.833694, 37.194778>,  <44.734798, 41.785252, 37.177406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131474, 41.833694, 37.194778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126759, -0.861939, -0.490910,
		-0.022013, 0.492336, -0.870127,
		0.991689, 0.121103, 0.043434,
		45.428982, 41.870026, 37.207809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063049, 41.809639, 36.482201>,  <44.734798, 41.785252, 37.177406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063049, 41.809639, 36.482201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340107, 41.683578, 36.741714>,  <45.506344, 41.607941, 36.897423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340107, 41.683578, 36.741714>,  <45.063049, 41.809639, 36.482201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340107, 41.683578, 36.741714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103914, -0.846505, -0.522140,
		0.713752, 0.429076, -0.553580,
		0.692647, -0.315154, 0.648782,
		45.547901, 41.589031, 36.936348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430794, 41.394035, 36.013031>,  <45.063049, 41.809639, 36.482201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430794, 41.394035, 36.013031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569153, 41.303841, 36.377342>,  <45.652168, 41.249725, 36.595928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569153, 41.303841, 36.377342>,  <45.430794, 41.394035, 36.013031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569153, 41.303841, 36.377342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237623, -0.917996, -0.317518,
		0.907684, 0.326250, -0.263952,
		0.345897, -0.225485, 0.910775,
		45.672920, 41.236195, 36.650574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026497, 41.089977, 35.826729>,  <45.430794, 41.394035, 36.013031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026497, 41.089977, 35.826729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947929, 40.980217, 36.203266>,  <45.900791, 40.914360, 36.429188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947929, 40.980217, 36.203266>,  <46.026497, 41.089977, 35.826729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947929, 40.980217, 36.203266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215474, -0.948654, -0.231573,
		0.956552, 0.157350, 0.245457,
		-0.196416, -0.274401, 0.941342,
		45.889004, 40.897896, 36.485668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617859, 40.620235, 36.003170>,  <46.026497, 41.089977, 35.826729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617859, 40.620235, 36.003170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320885, 40.530285, 36.255589>,  <46.142700, 40.476315, 36.407040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320885, 40.530285, 36.255589>,  <46.617859, 40.620235, 36.003170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320885, 40.530285, 36.255589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186829, -0.974107, -0.127323,
		0.643335, 0.023368, 0.765228,
		-0.742439, -0.224878, 0.631043,
		46.098152, 40.462822, 36.444901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809975, 40.072277, 36.434738>,  <46.617859, 40.620235, 36.003170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809975, 40.072277, 36.434738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410324, 40.055923, 36.431156>,  <46.170536, 40.046112, 36.429008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410324, 40.055923, 36.431156>,  <46.809975, 40.072277, 36.434738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410324, 40.055923, 36.431156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041398, -0.996832, -0.067910,
		-0.006150, -0.068221, 0.997651,
		-0.999124, -0.040883, -0.008954,
		46.110588, 40.043659, 36.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749825, 39.532944, 36.890526>,  <46.809975, 40.072277, 36.434738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749825, 39.532944, 36.890526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411701, 39.566658, 36.679493>,  <46.208828, 39.586887, 36.552872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.411701, 39.566658, 36.679493>,  <46.749825, 39.532944, 36.890526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.411701, 39.566658, 36.679493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015824, -0.990994, -0.132969,
		-0.534042, -0.104052, 0.839031,
		-0.845310, 0.084288, -0.527585,
		46.158108, 39.591946, 36.521217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212315, 39.048359, 37.262623>,  <46.749825, 39.532944, 36.890526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212315, 39.048359, 37.262623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122379, 39.110363, 36.877827>,  <46.068420, 39.147564, 36.646950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122379, 39.110363, 36.877827>,  <46.212315, 39.048359, 37.262623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122379, 39.110363, 36.877827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087628, -0.986482, -0.138474,
		-0.970448, 0.053163, 0.235380,
		-0.224837, 0.155008, -0.961988,
		46.054928, 39.156864, 36.589230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711380, 38.618198, 37.212807>,  <46.212315, 39.048359, 37.262623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711380, 38.618198, 37.212807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835316, 38.682343, 36.837940>,  <45.909676, 38.720829, 36.613018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835316, 38.682343, 36.837940>,  <45.711380, 38.618198, 37.212807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835316, 38.682343, 36.837940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043449, -0.987033, -0.154529,
		-0.949796, 0.007161, -0.312789,
		0.309839, 0.160361, -0.937168,
		45.928268, 38.730450, 36.556789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229156, 38.317822, 36.702320>,  <45.711380, 38.618198, 37.212807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229156, 38.317822, 36.702320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568760, 38.358437, 36.494907>,  <45.772522, 38.382805, 36.370461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568760, 38.358437, 36.494907>,  <45.229156, 38.317822, 36.702320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568760, 38.358437, 36.494907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006847, -0.979164, -0.202953,
		-0.528336, 0.175859, -0.830623,
		0.849008, 0.101540, -0.518532,
		45.823463, 38.388897, 36.339348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080379, 38.130062, 35.927982>,  <45.229156, 38.317822, 36.702320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080379, 38.130062, 35.927982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477127, 38.096569, 35.966312>,  <45.715176, 38.076473, 35.989311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477127, 38.096569, 35.966312>,  <45.080379, 38.130062, 35.927982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477127, 38.096569, 35.966312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019169, -0.842749, -0.537966,
		0.125805, 0.531755, -0.837502,
		0.991870, -0.083733, 0.095828,
		45.774689, 38.071449, 35.995060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235573, 37.898697, 35.343178>,  <45.080379, 38.130062, 35.927982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235573, 37.898697, 35.343178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563683, 37.818420, 35.557419>,  <45.760548, 37.770256, 35.685963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563683, 37.818420, 35.557419>,  <45.235573, 37.898697, 35.343178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563683, 37.818420, 35.557419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020648, -0.925420, -0.378379,
		0.571595, 0.321434, -0.754956,
		0.820276, -0.200691, 0.535603,
		45.809765, 37.758213, 35.718102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660442, 37.573612, 34.871727>,  <45.235573, 37.898697, 35.343178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660442, 37.573612, 34.871727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775551, 37.473469, 35.241486>,  <45.844616, 37.413383, 35.463341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775551, 37.473469, 35.241486>,  <45.660442, 37.573612, 34.871727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775551, 37.473469, 35.241486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194756, -0.960355, -0.199469,
		0.937688, -0.122631, -0.325120,
		0.287769, -0.250358, 0.924397,
		45.861881, 37.398361, 35.518806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251637, 37.072968, 34.823574>,  <45.660442, 37.573612, 34.871727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251637, 37.072968, 34.823574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067139, 37.028549, 35.175694>,  <45.956440, 37.001900, 35.386963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067139, 37.028549, 35.175694>,  <46.251637, 37.072968, 34.823574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067139, 37.028549, 35.175694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155460, -0.966676, -0.203394,
		0.873546, -0.230666, 0.428615,
		-0.461248, -0.111041, 0.880296,
		45.928764, 36.995235, 35.439781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471642, 36.472004, 35.045143>,  <46.251637, 37.072968, 34.823574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471642, 36.472004, 35.045143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162090, 36.493099, 35.297596>,  <45.976360, 36.505756, 35.449070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162090, 36.493099, 35.297596>,  <46.471642, 36.472004, 35.045143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162090, 36.493099, 35.297596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200490, -0.965678, -0.165136,
		0.600765, -0.254331, 0.757890,
		-0.773876, 0.052741, 0.631137,
		45.929928, 36.508923, 35.486938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551369, 35.881195, 35.488873>,  <46.471642, 36.472004, 35.045143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551369, 35.881195, 35.488873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169640, 35.986031, 35.546249>,  <45.940601, 36.048931, 35.580677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169640, 35.986031, 35.546249>,  <46.551369, 35.881195, 35.488873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169640, 35.986031, 35.546249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262239, -0.964831, 0.018189,
		0.143165, -0.020258, 0.989491,
		-0.954324, 0.262088, 0.143442,
		45.883343, 36.064655, 35.589283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246925, 35.394821, 35.919201>,  <46.551369, 35.881195, 35.488873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246925, 35.394821, 35.919201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962582, 35.552689, 35.686333>,  <45.791977, 35.647408, 35.546612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962582, 35.552689, 35.686333>,  <46.246925, 35.394821, 35.919201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962582, 35.552689, 35.686333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429749, -0.898968, -0.084686,
		-0.556773, 0.189986, 0.808647,
		-0.710858, 0.394667, -0.582168,
		45.749325, 35.671089, 35.511681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841301, 35.027016, 35.860561>,  <46.246925, 35.394821, 35.919201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841301, 35.027016, 35.860561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104099, 34.749039, 35.743656>,  <47.261780, 34.582253, 35.673512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104099, 34.749039, 35.743656>,  <46.841301, 35.027016, 35.860561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104099, 34.749039, 35.743656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244638, 0.563213, -0.789268,
		0.713099, 0.447047, 0.540036,
		0.656995, -0.694940, -0.292262,
		47.301197, 34.540558, 35.655979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.587765, 35.362137, 35.776115>,  <46.841301, 35.027016, 35.860561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.587765, 35.362137, 35.776115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497437, 35.047485, 35.546257>,  <47.443237, 34.858696, 35.408344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497437, 35.047485, 35.546257>,  <47.587765, 35.362137, 35.776115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497437, 35.047485, 35.546257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037232, 0.582482, -0.811991,
		0.973456, -0.204763, -0.102251,
		-0.225825, -0.786630, -0.574644,
		47.429688, 34.811497, 35.373863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.113605, 34.956104, 35.279732>,  <47.587765, 35.362137, 35.776115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.113605, 34.956104, 35.279732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735676, 34.977673, 35.150494>,  <47.508919, 34.990616, 35.072948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735676, 34.977673, 35.150494>,  <48.113605, 34.956104, 35.279732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735676, 34.977673, 35.150494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246665, 0.766138, -0.593455,
		0.215537, -0.640410, -0.737169,
		-0.944828, 0.053923, -0.323098,
		47.452229, 34.993851, 35.053566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.028896, 34.373325, 45.561340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669090, 34.206913, 45.507973>,  <34.453209, 34.107067, 45.475952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.669090, 34.206913, 45.507973>,  <35.028896, 34.373325, 45.561340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669090, 34.206913, 45.507973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086050, 0.130698, -0.987681,
		0.428341, -0.899910, -0.081765,
		-0.899511, -0.416029, -0.133421,
		34.399239, 34.082104, 45.467945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129223, 33.775387, 45.037937>,  <35.028896, 34.373325, 45.561340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129223, 33.775387, 45.037937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739670, 33.865566, 45.048756>,  <34.505939, 33.919674, 45.055248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739670, 33.865566, 45.048756>,  <35.129223, 33.775387, 45.037937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739670, 33.865566, 45.048756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027958, -0.000853, -0.999609,
		-0.225341, -0.974254, 0.007134,
		-0.973879, 0.225452, 0.027046,
		34.447506, 33.933201, 45.056870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850464, 33.479202, 44.496769>,  <35.129223, 33.775387, 45.037937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850464, 33.479202, 44.496769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585140, 33.764591, 44.587086>,  <34.425945, 33.935825, 44.641277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585140, 33.764591, 44.587086>,  <34.850464, 33.479202, 44.496769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585140, 33.764591, 44.587086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033640, 0.329844, -0.943436,
		-0.747588, -0.618196, -0.242790,
		-0.663311, 0.713468, 0.225791,
		34.386147, 33.978630, 44.654823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362545, 33.388470, 44.070450>,  <34.850464, 33.479202, 44.496769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362545, 33.388470, 44.070450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283295, 33.766747, 44.173534>,  <34.235744, 33.993713, 44.235386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283295, 33.766747, 44.173534>,  <34.362545, 33.388470, 44.070450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283295, 33.766747, 44.173534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047526, 0.271887, -0.961155,
		-0.979024, -0.178182, -0.098813,
		-0.198127, 0.945690, 0.257715,
		34.223858, 34.050453, 44.250851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848427, 33.620144, 43.635742>,  <34.362545, 33.388470, 44.070450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848427, 33.620144, 43.635742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975586, 33.977108, 43.763836>,  <34.051884, 34.191284, 43.840691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975586, 33.977108, 43.763836>,  <33.848427, 33.620144, 43.635742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975586, 33.977108, 43.763836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110776, 0.300482, -0.947333,
		-0.941630, 0.336633, -0.003333,
		0.317901, 0.892406, 0.320234,
		34.070957, 34.244831, 43.859905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532600, 34.234921, 43.266579>,  <33.848427, 33.620144, 43.635742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532600, 34.234921, 43.266579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.890034, 34.364212, 43.391178>,  <34.104492, 34.441788, 43.465939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.890034, 34.364212, 43.391178>,  <33.532600, 34.234921, 43.266579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890034, 34.364212, 43.391178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226659, 0.274089, -0.934613,
		-0.387473, 0.905758, 0.171659,
		0.893583, 0.323229, 0.311500,
		34.158108, 34.461182, 43.484627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639797, 35.019447, 42.959431>,  <33.532600, 34.234921, 43.266579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639797, 35.019447, 42.959431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.021069, 34.940491, 43.051075>,  <34.249832, 34.893116, 43.106064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.021069, 34.940491, 43.051075>,  <33.639797, 35.019447, 42.959431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021069, 34.940491, 43.051075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281702, 0.303970, -0.910080,
		0.109994, 0.932009, 0.345342,
		0.953176, -0.197387, 0.229114,
		34.307022, 34.881275, 43.119808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994167, 35.625881, 42.712975>,  <33.639797, 35.019447, 42.959431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994167, 35.625881, 42.712975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284275, 35.351662, 42.738297>,  <34.458340, 35.187130, 42.753490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.284275, 35.351662, 42.738297>,  <33.994167, 35.625881, 42.712975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284275, 35.351662, 42.738297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416389, 0.363566, -0.833331,
		0.548276, 0.630746, 0.549138,
		0.725268, -0.685550, 0.063301,
		34.501854, 35.145996, 42.757286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748970, 35.997406, 42.629646>,  <33.994167, 35.625881, 42.712975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748970, 35.997406, 42.629646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731121, 35.607929, 42.540268>,  <34.720413, 35.374241, 42.486641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731121, 35.607929, 42.540268>,  <34.748970, 35.997406, 42.629646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731121, 35.607929, 42.540268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164980, 0.213418, -0.962930,
		0.985287, -0.079834, 0.151117,
		-0.044623, -0.973694, -0.223449,
		34.717735, 35.315823, 42.473232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282757, 35.924458, 42.102299>,  <34.748970, 35.997406, 42.629646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282757, 35.924458, 42.102299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088596, 35.574821, 42.094849>,  <34.972099, 35.365040, 42.090378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088596, 35.574821, 42.094849>,  <35.282757, 35.924458, 42.102299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088596, 35.574821, 42.094849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146510, -0.060324, -0.987368,
		0.861928, -0.481998, 0.157345,
		-0.485402, -0.874093, -0.018622,
		34.942974, 35.312595, 42.089260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708508, 35.390091, 41.803974>,  <35.282757, 35.924458, 42.102299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708508, 35.390091, 41.803974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.331627, 35.273701, 41.737534>,  <35.105499, 35.203865, 41.697670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.331627, 35.273701, 41.737534>,  <35.708508, 35.390091, 41.803974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331627, 35.273701, 41.737534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182004, -0.028272, -0.982891,
		0.281302, -0.956312, 0.079597,
		-0.942202, -0.290976, -0.166099,
		35.048965, 35.186409, 41.687702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845982, 34.890270, 41.449234>,  <35.708508, 35.390091, 41.803974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845982, 34.890270, 41.449234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466160, 34.968349, 41.351051>,  <35.238266, 35.015198, 41.292141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466160, 34.968349, 41.351051>,  <35.845982, 34.890270, 41.449234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466160, 34.968349, 41.351051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235551, -0.072830, -0.969129,
		-0.207050, -0.978056, 0.023177,
		-0.949551, 0.195199, -0.245461,
		35.181293, 35.026909, 41.277412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736496, 34.494694, 40.942673>,  <35.845982, 34.890270, 41.449234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736496, 34.494694, 40.942673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449593, 34.767097, 40.883648>,  <35.277451, 34.930538, 40.848232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449593, 34.767097, 40.883648>,  <35.736496, 34.494694, 40.942673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449593, 34.767097, 40.883648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331050, 0.146689, -0.932142,
		-0.613147, -0.717436, -0.330661,
		-0.717256, 0.681006, -0.147565,
		35.234417, 34.971397, 40.839378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417912, 34.407898, 40.288418>,  <35.736496, 34.494694, 40.942673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417912, 34.407898, 40.288418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.319462, 34.787273, 40.368309>,  <35.260391, 35.014896, 40.416245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.319462, 34.787273, 40.368309>,  <35.417912, 34.407898, 40.288418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319462, 34.787273, 40.368309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190420, 0.249371, -0.949502,
		-0.950348, -0.195667, -0.241978,
		-0.246129, 0.948435, 0.199730,
		35.245625, 35.071804, 40.428226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101971, 34.671135, 39.659168>,  <35.417912, 34.407898, 40.288418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101971, 34.671135, 39.659168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185432, 34.997047, 39.875538>,  <35.235512, 35.192593, 40.005360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185432, 34.997047, 39.875538>,  <35.101971, 34.671135, 39.659168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185432, 34.997047, 39.875538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192437, 0.508080, -0.839537,
		-0.958869, 0.279269, -0.050780,
		0.208656, 0.814779, 0.540924,
		35.248028, 35.241482, 40.037815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707661, 35.275478, 39.514206>,  <35.101971, 34.671135, 39.659168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707661, 35.275478, 39.514206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029694, 35.453617, 39.670925>,  <35.222916, 35.560501, 39.764957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029694, 35.453617, 39.670925>,  <34.707661, 35.275478, 39.514206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029694, 35.453617, 39.670925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117211, 0.528056, -0.841082,
		-0.581461, 0.723067, 0.372931,
		0.805087, 0.445345, 0.391795,
		35.271221, 35.587219, 39.788464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737568, 35.892178, 39.252598>,  <34.707661, 35.275478, 39.514206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737568, 35.892178, 39.252598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108440, 35.871754, 39.401039>,  <35.330963, 35.859497, 39.490105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.108440, 35.871754, 39.401039>,  <34.737568, 35.892178, 39.252598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108440, 35.871754, 39.401039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349501, 0.474459, -0.807921,
		-0.134820, 0.878795, 0.457759,
		0.927185, -0.051064, 0.371107,
		35.386597, 35.856434, 39.512371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007492, 36.618092, 39.320469>,  <34.737568, 35.892178, 39.252598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007492, 36.618092, 39.320469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321407, 36.376183, 39.266285>,  <35.509758, 36.231037, 39.233772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321407, 36.376183, 39.266285>,  <35.007492, 36.618092, 39.320469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321407, 36.376183, 39.266285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302680, 0.564745, -0.767755,
		0.540821, 0.561525, 0.626260,
		0.784791, -0.604775, -0.135463,
		35.556843, 36.194752, 39.225647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594528, 37.145214, 38.986252>,  <35.007492, 36.618092, 39.320469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594528, 37.145214, 38.986252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654751, 36.760162, 38.896210>,  <35.690884, 36.529129, 38.842186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654751, 36.760162, 38.896210>,  <35.594528, 37.145214, 38.986252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654751, 36.760162, 38.896210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243168, 0.256765, -0.935383,
		0.958228, 0.086092, 0.272740,
		0.150559, -0.962632, -0.225105,
		35.699917, 36.471375, 38.828678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237484, 37.187225, 38.692322>,  <35.594528, 37.145214, 38.986252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237484, 37.187225, 38.692322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044331, 36.853756, 38.585136>,  <35.928440, 36.653675, 38.520824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044331, 36.853756, 38.585136>,  <36.237484, 37.187225, 38.692322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044331, 36.853756, 38.585136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231681, 0.173472, -0.957200,
		0.844480, -0.524299, 0.109380,
		-0.482885, -0.833677, -0.267963,
		35.899464, 36.603653, 38.504749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596348, 37.035038, 38.224037>,  <36.237484, 37.187225, 38.692322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596348, 37.035038, 38.224037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255760, 36.833599, 38.165535>,  <36.051407, 36.712738, 38.130432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255760, 36.833599, 38.165535>,  <36.596348, 37.035038, 38.224037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255760, 36.833599, 38.165535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066745, 0.172565, -0.982734,
		0.520138, -0.846531, -0.113322,
		-0.851470, -0.503593, -0.146260,
		36.000320, 36.682522, 38.121658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758610, 36.455379, 37.711399>,  <36.596348, 37.035038, 38.224037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758610, 36.455379, 37.711399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384251, 36.595646, 37.697990>,  <36.159634, 36.679806, 37.689945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384251, 36.595646, 37.697990>,  <36.758610, 36.455379, 37.711399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384251, 36.595646, 37.697990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059096, 0.062476, -0.996295,
		-0.347273, -0.934414, -0.079195,
		-0.935900, 0.350666, -0.033524,
		36.103481, 36.700844, 37.687935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267494, 36.986088, 37.594700>,  <36.758610, 36.455379, 37.711399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267494, 36.986088, 37.594700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643246, 37.121403, 37.617073>,  <37.868698, 37.202591, 37.630497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.643246, 37.121403, 37.617073>,  <37.267494, 36.986088, 37.594700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643246, 37.121403, 37.617073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084285, -0.385942, 0.918665,
		0.332363, -0.858259, -0.391058,
		0.939378, 0.338291, 0.055935,
		37.925060, 37.222889, 37.633854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650913, 36.544022, 37.941223>,  <37.267494, 36.986088, 37.594700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650913, 36.544022, 37.941223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.843880, 36.886753, 38.014011>,  <37.959660, 37.092392, 38.057686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.843880, 36.886753, 38.014011>,  <37.650913, 36.544022, 37.941223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843880, 36.886753, 38.014011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002279, -0.206519, 0.978440,
		0.875941, -0.472427, -0.097674,
		0.482413, 0.856833, 0.181975,
		37.988605, 37.143803, 38.068604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194603, 36.315105, 38.315361>,  <37.650913, 36.544022, 37.941223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194603, 36.315105, 38.315361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191380, 36.705231, 38.403629>,  <38.189445, 36.939308, 38.456589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191380, 36.705231, 38.403629>,  <38.194603, 36.315105, 38.315361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191380, 36.705231, 38.403629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064216, -0.220728, 0.973219,
		0.997903, -0.006328, 0.064410,
		-0.008058, 0.975315, 0.220671,
		38.188961, 36.997826, 38.469830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740852, 36.399998, 38.910313>,  <38.194603, 36.315105, 38.315361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740852, 36.399998, 38.910313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489227, 36.710068, 38.887085>,  <38.338253, 36.896111, 38.873150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489227, 36.710068, 38.887085>,  <38.740852, 36.399998, 38.910313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489227, 36.710068, 38.887085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049985, 0.114885, 0.992120,
		0.775743, 0.621207, -0.111017,
		-0.629066, 0.775180, -0.058070,
		38.300507, 36.942623, 38.869663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120773, 36.857185, 39.215942>,  <38.740852, 36.399998, 38.910313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120773, 36.857185, 39.215942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732853, 36.953602, 39.230797>,  <38.500099, 37.011452, 39.239712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732853, 36.953602, 39.230797>,  <39.120773, 36.857185, 39.215942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732853, 36.953602, 39.230797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017694, -0.082347, 0.996446,
		0.243240, 0.967016, 0.075596,
		-0.969805, 0.241038, 0.037140,
		38.441910, 37.025913, 39.241940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987152, 37.236130, 39.913548>,  <39.120773, 36.857185, 39.215942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987152, 37.236130, 39.913548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604786, 37.181801, 39.809414>,  <38.375366, 37.149204, 39.746933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604786, 37.181801, 39.809414>,  <38.987152, 37.236130, 39.913548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604786, 37.181801, 39.809414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255836, -0.049922, 0.965430,
		-0.144126, 0.989474, 0.012972,
		-0.955916, -0.135825, -0.260338,
		38.318012, 37.141052, 39.731312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550533, 37.708813, 40.294937>,  <38.987152, 37.236130, 39.913548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550533, 37.708813, 40.294937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335003, 37.386719, 40.195930>,  <38.205685, 37.193462, 40.136528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335003, 37.386719, 40.195930>,  <38.550533, 37.708813, 40.294937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335003, 37.386719, 40.195930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338567, -0.062049, 0.938894,
		-0.771390, 0.589698, -0.239194,
		-0.538822, -0.805237, -0.247517,
		38.173355, 37.145149, 40.121674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910835, 37.791424, 40.632729>,  <38.550533, 37.708813, 40.294937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910835, 37.791424, 40.632729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928581, 37.397995, 40.562744>,  <37.939228, 37.161938, 40.520752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928581, 37.397995, 40.562744>,  <37.910835, 37.791424, 40.632729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928581, 37.397995, 40.562744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451508, -0.175973, 0.874742,
		-0.891163, 0.040186, -0.451900,
		0.044369, -0.983575, -0.174965,
		37.941891, 37.102924, 40.510254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204441, 37.579643, 40.954327>,  <37.910835, 37.791424, 40.632729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204441, 37.579643, 40.954327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408859, 37.244434, 40.877865>,  <37.531509, 37.043308, 40.831989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408859, 37.244434, 40.877865>,  <37.204441, 37.579643, 40.954327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408859, 37.244434, 40.877865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449792, -0.450237, 0.771345,
		-0.732472, -0.308216, -0.607031,
		0.511049, -0.838027, -0.191153,
		37.562176, 36.993027, 40.820518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710014, 37.121609, 40.998199>,  <37.204441, 37.579643, 40.954327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710014, 37.121609, 40.998199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062275, 36.951481, 41.081676>,  <37.273632, 36.849403, 41.131763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062275, 36.951481, 41.081676>,  <36.710014, 37.121609, 40.998199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062275, 36.951481, 41.081676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369562, -0.341086, 0.864340,
		-0.296444, -0.838307, -0.457562,
		0.880650, -0.425326, 0.208693,
		37.326469, 36.823883, 41.144283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511269, 36.390842, 41.252010>,  <36.710014, 37.121609, 40.998199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511269, 36.390842, 41.252010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888828, 36.416912, 41.381504>,  <37.115364, 36.432556, 41.459202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888828, 36.416912, 41.381504>,  <36.511269, 36.390842, 41.252010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888828, 36.416912, 41.381504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266259, -0.429703, 0.862822,
		0.195350, -0.900615, -0.388241,
		0.943899, 0.065179, 0.323739,
		37.171997, 36.436466, 41.478626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665855, 35.682468, 41.558666>,  <36.511269, 36.390842, 41.252010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665855, 35.682468, 41.558666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920879, 35.936516, 41.733089>,  <37.073895, 36.088943, 41.837742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920879, 35.936516, 41.733089>,  <36.665855, 35.682468, 41.558666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920879, 35.936516, 41.733089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164519, -0.440710, 0.882445,
		0.752628, -0.634352, -0.176491,
		0.637562, 0.635117, 0.436053,
		37.112148, 36.127052, 41.863907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277439, 35.232502, 41.877022>,  <36.665855, 35.682468, 41.558666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277439, 35.232502, 41.877022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251804, 35.591583, 42.051384>,  <37.236423, 35.807034, 42.156002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251804, 35.591583, 42.051384>,  <37.277439, 35.232502, 41.877022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251804, 35.591583, 42.051384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094894, -0.440308, 0.892818,
		0.993422, 0.015857, 0.113407,
		-0.064092, 0.897707, 0.435907,
		37.232578, 35.860897, 42.182156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662945, 35.166363, 42.474407>,  <37.277439, 35.232502, 41.877022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662945, 35.166363, 42.474407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450272, 35.498783, 42.539742>,  <37.322670, 35.698235, 42.578941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450272, 35.498783, 42.539742>,  <37.662945, 35.166363, 42.474407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450272, 35.498783, 42.539742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159613, -0.287712, 0.944323,
		0.831769, 0.476008, 0.285616,
		-0.531681, 0.831046, 0.163333,
		37.290768, 35.748096, 42.588741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906921, 35.248806, 43.040638>,  <37.662945, 35.166363, 42.474407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906921, 35.248806, 43.040638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562733, 35.452534, 43.046085>,  <37.356220, 35.574772, 43.049355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562733, 35.452534, 43.046085>,  <37.906921, 35.248806, 43.040638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562733, 35.452534, 43.046085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169404, -0.311204, 0.935123,
		0.480513, 0.802338, 0.354062,
		-0.860470, 0.509318, 0.013618,
		37.304592, 35.605328, 43.050171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981991, 35.740849, 43.632488>,  <37.906921, 35.248806, 43.040638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981991, 35.740849, 43.632488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586781, 35.701611, 43.584862>,  <37.349655, 35.678066, 43.556286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.586781, 35.701611, 43.584862>,  <37.981991, 35.740849, 43.632488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586781, 35.701611, 43.584862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063127, -0.447177, 0.892215,
		-0.140766, 0.889050, 0.435631,
		-0.988028, -0.098094, -0.119070,
		37.290371, 35.672184, 43.549141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660156, 36.015888, 44.311092>,  <37.981991, 35.740849, 43.632488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660156, 36.015888, 44.311092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369076, 35.808907, 44.131004>,  <37.194427, 35.684715, 44.022953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.369076, 35.808907, 44.131004>,  <37.660156, 36.015888, 44.311092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369076, 35.808907, 44.131004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285966, -0.367733, 0.884871,
		-0.623442, 0.772665, 0.119624,
		-0.727698, -0.517457, -0.450216,
		37.150768, 35.653671, 43.995941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117100, 36.125626, 44.839214>,  <37.660156, 36.015888, 44.311092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117100, 36.125626, 44.839214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044525, 35.804787, 44.611626>,  <37.000980, 35.612286, 44.475075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.044525, 35.804787, 44.611626>,  <37.117100, 36.125626, 44.839214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044525, 35.804787, 44.611626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173697, -0.543338, 0.821349,
		-0.967941, 0.247851, -0.040740,
		-0.181437, -0.802094, -0.568970,
		36.990093, 35.564159, 44.440933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.430267, 35.882809, 45.171532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587147, 35.581055, 44.960976>,  <36.681274, 35.400002, 44.834641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587147, 35.581055, 44.960976>,  <36.430267, 35.882809, 45.171532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587147, 35.581055, 44.960976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204902, -0.629503, 0.749494,
		-0.896771, -0.186090, -0.401463,
		0.392196, -0.754385, -0.526389,
		36.704807, 35.354740, 44.803059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914619, 35.282047, 45.167648>,  <36.430267, 35.882809, 45.171532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914619, 35.282047, 45.167648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272453, 35.113571, 45.107906>,  <36.487156, 35.012486, 45.072060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272453, 35.113571, 45.107906>,  <35.914619, 35.282047, 45.167648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272453, 35.113571, 45.107906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277480, -0.785501, 0.553166,
		-0.350309, -0.453413, -0.819573,
		0.894588, -0.421194, -0.149354,
		36.540829, 34.987213, 45.063099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701775, 34.653748, 45.313831>,  <35.914619, 35.282047, 45.167648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701775, 34.653748, 45.313831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098934, 34.606216, 45.315922>,  <36.337231, 34.577698, 45.317177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098934, 34.606216, 45.315922>,  <35.701775, 34.653748, 45.313831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098934, 34.606216, 45.315922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094258, -0.759264, 0.643921,
		-0.072546, -0.639843, -0.765074,
		0.992901, -0.118828, 0.005229,
		36.396805, 34.570568, 45.317490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809216, 33.952045, 45.353146>,  <35.701775, 34.653748, 45.313831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809216, 33.952045, 45.353146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143501, 34.122952, 45.491146>,  <36.344074, 34.225494, 45.573948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143501, 34.122952, 45.491146>,  <35.809216, 33.952045, 45.353146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143501, 34.122952, 45.491146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127683, -0.762191, 0.634636,
		0.534117, -0.486322, -0.691527,
		0.835713, 0.427266, 0.345004,
		36.394215, 34.251133, 45.594646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145248, 33.408863, 45.520523>,  <35.809216, 33.952045, 45.353146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145248, 33.408863, 45.520523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339890, 33.694901, 45.721268>,  <36.456673, 33.866524, 45.841713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339890, 33.694901, 45.721268>,  <36.145248, 33.408863, 45.520523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339890, 33.694901, 45.721268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259523, -0.666843, 0.698547,
		0.834188, -0.209668, -0.510069,
		0.486599, 0.715094, 0.501859,
		36.485870, 33.909428, 45.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915279, 33.214939, 45.547607>,  <36.145248, 33.408863, 45.520523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915279, 33.214939, 45.547607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.813625, 33.438248, 45.863518>,  <36.752632, 33.572235, 46.053062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.813625, 33.438248, 45.863518>,  <36.915279, 33.214939, 45.547607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813625, 33.438248, 45.863518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278114, -0.739913, 0.612520,
		0.926321, 0.375308, 0.032771,
		-0.254131, 0.558276, 0.789775,
		36.737385, 33.605732, 46.100449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271954, 32.869129, 46.027382>,  <36.915279, 33.214939, 45.547607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271954, 32.869129, 46.027382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103371, 33.141144, 46.267357>,  <37.002220, 33.304352, 46.411343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.103371, 33.141144, 46.267357>,  <37.271954, 32.869129, 46.027382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103371, 33.141144, 46.267357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159121, -0.595846, 0.787177,
		0.892778, 0.427225, 0.142917,
		-0.421458, 0.680034, 0.599939,
		36.976933, 33.345154, 46.447338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741123, 32.874298, 46.606773>,  <37.271954, 32.869129, 46.027382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741123, 32.874298, 46.606773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389725, 33.007565, 46.743732>,  <37.178886, 33.087524, 46.825909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389725, 33.007565, 46.743732>,  <37.741123, 32.874298, 46.606773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389725, 33.007565, 46.743732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214652, -0.365024, 0.905915,
		0.426807, 0.869343, 0.249157,
		-0.878499, 0.333169, 0.342401,
		37.126175, 33.107513, 46.846455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875374, 33.184269, 47.227093>,  <37.741123, 32.874298, 46.606773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875374, 33.184269, 47.227093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486443, 33.090984, 47.221561>,  <37.253082, 33.035015, 47.218243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486443, 33.090984, 47.221561>,  <37.875374, 33.184269, 47.227093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486443, 33.090984, 47.221561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055912, -0.289765, 0.955463,
		-0.226830, 0.928251, 0.294786,
		-0.972328, -0.233210, -0.013828,
		37.194744, 33.021023, 47.217415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657421, 33.389965, 47.811138>,  <37.875374, 33.184269, 47.227093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657421, 33.389965, 47.811138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328091, 33.181980, 47.720131>,  <37.130493, 33.057190, 47.665527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.328091, 33.181980, 47.720131>,  <37.657421, 33.389965, 47.811138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328091, 33.181980, 47.720131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064889, -0.312009, 0.947861,
		-0.563844, 0.795164, 0.223146,
		-0.823328, -0.519966, -0.227522,
		37.081093, 33.025990, 47.651875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147392, 33.623390, 48.338165>,  <37.657421, 33.389965, 47.811138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147392, 33.623390, 48.338165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085670, 33.255116, 48.194767>,  <37.048637, 33.034149, 48.108727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085670, 33.255116, 48.194767>,  <37.147392, 33.623390, 48.338165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085670, 33.255116, 48.194767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152028, -0.336395, 0.929369,
		-0.976257, 0.197907, -0.088063,
		-0.154304, -0.920691, -0.358495,
		37.039379, 32.978909, 48.087219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493557, 33.466000, 48.598526>,  <37.147392, 33.623390, 48.338165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493557, 33.466000, 48.598526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693295, 33.128326, 48.520538>,  <36.813137, 32.925724, 48.473747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693295, 33.128326, 48.520538>,  <36.493557, 33.466000, 48.598526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693295, 33.128326, 48.520538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145200, -0.303388, 0.941739,
		-0.854149, -0.441944, -0.274070,
		0.499346, -0.844181, -0.194969,
		36.843098, 32.875072, 48.462048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100571, 32.992794, 48.861229>,  <36.493557, 33.466000, 48.598526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100571, 32.992794, 48.861229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443943, 32.794144, 48.809895>,  <36.649967, 32.674953, 48.779095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443943, 32.794144, 48.809895>,  <36.100571, 32.992794, 48.861229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443943, 32.794144, 48.809895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208729, -0.566754, 0.797008,
		-0.468547, -0.657385, -0.590176,
		0.858426, -0.496623, -0.128336,
		36.701469, 32.645157, 48.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905674, 32.274124, 48.962677>,  <36.100571, 32.992794, 48.861229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905674, 32.274124, 48.962677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304722, 32.262566, 48.987709>,  <36.544151, 32.255630, 49.002728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304722, 32.262566, 48.987709>,  <35.905674, 32.274124, 48.962677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304722, 32.262566, 48.987709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067912, -0.567463, 0.820594,
		0.011801, -0.822892, -0.568076,
		0.997622, -0.028895, 0.062581,
		36.604008, 32.253899, 49.006485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147579, 31.569948, 49.132736>,  <35.905674, 32.274124, 48.962677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147579, 31.569948, 49.132736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439659, 31.815453, 49.252811>,  <36.614906, 31.962755, 49.324856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.439659, 31.815453, 49.252811>,  <36.147579, 31.569948, 49.132736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439659, 31.815453, 49.252811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123714, -0.550867, 0.825373,
		0.671945, -0.565546, -0.478171,
		0.730195, 0.613762, 0.300186,
		36.658718, 31.999580, 49.342869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653988, 31.172894, 49.254562>,  <36.147579, 31.569948, 49.132736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653988, 31.172894, 49.254562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716148, 31.491104, 49.488823>,  <36.753445, 31.682032, 49.629379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.716148, 31.491104, 49.488823>,  <36.653988, 31.172894, 49.254562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716148, 31.491104, 49.488823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031761, -0.588522, 0.807857,
		0.987340, -0.144145, -0.066192,
		0.155404, 0.795527, 0.585650,
		36.762768, 31.729763, 49.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104229, 31.036543, 49.731655>,  <36.653988, 31.172894, 49.254562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104229, 31.036543, 49.731655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985737, 31.358616, 49.937153>,  <36.914642, 31.551859, 50.060452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985737, 31.358616, 49.937153>,  <37.104229, 31.036543, 49.731655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985737, 31.358616, 49.937153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018499, -0.542622, 0.839773,
		0.954938, 0.239261, 0.175635,
		-0.296228, 0.805180, 0.513745,
		36.896870, 31.600170, 50.091278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431412, 30.972935, 50.371365>,  <37.104229, 31.036543, 49.731655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431412, 30.972935, 50.371365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128288, 31.224733, 50.440022>,  <36.946415, 31.375813, 50.481216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128288, 31.224733, 50.440022>,  <37.431412, 30.972935, 50.371365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128288, 31.224733, 50.440022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192087, -0.466644, 0.863334,
		0.623563, 0.621270, 0.474544,
		-0.757807, 0.629497, 0.171644,
		36.900948, 31.413582, 50.491516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644676, 31.152937, 50.921452>,  <37.431412, 30.972935, 50.371365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644676, 31.152937, 50.921452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261120, 31.265835, 50.933205>,  <37.030987, 31.333574, 50.940258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.261120, 31.265835, 50.933205>,  <37.644676, 31.152937, 50.921452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261120, 31.265835, 50.933205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091426, -0.405304, 0.909599,
		0.268640, 0.869520, 0.414448,
		-0.958892, 0.282246, 0.029384,
		36.973454, 31.350508, 50.942020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556370, 31.577677, 51.486980>,  <37.644676, 31.152937, 50.921452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556370, 31.577677, 51.486980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208591, 31.399584, 51.401356>,  <36.999924, 31.292728, 51.349979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.208591, 31.399584, 51.401356>,  <37.556370, 31.577677, 51.486980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208591, 31.399584, 51.401356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027659, -0.388762, 0.920923,
		-0.493247, 0.806617, 0.325694,
		-0.869449, -0.445235, -0.214066,
		36.947758, 31.266014, 51.337135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231789, 31.650263, 52.057323>,  <37.556370, 31.577677, 51.486980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231789, 31.650263, 52.057323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.029133, 31.361692, 51.868492>,  <36.907539, 31.188551, 51.755192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.029133, 31.361692, 51.868492>,  <37.231789, 31.650263, 52.057323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029133, 31.361692, 51.868492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045804, -0.569306, 0.820849,
		-0.860939, 0.394254, 0.321478,
		-0.506642, -0.721425, -0.472080,
		36.877140, 31.145266, 51.726868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770657, 31.275385, 52.583527>,  <37.231789, 31.650263, 52.057323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770657, 31.275385, 52.583527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779366, 31.005415, 52.288502>,  <36.784592, 30.843433, 52.111485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779366, 31.005415, 52.288502>,  <36.770657, 31.275385, 52.583527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779366, 31.005415, 52.288502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064573, -0.737151, 0.672636,
		-0.997675, 0.032983, -0.059630,
		0.021771, -0.674923, -0.737567,
		36.785896, 30.802938, 52.067230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055790, 31.016884, 52.598560>,  <36.770657, 31.275385, 52.583527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055790, 31.016884, 52.598560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375057, 30.819696, 52.460049>,  <36.566616, 30.701384, 52.376942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375057, 30.819696, 52.460049>,  <36.055790, 31.016884, 52.598560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375057, 30.819696, 52.460049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059996, -0.636987, 0.768536,
		-0.599435, -0.592649, -0.538001,
		0.798171, -0.492966, -0.346276,
		36.614506, 30.671806, 52.356167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383713, 31.373041, 52.806675>,  <36.055790, 31.016884, 52.598560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383713, 31.373041, 52.806675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071991, 31.148623, 52.918327>,  <34.884960, 31.013971, 52.985317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071991, 31.148623, 52.918327>,  <35.383713, 31.373041, 52.806675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071991, 31.148623, 52.918327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383808, 0.075231, -0.920343,
		0.495357, -0.824358, -0.273962,
		-0.779303, -0.561047, 0.279129,
		34.838200, 30.980309, 53.002068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232655, 30.814535, 52.284344>,  <35.383713, 31.373041, 52.806675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232655, 30.814535, 52.284344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892269, 30.833084, 52.493610>,  <34.688038, 30.844213, 52.619171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.892269, 30.833084, 52.493610>,  <35.232655, 30.814535, 52.284344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892269, 30.833084, 52.493610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523262, 0.011025, -0.852100,
		-0.045291, -0.998863, 0.014889,
		-0.850967, 0.046383, 0.523167,
		34.636978, 30.846996, 52.650562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687401, 30.344957, 52.031258>,  <35.232655, 30.814535, 52.284344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687401, 30.344957, 52.031258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497437, 30.647982, 52.210392>,  <34.383457, 30.829796, 52.317875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497437, 30.647982, 52.210392>,  <34.687401, 30.344957, 52.031258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497437, 30.647982, 52.210392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574958, 0.118167, -0.809604,
		-0.666246, -0.641977, 0.379448,
		-0.474909, 0.757563, 0.447839,
		34.354965, 30.875250, 52.344742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015972, 30.289749, 51.793072>,  <34.687401, 30.344957, 52.031258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015972, 30.289749, 51.793072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989700, 30.662302, 51.936298>,  <33.973938, 30.885834, 52.022236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989700, 30.662302, 51.936298>,  <34.015972, 30.289749, 51.793072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989700, 30.662302, 51.936298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578862, 0.256728, -0.773958,
		-0.812777, -0.258103, 0.522281,
		-0.065677, 0.931383, 0.358068,
		33.969997, 30.941717, 52.043720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302525, 30.530035, 51.690250>,  <34.015972, 30.289749, 51.793072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302525, 30.530035, 51.690250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514709, 30.867338, 51.724953>,  <33.642021, 31.069719, 51.745773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514709, 30.867338, 51.724953>,  <33.302525, 30.530035, 51.690250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514709, 30.867338, 51.724953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416098, 0.348174, -0.840022,
		-0.738559, 0.409505, 0.535571,
		0.530465, 0.843256, 0.086753,
		33.673851, 31.120316, 51.750977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711227, 31.089716, 51.445583>,  <33.302525, 30.530035, 51.690250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711227, 31.089716, 51.445583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072655, 31.260723, 51.456799>,  <33.289513, 31.363327, 51.463528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072655, 31.260723, 51.456799>,  <32.711227, 31.089716, 51.445583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072655, 31.260723, 51.456799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217237, 0.513581, -0.830086,
		-0.369276, 0.743951, 0.556930,
		0.903572, 0.427517, 0.028040,
		33.343727, 31.388979, 51.465210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512466, 31.824158, 51.318272>,  <32.711227, 31.089716, 51.445583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512466, 31.824158, 51.318272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892410, 31.767328, 51.206863>,  <33.120377, 31.733231, 51.140018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892410, 31.767328, 51.206863>,  <32.512466, 31.824158, 51.318272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892410, 31.767328, 51.206863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153359, 0.564588, -0.811000,
		0.272473, 0.813053, 0.514493,
		0.949863, -0.142074, -0.278524,
		33.177368, 31.724707, 51.123306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797310, 32.552540, 51.145782>,  <32.512466, 31.824158, 51.318272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797310, 32.552540, 51.145782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040173, 32.292114, 50.963589>,  <33.185890, 32.135857, 50.854271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.040173, 32.292114, 50.963589>,  <32.797310, 32.552540, 51.145782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040173, 32.292114, 50.963589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006292, 0.569285, -0.822116,
		0.794554, 0.502022, 0.341550,
		0.607160, -0.651067, -0.455487,
		33.222321, 32.096794, 50.826942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223057, 32.958576, 50.728523>,  <32.797310, 32.552540, 51.145782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223057, 32.958576, 50.728523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278492, 32.593819, 50.573997>,  <33.311752, 32.374962, 50.481281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.278492, 32.593819, 50.573997>,  <33.223057, 32.958576, 50.728523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278492, 32.593819, 50.573997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139909, 0.404190, -0.903912,
		0.980418, 0.071219, 0.183597,
		0.138584, -0.911898, -0.386310,
		33.320068, 32.320248, 50.458103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862198, 32.982864, 50.392956>,  <33.223057, 32.958576, 50.728523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862198, 32.982864, 50.392956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670765, 32.671162, 50.231110>,  <33.555904, 32.484138, 50.134003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670765, 32.671162, 50.231110>,  <33.862198, 32.982864, 50.392956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670765, 32.671162, 50.231110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243021, 0.325257, -0.913865,
		0.843741, -0.535690, 0.033714,
		-0.478583, -0.779259, -0.404617,
		33.527191, 32.437386, 50.109726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417465, 32.593914, 49.954647>,  <33.862198, 32.982864, 50.392956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417465, 32.593914, 49.954647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049580, 32.490322, 49.836632>,  <33.828846, 32.428165, 49.765823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.049580, 32.490322, 49.836632>,  <34.417465, 32.593914, 49.954647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049580, 32.490322, 49.836632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253312, 0.182664, -0.949983,
		0.299922, -0.948453, -0.102395,
		-0.919717, -0.258982, -0.295040,
		33.773663, 32.412628, 49.748119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574940, 32.182182, 49.407280>,  <34.417465, 32.593914, 49.954647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574940, 32.182182, 49.407280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186897, 32.255348, 49.343475>,  <33.954071, 32.299248, 49.305191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186897, 32.255348, 49.343475>,  <34.574940, 32.182182, 49.407280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186897, 32.255348, 49.343475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177100, 0.084143, -0.980589,
		-0.165945, -0.979521, -0.114022,
		-0.970102, 0.182917, -0.159510,
		33.895866, 32.310223, 49.295624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262634, 31.716789, 48.848186>,  <34.574940, 32.182182, 49.407280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262634, 31.716789, 48.848186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056683, 32.058731, 48.873859>,  <33.933109, 32.263897, 48.889263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056683, 32.058731, 48.873859>,  <34.262634, 31.716789, 48.848186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056683, 32.058731, 48.873859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108577, 0.139293, -0.984281,
		-0.850357, -0.499821, -0.164537,
		-0.514883, 0.854855, 0.064180,
		33.902218, 32.315189, 48.893112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879810, 31.851496, 48.213932>,  <34.262634, 31.716789, 48.848186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879810, 31.851496, 48.213932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907368, 32.227451, 48.347717>,  <33.923901, 32.453026, 48.427986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907368, 32.227451, 48.347717>,  <33.879810, 31.851496, 48.213932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907368, 32.227451, 48.347717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258820, 0.306937, -0.915861,
		-0.963465, 0.149663, -0.222116,
		0.068895, 0.939888, 0.334459,
		33.928036, 32.509418, 48.448055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363808, 32.263454, 47.817440>,  <33.879810, 31.851496, 48.213932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363808, 32.263454, 47.817440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632790, 32.532795, 47.940342>,  <33.794178, 32.694397, 48.014084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632790, 32.532795, 47.940342>,  <33.363808, 32.263454, 47.817440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632790, 32.532795, 47.940342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044701, 0.377423, -0.924961,
		-0.738786, 0.635730, 0.223701,
		0.672456, 0.673349, 0.307252,
		33.834526, 32.734798, 48.032516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233021, 32.732430, 47.384064>,  <33.363808, 32.263454, 47.817440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233021, 32.732430, 47.384064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588699, 32.852795, 47.521923>,  <33.802105, 32.925014, 47.604641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588699, 32.852795, 47.521923>,  <33.233021, 32.732430, 47.384064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588699, 32.852795, 47.521923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140611, 0.537106, -0.831713,
		-0.435383, 0.788018, 0.435282,
		0.889197, 0.300908, 0.344650,
		33.855457, 32.943066, 47.625317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140846, 33.482922, 47.295639>,  <33.233021, 32.732430, 47.384064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140846, 33.482922, 47.295639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527306, 33.387302, 47.334435>,  <33.759182, 33.329929, 47.357712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527306, 33.387302, 47.334435>,  <33.140846, 33.482922, 47.295639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527306, 33.387302, 47.334435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217147, 0.550595, -0.806035,
		0.139279, 0.799813, 0.583867,
		0.966151, -0.239049, 0.096991,
		33.817150, 33.315586, 47.363533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611511, 34.075127, 47.444736>,  <33.140846, 33.482922, 47.295639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611511, 34.075127, 47.444736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790550, 33.788597, 47.230621>,  <33.897976, 33.616680, 47.102154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790550, 33.788597, 47.230621>,  <33.611511, 34.075127, 47.444736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790550, 33.788597, 47.230621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077347, 0.627367, -0.774873,
		0.890881, 0.305432, 0.336217,
		0.447602, -0.716325, -0.535286,
		33.924831, 33.573700, 47.070034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456261, 34.435184, 46.815651>,  <33.611511, 34.075127, 47.444736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456261, 34.435184, 46.815651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731091, 34.146725, 46.780144>,  <33.895988, 33.973648, 46.758839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731091, 34.146725, 46.780144>,  <33.456261, 34.435184, 46.815651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731091, 34.146725, 46.780144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254008, 0.352855, -0.900541,
		0.680744, 0.596188, 0.425614,
		0.687072, -0.721147, -0.088767,
		33.937214, 33.930382, 46.753513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981182, 34.732399, 46.375736>,  <33.456261, 34.435184, 46.815651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981182, 34.732399, 46.375736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071045, 34.344803, 46.334591>,  <34.124962, 34.112244, 46.309902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071045, 34.344803, 46.334591>,  <33.981182, 34.732399, 46.375736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071045, 34.344803, 46.334591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181622, 0.145351, -0.972567,
		0.957361, 0.199816, 0.208645,
		0.224662, -0.968993, -0.102863,
		34.138443, 34.054104, 46.303734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640182, 34.701942, 46.105972>,  <33.981182, 34.732399, 46.375736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640182, 34.701942, 46.105972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455936, 34.362312, 46.002510>,  <34.345390, 34.158535, 45.940434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455936, 34.362312, 46.002510>,  <34.640182, 34.701942, 46.105972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455936, 34.362312, 46.002510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196897, 0.186403, -0.962541,
		0.865487, -0.494287, 0.081321,
		-0.460613, -0.849079, -0.258653,
		34.317753, 34.107590, 45.924915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.215782, 44.395500, 34.167343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846069, 44.415176, 34.318752>,  <44.624241, 44.426983, 34.409599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.846069, 44.415176, 34.318752>,  <45.215782, 44.395500, 34.167343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846069, 44.415176, 34.318752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050370, -0.998707, 0.006789,
		0.378369, -0.012792, 0.925566,
		-0.924283, 0.049190, 0.378524,
		44.568783, 44.429932, 34.432308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155968, 43.960144, 34.780666>,  <45.215782, 44.395500, 34.167343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155968, 43.960144, 34.780666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778660, 43.993469, 34.652100>,  <44.552277, 44.013466, 34.574959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.778660, 43.993469, 34.652100>,  <45.155968, 43.960144, 34.780666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778660, 43.993469, 34.652100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083073, -0.996438, -0.014490,
		-0.321479, 0.013033, 0.946827,
		-0.943266, 0.083314, -0.321417,
		44.495682, 44.018463, 34.555676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716293, 43.728577, 35.355389>,  <45.155968, 43.960144, 34.780666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716293, 43.728577, 35.355389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.469303, 43.687897, 35.043392>,  <44.321110, 43.663486, 34.856194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.469303, 43.687897, 35.043392>,  <44.716293, 43.728577, 35.355389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469303, 43.687897, 35.043392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136070, -0.962846, 0.233266,
		-0.774734, 0.250169, 0.580692,
		-0.617473, -0.101704, -0.779989,
		44.284061, 43.657387, 34.809395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163330, 43.471214, 35.620949>,  <44.716293, 43.728577, 35.355389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163330, 43.471214, 35.620949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182442, 43.383850, 35.231075>,  <44.193909, 43.331432, 34.997150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182442, 43.383850, 35.231075>,  <44.163330, 43.471214, 35.620949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182442, 43.383850, 35.231075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117711, -0.970232, 0.211646,
		-0.991898, 0.104620, -0.072065,
		0.047777, -0.218414, -0.974686,
		44.196774, 43.318325, 34.938671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646324, 42.969620, 35.509636>,  <44.163330, 43.471214, 35.620949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646324, 42.969620, 35.509636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867386, 42.942219, 35.177399>,  <44.000023, 42.925777, 34.978058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867386, 42.942219, 35.177399>,  <43.646324, 42.969620, 35.509636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867386, 42.942219, 35.177399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001547, -0.996530, 0.083215,
		-0.833410, -0.047274, -0.550629,
		0.552652, -0.068500, -0.830592,
		44.033180, 42.921669, 34.928223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230217, 42.462833, 35.062134>,  <43.646324, 42.969620, 35.509636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230217, 42.462833, 35.062134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606598, 42.452213, 34.927135>,  <43.832428, 42.445843, 34.846134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606598, 42.452213, 34.927135>,  <43.230217, 42.462833, 35.062134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606598, 42.452213, 34.927135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068408, -0.991265, -0.112754,
		-0.331558, 0.129184, -0.934549,
		0.940951, -0.026546, -0.337499,
		43.888882, 42.444248, 34.825886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186905, 41.941837, 34.500381>,  <43.230217, 42.462833, 35.062134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186905, 41.941837, 34.500381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568520, 41.992336, 34.609108>,  <43.797489, 42.022636, 34.674343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568520, 41.992336, 34.609108>,  <43.186905, 41.941837, 34.500381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568520, 41.992336, 34.609108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153090, -0.984980, -0.079855,
		0.257652, 0.117796, -0.959030,
		0.954033, 0.126243, 0.271816,
		43.854729, 42.030209, 34.690651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476597, 41.664127, 33.996292>,  <43.186905, 41.941837, 34.500381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476597, 41.664127, 33.996292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.743629, 41.643105, 34.293365>,  <43.903851, 41.630489, 34.471607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.743629, 41.643105, 34.293365>,  <43.476597, 41.664127, 33.996292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743629, 41.643105, 34.293365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040814, -0.998589, -0.033983,
		0.743417, -0.007626, -0.668784,
		0.667581, -0.052559, 0.742679,
		43.943905, 41.627338, 34.516171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792519, 41.094894, 33.810642>,  <43.476597, 41.664127, 33.996292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792519, 41.094894, 33.810642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.891464, 41.173214, 34.190216>,  <43.950832, 41.220203, 34.417961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.891464, 41.173214, 34.190216>,  <43.792519, 41.094894, 33.810642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891464, 41.173214, 34.190216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026127, -0.980362, 0.195468,
		0.968570, -0.023559, -0.247622,
		0.247364, 0.195795, 0.948934,
		43.965672, 41.231953, 34.474895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288639, 40.601879, 33.875702>,  <43.792519, 41.094894, 33.810642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288639, 40.601879, 33.875702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141384, 40.705990, 34.232742>,  <44.053032, 40.768456, 34.446968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141384, 40.705990, 34.232742>,  <44.288639, 40.601879, 33.875702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141384, 40.705990, 34.232742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008576, -0.960929, 0.276661,
		0.929734, 0.094193, 0.355982,
		-0.368133, 0.260274, 0.892600,
		44.030945, 40.784073, 34.500523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573959, 40.041237, 34.314022>,  <44.288639, 40.601879, 33.875702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573959, 40.041237, 34.314022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265293, 40.227203, 34.487637>,  <44.080093, 40.338783, 34.591805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.265293, 40.227203, 34.487637>,  <44.573959, 40.041237, 34.314022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265293, 40.227203, 34.487637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213010, -0.831915, 0.512390,
		0.599296, 0.302942, 0.740993,
		-0.771668, 0.464912, 0.434034,
		44.033794, 40.366676, 34.617847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635963, 40.032738, 35.020382>,  <44.573959, 40.041237, 34.314022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635963, 40.032738, 35.020382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243454, 40.051693, 34.945698>,  <44.007950, 40.063065, 34.900887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243454, 40.051693, 34.945698>,  <44.635963, 40.032738, 35.020382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243454, 40.051693, 34.945698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144207, -0.823327, 0.548942,
		-0.127710, 0.565586, 0.814741,
		-0.981272, 0.047386, -0.186708,
		43.949074, 40.065910, 34.889687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330643, 39.810329, 35.645348>,  <44.635963, 40.032738, 35.020382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330643, 39.810329, 35.645348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020313, 39.785973, 35.394146>,  <43.834114, 39.771358, 35.243423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020313, 39.785973, 35.394146>,  <44.330643, 39.810329, 35.645348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020313, 39.785973, 35.394146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282263, -0.856684, 0.431764,
		-0.564289, 0.512235, 0.647451,
		-0.775826, -0.060889, -0.628002,
		43.787567, 39.767708, 35.205746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762573, 39.544685, 35.996876>,  <44.330643, 39.810329, 35.645348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762573, 39.544685, 35.996876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648144, 39.446423, 35.626404>,  <43.579487, 39.387463, 35.404121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648144, 39.446423, 35.626404>,  <43.762573, 39.544685, 35.996876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648144, 39.446423, 35.626404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215272, -0.925392, 0.311942,
		-0.933713, 0.288619, 0.211844,
		-0.286072, -0.245660, -0.926183,
		43.562321, 39.372726, 35.348549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143311, 39.214993, 36.131886>,  <43.762573, 39.544685, 35.996876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143311, 39.214993, 36.131886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257706, 39.085243, 35.771221>,  <43.326344, 39.007393, 35.554821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257706, 39.085243, 35.771221>,  <43.143311, 39.214993, 36.131886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257706, 39.085243, 35.771221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341899, -0.913570, 0.220217,
		-0.895163, 0.245297, -0.372174,
		0.285988, -0.324376, -0.901660,
		43.343502, 38.987930, 35.500725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632721, 38.730572, 35.864567>,  <43.143311, 39.214993, 36.131886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632721, 38.730572, 35.864567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952278, 38.649452, 35.638065>,  <43.144012, 38.600780, 35.502163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952278, 38.649452, 35.638065>,  <42.632721, 38.730572, 35.864567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952278, 38.649452, 35.638065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125914, -0.976972, 0.172257,
		-0.588147, -0.066315, -0.806031,
		0.798892, -0.202803, -0.566252,
		43.191944, 38.588612, 35.468189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480850, 38.149151, 35.504875>,  <42.632721, 38.730572, 35.864567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480850, 38.149151, 35.504875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877659, 38.179085, 35.464287>,  <43.115742, 38.197044, 35.439934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877659, 38.179085, 35.464287>,  <42.480850, 38.149151, 35.504875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877659, 38.179085, 35.464287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089174, -0.985399, 0.145040,
		-0.089139, -0.152932, -0.984209,
		0.992019, 0.074837, -0.101475,
		43.175266, 38.201534, 35.433846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639080, 37.796925, 34.942089>,  <42.480850, 38.149151, 35.504875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639080, 37.796925, 34.942089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956356, 37.759560, 35.182793>,  <43.146721, 37.737141, 35.327217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956356, 37.759560, 35.182793>,  <42.639080, 37.796925, 34.942089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956356, 37.759560, 35.182793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137522, -0.990115, 0.027571,
		0.593239, -0.104625, -0.798199,
		0.793193, -0.093414, 0.601763,
		43.194313, 37.731537, 35.363323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097927, 37.129730, 34.757046>,  <42.639080, 37.796925, 34.942089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097927, 37.129730, 34.757046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190594, 37.235271, 35.131577>,  <43.246193, 37.298595, 35.356297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190594, 37.235271, 35.131577>,  <43.097927, 37.129730, 34.757046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190594, 37.235271, 35.131577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171229, -0.936425, 0.306249,
		0.957608, -0.231273, -0.171757,
		0.231665, 0.263857, 0.936329,
		43.260094, 37.314430, 35.412476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499912, 36.602173, 34.934505>,  <43.097927, 37.129730, 34.757046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499912, 36.602173, 34.934505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412643, 36.762180, 35.290569>,  <43.360283, 36.858185, 35.504208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412643, 36.762180, 35.290569>,  <43.499912, 36.602173, 34.934505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412643, 36.762180, 35.290569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101243, -0.916488, 0.387040,
		0.970644, -0.005681, 0.240452,
		-0.218173, 0.400023, 0.890159,
		43.347191, 36.882187, 35.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987312, 36.177368, 35.429974>,  <43.499912, 36.602173, 34.934505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987312, 36.177368, 35.429974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690079, 36.363594, 35.622253>,  <43.511738, 36.475330, 35.737621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690079, 36.363594, 35.622253>,  <43.987312, 36.177368, 35.429974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690079, 36.363594, 35.622253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214527, -0.846144, 0.487870,
		0.633876, 0.259407, 0.728635,
		-0.743088, 0.465562, 0.480700,
		43.467152, 36.503262, 35.766464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612484, 36.520252, 35.582642>,  <43.987312, 36.177368, 35.429974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612484, 36.520252, 35.582642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983585, 36.372692, 35.605209>,  <45.206245, 36.284157, 35.618748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983585, 36.372692, 35.605209>,  <44.612484, 36.520252, 35.582642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983585, 36.372692, 35.605209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345026, 0.905504, 0.247022,
		-0.142210, -0.209711, 0.967366,
		0.927757, -0.368896, 0.056415,
		45.261913, 36.262024, 35.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951828, 36.685471, 36.231850>,  <44.612484, 36.520252, 35.582642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951828, 36.685471, 36.231850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256336, 36.625668, 35.979465>,  <45.439041, 36.589787, 35.828033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.256336, 36.625668, 35.979465>,  <44.951828, 36.685471, 36.231850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256336, 36.625668, 35.979465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475491, 0.790303, 0.386432,
		0.440875, -0.594197, 0.672726,
		0.761274, -0.149507, -0.630960,
		45.484718, 36.580814, 35.790176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599236, 36.785259, 36.705353>,  <44.951828, 36.685471, 36.231850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599236, 36.785259, 36.705353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658901, 36.876202, 36.320427>,  <45.694702, 36.930767, 36.089470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658901, 36.876202, 36.320427>,  <45.599236, 36.785259, 36.705353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658901, 36.876202, 36.320427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575351, 0.771542, 0.271467,
		0.804190, -0.594165, -0.015724,
		0.149165, 0.227358, -0.962319,
		45.703651, 36.944408, 36.031731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321323, 36.969280, 36.618446>,  <45.599236, 36.785259, 36.705353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321323, 36.969280, 36.618446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.160004, 37.120159, 36.284962>,  <46.063213, 37.210686, 36.084869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.160004, 37.120159, 36.284962>,  <46.321323, 36.969280, 36.618446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160004, 37.120159, 36.284962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493725, 0.856792, 0.148806,
		0.770446, -0.351612, -0.531773,
		-0.403297, 0.377196, -0.833711,
		46.039013, 37.233318, 36.034847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879730, 37.297844, 36.233692>,  <46.321323, 36.969280, 36.618446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879730, 37.297844, 36.233692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.541622, 37.468044, 36.104401>,  <46.338757, 37.570164, 36.026825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.541622, 37.468044, 36.104401>,  <46.879730, 37.297844, 36.233692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541622, 37.468044, 36.104401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420626, 0.902896, 0.088617,
		0.329545, -0.061052, -0.942164,
		-0.845266, 0.425502, -0.323225,
		46.288044, 37.595695, 36.007435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113605, 38.017101, 35.987156>,  <46.879730, 37.297844, 36.233692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113605, 38.017101, 35.987156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.714748, 38.045418, 35.976604>,  <46.475433, 38.062408, 35.970276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.714748, 38.045418, 35.976604>,  <47.113605, 38.017101, 35.987156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714748, 38.045418, 35.976604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064387, 0.979000, 0.193423,
		0.039514, 0.191172, -0.980761,
		-0.997143, 0.070791, -0.026375,
		46.415607, 38.066654, 35.968693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857101, 38.715290, 35.576977>,  <47.113605, 38.017101, 35.987156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857101, 38.715290, 35.576977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542221, 38.608673, 35.799423>,  <46.353294, 38.544704, 35.932892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542221, 38.608673, 35.799423>,  <46.857101, 38.715290, 35.576977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542221, 38.608673, 35.799423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224237, 0.963761, 0.144507,
		-0.574484, -0.010946, -0.818443,
		-0.787201, -0.266542, 0.556119,
		46.306061, 38.528709, 35.966259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250511, 39.030312, 35.321560>,  <46.857101, 38.715290, 35.576977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250511, 39.030312, 35.321560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.146919, 38.958973, 35.701271>,  <46.084763, 38.916168, 35.929096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.146919, 38.958973, 35.701271>,  <46.250511, 39.030312, 35.321560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146919, 38.958973, 35.701271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378860, 0.922802, 0.070013,
		-0.888479, -0.341510, -0.306556,
		-0.258980, -0.178347, 0.949274,
		46.069225, 38.905468, 35.986053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599163, 39.304138, 35.392620>,  <46.250511, 39.030312, 35.321560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599163, 39.304138, 35.392620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752857, 39.274956, 35.760757>,  <45.845074, 39.257446, 35.981640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752857, 39.274956, 35.760757>,  <45.599163, 39.304138, 35.392620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752857, 39.274956, 35.760757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409150, 0.880177, 0.240594,
		-0.827621, -0.469005, 0.308348,
		0.384240, -0.072960, 0.920346,
		45.868130, 39.253067, 36.036861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025204, 39.645870, 35.869225>,  <45.599163, 39.304138, 35.392620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025204, 39.645870, 35.869225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361649, 39.625999, 36.084656>,  <45.563515, 39.614075, 36.213917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361649, 39.625999, 36.084656>,  <45.025204, 39.645870, 35.869225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361649, 39.625999, 36.084656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219159, 0.879059, 0.423349,
		-0.494476, -0.474117, 0.728496,
		0.841108, -0.049680, 0.538580,
		45.613979, 39.611095, 36.246231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840408, 39.797695, 36.563995>,  <45.025204, 39.645870, 35.869225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840408, 39.797695, 36.563995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228081, 39.885052, 36.518414>,  <45.460686, 39.937466, 36.491062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.228081, 39.885052, 36.518414>,  <44.840408, 39.797695, 36.563995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228081, 39.885052, 36.518414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170626, 0.928835, 0.328865,
		0.177667, -0.299287, 0.937476,
		0.969186, 0.218387, -0.113957,
		45.518837, 39.950569, 36.484226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094444, 40.195892, 37.214592>,  <44.840408, 39.797695, 36.563995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094444, 40.195892, 37.214592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388794, 40.276939, 36.956158>,  <45.565403, 40.325569, 36.801098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.388794, 40.276939, 36.956158>,  <45.094444, 40.195892, 37.214592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388794, 40.276939, 36.956158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043300, 0.938143, 0.343531,
		0.675729, -0.280772, 0.681584,
		0.735877, 0.202621, -0.646088,
		45.609558, 40.337727, 36.762333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610912, 40.574360, 37.702866>,  <45.094444, 40.195892, 37.214592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610912, 40.574360, 37.702866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.701077, 40.650692, 37.320709>,  <45.755177, 40.696491, 37.091415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.701077, 40.650692, 37.320709>,  <45.610912, 40.574360, 37.702866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701077, 40.650692, 37.320709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066735, 0.975301, 0.210557,
		0.971974, -0.111221, 0.207114,
		0.225417, 0.190834, -0.955390,
		45.768700, 40.707943, 37.034092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196793, 40.834042, 37.792835>,  <45.610912, 40.574360, 37.702866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196793, 40.834042, 37.792835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030964, 40.958675, 37.450832>,  <45.931465, 41.033455, 37.245628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030964, 40.958675, 37.450832>,  <46.196793, 40.834042, 37.792835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030964, 40.958675, 37.450832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123143, 0.911707, 0.391952,
		0.901645, 0.267782, -0.339602,
		-0.414575, 0.311582, -0.855011,
		45.906590, 41.052151, 37.194328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577400, 41.513184, 37.684666>,  <46.196793, 40.834042, 37.792835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577400, 41.513184, 37.684666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276600, 41.534130, 37.421833>,  <46.096119, 41.546696, 37.264133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276600, 41.534130, 37.421833>,  <46.577400, 41.513184, 37.684666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276600, 41.534130, 37.421833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066674, 0.985685, 0.154857,
		0.655782, 0.160263, -0.737744,
		-0.752001, 0.052364, -0.657079,
		46.050999, 41.549839, 37.224709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696785, 42.177956, 37.376690>,  <46.577400, 41.513184, 37.684666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696785, 42.177956, 37.376690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.312042, 42.079086, 37.329815>,  <46.081196, 42.019764, 37.301689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.312042, 42.079086, 37.329815>,  <46.696785, 42.177956, 37.376690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312042, 42.079086, 37.329815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271789, 0.912057, 0.307055,
		0.030986, 0.327194, -0.944449,
		-0.961858, -0.247177, -0.117189,
		46.023483, 42.004932, 37.294659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369141, 42.561001, 36.814018>,  <46.696785, 42.177956, 37.376690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369141, 42.561001, 36.814018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059990, 42.439671, 37.036961>,  <45.874500, 42.366871, 37.170727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059990, 42.439671, 37.036961>,  <46.369141, 42.561001, 36.814018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059990, 42.439671, 37.036961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264446, 0.952407, 0.151620,
		-0.576822, -0.030207, -0.816311,
		-0.772880, -0.303328, 0.557358,
		45.828125, 42.348671, 37.204166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851120, 43.024704, 36.647560>,  <46.369141, 42.561001, 36.814018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851120, 43.024704, 36.647560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711357, 42.856892, 36.982681>,  <45.627499, 42.756207, 37.183754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711357, 42.856892, 36.982681>,  <45.851120, 43.024704, 36.647560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711357, 42.856892, 36.982681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369313, 0.883436, 0.288356,
		-0.861118, -0.208659, -0.463613,
		-0.349404, -0.419527, 0.837803,
		45.606537, 42.731033, 37.234024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136242, 43.249508, 36.589199>,  <45.851120, 43.024704, 36.647560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136242, 43.249508, 36.589199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.211372, 43.154205, 36.970345>,  <45.256451, 43.097023, 37.199032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.211372, 43.154205, 36.970345>,  <45.136242, 43.249508, 36.589199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211372, 43.154205, 36.970345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442002, 0.845847, 0.298627,
		-0.877129, -0.477259, 0.053564,
		0.187829, -0.238259, 0.952866,
		45.267723, 43.082729, 37.256203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491722, 43.402180, 36.919090>,  <45.136242, 43.249508, 36.589199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491722, 43.402180, 36.919090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.774921, 43.419392, 37.201054>,  <44.944839, 43.429718, 37.370232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.774921, 43.419392, 37.201054>,  <44.491722, 43.402180, 36.919090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774921, 43.419392, 37.201054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380281, 0.864301, 0.329195,
		-0.595085, -0.501131, 0.628284,
		0.707997, 0.043026, 0.704904,
		44.987320, 43.432301, 37.412525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194950, 43.450264, 37.574078>,  <44.491722, 43.402180, 36.919090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194950, 43.450264, 37.574078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559250, 43.605629, 37.630177>,  <44.777828, 43.698849, 37.663837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559250, 43.605629, 37.630177>,  <44.194950, 43.450264, 37.574078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559250, 43.605629, 37.630177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412908, 0.861732, 0.294828,
		-0.006340, -0.326424, 0.945202,
		0.910751, 0.388413, 0.140246,
		44.832474, 43.722153, 37.672249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.028530, 36.876137, 42.438118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754684, 36.653805, 42.249500>,  <37.590378, 36.520405, 42.136330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754684, 36.653805, 42.249500>,  <38.028530, 36.876137, 42.438118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754684, 36.653805, 42.249500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336552, 0.332794, -0.880898,
		0.646554, -0.761778, -0.040772,
		-0.684617, -0.555826, -0.471547,
		37.549297, 36.487057, 42.108036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397682, 36.579678, 41.884701>,  <38.028530, 36.876137, 42.438118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397682, 36.579678, 41.884701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021790, 36.521732, 41.760815>,  <37.796253, 36.486965, 41.686481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021790, 36.521732, 41.760815>,  <38.397682, 36.579678, 41.884701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021790, 36.521732, 41.760815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292946, 0.126032, -0.947786,
		0.176341, -0.981391, -0.075997,
		-0.939727, -0.144870, -0.309720,
		37.739872, 36.478271, 41.667900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514896, 36.272648, 41.286983>,  <38.397682, 36.579678, 41.884701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514896, 36.272648, 41.286983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144390, 36.421101, 41.260746>,  <37.922089, 36.510170, 41.245003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144390, 36.421101, 41.260746>,  <38.514896, 36.272648, 41.286983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144390, 36.421101, 41.260746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132074, 0.156637, -0.978786,
		-0.352982, -0.915275, -0.194103,
		-0.926261, 0.371130, -0.065594,
		37.866512, 36.532440, 41.241066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284302, 35.945740, 40.745014>,  <38.514896, 36.272648, 41.286983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284302, 35.945740, 40.745014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061268, 36.277145, 40.765671>,  <37.927448, 36.475986, 40.778065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061268, 36.277145, 40.765671>,  <38.284302, 35.945740, 40.745014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061268, 36.277145, 40.765671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164720, 0.171400, -0.971334,
		-0.813613, -0.533095, -0.232042,
		-0.557585, 0.828512, 0.051642,
		37.893993, 36.525700, 40.781162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915512, 35.847733, 40.178352>,  <38.284302, 35.945740, 40.745014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915512, 35.847733, 40.178352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902161, 36.233566, 40.283016>,  <37.894150, 36.465065, 40.345814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902161, 36.233566, 40.283016>,  <37.915512, 35.847733, 40.178352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902161, 36.233566, 40.283016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097659, 0.263700, -0.959648,
		-0.994660, -0.006482, -0.103004,
		-0.033383, 0.964583, 0.261659,
		37.892147, 36.522942, 40.361515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421337, 36.208305, 39.750320>,  <37.915512, 35.847733, 40.178352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421337, 36.208305, 39.750320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653999, 36.503258, 39.887691>,  <37.793598, 36.680229, 39.970112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653999, 36.503258, 39.887691>,  <37.421337, 36.208305, 39.750320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653999, 36.503258, 39.887691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090504, 0.360903, -0.928202,
		-0.808384, 0.570976, 0.143186,
		0.581657, 0.737384, 0.343423,
		37.828495, 36.724472, 39.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076637, 36.832054, 39.562939>,  <37.421337, 36.208305, 39.750320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076637, 36.832054, 39.562939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464752, 36.916901, 39.609486>,  <37.697620, 36.967808, 39.637413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464752, 36.916901, 39.609486>,  <37.076637, 36.832054, 39.562939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464752, 36.916901, 39.609486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026673, 0.384270, -0.922835,
		-0.240464, 0.898523, 0.367196,
		0.970291, 0.212114, 0.116370,
		37.755840, 36.980534, 39.644398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253185, 37.483150, 39.316795>,  <37.076637, 36.832054, 39.562939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253185, 37.483150, 39.316795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616730, 37.316826, 39.303654>,  <37.834854, 37.217030, 39.295769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616730, 37.316826, 39.303654>,  <37.253185, 37.483150, 39.316795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616730, 37.316826, 39.303654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096794, 0.286862, -0.953069,
		0.405722, 0.863024, 0.300965,
		0.908857, -0.415813, -0.032851,
		37.889385, 37.192081, 39.293797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557232, 38.013336, 38.979744>,  <37.253185, 37.483150, 39.316795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557232, 38.013336, 38.979744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771812, 37.676701, 38.954636>,  <37.900562, 37.474720, 38.939571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771812, 37.676701, 38.954636>,  <37.557232, 38.013336, 38.979744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771812, 37.676701, 38.954636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221502, 0.212179, -0.951797,
		0.814341, 0.496694, 0.300239,
		0.536456, -0.841591, -0.062768,
		37.932751, 37.424225, 38.935806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264511, 38.245964, 38.802200>,  <37.557232, 38.013336, 38.979744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264511, 38.245964, 38.802200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227917, 37.868820, 38.674049>,  <38.205959, 37.642532, 38.597157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227917, 37.868820, 38.674049>,  <38.264511, 38.245964, 38.802200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227917, 37.868820, 38.674049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183198, 0.300302, -0.936086,
		0.978810, -0.144328, 0.145258,
		-0.091482, -0.942862, -0.320380,
		38.200474, 37.585960, 38.577934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784325, 38.126904, 38.320938>,  <38.264511, 38.245964, 38.802200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784325, 38.126904, 38.320938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538795, 37.822533, 38.236828>,  <38.391479, 37.639912, 38.186359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538795, 37.822533, 38.236828>,  <38.784325, 38.126904, 38.320938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538795, 37.822533, 38.236828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189387, 0.116649, -0.974949,
		0.766393, -0.638267, 0.072508,
		-0.613820, -0.760926, -0.210278,
		38.354649, 37.594254, 38.173744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084568, 37.762035, 37.823360>,  <38.784325, 38.126904, 38.320938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084568, 37.762035, 37.823360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716827, 37.616104, 37.764454>,  <38.496181, 37.528545, 37.729111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716827, 37.616104, 37.764454>,  <39.084568, 37.762035, 37.823360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716827, 37.616104, 37.764454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051581, 0.259303, -0.964418,
		0.390037, -0.894236, -0.219573,
		-0.919353, -0.364833, -0.147263,
		38.441021, 37.506653, 37.720276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106316, 37.269547, 37.285275>,  <39.084568, 37.762035, 37.823360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106316, 37.269547, 37.285275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747353, 37.442883, 37.318436>,  <38.531975, 37.546883, 37.338333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747353, 37.442883, 37.318436>,  <39.106316, 37.269547, 37.285275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747353, 37.442883, 37.318436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002155, 0.183605, -0.982998,
		-0.441193, -0.882331, -0.163835,
		-0.897410, 0.433338, 0.082907,
		38.478130, 37.572884, 37.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116951, 36.513622, 37.396393>,  <39.106316, 37.269547, 37.285275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116951, 36.513622, 37.396393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745049, 36.622379, 37.297092>,  <38.521908, 36.687634, 37.237511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745049, 36.622379, 37.297092>,  <39.116951, 36.513622, 37.396393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745049, 36.622379, 37.297092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368001, 0.707130, -0.603774,
		0.011386, -0.652720, -0.757514,
		-0.929756, 0.271891, -0.248253,
		38.466122, 36.703945, 37.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520454, 36.029930, 36.924580>,  <39.116951, 36.513622, 37.396393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520454, 36.029930, 36.924580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760658, 35.719894, 36.845974>,  <39.904781, 35.533871, 36.798813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760658, 35.719894, 36.845974>,  <39.520454, 36.029930, 36.924580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760658, 35.719894, 36.845974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486726, -0.549305, 0.679236,
		-0.634418, -0.312239, -0.707121,
		0.600510, -0.775094, -0.196514,
		39.940811, 35.487366, 36.787022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098621, 35.416435, 36.949669>,  <39.520454, 36.029930, 36.924580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098621, 35.416435, 36.949669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475250, 35.296329, 37.010704>,  <39.701229, 35.224266, 37.047325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475250, 35.296329, 37.010704>,  <39.098621, 35.416435, 36.949669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475250, 35.296329, 37.010704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322402, -0.672393, 0.666291,
		-0.097469, -0.676554, -0.729914,
		0.941571, -0.300269, 0.152585,
		39.757721, 35.206249, 37.056480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179600, 34.659214, 36.820400>,  <39.098621, 35.416435, 36.949669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179600, 34.659214, 36.820400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476585, 34.733120, 37.077961>,  <39.654778, 34.777462, 37.232498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476585, 34.733120, 37.077961>,  <39.179600, 34.659214, 36.820400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476585, 34.733120, 37.077961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368196, -0.690444, 0.622670,
		0.559626, -0.699392, -0.444600,
		0.742462, 0.184763, 0.643904,
		39.699326, 34.788548, 37.271133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316196, 34.071892, 37.256599>,  <39.179600, 34.659214, 36.820400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316196, 34.071892, 37.256599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499493, 34.332142, 37.498821>,  <39.609470, 34.488293, 37.644154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499493, 34.332142, 37.498821>,  <39.316196, 34.071892, 37.256599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499493, 34.332142, 37.498821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331832, -0.506808, 0.795634,
		0.824564, -0.565532, -0.016339,
		0.458238, 0.650630, 0.605557,
		39.636963, 34.527332, 37.680489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637741, 33.677750, 37.784653>,  <39.316196, 34.071892, 37.256599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637741, 33.677750, 37.784653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595741, 34.043808, 37.940334>,  <39.570541, 34.263443, 38.033741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595741, 34.043808, 37.940334>,  <39.637741, 33.677750, 37.784653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595741, 34.043808, 37.940334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311272, -0.401942, 0.861135,
		0.944503, -0.030730, 0.327063,
		-0.104998, 0.915149, 0.389200,
		39.564243, 34.318352, 38.057095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889912, 33.654049, 38.445801>,  <39.637741, 33.677750, 37.784653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889912, 33.654049, 38.445801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676247, 33.991924, 38.459473>,  <39.548050, 34.194649, 38.467674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676247, 33.991924, 38.459473>,  <39.889912, 33.654049, 38.445801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676247, 33.991924, 38.459473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368476, -0.269018, 0.889862,
		0.760854, 0.462735, 0.454947,
		-0.534159, 0.844693, 0.034177,
		39.515999, 34.245331, 38.469727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933746, 33.972267, 39.113392>,  <39.889912, 33.654049, 38.445801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933746, 33.972267, 39.113392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592545, 34.108704, 38.955383>,  <39.387825, 34.190563, 38.860580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592545, 34.108704, 38.955383>,  <39.933746, 33.972267, 39.113392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592545, 34.108704, 38.955383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482449, -0.226653, 0.846092,
		0.199059, 0.912298, 0.357894,
		-0.853006, 0.341088, -0.395020,
		39.336643, 34.211029, 38.836876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681580, 34.372478, 39.629398>,  <39.933746, 33.972267, 39.113392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681580, 34.372478, 39.629398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353291, 34.334484, 39.404049>,  <39.156315, 34.311687, 39.268841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353291, 34.334484, 39.404049>,  <39.681580, 34.372478, 39.629398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353291, 34.334484, 39.404049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505987, -0.337074, 0.793951,
		-0.265309, 0.936675, 0.228585,
		-0.820724, -0.094982, -0.563374,
		39.107075, 34.305988, 39.235035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190723, 34.730347, 40.062698>,  <39.681580, 34.372478, 39.629398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190723, 34.730347, 40.062698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992161, 34.500061, 39.802811>,  <38.873024, 34.361889, 39.646877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992161, 34.500061, 39.802811>,  <39.190723, 34.730347, 40.062698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992161, 34.500061, 39.802811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455843, -0.464078, 0.759499,
		-0.738777, 0.673187, -0.032066,
		-0.496404, -0.575717, -0.649718,
		38.843239, 34.327347, 39.607895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472164, 34.804077, 40.230560>,  <39.190723, 34.730347, 40.062698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472164, 34.804077, 40.230560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546112, 34.466682, 40.028831>,  <38.590481, 34.264244, 39.907795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546112, 34.466682, 40.028831>,  <38.472164, 34.804077, 40.230560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546112, 34.466682, 40.028831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400642, -0.533278, 0.745050,
		-0.897390, 0.064316, -0.436526,
		0.184871, -0.843491, -0.504326,
		38.601574, 34.213634, 39.877533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029617, 34.342232, 40.646564>,  <38.472164, 34.804077, 40.230560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029617, 34.342232, 40.646564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211437, 34.095901, 40.389149>,  <38.320530, 33.948105, 40.234699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211437, 34.095901, 40.389149>,  <38.029617, 34.342232, 40.646564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211437, 34.095901, 40.389149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181540, -0.771377, 0.609935,
		-0.872023, -0.160421, -0.462429,
		0.454554, -0.615827, -0.643535,
		38.347805, 33.911152, 40.196087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545048, 33.695637, 40.337002>,  <38.029617, 34.342232, 40.646564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545048, 33.695637, 40.337002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942410, 33.651405, 40.349163>,  <38.180824, 33.624866, 40.356461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942410, 33.651405, 40.349163>,  <37.545048, 33.695637, 40.337002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942410, 33.651405, 40.349163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101661, -0.726420, 0.679690,
		-0.053077, -0.678296, -0.732869,
		0.993402, -0.110580, 0.030400,
		38.240429, 33.618233, 40.358284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632607, 32.982983, 40.215260>,  <37.545048, 33.695637, 40.337002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632607, 32.982983, 40.215260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964725, 33.107246, 40.400345>,  <38.163998, 33.181805, 40.511395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964725, 33.107246, 40.400345>,  <37.632607, 32.982983, 40.215260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964725, 33.107246, 40.400345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130692, -0.698558, 0.703517,
		0.541782, -0.644600, -0.539410,
		0.830296, 0.310656, 0.462710,
		38.213814, 33.200443, 40.539158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869122, 32.425602, 40.352482>,  <37.632607, 32.982983, 40.215260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869122, 32.425602, 40.352482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091980, 32.644760, 40.602089>,  <38.225697, 32.776253, 40.751854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091980, 32.644760, 40.602089>,  <37.869122, 32.425602, 40.352482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091980, 32.644760, 40.602089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102816, -0.700162, 0.706542,
		0.824025, -0.457806, -0.333761,
		0.557146, 0.547893, 0.624021,
		38.259125, 32.809128, 40.789295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153896, 31.912142, 39.892414>,  <37.869122, 32.425602, 40.352482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153896, 31.912142, 39.892414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874592, 31.663754, 39.749962>,  <37.707008, 31.514721, 39.664490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874592, 31.663754, 39.749962>,  <38.153896, 31.912142, 39.892414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874592, 31.663754, 39.749962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135233, 0.602966, -0.786221,
		0.702954, -0.500827, -0.505003,
		-0.698261, -0.620971, -0.356129,
		37.665112, 31.477463, 39.643124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288883, 31.872751, 39.243992>,  <38.153896, 31.912142, 39.892414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288883, 31.872751, 39.243992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907532, 31.752518, 39.233337>,  <37.678719, 31.680378, 39.226944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907532, 31.752518, 39.233337>,  <38.288883, 31.872751, 39.243992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907532, 31.752518, 39.233337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162100, 0.584596, -0.794966,
		0.254528, -0.753589, -0.606069,
		-0.953383, -0.300585, -0.026639,
		37.621517, 31.662342, 39.225346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166191, 31.946058, 38.472271>,  <38.288883, 31.872751, 39.243992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166191, 31.946058, 38.472271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805500, 31.927324, 38.644176>,  <37.589085, 31.916084, 38.747322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805500, 31.927324, 38.644176>,  <38.166191, 31.946058, 38.472271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805500, 31.927324, 38.644176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417072, 0.355858, -0.836311,
		-0.113769, -0.933366, -0.340419,
		-0.901725, -0.046833, 0.429766,
		37.534981, 31.913275, 38.773106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671124, 31.611950, 38.010876>,  <38.166191, 31.946058, 38.472271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671124, 31.611950, 38.010876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416233, 31.809572, 38.247467>,  <37.263298, 31.928146, 38.389423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416233, 31.809572, 38.247467>,  <37.671124, 31.611950, 38.010876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416233, 31.809572, 38.247467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463205, 0.367860, -0.806300,
		-0.615940, -0.787774, -0.005561,
		-0.637228, 0.494057, 0.591480,
		37.225063, 31.957788, 38.424911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927341, 31.428696, 37.820251>,  <37.671124, 31.611950, 38.010876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927341, 31.428696, 37.820251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900833, 31.768740, 38.029221>,  <36.884930, 31.972765, 38.154602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900833, 31.768740, 38.029221>,  <36.927341, 31.428696, 37.820251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900833, 31.768740, 38.029221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601790, 0.383579, -0.700511,
		-0.795901, -0.360809, 0.486168,
		-0.066267, 0.850108, 0.522422,
		36.880955, 32.023773, 38.185947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232174, 31.615610, 37.856155>,  <36.927341, 31.428696, 37.820251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232174, 31.615610, 37.856155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451260, 31.944603, 37.917519>,  <36.582710, 32.141998, 37.954338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451260, 31.944603, 37.917519>,  <36.232174, 31.615610, 37.856155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451260, 31.944603, 37.917519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567262, 0.499830, -0.654510,
		-0.615001, 0.271460, 0.740326,
		0.547711, 0.822483, 0.153407,
		36.615574, 32.191349, 37.963539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650196, 32.195568, 37.895241>,  <36.232174, 31.615610, 37.856155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650196, 32.195568, 37.895241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994946, 32.394188, 37.854031>,  <36.201794, 32.513359, 37.829304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994946, 32.394188, 37.854031>,  <35.650196, 32.195568, 37.895241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994946, 32.394188, 37.854031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426481, 0.599777, -0.677038,
		-0.274392, 0.627459, 0.728701,
		0.861872, 0.496551, -0.103025,
		36.253506, 32.543152, 37.823124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494385, 32.809628, 37.851543>,  <35.650196, 32.195568, 37.895241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494385, 32.809628, 37.851543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854534, 32.812153, 37.677513>,  <36.070621, 32.813667, 37.573093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854534, 32.812153, 37.677513>,  <35.494385, 32.809628, 37.851543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854534, 32.812153, 37.677513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361529, 0.567279, -0.739927,
		0.242137, 0.823502, 0.513044,
		0.900370, 0.006316, -0.435079,
		36.124645, 32.814049, 37.546989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591122, 33.492363, 37.764549>,  <35.494385, 32.809628, 37.851543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591122, 33.492363, 37.764549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786816, 33.252697, 37.511044>,  <35.904232, 33.108898, 37.358940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786816, 33.252697, 37.511044>,  <35.591122, 33.492363, 37.764549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786816, 33.252697, 37.511044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306491, 0.562205, -0.768107,
		0.816524, 0.570029, 0.091414,
		0.489237, -0.599160, -0.633762,
		35.933586, 33.072948, 37.320915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692764, 33.941830, 37.309734>,  <35.591122, 33.492363, 37.764549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692764, 33.941830, 37.309734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788734, 33.597076, 37.131031>,  <35.846317, 33.390224, 37.023808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788734, 33.597076, 37.131031>,  <35.692764, 33.941830, 37.309734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788734, 33.597076, 37.131031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461374, 0.303673, -0.833616,
		0.854150, 0.406124, -0.324794,
		0.239921, -0.861885, -0.446758,
		35.860710, 33.338512, 36.997005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234711, 33.986675, 36.827320>,  <35.692764, 33.941830, 37.309734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234711, 33.986675, 36.827320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923325, 33.743172, 36.766125>,  <35.736492, 33.597069, 36.729408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923325, 33.743172, 36.766125>,  <36.234711, 33.986675, 36.827320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923325, 33.743172, 36.766125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352679, 0.625825, -0.695673,
		0.519238, -0.487603, -0.701880,
		-0.778466, -0.608758, -0.152985,
		35.689785, 33.560543, 36.720230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224628, 33.783489, 36.071209>,  <36.234711, 33.986675, 36.827320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224628, 33.783489, 36.071209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861717, 33.763638, 36.238251>,  <35.643970, 33.751724, 36.338474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861717, 33.763638, 36.238251>,  <36.224628, 33.783489, 36.071209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861717, 33.763638, 36.238251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392166, 0.458425, -0.797529,
		-0.151854, -0.887346, -0.435381,
		-0.907274, -0.049634, 0.417601,
		35.589535, 33.748749, 36.363529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.362041, 29.014200, 42.597404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963829, 29.040842, 42.624161>,  <37.724899, 29.056828, 42.640213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963829, 29.040842, 42.624161>,  <38.362041, 29.014200, 42.597404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963829, 29.040842, 42.624161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040867, 0.334612, -0.941469,
		-0.085090, -0.939999, -0.330396,
		-0.995535, 0.066607, 0.066887,
		37.665169, 29.060823, 42.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149231, 28.874680, 41.997234>,  <38.362041, 29.014200, 42.597404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149231, 28.874680, 41.997234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830200, 29.073483, 42.133976>,  <37.638783, 29.192764, 42.216022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.830200, 29.073483, 42.133976>,  <38.149231, 28.874680, 41.997234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830200, 29.073483, 42.133976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058917, 0.499819, -0.864124,
		-0.600339, -0.709342, -0.369359,
		-0.797572, 0.497006, 0.341853,
		37.590927, 29.222584, 42.236530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718060, 28.819376, 41.403305>,  <38.149231, 28.874680, 41.997234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718060, 28.819376, 41.403305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.544567, 29.102913, 41.625809>,  <37.440472, 29.273035, 41.759312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.544567, 29.102913, 41.625809>,  <37.718060, 28.819376, 41.403305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544567, 29.102913, 41.625809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348718, 0.437188, -0.829013,
		-0.830828, -0.553544, 0.057564,
		-0.433729, 0.708841, 0.556259,
		37.414448, 29.315565, 41.792686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095146, 28.935665, 41.134659>,  <37.718060, 28.819376, 41.403305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095146, 28.935665, 41.134659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166729, 29.285009, 41.315865>,  <37.209679, 29.494616, 41.424587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166729, 29.285009, 41.315865>,  <37.095146, 28.935665, 41.134659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166729, 29.285009, 41.315865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172876, 0.481194, -0.859399,
		-0.968550, 0.075478, 0.237094,
		0.178954, 0.873358, 0.453012,
		37.220417, 29.547016, 41.451767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573662, 29.397196, 40.889309>,  <37.095146, 28.935665, 41.134659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573662, 29.397196, 40.889309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863853, 29.638870, 41.021149>,  <37.037968, 29.783875, 41.100254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863853, 29.638870, 41.021149>,  <36.573662, 29.397196, 40.889309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863853, 29.638870, 41.021149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157338, 0.611816, -0.775194,
		-0.670016, 0.510531, 0.538922,
		0.725482, 0.604185, 0.329600,
		37.081497, 29.820126, 41.120029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335579, 30.020365, 40.748718>,  <36.573662, 29.397196, 40.889309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335579, 30.020365, 40.748718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726582, 30.093214, 40.791271>,  <36.961182, 30.136923, 40.816803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726582, 30.093214, 40.791271>,  <36.335579, 30.020365, 40.748718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726582, 30.093214, 40.791271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019679, 0.580935, -0.813712,
		-0.209996, 0.793313, 0.571450,
		0.977504, 0.182122, 0.106383,
		37.019833, 30.147850, 40.823185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333042, 30.789715, 40.570435>,  <36.335579, 30.020365, 40.748718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333042, 30.789715, 40.570435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717953, 30.681665, 40.557453>,  <36.948898, 30.616835, 40.549664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717953, 30.681665, 40.557453>,  <36.333042, 30.789715, 40.570435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717953, 30.681665, 40.557453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161348, 0.662645, -0.731347,
		0.219060, 0.698523, 0.681233,
		0.962278, -0.270125, -0.032454,
		37.006638, 30.600628, 40.547718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876087, 31.395103, 40.733665>,  <36.333042, 30.789715, 40.570435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876087, 31.395103, 40.733665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.063679, 31.130949, 40.499077>,  <37.176235, 30.972456, 40.358322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.063679, 31.130949, 40.499077>,  <36.876087, 31.395103, 40.733665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063679, 31.130949, 40.499077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131399, 0.708804, -0.693059,
		0.873379, 0.247970, 0.419190,
		0.468982, -0.660384, -0.586472,
		37.204372, 30.932835, 40.323135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481434, 31.761400, 40.558987>,  <36.876087, 31.395103, 40.733665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481434, 31.761400, 40.558987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415691, 31.480907, 40.281494>,  <37.376244, 31.312613, 40.114998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415691, 31.480907, 40.281494>,  <37.481434, 31.761400, 40.558987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415691, 31.480907, 40.281494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010978, 0.701950, -0.712141,
		0.986339, -0.124664, -0.107675,
		-0.164360, -0.701231, -0.693730,
		37.366383, 31.270538, 40.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217033, 31.956783, 40.817051>,  <37.481434, 31.761400, 40.558987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217033, 31.956783, 40.817051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271847, 32.302784, 41.010128>,  <38.304737, 32.510384, 41.125973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.271847, 32.302784, 41.010128>,  <38.217033, 31.956783, 40.817051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271847, 32.302784, 41.010128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021336, -0.489755, 0.871599,
		0.990336, -0.109142, -0.085570,
		0.137036, 0.865002, 0.482693,
		38.312958, 32.562286, 41.154938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863850, 31.955486, 41.158234>,  <38.217033, 31.956783, 40.817051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863850, 31.955486, 41.158234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639553, 32.226280, 41.348923>,  <38.504974, 32.388756, 41.463337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639553, 32.226280, 41.348923>,  <38.863850, 31.955486, 41.158234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639553, 32.226280, 41.348923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205377, -0.444041, 0.872151,
		0.802116, 0.586958, 0.109955,
		-0.560741, 0.676984, 0.476720,
		38.471333, 32.429375, 41.491940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203590, 32.187317, 41.740543>,  <38.863850, 31.955486, 41.158234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203590, 32.187317, 41.740543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823952, 32.279541, 41.826378>,  <38.596169, 32.334877, 41.877880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823952, 32.279541, 41.826378>,  <39.203590, 32.187317, 41.740543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823952, 32.279541, 41.826378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141111, -0.297842, 0.944128,
		0.281596, 0.926353, 0.250147,
		-0.949100, 0.230564, 0.214590,
		38.539223, 32.348709, 41.890755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231510, 32.274342, 42.457355>,  <39.203590, 32.187317, 41.740543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231510, 32.274342, 42.457355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.837395, 32.278336, 42.389111>,  <38.600925, 32.280731, 42.348164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.837395, 32.278336, 42.389111>,  <39.231510, 32.274342, 42.457355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837395, 32.278336, 42.389111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169444, -0.187196, 0.967598,
		-0.022278, 0.982272, 0.186133,
		-0.985288, 0.009982, -0.170610,
		38.541809, 32.281330, 42.337929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895889, 32.806442, 42.978294>,  <39.231510, 32.274342, 42.457355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895889, 32.806442, 42.978294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654087, 32.507118, 42.869041>,  <38.509007, 32.327522, 42.803490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654087, 32.507118, 42.869041>,  <38.895889, 32.806442, 42.978294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654087, 32.507118, 42.869041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251496, -0.146059, 0.956774,
		-0.755858, 0.647069, -0.099903,
		-0.604507, -0.748310, -0.273135,
		38.472736, 32.282623, 42.787102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254826, 32.856022, 43.401466>,  <38.895889, 32.806442, 42.978294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254826, 32.856022, 43.401466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230003, 32.486141, 43.251228>,  <38.215111, 32.264214, 43.161083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230003, 32.486141, 43.251228>,  <38.254826, 32.856022, 43.401466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230003, 32.486141, 43.251228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351148, -0.332035, 0.875470,
		-0.934261, 0.186219, -0.304103,
		-0.062056, -0.924703, -0.375598,
		38.211388, 32.208729, 43.138550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569908, 32.614128, 43.679852>,  <38.254826, 32.856022, 43.401466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569908, 32.614128, 43.679852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752411, 32.276829, 43.566181>,  <37.861912, 32.074448, 43.497978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752411, 32.276829, 43.566181>,  <37.569908, 32.614128, 43.679852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752411, 32.276829, 43.566181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407467, -0.481886, 0.775729,
		-0.791076, -0.238139, -0.563461,
		0.456255, -0.843253, -0.284175,
		37.889286, 32.023853, 43.480930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046726, 32.089344, 43.738407>,  <37.569908, 32.614128, 43.679852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046726, 32.089344, 43.738407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399799, 31.901415, 43.733727>,  <37.611645, 31.788658, 43.730919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399799, 31.901415, 43.733727>,  <37.046726, 32.089344, 43.738407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399799, 31.901415, 43.733727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292191, -0.568124, 0.769324,
		-0.368093, -0.675651, -0.638752,
		0.882685, -0.469820, -0.011703,
		37.664604, 31.760469, 43.730217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871216, 31.394646, 43.854336>,  <37.046726, 32.089344, 43.738407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871216, 31.394646, 43.854336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262943, 31.414930, 43.932686>,  <37.497978, 31.427101, 43.979698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262943, 31.414930, 43.932686>,  <36.871216, 31.394646, 43.854336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262943, 31.414930, 43.932686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135692, -0.553512, 0.821713,
		0.150091, -0.831296, -0.535182,
		0.979316, 0.050712, 0.195877,
		37.556740, 31.430143, 43.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194630, 30.669973, 44.125866>,  <36.871216, 31.394646, 43.854336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194630, 30.669973, 44.125866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437031, 30.949160, 44.278496>,  <37.582474, 31.116671, 44.370075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.437031, 30.949160, 44.278496>,  <37.194630, 30.669973, 44.125866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437031, 30.949160, 44.278496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081299, -0.422836, 0.902552,
		0.791295, -0.577973, -0.199497,
		0.606005, 0.697966, 0.381576,
		37.618832, 31.158550, 44.392967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639965, 30.258801, 44.431004>,  <37.194630, 30.669973, 44.125866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639965, 30.258801, 44.431004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691963, 30.616385, 44.602554>,  <37.723164, 30.830935, 44.705486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.691963, 30.616385, 44.602554>,  <37.639965, 30.258801, 44.431004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691963, 30.616385, 44.602554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139160, -0.444719, 0.884793,
		0.981700, -0.055336, -0.182215,
		0.129995, 0.893959, 0.428881,
		37.730961, 30.884573, 44.731220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147091, 30.164417, 44.944378>,  <37.639965, 30.258801, 44.431004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147091, 30.164417, 44.944378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017536, 30.522312, 45.067368>,  <37.939804, 30.737049, 45.141163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017536, 30.522312, 45.067368>,  <38.147091, 30.164417, 44.944378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017536, 30.522312, 45.067368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119683, -0.283637, 0.951433,
		0.938496, 0.344953, -0.015220,
		-0.323883, 0.894738, 0.307478,
		37.920372, 30.790733, 45.159611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622219, 30.426802, 45.537960>,  <38.147091, 30.164417, 44.944378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622219, 30.426802, 45.537960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.289242, 30.645245, 45.575481>,  <38.089455, 30.776310, 45.597992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.289242, 30.645245, 45.575481>,  <38.622219, 30.426802, 45.537960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289242, 30.645245, 45.575481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001400, -0.167211, 0.985920,
		0.554105, 0.820856, 0.138429,
		-0.832446, 0.546109, 0.093802,
		38.039509, 30.809078, 45.603622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798088, 30.916788, 46.031929>,  <38.622219, 30.426802, 45.537960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798088, 30.916788, 46.031929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399879, 30.890976, 46.004292>,  <38.160954, 30.875488, 45.987709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399879, 30.890976, 46.004292>,  <38.798088, 30.916788, 46.031929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399879, 30.890976, 46.004292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066430, -0.042519, 0.996885,
		-0.067269, 0.997009, 0.038041,
		-0.995521, -0.064533, -0.069092,
		38.101223, 30.871616, 45.983562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.179392, 31.673016, 45.690918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.572319, 31.601959, 45.714581>,  <31.808075, 31.559324, 45.728779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.572319, 31.601959, 45.714581>,  <31.179392, 31.673016, 45.690918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572319, 31.601959, 45.714581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094518, 0.197773, -0.975680,
		0.161623, 0.964017, 0.211066,
		0.982316, -0.177642, 0.059152,
		31.867014, 31.548666, 45.732327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608780, 32.310333, 45.482449>,  <31.179392, 31.673016, 45.690918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608780, 32.310333, 45.482449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.837908, 31.992559, 45.401703>,  <31.975386, 31.801895, 45.353256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.837908, 31.992559, 45.401703>,  <31.608780, 32.310333, 45.482449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837908, 31.992559, 45.401703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245324, 0.401140, -0.882555,
		0.782107, 0.456025, 0.424675,
		0.572821, -0.794436, -0.201861,
		32.009754, 31.754229, 45.341145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252045, 32.642731, 45.202267>,  <31.608780, 32.310333, 45.482449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252045, 32.642731, 45.202267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.253422, 32.256161, 45.099499>,  <32.254250, 32.024220, 45.037838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.253422, 32.256161, 45.099499>,  <32.252045, 32.642731, 45.202267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253422, 32.256161, 45.099499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287854, 0.247006, -0.925272,
		0.957668, -0.070767, 0.279041,
		0.003446, -0.966427, -0.256920,
		32.254456, 31.966232, 45.022423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960224, 32.464443, 44.987232>,  <32.252045, 32.642731, 45.202267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960224, 32.464443, 44.987232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735447, 32.176182, 44.824810>,  <32.600578, 32.003227, 44.727356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.735447, 32.176182, 44.824810>,  <32.960224, 32.464443, 44.987232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735447, 32.176182, 44.824810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470130, 0.125640, -0.873609,
		0.680584, -0.681819, 0.268196,
		-0.561947, -0.720651, -0.406052,
		32.566864, 31.959986, 44.702995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425678, 32.083855, 44.586918>,  <32.960224, 32.464443, 44.987232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425678, 32.083855, 44.586918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053158, 31.990191, 44.475307>,  <32.829647, 31.933992, 44.408340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.053158, 31.990191, 44.475307>,  <33.425678, 32.083855, 44.586918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053158, 31.990191, 44.475307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288022, -0.004423, -0.957614,
		0.222997, -0.972189, 0.071561,
		-0.931298, -0.234157, -0.279025,
		32.773769, 31.919943, 44.391602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404343, 31.437832, 44.029942>,  <33.425678, 32.083855, 44.586918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404343, 31.437832, 44.029942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050026, 31.607534, 43.954704>,  <32.837437, 31.709356, 43.909561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050026, 31.607534, 43.954704>,  <33.404343, 31.437832, 44.029942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050026, 31.607534, 43.954704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124430, -0.173351, -0.976968,
		-0.447093, -0.888794, 0.100763,
		-0.885791, 0.424257, -0.188096,
		32.784290, 31.734812, 43.898277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147141, 31.240133, 43.377285>,  <33.404343, 31.437832, 44.029942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147141, 31.240133, 43.377285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926914, 31.562748, 43.463428>,  <32.794777, 31.756317, 43.515114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926914, 31.562748, 43.463428>,  <33.147141, 31.240133, 43.377285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926914, 31.562748, 43.463428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128147, 0.336576, -0.932896,
		-0.824898, -0.486022, -0.288662,
		-0.550565, 0.806535, 0.215359,
		32.761745, 31.804708, 43.528038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764378, 31.248405, 42.787968>,  <33.147141, 31.240133, 43.377285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764378, 31.248405, 42.787968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725315, 31.608074, 42.958591>,  <32.701878, 31.823875, 43.060966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725315, 31.608074, 42.958591>,  <32.764378, 31.248405, 42.787968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725315, 31.608074, 42.958591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031522, 0.425598, -0.904363,
		-0.994721, -0.101760, -0.013218,
		-0.097654, 0.899173, 0.426559,
		32.696018, 31.877827, 43.086559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247292, 31.670229, 42.361366>,  <32.764378, 31.248405, 42.787968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247292, 31.670229, 42.361366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458313, 31.930666, 42.579636>,  <32.584927, 32.086929, 42.710598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458313, 31.930666, 42.579636>,  <32.247292, 31.670229, 42.361366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458313, 31.930666, 42.579636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041031, 0.622054, -0.781898,
		-0.848529, 0.434885, 0.301454,
		0.527556, 0.651094, 0.545675,
		32.616581, 32.125996, 42.743340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903618, 32.255112, 42.247890>,  <32.247292, 31.670229, 42.361366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903618, 32.255112, 42.247890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263161, 32.366959, 42.382870>,  <32.478886, 32.434067, 42.463860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.263161, 32.366959, 42.382870>,  <31.903618, 32.255112, 42.247890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263161, 32.366959, 42.382870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110458, 0.600600, -0.791883,
		-0.424096, 0.749063, 0.508967,
		0.898856, 0.279615, 0.337452,
		32.532818, 32.450844, 42.484104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937656, 33.021576, 42.310970>,  <31.903618, 32.255112, 42.247890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937656, 33.021576, 42.310970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.311905, 32.882740, 42.285225>,  <32.536453, 32.799438, 42.269779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.311905, 32.882740, 42.285225>,  <31.937656, 33.021576, 42.310970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311905, 32.882740, 42.285225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196910, 0.664479, -0.720898,
		0.292982, 0.661814, 0.690046,
		0.935622, -0.347087, -0.064362,
		32.592590, 32.778614, 42.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335938, 33.611809, 42.454979>,  <31.937656, 33.021576, 42.310970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335938, 33.611809, 42.454979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580482, 33.375885, 42.243942>,  <32.727211, 33.234329, 42.117321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580482, 33.375885, 42.243942>,  <32.335938, 33.611809, 42.454979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580482, 33.375885, 42.243942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169685, 0.748900, -0.640591,
		0.772941, 0.302111, 0.557934,
		0.611366, -0.589812, -0.527592,
		32.763893, 33.198940, 42.085667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760792, 34.113796, 42.238728>,  <32.335938, 33.611809, 42.454979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760792, 34.113796, 42.238728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810310, 33.783192, 42.019070>,  <32.840019, 33.584831, 41.887276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810310, 33.783192, 42.019070>,  <32.760792, 34.113796, 42.238728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810310, 33.783192, 42.019070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272727, 0.560429, -0.782009,
		0.954094, -0.052958, 0.294789,
		0.123794, -0.826507, -0.549145,
		32.847450, 33.535240, 41.854324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409729, 34.185432, 41.960693>,  <32.760792, 34.113796, 42.238728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409729, 34.185432, 41.960693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187950, 33.962406, 41.713562>,  <33.054882, 33.828590, 41.565281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187950, 33.962406, 41.713562>,  <33.409729, 34.185432, 41.960693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187950, 33.962406, 41.713562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241029, 0.602988, -0.760467,
		0.796555, -0.570550, -0.199932,
		-0.554441, -0.557565, -0.617832,
		33.021618, 33.795135, 41.528214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123772, 34.276863, 41.836376>,  <33.409729, 34.185432, 41.960693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123772, 34.276863, 41.836376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355843, 34.592098, 41.918663>,  <34.495083, 34.781239, 41.968033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355843, 34.592098, 41.918663>,  <34.123772, 34.276863, 41.836376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355843, 34.592098, 41.918663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090118, -0.188906, 0.977851,
		0.809493, -0.585861, -0.038577,
		0.580173, 0.788087, 0.205714,
		34.529896, 34.828526, 41.980377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557285, 34.080143, 42.315308>,  <34.123772, 34.276863, 41.836376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557285, 34.080143, 42.315308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625771, 34.471577, 42.361008>,  <34.666862, 34.706436, 42.388428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625771, 34.471577, 42.361008>,  <34.557285, 34.080143, 42.315308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625771, 34.471577, 42.361008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007134, -0.114730, 0.993371,
		0.985208, -0.170892, -0.012662,
		0.171212, 0.978587, 0.114252,
		34.677135, 34.765152, 42.395283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074501, 34.026798, 42.798210>,  <34.557285, 34.080143, 42.315308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074501, 34.026798, 42.798210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942215, 34.403748, 42.777977>,  <34.862843, 34.629917, 42.765839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.942215, 34.403748, 42.777977>,  <35.074501, 34.026798, 42.798210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942215, 34.403748, 42.777977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041303, 0.067998, 0.996830,
		0.942827, 0.327576, -0.061411,
		-0.330713, 0.942375, -0.050581,
		34.843002, 34.686459, 42.762802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417305, 34.257809, 43.318970>,  <35.074501, 34.026798, 42.798210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417305, 34.257809, 43.318970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071190, 34.444160, 43.244968>,  <34.863522, 34.555973, 43.200565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071190, 34.444160, 43.244968>,  <35.417305, 34.257809, 43.318970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071190, 34.444160, 43.244968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174908, 0.065270, 0.982419,
		0.469765, 0.882437, 0.025009,
		-0.865290, 0.465881, -0.185007,
		34.811604, 34.583923, 43.189465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378166, 34.738773, 43.836430>,  <35.417305, 34.257809, 43.318970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378166, 34.738773, 43.836430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994617, 34.689297, 43.734245>,  <34.764488, 34.659611, 43.672935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994617, 34.689297, 43.734245>,  <35.378166, 34.738773, 43.836430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994617, 34.689297, 43.734245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258839, 0.011761, 0.965849,
		-0.116463, 0.992251, -0.043293,
		-0.958874, -0.123691, -0.255464,
		34.706955, 34.652191, 43.657608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846596, 35.189369, 44.290936>,  <35.378166, 34.738773, 43.836430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846596, 35.189369, 44.290936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610126, 34.893211, 44.162983>,  <34.468243, 34.715515, 44.086212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610126, 34.893211, 44.162983>,  <34.846596, 35.189369, 44.290936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610126, 34.893211, 44.162983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382807, -0.091517, 0.919284,
		-0.709906, 0.665915, -0.229325,
		-0.591178, -0.740393, -0.319886,
		34.432774, 34.671093, 44.067017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157635, 35.296913, 44.587246>,  <34.846596, 35.189369, 44.290936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157635, 35.296913, 44.587246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148865, 34.910927, 44.482662>,  <34.143604, 34.679337, 44.419910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148865, 34.910927, 44.482662>,  <34.157635, 35.296913, 44.587246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148865, 34.910927, 44.482662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336731, -0.239113, 0.910734,
		-0.941345, 0.108010, -0.319692,
		-0.021925, -0.964966, -0.261459,
		34.142288, 34.621437, 44.404224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471367, 34.876637, 44.767715>,  <34.157635, 35.296913, 44.587246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471367, 34.876637, 44.767715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751759, 34.592300, 44.744621>,  <33.919994, 34.421700, 44.730766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751759, 34.592300, 44.744621>,  <33.471367, 34.876637, 44.767715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751759, 34.592300, 44.744621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278036, -0.346927, 0.895733,
		-0.656756, -0.611835, -0.440828,
		0.700976, -0.710844, -0.057734,
		33.962051, 34.379047, 44.727303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195736, 34.326000, 45.094440>,  <33.471367, 34.876637, 44.767715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195736, 34.326000, 45.094440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578930, 34.211296, 45.097042>,  <33.808846, 34.142475, 45.098602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578930, 34.211296, 45.097042>,  <33.195736, 34.326000, 45.094440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578930, 34.211296, 45.097042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124710, -0.395992, 0.909746,
		-0.258303, -0.872330, -0.415114,
		0.957980, -0.286759, 0.006502,
		33.866325, 34.125267, 45.098991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154919, 33.655540, 45.486103>,  <33.195736, 34.326000, 45.094440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154919, 33.655540, 45.486103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539986, 33.762791, 45.471207>,  <33.771027, 33.827141, 45.462269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539986, 33.762791, 45.471207>,  <33.154919, 33.655540, 45.486103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539986, 33.762791, 45.471207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157607, -0.443299, 0.882409,
		0.220088, -0.855333, -0.469006,
		0.962664, 0.268127, -0.037242,
		33.828785, 33.843227, 45.460033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599854, 33.066681, 45.585384>,  <33.154919, 33.655540, 45.486103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599854, 33.066681, 45.585384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818268, 33.385063, 45.689922>,  <33.949318, 33.576092, 45.752644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818268, 33.385063, 45.689922>,  <33.599854, 33.066681, 45.585384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818268, 33.385063, 45.689922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219512, -0.436991, 0.872269,
		0.808490, -0.418924, -0.413335,
		0.546038, 0.795953, 0.261344,
		33.982079, 33.623848, 45.768326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082146, 32.803421, 46.085697>,  <33.599854, 33.066681, 45.585384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082146, 32.803421, 46.085697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135651, 33.193710, 46.155067>,  <34.167751, 33.427883, 46.196690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135651, 33.193710, 46.155067>,  <34.082146, 32.803421, 46.085697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135651, 33.193710, 46.155067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308409, -0.207289, 0.928394,
		0.941802, -0.070698, -0.328649,
		0.133761, 0.975722, 0.173422,
		34.175777, 33.486427, 46.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782776, 32.957130, 46.427940>,  <34.082146, 32.803421, 46.085697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782776, 32.957130, 46.427940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534164, 33.247608, 46.545483>,  <34.384998, 33.421894, 46.616009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.534164, 33.247608, 46.545483>,  <34.782776, 32.957130, 46.427940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534164, 33.247608, 46.545483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242263, -0.178549, 0.953640,
		0.744992, 0.663903, -0.064957,
		-0.621526, 0.726191, 0.293857,
		34.347706, 33.465466, 46.633640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231312, 33.340260, 46.818409>,  <34.782776, 32.957130, 46.427940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231312, 33.340260, 46.818409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858250, 33.417545, 46.940277>,  <34.634411, 33.463917, 47.013397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858250, 33.417545, 46.940277>,  <35.231312, 33.340260, 46.818409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858250, 33.417545, 46.940277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225998, -0.345358, 0.910853,
		0.281213, 0.918365, 0.278433,
		-0.932654, 0.193219, 0.304668,
		34.578453, 33.475510, 47.031677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904209, 33.442196, 47.135193>,  <35.231312, 33.340260, 46.818409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904209, 33.442196, 47.135193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284935, 33.346050, 47.059010>,  <36.513371, 33.288364, 47.013298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.284935, 33.346050, 47.059010>,  <35.904209, 33.442196, 47.135193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284935, 33.346050, 47.059010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005272, 0.633786, -0.773491,
		0.306629, 0.735216, 0.604513,
		0.951814, -0.240362, -0.190461,
		36.570480, 33.273941, 47.001873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236183, 33.994728, 47.246300>,  <35.904209, 33.442196, 47.135193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236183, 33.994728, 47.246300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480103, 33.811680, 46.987461>,  <36.626453, 33.701851, 46.832157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480103, 33.811680, 46.987461>,  <36.236183, 33.994728, 47.246300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480103, 33.811680, 46.987461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104919, 0.762672, -0.638218,
		0.785584, 0.457075, 0.417062,
		0.609795, -0.457616, -0.647099,
		36.663040, 33.674397, 46.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620693, 34.524963, 46.999187>,  <36.236183, 33.994728, 47.246300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620693, 34.524963, 46.999187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664883, 34.231087, 46.731449>,  <36.691395, 34.054760, 46.570805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664883, 34.231087, 46.731449>,  <36.620693, 34.524963, 46.999187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664883, 34.231087, 46.731449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047227, 0.676586, -0.734847,
		0.992757, 0.049569, 0.109441,
		0.110472, -0.734693, -0.669344,
		36.698025, 34.010677, 46.530647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204468, 34.808521, 46.533398>,  <36.620693, 34.524963, 46.999187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204468, 34.808521, 46.533398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003124, 34.525124, 46.335541>,  <36.882320, 34.355087, 46.216827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003124, 34.525124, 46.335541>,  <37.204468, 34.808521, 46.533398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003124, 34.525124, 46.335541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067427, 0.538502, -0.839922,
		0.861445, -0.456131, -0.223286,
		-0.503354, -0.708491, -0.494646,
		36.852119, 34.312576, 46.187149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609550, 34.724972, 45.998177>,  <37.204468, 34.808521, 46.533398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609550, 34.724972, 45.998177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251469, 34.584824, 45.888016>,  <37.036621, 34.500732, 45.821918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251469, 34.584824, 45.888016>,  <37.609550, 34.724972, 45.998177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251469, 34.584824, 45.888016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085216, 0.471987, -0.877477,
		0.437427, -0.808992, -0.392669,
		-0.895207, -0.350370, -0.275399,
		36.982906, 34.479713, 45.805397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662079, 34.492428, 45.303692>,  <37.609550, 34.724972, 45.998177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662079, 34.492428, 45.303692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.268456, 34.557312, 45.332863>,  <37.032280, 34.596241, 45.350365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.268456, 34.557312, 45.332863>,  <37.662079, 34.492428, 45.303692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268456, 34.557312, 45.332863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015893, 0.488619, -0.872352,
		-0.177136, -0.857286, -0.483408,
		-0.984058, 0.162208, 0.072927,
		36.973240, 34.605976, 45.354740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672318, 34.536572, 44.653683>,  <37.662079, 34.492428, 45.303692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672318, 34.536572, 44.653683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.307693, 34.639236, 44.782169>,  <37.088917, 34.700836, 44.859261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.307693, 34.639236, 44.782169>,  <37.672318, 34.536572, 44.653683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307693, 34.639236, 44.782169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189045, 0.432135, -0.881772,
		-0.365125, -0.864514, -0.345398,
		-0.911562, 0.256661, 0.321215,
		37.034225, 34.716236, 44.878532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288090, 34.424416, 44.079079>,  <37.672318, 34.536572, 44.653683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288090, 34.424416, 44.079079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.112976, 34.702732, 44.306839>,  <37.007908, 34.869720, 44.443497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.112976, 34.702732, 44.306839>,  <37.288090, 34.424416, 44.079079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112976, 34.702732, 44.306839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224957, 0.528406, -0.818646,
		-0.870480, -0.486485, -0.074808,
		-0.437788, 0.695787, 0.569405,
		36.981640, 34.911469, 44.477661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693977, 34.499767, 43.783772>,  <37.288090, 34.424416, 44.079079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693977, 34.499767, 43.783772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778545, 34.836933, 43.981682>,  <36.829285, 35.039230, 44.100430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778545, 34.836933, 43.981682>,  <36.693977, 34.499767, 43.783772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778545, 34.836933, 43.981682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111431, 0.523706, -0.844580,
		-0.971023, 0.123424, 0.204646,
		0.211416, 0.842911, 0.494778,
		36.841969, 35.089806, 44.130116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125904, 34.949436, 43.545486>,  <36.693977, 34.499767, 43.783772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125904, 34.949436, 43.545486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.443768, 35.152935, 43.677967>,  <36.634487, 35.275036, 43.757454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.443768, 35.152935, 43.677967>,  <36.125904, 34.949436, 43.545486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443768, 35.152935, 43.677967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001111, 0.546801, -0.837262,
		-0.607056, 0.664969, 0.435085,
		0.794658, 0.508749, 0.331200,
		36.682163, 35.305561, 43.777328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014702, 35.658730, 43.243496>,  <36.125904, 34.949436, 43.545486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014702, 35.658730, 43.243496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400311, 35.665031, 43.349632>,  <36.631676, 35.668812, 43.413315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.400311, 35.665031, 43.349632>,  <36.014702, 35.658730, 43.243496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400311, 35.665031, 43.349632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212203, 0.555527, -0.803965,
		-0.160074, 0.831349, 0.532198,
		0.964026, 0.015759, 0.265340,
		36.689518, 35.669758, 43.429234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197865, 36.330967, 43.182560>,  <36.014702, 35.658730, 43.243496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197865, 36.330967, 43.182560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539577, 36.123535, 43.168270>,  <36.744606, 35.999077, 43.159695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539577, 36.123535, 43.168270>,  <36.197865, 36.330967, 43.182560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539577, 36.123535, 43.168270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302046, 0.551155, -0.777815,
		0.423050, 0.653683, 0.627477,
		0.854282, -0.518582, -0.035724,
		36.795860, 35.967960, 43.157555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676651, 36.788879, 43.059822>,  <36.197865, 36.330967, 43.182560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676651, 36.788879, 43.059822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844444, 36.456230, 42.914257>,  <36.945122, 36.256641, 42.826920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.844444, 36.456230, 42.914257>,  <36.676651, 36.788879, 43.059822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844444, 36.456230, 42.914257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294209, 0.503806, -0.812170,
		0.858762, 0.233627, 0.456011,
		0.419486, -0.831624, -0.363914,
		36.970291, 36.206741, 42.805084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352821, 36.981758, 42.721256>,  <36.676651, 36.788879, 43.059822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352821, 36.981758, 42.721256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302700, 36.612659, 42.575470>,  <37.272625, 36.391201, 42.487999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302700, 36.612659, 42.575470>,  <37.352821, 36.981758, 42.721256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302700, 36.612659, 42.575470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366508, 0.298323, -0.881291,
		0.921938, -0.244013, 0.300812,
		-0.125307, -0.922746, -0.364468,
		37.265106, 36.335835, 42.466129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.516235, 28.675131, 36.556507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308918, 28.807238, 36.872047>,  <28.184526, 28.886501, 37.061371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308918, 28.807238, 36.872047>,  <28.516235, 28.675131, 36.556507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308918, 28.807238, 36.872047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518342, 0.612362, -0.596938,
		-0.680214, -0.718287, -0.146192,
		-0.518295, 0.330268, 0.788855,
		28.153429, 28.906319, 37.108704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745552, 28.585733, 36.342957>,  <28.516235, 28.675131, 36.556507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745552, 28.585733, 36.342957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770779, 28.845757, 36.645863>,  <27.785913, 29.001770, 36.827606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.770779, 28.845757, 36.645863>,  <27.745552, 28.585733, 36.342957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770779, 28.845757, 36.645863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784404, 0.501410, -0.365100,
		-0.617035, -0.570974, 0.541530,
		0.063066, 0.650059, 0.757262,
		27.789698, 29.040773, 36.873043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113813, 28.706554, 36.443291>,  <27.745552, 28.585733, 36.342957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113813, 28.706554, 36.443291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.289948, 29.020369, 36.617928>,  <27.395628, 29.208656, 36.722710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.289948, 29.020369, 36.617928>,  <27.113813, 28.706554, 36.443291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289948, 29.020369, 36.617928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699534, 0.604609, -0.380920,
		-0.562811, -0.137678, 0.815039,
		0.440335, 0.784533, 0.436592,
		27.422049, 29.255728, 36.748905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488588, 29.121527, 36.643879>,  <27.113813, 28.706554, 36.443291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488588, 29.121527, 36.643879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810287, 29.357838, 36.618053>,  <27.003307, 29.499624, 36.602558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.810287, 29.357838, 36.618053>,  <26.488588, 29.121527, 36.643879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810287, 29.357838, 36.618053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557335, 0.712048, -0.427044,
		-0.206315, 0.379433, 0.901923,
		0.804246, 0.590778, -0.064565,
		27.051561, 29.535070, 36.598682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245634, 29.730303, 36.748066>,  <26.488588, 29.121527, 36.643879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245634, 29.730303, 36.748066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.599348, 29.815094, 36.581642>,  <26.811577, 29.865969, 36.481789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.599348, 29.815094, 36.581642>,  <26.245634, 29.730303, 36.748066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599348, 29.815094, 36.581642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430885, 0.713790, -0.552125,
		0.179942, 0.667510, 0.722531,
		0.884285, 0.211977, -0.416061,
		26.864634, 29.878687, 36.456825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225216, 30.434042, 36.633820>,  <26.245634, 29.730303, 36.748066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225216, 30.434042, 36.633820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542030, 30.362333, 36.400394>,  <26.732119, 30.319307, 36.260342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542030, 30.362333, 36.400394>,  <26.225216, 30.434042, 36.633820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542030, 30.362333, 36.400394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363273, 0.629838, -0.686540,
		0.490626, 0.755755, 0.433729,
		0.792035, -0.179272, -0.583560,
		26.779640, 30.308552, 36.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401028, 31.079662, 36.437080>,  <26.225216, 30.434042, 36.633820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401028, 31.079662, 36.437080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564728, 30.845171, 36.157410>,  <26.662947, 30.704475, 35.989609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564728, 30.845171, 36.157410>,  <26.401028, 31.079662, 36.437080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564728, 30.845171, 36.157410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282986, 0.646950, -0.708078,
		0.867430, 0.487638, 0.098868,
		0.409249, -0.586230, -0.699178,
		26.687502, 30.669302, 35.947655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026543, 31.457249, 36.141579>,  <26.401028, 31.079662, 36.437080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026543, 31.457249, 36.141579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931246, 31.174538, 35.875134>,  <26.874067, 31.004911, 35.715267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931246, 31.174538, 35.875134>,  <27.026543, 31.457249, 36.141579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931246, 31.174538, 35.875134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002500, 0.685414, -0.728150,
		0.971202, -0.175143, -0.161529,
		-0.238244, -0.706777, -0.666113,
		26.859772, 30.962505, 35.675301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444580, 31.544394, 35.732449>,  <27.026543, 31.457249, 36.141579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444580, 31.544394, 35.732449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173851, 31.336035, 35.524380>,  <27.011414, 31.211020, 35.399540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.173851, 31.336035, 35.524380>,  <27.444580, 31.544394, 35.732449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173851, 31.336035, 35.524380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045312, 0.734750, -0.676823,
		0.734750, -0.434519, -0.520898,
		0.676823, 0.520898, 0.520169,
		26.970804, 31.179766, 35.368328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599308, 31.722822, 35.050648>,  <27.444580, 31.544394, 35.732449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599308, 31.722822, 35.050648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.226566, 31.579699, 35.026592>,  <27.002920, 31.493824, 35.012157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.226566, 31.579699, 35.026592>,  <27.599308, 31.722822, 35.050648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226566, 31.579699, 35.026592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232065, 0.715188, -0.659282,
		0.278910, -0.600398, -0.749487,
		-0.931855, -0.357810, -0.060142,
		26.947010, 31.472355, 35.008549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449312, 31.664907, 34.270794>,  <27.599308, 31.722822, 35.050648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449312, 31.664907, 34.270794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106939, 31.677698, 34.477234>,  <26.901516, 31.685373, 34.601097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106939, 31.677698, 34.477234>,  <27.449312, 31.664907, 34.270794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106939, 31.677698, 34.477234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257487, 0.839185, -0.479030,
		-0.448422, -0.542906, -0.710050,
		-0.855931, 0.031978, 0.516100,
		26.850161, 31.687292, 34.632065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983379, 31.846962, 33.756760>,  <27.449312, 31.664907, 34.270794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983379, 31.846962, 33.756760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838018, 31.934488, 34.118988>,  <26.750801, 31.987003, 34.336327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838018, 31.934488, 34.118988>,  <26.983379, 31.846962, 33.756760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838018, 31.934488, 34.118988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136341, 0.949069, -0.284039,
		-0.921602, -0.226687, -0.315061,
		-0.363402, 0.218815, 0.905571,
		26.728998, 32.000134, 34.390659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483040, 32.213848, 33.631443>,  <26.983379, 31.846962, 33.756760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483040, 32.213848, 33.631443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574301, 32.303185, 34.010509>,  <26.629057, 32.356785, 34.237949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.574301, 32.303185, 34.010509>,  <26.483040, 32.213848, 33.631443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574301, 32.303185, 34.010509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197341, 0.963739, -0.179619,
		-0.953417, -0.146032, 0.263954,
		0.228152, 0.223341, 0.947663,
		26.642746, 32.370186, 34.294807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131924, 32.767773, 33.747360>,  <26.483040, 32.213848, 33.631443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131924, 32.767773, 33.747360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.378242, 32.780434, 34.062267>,  <26.526033, 32.788033, 34.251213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.378242, 32.780434, 34.062267>,  <26.131924, 32.767773, 33.747360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378242, 32.780434, 34.062267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051325, 0.995459, -0.080172,
		-0.786232, 0.089776, 0.611375,
		0.615796, 0.031655, 0.787270,
		26.562981, 32.789928, 34.298447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892105, 33.366341, 34.171684>,  <26.131924, 32.767773, 33.747360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892105, 33.366341, 34.171684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.276011, 33.293884, 34.257511>,  <26.506353, 33.250412, 34.309006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.276011, 33.293884, 34.257511>,  <25.892105, 33.366341, 34.171684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276011, 33.293884, 34.257511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227832, 0.948991, -0.217967,
		-0.164141, 0.258083, 0.952077,
		0.959766, -0.181136, 0.214568,
		26.563940, 33.239544, 34.321880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088530, 34.037449, 34.627483>,  <25.892105, 33.366341, 34.171684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088530, 34.037449, 34.627483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.407928, 33.861694, 34.462875>,  <26.599567, 33.756241, 34.364109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.407928, 33.861694, 34.462875>,  <26.088530, 34.037449, 34.627483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407928, 33.861694, 34.462875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402240, 0.898002, -0.178312,
		0.447892, -0.023148, 0.893788,
		0.798496, -0.439382, -0.411519,
		26.647478, 33.729881, 34.339420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635458, 34.388626, 34.963531>,  <26.088530, 34.037449, 34.627483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635458, 34.388626, 34.963531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819441, 34.172935, 34.681347>,  <26.929831, 34.043522, 34.512035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819441, 34.172935, 34.681347>,  <26.635458, 34.388626, 34.963531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819441, 34.172935, 34.681347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506294, 0.811950, -0.290523,
		0.729458, -0.223543, 0.646468,
		0.459955, -0.539227, -0.705462,
		26.957428, 34.011169, 34.469707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314337, 34.547028, 35.036480>,  <26.635458, 34.388626, 34.963531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314337, 34.547028, 35.036480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282175, 34.423668, 34.657337>,  <27.262878, 34.349651, 34.429852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282175, 34.423668, 34.657337>,  <27.314337, 34.547028, 35.036480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282175, 34.423668, 34.657337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527242, 0.793850, -0.303016,
		0.845903, -0.524111, 0.098775,
		-0.080402, -0.308400, -0.947853,
		27.258055, 34.331146, 34.372982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005548, 34.528080, 34.724590>,  <27.314337, 34.547028, 35.036480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005548, 34.528080, 34.724590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754988, 34.553406, 34.413818>,  <27.604652, 34.568600, 34.227356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754988, 34.553406, 34.413818>,  <28.005548, 34.528080, 34.724590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754988, 34.553406, 34.413818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612653, 0.656226, -0.440480,
		0.481952, -0.751903, -0.449848,
		-0.626400, 0.063310, -0.776926,
		27.567068, 34.572399, 34.180740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262655, 34.227333, 34.091484>,  <28.005548, 34.528080, 34.724590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262655, 34.227333, 34.091484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029991, 34.537674, 33.993729>,  <27.890392, 34.723877, 33.935074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.029991, 34.537674, 33.993729>,  <28.262655, 34.227333, 34.091484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029991, 34.537674, 33.993729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805049, 0.592093, -0.036365,
		0.116488, -0.217899, -0.968995,
		-0.581658, 0.775852, -0.244391,
		27.855494, 34.770428, 33.920410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771305, 34.564049, 33.653290>,  <28.262655, 34.227333, 34.091484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771305, 34.564049, 33.653290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068863, 34.664497, 33.901020>,  <29.247398, 34.724766, 34.049656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068863, 34.664497, 33.901020>,  <28.771305, 34.564049, 33.653290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068863, 34.664497, 33.901020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176053, -0.967619, 0.180885,
		0.644691, -0.025526, -0.764017,
		0.743894, 0.251122, 0.619321,
		29.292030, 34.739834, 34.086815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433258, 34.206844, 33.308128>,  <28.771305, 34.564049, 33.653290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433258, 34.206844, 33.308128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491089, 34.277794, 33.697514>,  <29.525787, 34.320366, 33.931145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491089, 34.277794, 33.697514>,  <29.433258, 34.206844, 33.308128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491089, 34.277794, 33.697514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550812, -0.831711, 0.069740,
		0.822012, 0.526113, -0.217948,
		0.144579, 0.177376, 0.973465,
		29.534462, 34.331005, 33.989552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072199, 34.058609, 33.442688>,  <29.433258, 34.206844, 33.308128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072199, 34.058609, 33.442688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923367, 34.010864, 33.810886>,  <29.834068, 33.982220, 34.031807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923367, 34.010864, 33.810886>,  <30.072199, 34.058609, 33.442688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923367, 34.010864, 33.810886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430033, -0.901012, 0.056995,
		0.822575, 0.417050, 0.386575,
		-0.372078, -0.119358, 0.920495,
		29.811743, 33.975056, 34.087036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584227, 33.586002, 33.813305>,  <30.072199, 34.058609, 33.442688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584227, 33.586002, 33.813305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254868, 33.581936, 34.040253>,  <30.057253, 33.579494, 34.176422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.254868, 33.581936, 34.040253>,  <30.584227, 33.586002, 33.813305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254868, 33.581936, 34.040253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200775, -0.940388, 0.274519,
		0.530760, 0.339953, 0.776355,
		-0.823398, -0.010169, 0.567374,
		30.007849, 33.578884, 34.210464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837206, 33.208473, 34.460213>,  <30.584227, 33.586002, 33.813305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837206, 33.208473, 34.460213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.437511, 33.202019, 34.445988>,  <30.197695, 33.198147, 34.437450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.437511, 33.202019, 34.445988>,  <30.837206, 33.208473, 34.460213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437511, 33.202019, 34.445988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001656, -0.892372, 0.451298,
		-0.039018, 0.451012, 0.891664,
		-0.999237, -0.016132, -0.035565,
		30.137741, 33.197178, 34.435318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620964, 32.848019, 35.014580>,  <30.837206, 33.208473, 34.460213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620964, 32.848019, 35.014580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282244, 32.825161, 34.803047>,  <30.079012, 32.811447, 34.676128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282244, 32.825161, 34.803047>,  <30.620964, 32.848019, 35.014580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282244, 32.825161, 34.803047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111719, -0.952929, 0.281860,
		-0.520047, 0.297759, 0.800556,
		-0.846800, -0.057143, -0.528834,
		30.028204, 32.808018, 34.644398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063044, 32.627144, 35.420353>,  <30.620964, 32.848019, 35.014580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063044, 32.627144, 35.420353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940948, 32.548985, 35.047546>,  <29.867691, 32.502090, 34.823864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940948, 32.548985, 35.047546>,  <30.063044, 32.627144, 35.420353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940948, 32.548985, 35.047546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098663, -0.966966, 0.235036,
		-0.947152, 0.163697, 0.275875,
		-0.305236, -0.195396, -0.932015,
		29.849379, 32.490364, 34.767941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470510, 32.109024, 35.455925>,  <30.063044, 32.627144, 35.420353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470510, 32.109024, 35.455925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617361, 32.073948, 35.085514>,  <29.705471, 32.052902, 34.863266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617361, 32.073948, 35.085514>,  <29.470510, 32.109024, 35.455925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617361, 32.073948, 35.085514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024626, -0.996113, 0.084568,
		-0.929845, -0.008243, -0.367859,
		0.367127, -0.087694, -0.926028,
		29.727499, 32.047638, 34.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145964, 31.535221, 35.134247>,  <29.470510, 32.109024, 35.455925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145964, 31.535221, 35.134247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465788, 31.567652, 34.896210>,  <29.657682, 31.587111, 34.753387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465788, 31.567652, 34.896210>,  <29.145964, 31.535221, 35.134247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465788, 31.567652, 34.896210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072649, -0.970513, -0.229839,
		-0.596176, 0.227002, -0.770093,
		0.799560, 0.081078, -0.595088,
		29.705656, 31.591976, 34.717682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041504, 31.017443, 34.456165>,  <29.145964, 31.535221, 35.134247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041504, 31.017443, 34.456165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421839, 31.101109, 34.547516>,  <29.650040, 31.151308, 34.602325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.421839, 31.101109, 34.547516>,  <29.041504, 31.017443, 34.456165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421839, 31.101109, 34.547516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252825, -0.950164, -0.182394,
		0.178848, 0.231167, -0.956334,
		0.950838, 0.209165, 0.228380,
		29.707090, 31.163858, 34.616032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386166, 30.775253, 33.920773>,  <29.041504, 31.017443, 34.456165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386166, 30.775253, 33.920773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.657167, 30.783466, 34.214867>,  <29.819769, 30.788395, 34.391323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.657167, 30.783466, 34.214867>,  <29.386166, 30.775253, 33.920773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657167, 30.783466, 34.214867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199238, -0.967361, -0.156577,
		0.708021, 0.252568, -0.659481,
		0.677503, 0.020534, 0.735233,
		29.860418, 30.789627, 34.435436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876024, 30.304819, 33.606163>,  <29.386166, 30.775253, 33.920773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876024, 30.304819, 33.606163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002758, 30.344810, 33.983440>,  <30.078798, 30.368805, 34.209808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002758, 30.344810, 33.983440>,  <29.876024, 30.304819, 33.606163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002758, 30.344810, 33.983440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073103, -0.994045, 0.080814,
		0.945660, 0.043345, -0.322255,
		0.316833, 0.099981, 0.943197,
		30.097809, 30.374805, 34.266399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542948, 29.961620, 33.701172>,  <29.876024, 30.304819, 33.606163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542948, 29.961620, 33.701172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371025, 29.971312, 34.062210>,  <30.267872, 29.977125, 34.278831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.371025, 29.971312, 34.062210>,  <30.542948, 29.961620, 33.701172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371025, 29.971312, 34.062210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024856, -0.998944, 0.038649,
		0.902579, 0.039046, 0.428749,
		-0.429805, 0.024227, 0.902597,
		30.242085, 29.978580, 34.332989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957708, 29.442921, 34.116489>,  <30.542948, 29.961620, 33.701172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957708, 29.442921, 34.116489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622454, 29.491995, 34.329082>,  <30.421301, 29.521439, 34.456638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622454, 29.491995, 34.329082>,  <30.957708, 29.442921, 34.116489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622454, 29.491995, 34.329082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010341, -0.977776, 0.209396,
		0.545360, 0.170007, 0.820781,
		-0.838138, 0.122684, 0.531482,
		30.371012, 29.528799, 34.488525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032177, 29.009260, 34.593330>,  <30.957708, 29.442921, 34.116489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032177, 29.009260, 34.593330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.641087, 29.073112, 34.647839>,  <30.406433, 29.111423, 34.680542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.641087, 29.073112, 34.647839>,  <31.032177, 29.009260, 34.593330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641087, 29.073112, 34.647839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136685, -0.976981, 0.163784,
		0.159275, 0.141510, 0.977040,
		-0.977726, 0.159633, 0.136266,
		30.347769, 29.121002, 34.688717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980431, 28.758181, 35.238300>,  <31.032177, 29.009260, 34.593330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980431, 28.758181, 35.238300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612747, 28.753546, 35.080860>,  <30.392138, 28.750765, 34.986397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612747, 28.753546, 35.080860>,  <30.980431, 28.758181, 35.238300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612747, 28.753546, 35.080860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114673, -0.948365, 0.295726,
		-0.376707, 0.316970, 0.870415,
		-0.919207, -0.011589, -0.393604,
		30.336985, 28.750069, 34.962780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594589, 28.564674, 35.709106>,  <30.980431, 28.758181, 35.238300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594589, 28.564674, 35.709106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.411379, 28.474661, 35.365112>,  <30.301453, 28.420652, 35.158718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.411379, 28.474661, 35.365112>,  <30.594589, 28.564674, 35.709106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411379, 28.474661, 35.365112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207814, -0.913514, 0.349722,
		-0.864305, 0.338899, 0.371650,
		-0.458028, -0.225032, -0.859983,
		30.273970, 28.407152, 35.107117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849262, 28.357971, 35.925232>,  <30.594589, 28.564674, 35.709106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849262, 28.357971, 35.925232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.990469, 28.224403, 35.575630>,  <30.075193, 28.144262, 35.365871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.990469, 28.224403, 35.575630>,  <29.849262, 28.357971, 35.925232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990469, 28.224403, 35.575630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204326, -0.939109, 0.276268,
		-0.913034, 0.081054, -0.399750,
		0.353016, -0.333922, -0.874000,
		30.096373, 28.124228, 35.313431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362755, 27.906267, 35.747040>,  <29.849262, 28.357971, 35.925232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362755, 27.906267, 35.747040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.677023, 27.817638, 35.515999>,  <29.865583, 27.764462, 35.377373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.677023, 27.817638, 35.515999>,  <29.362755, 27.906267, 35.747040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677023, 27.817638, 35.515999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069572, -0.959383, 0.273392,
		-0.614721, -0.174611, -0.769175,
		0.785671, -0.221573, -0.577605,
		29.912724, 27.751167, 35.342716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071358, 27.362322, 35.317814>,  <29.362755, 27.906267, 35.747040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071358, 27.362322, 35.317814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.467916, 27.323090, 35.283138>,  <29.705851, 27.299551, 35.262333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.467916, 27.323090, 35.283138>,  <29.071358, 27.362322, 35.317814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467916, 27.323090, 35.283138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085144, -0.986189, 0.142060,
		-0.099426, -0.133456, -0.986055,
		0.991395, -0.098081, -0.086690,
		29.765335, 27.293665, 35.257130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165154, 26.815815, 34.871952>,  <29.071358, 27.362322, 35.317814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165154, 26.815815, 34.871952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507822, 26.842876, 35.076515>,  <29.713423, 26.859114, 35.199253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507822, 26.842876, 35.076515>,  <29.165154, 26.815815, 34.871952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507822, 26.842876, 35.076515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040025, -0.979657, 0.196647,
		0.514308, -0.188931, -0.836536,
		0.856671, 0.067654, 0.511407,
		29.764824, 26.863173, 35.229939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683756, 26.224056, 34.704514>,  <29.165154, 26.815815, 34.871952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683756, 26.224056, 34.704514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.811972, 26.350737, 35.061604>,  <29.888901, 26.426744, 35.275856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.811972, 26.350737, 35.061604>,  <29.683756, 26.224056, 34.704514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811972, 26.350737, 35.061604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126939, -0.919589, 0.371811,
		0.938692, -0.232501, -0.254562,
		0.320538, 0.316702, 0.892724,
		29.908133, 26.445747, 35.329422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.501183, 31.502895, 46.494553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204449, 31.237717, 46.454185>,  <38.026409, 31.078609, 46.429966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.204449, 31.237717, 46.454185>,  <38.501183, 31.502895, 46.494553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204449, 31.237717, 46.454185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093185, -0.047122, 0.994533,
		-0.664078, 0.747182, -0.026820,
		-0.741834, -0.662947, -0.100919,
		37.981899, 31.038834, 46.423908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854797, 31.712467, 46.879566>,  <38.501183, 31.502895, 46.494553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854797, 31.712467, 46.879566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.862339, 31.316507, 46.823360>,  <37.866863, 31.078932, 46.789639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.862339, 31.316507, 46.823360>,  <37.854797, 31.712467, 46.879566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862339, 31.316507, 46.823360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024799, -0.140034, 0.989836,
		-0.999515, -0.022145, 0.021909,
		0.018852, -0.989899, -0.140515,
		37.867996, 31.019537, 46.781204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677280, 31.398352, 47.499306>,  <37.854797, 31.712467, 46.879566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677280, 31.398352, 47.499306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802361, 31.066978, 47.313438>,  <37.877407, 30.868155, 47.201920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802361, 31.066978, 47.313438>,  <37.677280, 31.398352, 47.499306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802361, 31.066978, 47.313438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028959, -0.480657, 0.876430,
		-0.949411, -0.287515, -0.126310,
		0.312699, -0.828434, -0.464667,
		37.896172, 30.818449, 47.174038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255005, 30.821562, 47.706951>,  <37.677280, 31.398352, 47.499306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255005, 30.821562, 47.706951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603981, 30.673777, 47.578991>,  <37.813366, 30.585106, 47.502213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603981, 30.673777, 47.578991>,  <37.255005, 30.821562, 47.706951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603981, 30.673777, 47.578991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119191, -0.473956, 0.872444,
		-0.473956, -0.799289, -0.369464,
		-0.872444, 0.369464, 0.319903,
		37.865715, 30.562937, 47.483021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341785, 30.197405, 48.073311>,  <37.255005, 30.821562, 47.706951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341785, 30.197405, 48.073311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714809, 30.244919, 47.936943>,  <37.938622, 30.273428, 47.855122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.714809, 30.244919, 47.936943>,  <37.341785, 30.197405, 48.073311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714809, 30.244919, 47.936943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357251, -0.439767, 0.824000,
		-0.052046, -0.890222, -0.452545,
		0.932557, 0.118786, -0.340921,
		37.994576, 30.280554, 47.834667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559803, 29.534706, 48.054386>,  <37.341785, 30.197405, 48.073311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559803, 29.534706, 48.054386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885983, 29.766083, 48.062813>,  <38.081692, 29.904909, 48.067871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885983, 29.766083, 48.062813>,  <37.559803, 29.534706, 48.054386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885983, 29.766083, 48.062813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307485, -0.463738, 0.830903,
		0.490400, -0.671083, -0.556018,
		0.815451, 0.578442, 0.021069,
		38.130619, 29.939615, 48.069134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106136, 29.020092, 48.139130>,  <37.559803, 29.534706, 48.054386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106136, 29.020092, 48.139130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181519, 29.389959, 48.271473>,  <38.226746, 29.611879, 48.350880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181519, 29.389959, 48.271473>,  <38.106136, 29.020092, 48.139130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181519, 29.389959, 48.271473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252063, -0.371154, 0.893705,
		0.949184, -0.085023, -0.303020,
		0.188453, 0.924670, 0.330862,
		38.238056, 29.667360, 48.370731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725872, 28.845772, 48.553421>,  <38.106136, 29.020092, 48.139130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725872, 28.845772, 48.553421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.584618, 29.206217, 48.654057>,  <38.499866, 29.422483, 48.714436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.584618, 29.206217, 48.654057>,  <38.725872, 28.845772, 48.553421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584618, 29.206217, 48.654057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071940, -0.241960, 0.967616,
		0.932803, 0.359796, 0.020618,
		-0.353133, 0.901112, 0.251584,
		38.478676, 29.476551, 48.729530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134418, 29.070709, 49.106899>,  <38.725872, 28.845772, 48.553421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134418, 29.070709, 49.106899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.806515, 29.298948, 49.126579>,  <38.609772, 29.435892, 49.138386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.806515, 29.298948, 49.126579>,  <39.134418, 29.070709, 49.106899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806515, 29.298948, 49.126579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065200, -0.178324, 0.981809,
		0.568989, 0.801637, 0.183385,
		-0.819756, 0.570595, 0.049198,
		38.560589, 29.470127, 49.141338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286777, 29.557695, 49.673122>,  <39.134418, 29.070709, 49.106899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286777, 29.557695, 49.673122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888508, 29.562204, 49.636250>,  <38.649544, 29.564909, 49.614124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888508, 29.562204, 49.636250>,  <39.286777, 29.557695, 49.673122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888508, 29.562204, 49.636250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092179, -0.241085, 0.966116,
		-0.011334, 0.970439, 0.241083,
		-0.995678, 0.011273, -0.092186,
		38.589806, 29.565586, 49.608593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121750, 29.855309, 50.315502>,  <39.286777, 29.557695, 49.673122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121750, 29.855309, 50.315502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.785789, 29.682384, 50.184250>,  <38.584213, 29.578630, 50.105499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.785789, 29.682384, 50.184250>,  <39.121750, 29.855309, 50.315502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785789, 29.682384, 50.184250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172059, -0.361300, 0.916438,
		-0.514739, 0.826177, 0.229074,
		-0.839904, -0.432312, -0.328126,
		38.533817, 29.552691, 50.085812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613400, 29.831978, 50.895248>,  <39.121750, 29.855309, 50.315502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613400, 29.831978, 50.895248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411533, 29.566582, 50.674305>,  <38.290413, 29.407345, 50.541740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411533, 29.566582, 50.674305>,  <38.613400, 29.831978, 50.895248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411533, 29.566582, 50.674305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431590, -0.360221, 0.827025,
		-0.747691, 0.655762, -0.104564,
		-0.504666, -0.663488, -0.552354,
		38.260132, 29.367535, 50.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865540, 29.830294, 51.047260>,  <38.613400, 29.831978, 50.895248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865540, 29.830294, 51.047260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010498, 29.475517, 50.932716>,  <38.097473, 29.262651, 50.863991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010498, 29.475517, 50.932716>,  <37.865540, 29.830294, 51.047260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010498, 29.475517, 50.932716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335582, -0.410815, 0.847712,
		-0.869512, -0.211113, -0.446520,
		0.362400, -0.886940, -0.286363,
		38.119217, 29.209435, 50.846809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340729, 29.872982, 51.521172>,  <37.865540, 29.830294, 51.047260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340729, 29.872982, 51.521172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023712, 30.016016, 51.718761>,  <36.833504, 30.101837, 51.837315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023712, 30.016016, 51.718761>,  <37.340729, 29.872982, 51.521172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023712, 30.016016, 51.718761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002665, 0.812060, -0.583568,
		-0.609813, -0.461185, -0.644544,
		-0.792541, 0.357585, 0.493976,
		36.785950, 30.123291, 51.866955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748100, 30.050137, 51.054119>,  <37.340729, 29.872982, 51.521172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748100, 30.050137, 51.054119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760017, 30.272892, 51.386139>,  <36.767170, 30.406546, 51.585350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.760017, 30.272892, 51.386139>,  <36.748100, 30.050137, 51.054119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760017, 30.272892, 51.386139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267895, 0.804489, -0.530123,
		-0.962987, -0.206572, 0.173157,
		0.029794, 0.556890, 0.830052,
		36.768955, 30.439959, 51.635155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165592, 30.312016, 51.078388>,  <36.748100, 30.050137, 51.054119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165592, 30.312016, 51.078388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409863, 30.565941, 51.267738>,  <36.556427, 30.718296, 51.381348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.409863, 30.565941, 51.267738>,  <36.165592, 30.312016, 51.078388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409863, 30.565941, 51.267738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186657, 0.696337, -0.693018,
		-0.769566, 0.334853, 0.543730,
		0.610679, 0.634814, 0.473374,
		36.593067, 30.756386, 51.409752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767635, 30.878277, 51.040913>,  <36.165592, 30.312016, 51.078388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767635, 30.878277, 51.040913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140144, 30.999657, 51.121559>,  <36.363651, 31.072485, 51.169949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.140144, 30.999657, 51.121559>,  <35.767635, 30.878277, 51.040913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140144, 30.999657, 51.121559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047841, 0.650467, -0.758027,
		-0.361168, 0.696284, 0.620279,
		0.931273, 0.303450, 0.201616,
		36.419525, 31.090693, 51.182045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676342, 31.561712, 50.865833>,  <35.767635, 30.878277, 51.040913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676342, 31.561712, 50.865833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068859, 31.484943, 50.871788>,  <36.304371, 31.438881, 50.875359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068859, 31.484943, 50.871788>,  <35.676342, 31.561712, 50.865833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068859, 31.484943, 50.871788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141026, 0.664115, -0.734209,
		0.131028, 0.722577, 0.678760,
		0.981297, -0.191924, 0.014885,
		36.363247, 31.427366, 50.876255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955463, 32.244328, 50.844162>,  <35.676342, 31.561712, 50.865833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955463, 32.244328, 50.844162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241646, 31.986776, 50.735691>,  <36.413357, 31.832245, 50.670609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241646, 31.986776, 50.735691>,  <35.955463, 32.244328, 50.844162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241646, 31.986776, 50.735691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282834, 0.621839, -0.730288,
		0.638845, 0.445794, 0.627012,
		0.715459, -0.643881, -0.271174,
		36.456284, 31.793612, 50.654339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544289, 32.617771, 50.815151>,  <35.955463, 32.244328, 50.844162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544289, 32.617771, 50.815151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618488, 32.301655, 50.581558>,  <36.663010, 32.111984, 50.441402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618488, 32.301655, 50.581558>,  <36.544289, 32.617771, 50.815151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618488, 32.301655, 50.581558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089576, 0.605419, -0.790850,
		0.978552, 0.094395, 0.183099,
		0.185504, -0.790290, -0.583978,
		36.674141, 32.064568, 50.406364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003708, 32.929279, 50.207657>,  <36.544289, 32.617771, 50.815151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003708, 32.929279, 50.207657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901638, 32.567627, 50.070587>,  <36.840397, 32.350636, 49.988346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901638, 32.567627, 50.070587>,  <37.003708, 32.929279, 50.207657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901638, 32.567627, 50.070587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276954, 0.271208, -0.921815,
		0.926382, -0.330129, 0.181198,
		-0.255175, -0.904136, -0.342673,
		36.825085, 32.296387, 49.967785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495770, 32.829449, 49.706291>,  <37.003708, 32.929279, 50.207657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495770, 32.829449, 49.706291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.225018, 32.550938, 49.610771>,  <37.062565, 32.383831, 49.553459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.225018, 32.550938, 49.610771>,  <37.495770, 32.829449, 49.706291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225018, 32.550938, 49.610771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194183, 0.144018, -0.970336,
		0.710016, -0.703174, 0.037722,
		-0.676883, -0.696279, -0.238799,
		37.021954, 32.342052, 49.539131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842976, 32.326679, 49.289364>,  <37.495770, 32.829449, 49.706291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842976, 32.326679, 49.289364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450966, 32.280270, 49.224762>,  <37.215759, 32.252422, 49.186001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450966, 32.280270, 49.224762>,  <37.842976, 32.326679, 49.289364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450966, 32.280270, 49.224762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149931, 0.102407, -0.983379,
		0.130648, -0.987952, -0.082964,
		-0.980027, -0.116037, -0.161504,
		37.156956, 32.245461, 49.176311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725758, 31.865387, 48.673893>,  <37.842976, 32.326679, 49.289364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725758, 31.865387, 48.673893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417583, 32.118790, 48.702477>,  <37.232681, 32.270832, 48.719627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417583, 32.118790, 48.702477>,  <37.725758, 31.865387, 48.673893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417583, 32.118790, 48.702477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021786, 0.138182, -0.990167,
		-0.637151, -0.761299, -0.120261,
		-0.770431, 0.633506, 0.071457,
		37.186455, 32.308842, 48.723915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336044, 31.728729, 48.137726>,  <37.725758, 31.865387, 48.673893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336044, 31.728729, 48.137726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214134, 32.093506, 48.247616>,  <37.140987, 32.312370, 48.313549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214134, 32.093506, 48.247616>,  <37.336044, 31.728729, 48.137726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214134, 32.093506, 48.247616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129578, 0.246065, -0.960553,
		-0.943570, -0.328348, 0.043173,
		-0.304772, 0.911943, 0.274726,
		37.122704, 32.367088, 48.330032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848217, 31.767836, 47.698505>,  <37.336044, 31.728729, 48.137726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848217, 31.767836, 47.698505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906986, 32.142872, 47.824577>,  <36.942245, 32.367893, 47.900223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906986, 32.142872, 47.824577>,  <36.848217, 31.767836, 47.698505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906986, 32.142872, 47.824577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166874, 0.337569, -0.926391,
		-0.974970, 0.083510, 0.206056,
		0.146921, 0.937589, 0.315184,
		36.951061, 32.424149, 47.919132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214127, 32.108055, 47.508820>,  <36.848217, 31.767836, 47.698505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214127, 32.108055, 47.508820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508881, 32.375919, 47.545811>,  <36.685734, 32.536640, 47.568005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508881, 32.375919, 47.545811>,  <36.214127, 32.108055, 47.508820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508881, 32.375919, 47.545811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273496, 0.420419, -0.865129,
		-0.618224, 0.612208, 0.492951,
		0.736885, 0.669663, 0.092477,
		36.729946, 32.576817, 47.573555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921780, 32.690983, 47.243443>,  <36.214127, 32.108055, 47.508820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921780, 32.690983, 47.243443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303902, 32.808994, 47.235901>,  <36.533173, 32.879799, 47.231377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303902, 32.808994, 47.235901>,  <35.921780, 32.690983, 47.243443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303902, 32.808994, 47.235901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174074, 0.509816, -0.842488,
		-0.238944, 0.808113, 0.538386,
		0.955303, 0.295027, -0.018854,
		36.590492, 32.897503, 47.230244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099270, 32.730141, 47.377270>,  <35.921780, 32.690983, 47.243443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099270, 32.730141, 47.377270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752583, 32.929455, 47.368290>,  <34.544571, 33.049046, 47.362904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752583, 32.929455, 47.368290>,  <35.099270, 32.730141, 47.377270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752583, 32.929455, 47.368290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144985, -0.208620, 0.967190,
		0.477258, 0.841538, 0.253060,
		-0.866720, 0.498290, -0.022445,
		34.492565, 33.078941, 47.361557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027493, 33.282051, 48.052521>,  <35.099270, 32.730141, 47.377270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027493, 33.282051, 48.052521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666782, 33.170853, 47.920143>,  <34.450356, 33.104134, 47.840717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666782, 33.170853, 47.920143>,  <35.027493, 33.282051, 48.052521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666782, 33.170853, 47.920143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300285, -0.147747, 0.942337,
		-0.310865, 0.949151, 0.049756,
		-0.901772, -0.277999, -0.330945,
		34.396252, 33.087452, 47.820858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540325, 33.701508, 48.457329>,  <35.027493, 33.282051, 48.052521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540325, 33.701508, 48.457329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335083, 33.388195, 48.316936>,  <34.211937, 33.200207, 48.232700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335083, 33.388195, 48.316936>,  <34.540325, 33.701508, 48.457329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335083, 33.388195, 48.316936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344707, -0.186442, 0.920009,
		-0.786063, 0.593053, -0.174336,
		-0.513110, -0.783280, -0.350985,
		34.181149, 33.153210, 48.211639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885967, 33.739887, 48.891350>,  <34.540325, 33.701508, 48.457329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885967, 33.739887, 48.891350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910721, 33.362255, 48.761810>,  <33.925575, 33.135674, 48.684086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.910721, 33.362255, 48.761810>,  <33.885967, 33.739887, 48.891350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910721, 33.362255, 48.761810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466640, -0.314190, 0.826759,
		-0.882279, 0.099954, -0.459992,
		0.061887, -0.944084, -0.323846,
		33.929287, 33.079029, 48.664658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165661, 33.356884, 48.998104>,  <33.885967, 33.739887, 48.891350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165661, 33.356884, 48.998104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401203, 33.034855, 48.969490>,  <33.542526, 32.841637, 48.952324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.401203, 33.034855, 48.969490>,  <33.165661, 33.356884, 48.998104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401203, 33.034855, 48.969490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512505, -0.440360, 0.737171,
		-0.624973, -0.397425, -0.671909,
		0.588852, -0.805069, -0.071531,
		33.577858, 32.793335, 48.948032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651787, 32.871990, 49.069592>,  <33.165661, 33.356884, 48.998104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651787, 32.871990, 49.069592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009174, 32.715984, 49.158672>,  <33.223606, 32.622379, 49.212120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009174, 32.715984, 49.158672>,  <32.651787, 32.871990, 49.069592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009174, 32.715984, 49.158672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378697, -0.387635, 0.840433,
		-0.241456, -0.835239, -0.494039,
		0.893470, -0.390018, 0.222706,
		33.277214, 32.598980, 49.225483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573345, 32.176003, 49.356701>,  <32.651787, 32.871990, 49.069592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573345, 32.176003, 49.356701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940971, 32.263046, 49.488136>,  <33.161545, 32.315273, 49.566998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940971, 32.263046, 49.488136>,  <32.573345, 32.176003, 49.356701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940971, 32.263046, 49.488136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170300, -0.532601, 0.829056,
		0.355416, -0.817913, -0.452435,
		0.919063, 0.217610, 0.328586,
		33.216690, 32.328331, 49.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655514, 31.684460, 48.678383>,  <32.573345, 32.176003, 49.356701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655514, 31.684460, 48.678383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604767, 31.303270, 48.568295>,  <32.574318, 31.074556, 48.502243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.604767, 31.303270, 48.568295>,  <32.655514, 31.684460, 48.678383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604767, 31.303270, 48.568295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079806, 0.266756, -0.960454,
		0.988704, -0.143816, 0.042210,
		-0.126869, -0.952973, -0.275220,
		32.566708, 31.017378, 48.485729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210320, 31.487623, 48.105885>,  <32.655514, 31.684460, 48.678383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210320, 31.487623, 48.105885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904076, 31.231918, 48.077068>,  <32.720329, 31.078495, 48.059780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904076, 31.231918, 48.077068>,  <33.210320, 31.487623, 48.105885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904076, 31.231918, 48.077068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065122, 0.034397, -0.997284,
		0.640005, -0.768218, 0.015295,
		-0.765606, -0.639263, -0.072042,
		32.674393, 31.040140, 48.055454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415287, 31.069324, 47.488270>,  <33.210320, 31.487623, 48.105885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415287, 31.069324, 47.488270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023567, 31.006090, 47.538841>,  <32.788536, 30.968149, 47.569183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023567, 31.006090, 47.538841>,  <33.415287, 31.069324, 47.488270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023567, 31.006090, 47.538841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110847, -0.103778, -0.988404,
		0.169376, -0.981956, 0.084105,
		-0.979298, -0.158089, 0.126424,
		32.729778, 30.958664, 47.576767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196884, 30.473274, 47.155628>,  <33.415287, 31.069324, 47.488270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196884, 30.473274, 47.155628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883919, 30.722273, 47.148460>,  <32.696140, 30.871672, 47.144161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883919, 30.722273, 47.148460>,  <33.196884, 30.473274, 47.155628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883919, 30.722273, 47.148460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168487, -0.239295, -0.956217,
		-0.599530, -0.745141, 0.292111,
		-0.782417, 0.622497, -0.017918,
		32.649193, 30.909021, 47.143085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651329, 30.211885, 46.675171>,  <33.196884, 30.473274, 47.155628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651329, 30.211885, 46.675171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506863, 30.579817, 46.736458>,  <32.420185, 30.800575, 46.773228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506863, 30.579817, 46.736458>,  <32.651329, 30.211885, 46.675171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506863, 30.579817, 46.736458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290315, 0.045227, -0.955862,
		-0.886160, -0.389701, 0.250707,
		-0.361161, 0.919830, 0.153214,
		32.398514, 30.855766, 46.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878487, 30.314096, 46.386238>,  <32.651329, 30.211885, 46.675171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878487, 30.314096, 46.386238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020775, 30.686075, 46.423462>,  <32.106148, 30.909264, 46.445797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020775, 30.686075, 46.423462>,  <31.878487, 30.314096, 46.386238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020775, 30.686075, 46.423462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173974, 0.163721, -0.971045,
		-0.918257, 0.329230, 0.220026,
		0.355720, 0.929948, 0.093060,
		32.127491, 30.965059, 46.451382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365499, 30.872932, 46.114029>,  <31.878487, 30.314096, 46.386238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365499, 30.872932, 46.114029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.707058, 31.076420, 46.070091>,  <31.911993, 31.198513, 46.043728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.707058, 31.076420, 46.070091>,  <31.365499, 30.872932, 46.114029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707058, 31.076420, 46.070091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232566, 0.184171, -0.954984,
		-0.465591, 0.841002, 0.275574,
		0.853896, 0.508721, -0.109840,
		31.963226, 31.229036, 46.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.155632, 26.417313, 48.777588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.304104, 26.764797, 48.908783>,  <37.393185, 26.973288, 48.987499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.304104, 26.764797, 48.908783>,  <37.155632, 26.417313, 48.777588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304104, 26.764797, 48.908783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143347, 0.402589, -0.904087,
		-0.917432, 0.288559, 0.273958,
		0.371175, 0.868709, 0.327984,
		37.415455, 27.025410, 49.007179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615910, 26.963068, 48.754379>,  <37.155632, 26.417313, 48.777588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615910, 26.963068, 48.754379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985374, 27.113865, 48.726898>,  <37.207054, 27.204344, 48.710411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985374, 27.113865, 48.726898>,  <36.615910, 26.963068, 48.754379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985374, 27.113865, 48.726898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221868, 0.379951, -0.898004,
		-0.312440, 0.844697, 0.434590,
		0.923664, 0.376994, -0.068699,
		37.262474, 27.226963, 48.706287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603245, 27.743649, 48.507790>,  <36.615910, 26.963068, 48.754379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603245, 27.743649, 48.507790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.971935, 27.611261, 48.426914>,  <37.193150, 27.531830, 48.378387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.971935, 27.611261, 48.426914>,  <36.603245, 27.743649, 48.507790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971935, 27.611261, 48.426914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032538, 0.453500, -0.890662,
		0.386472, 0.827526, 0.407234,
		0.921727, -0.330966, -0.202191,
		37.248455, 27.511972, 48.366257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718117, 28.142675, 47.829418>,  <36.603245, 27.743649, 48.507790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718117, 28.142675, 47.829418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.030975, 27.893995, 47.846107>,  <37.218689, 27.744787, 47.856121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.030975, 27.893995, 47.846107>,  <36.718117, 28.142675, 47.829418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030975, 27.893995, 47.846107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210845, 0.201055, -0.956620,
		0.586340, 0.757012, 0.288336,
		0.782144, -0.621699, 0.041726,
		37.265617, 27.707485, 47.858624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323429, 28.563723, 47.657665>,  <36.718117, 28.142675, 47.829418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323429, 28.563723, 47.657665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.390312, 28.175243, 47.589760>,  <37.430443, 27.942156, 47.549015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.390312, 28.175243, 47.589760>,  <37.323429, 28.563723, 47.657665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390312, 28.175243, 47.589760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173671, 0.198509, -0.964589,
		0.970505, 0.131802, 0.201861,
		0.167206, -0.971196, -0.169764,
		37.440475, 27.883884, 47.538830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977692, 28.461067, 47.284256>,  <37.323429, 28.563723, 47.657665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977692, 28.461067, 47.284256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751724, 28.142279, 47.198750>,  <37.616142, 27.951006, 47.147446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751724, 28.142279, 47.198750>,  <37.977692, 28.461067, 47.284256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751724, 28.142279, 47.198750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088859, 0.198805, -0.976002,
		0.820346, -0.570361, -0.041491,
		-0.564922, -0.796973, -0.213770,
		37.582249, 27.903187, 47.134617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273247, 28.118307, 46.640137>,  <37.977692, 28.461067, 47.284256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273247, 28.118307, 46.640137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891750, 28.000248, 46.663029>,  <37.662853, 27.929413, 46.676762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.891750, 28.000248, 46.663029>,  <38.273247, 28.118307, 46.640137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891750, 28.000248, 46.663029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119348, 0.196986, -0.973115,
		0.275942, -0.934924, -0.223098,
		-0.953736, -0.295149, 0.057225,
		37.605629, 27.911703, 46.680195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152142, 27.867352, 46.007591>,  <38.273247, 28.118307, 46.640137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152142, 27.867352, 46.007591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.780037, 27.905697, 46.149250>,  <37.556774, 27.928703, 46.234245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.780037, 27.905697, 46.149250>,  <38.152142, 27.867352, 46.007591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780037, 27.905697, 46.149250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342789, 0.117030, -0.932094,
		-0.130799, -0.988491, -0.076007,
		-0.930262, 0.095863, 0.354151,
		37.500957, 27.934456, 46.255497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772564, 27.473564, 45.488018>,  <38.152142, 27.867352, 46.007591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772564, 27.473564, 45.488018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537132, 27.736267, 45.676590>,  <37.395874, 27.893888, 45.789734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.537132, 27.736267, 45.676590>,  <37.772564, 27.473564, 45.488018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537132, 27.736267, 45.676590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442189, 0.226644, -0.867814,
		-0.676791, -0.719236, 0.157014,
		-0.588576, 0.656759, 0.471429,
		37.360558, 27.933294, 45.818020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218719, 27.374617, 45.116631>,  <37.772564, 27.473564, 45.488018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218719, 27.374617, 45.116631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.183548, 27.716583, 45.321133>,  <37.162445, 27.921764, 45.443832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.183548, 27.716583, 45.321133>,  <37.218719, 27.374617, 45.116631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183548, 27.716583, 45.321133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358338, 0.451737, -0.817024,
		-0.929442, -0.255045, 0.266628,
		-0.087932, 0.854919, 0.511255,
		37.157169, 27.973059, 45.474510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514690, 27.596552, 44.950714>,  <37.218719, 27.374617, 45.116631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514690, 27.596552, 44.950714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.734474, 27.909657, 45.067589>,  <36.866344, 28.097519, 45.137714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.734474, 27.909657, 45.067589>,  <36.514690, 27.596552, 44.950714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734474, 27.909657, 45.067589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307100, 0.514438, -0.800652,
		-0.777033, 0.350197, 0.523051,
		0.549463, 0.782762, 0.292190,
		36.899315, 28.144485, 45.155247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080803, 28.157755, 44.963455>,  <36.514690, 27.596552, 44.950714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080803, 28.157755, 44.963455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.452751, 28.296568, 44.914604>,  <36.675919, 28.379856, 44.885292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.452751, 28.296568, 44.914604>,  <36.080803, 28.157755, 44.963455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452751, 28.296568, 44.914604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275103, 0.435493, -0.857125,
		-0.244267, 0.830610, 0.500421,
		0.929867, 0.347034, -0.122127,
		36.731712, 28.400679, 44.877968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535400, 28.700336, 45.127842>,  <36.080803, 28.157755, 44.963455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535400, 28.700336, 45.127842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.166149, 28.838295, 45.059860>,  <34.944599, 28.921070, 45.019070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.166149, 28.838295, 45.059860>,  <35.535400, 28.700336, 45.127842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166149, 28.838295, 45.059860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217694, -0.104464, 0.970410,
		0.316935, 0.932810, 0.171515,
		-0.923126, 0.344895, -0.169959,
		34.889210, 28.941763, 45.008873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399998, 29.225021, 45.562523>,  <35.535400, 28.700336, 45.127842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399998, 29.225021, 45.562523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045559, 29.068581, 45.463028>,  <34.832897, 28.974716, 45.403332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045559, 29.068581, 45.463028>,  <35.399998, 29.225021, 45.562523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045559, 29.068581, 45.463028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206758, -0.146763, 0.967322,
		-0.414828, 0.908570, 0.049182,
		-0.886097, -0.391104, -0.248736,
		34.779728, 28.951250, 45.388409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916866, 29.508959, 45.995510>,  <35.399998, 29.225021, 45.562523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916866, 29.508959, 45.995510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717503, 29.186399, 45.868195>,  <34.597885, 28.992865, 45.791805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717503, 29.186399, 45.868195>,  <34.916866, 29.508959, 45.995510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717503, 29.186399, 45.868195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417920, -0.098180, 0.903163,
		-0.759557, 0.583168, -0.288075,
		-0.498413, -0.806396, -0.318291,
		34.567978, 28.944481, 45.772709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232033, 29.560614, 46.361076>,  <34.916866, 29.508959, 45.995510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232033, 29.560614, 46.361076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258839, 29.183254, 46.231148>,  <34.274921, 28.956839, 46.153191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258839, 29.183254, 46.231148>,  <34.232033, 29.560614, 46.361076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258839, 29.183254, 46.231148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283863, -0.330125, 0.900244,
		-0.956520, 0.031871, -0.289921,
		0.067018, -0.943399, -0.324818,
		34.278946, 28.900234, 46.133701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485409, 29.251680, 46.281796>,  <34.232033, 29.560614, 46.361076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485409, 29.251680, 46.281796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.767384, 28.975569, 46.347012>,  <33.936569, 28.809902, 46.386143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.767384, 28.975569, 46.347012>,  <33.485409, 29.251680, 46.281796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767384, 28.975569, 46.347012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364091, -0.154903, 0.918391,
		-0.608690, -0.706768, -0.360521,
		0.704936, -0.690278, 0.163040,
		33.978863, 28.768486, 46.395924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145138, 28.755524, 46.739094>,  <33.485409, 29.251680, 46.281796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145138, 28.755524, 46.739094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521915, 28.630083, 46.787086>,  <33.747982, 28.554819, 46.815880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521915, 28.630083, 46.787086>,  <33.145138, 28.755524, 46.739094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521915, 28.630083, 46.787086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229483, -0.340425, 0.911838,
		-0.245111, -0.886434, -0.392627,
		0.941944, -0.313603, 0.119979,
		33.804501, 28.536003, 46.823082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212711, 28.072533, 46.956589>,  <33.145138, 28.755524, 46.739094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212711, 28.072533, 46.956589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.568222, 28.179613, 47.105404>,  <33.781528, 28.243862, 47.194691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.568222, 28.179613, 47.105404>,  <33.212711, 28.072533, 46.956589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568222, 28.179613, 47.105404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270282, -0.349431, 0.897132,
		0.370166, -0.897905, -0.238211,
		0.888777, 0.267704, 0.372035,
		33.834854, 28.259924, 47.217014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443909, 27.531261, 47.255188>,  <33.212711, 28.072533, 46.956589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443909, 27.531261, 47.255188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.651745, 27.824453, 47.430809>,  <33.776447, 28.000368, 47.536182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.651745, 27.824453, 47.430809>,  <33.443909, 27.531261, 47.255188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651745, 27.824453, 47.430809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326605, -0.304446, 0.894786,
		0.789526, -0.608322, 0.081206,
		0.519595, 0.732979, 0.439048,
		33.807625, 28.044348, 47.562523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762566, 27.209404, 47.883354>,  <33.443909, 27.531261, 47.255188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762566, 27.209404, 47.883354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.763634, 27.604712, 47.944431>,  <33.764275, 27.841896, 47.981079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.763634, 27.604712, 47.944431>,  <33.762566, 27.209404, 47.883354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763634, 27.604712, 47.944431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184160, -0.149597, 0.971445,
		0.982893, -0.030714, 0.181601,
		0.002670, 0.988270, 0.152694,
		33.764435, 27.901192, 47.990238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288834, 27.295309, 48.403645>,  <33.762566, 27.209404, 47.883354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288834, 27.295309, 48.403645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.053181, 27.618414, 48.395214>,  <33.911789, 27.812277, 48.390156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.053181, 27.618414, 48.395214>,  <34.288834, 27.295309, 48.403645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053181, 27.618414, 48.395214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291788, -0.188340, 0.937757,
		0.753515, 0.558612, 0.346652,
		-0.589131, 0.807763, -0.021079,
		33.876442, 27.860743, 48.388889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502537, 27.756710, 48.966312>,  <34.288834, 27.295309, 48.403645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502537, 27.756710, 48.966312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.129692, 27.860270, 48.865009>,  <33.905983, 27.922405, 48.804230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.129692, 27.860270, 48.865009>,  <34.502537, 27.756710, 48.966312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129692, 27.860270, 48.865009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279182, -0.068211, 0.957812,
		0.230700, 0.963493, 0.135860,
		-0.932113, 0.258897, -0.253253,
		33.850060, 27.937939, 48.789032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259918, 28.228331, 49.475300>,  <34.502537, 27.756710, 48.966312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259918, 28.228331, 49.475300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.903957, 28.111179, 49.335419>,  <33.690380, 28.040888, 49.251492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.903957, 28.111179, 49.335419>,  <34.259918, 28.228331, 49.475300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903957, 28.111179, 49.335419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306747, -0.183171, 0.933999,
		-0.337604, 0.938441, 0.073165,
		-0.889905, -0.292878, -0.349703,
		33.636986, 28.023315, 49.230507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790977, 28.596151, 49.990311>,  <34.259918, 28.228331, 49.475300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790977, 28.596151, 49.990311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579788, 28.327274, 49.782696>,  <33.453075, 28.165949, 49.658127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579788, 28.327274, 49.782696>,  <33.790977, 28.596151, 49.990311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579788, 28.327274, 49.782696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563333, -0.180157, 0.806350,
		-0.635529, 0.718124, -0.283549,
		-0.527976, -0.672191, -0.519038,
		33.421394, 28.125616, 49.626984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113029, 28.719563, 50.173859>,  <33.790977, 28.596151, 49.990311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113029, 28.719563, 50.173859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084400, 28.347954, 50.028648>,  <33.067223, 28.124989, 49.941521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084400, 28.347954, 50.028648>,  <33.113029, 28.719563, 50.173859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084400, 28.347954, 50.028648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640729, -0.236113, 0.730559,
		-0.764423, 0.284894, -0.578353,
		-0.071576, -0.929024, -0.363030,
		33.062927, 28.069246, 49.919739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739853, 28.819132, 50.830807>,  <33.113029, 28.719563, 50.173859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739853, 28.819132, 50.830807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436180, 29.079128, 50.844425>,  <32.253979, 29.235126, 50.852596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436180, 29.079128, 50.844425>,  <32.739853, 28.819132, 50.830807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436180, 29.079128, 50.844425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171284, 0.249972, -0.952983,
		-0.627943, -0.717651, -0.301106,
		-0.759177, 0.649993, 0.034045,
		32.208427, 29.274126, 50.854637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332390, 28.672277, 50.326321>,  <32.739853, 28.819132, 50.830807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332390, 28.672277, 50.326321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221996, 29.051687, 50.388466>,  <32.155762, 29.279333, 50.425755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.221996, 29.051687, 50.388466>,  <32.332390, 28.672277, 50.326321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221996, 29.051687, 50.388466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176132, 0.208814, -0.961964,
		-0.944886, -0.238123, -0.224695,
		-0.275985, 0.948522, 0.155364,
		32.139202, 29.336245, 50.435074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128487, 28.921339, 49.736965>,  <32.332390, 28.672277, 50.326321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128487, 28.921339, 49.736965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.171124, 29.275457, 49.918026>,  <32.196705, 29.487928, 50.026661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.171124, 29.275457, 49.918026>,  <32.128487, 28.921339, 49.736965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171124, 29.275457, 49.918026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265261, 0.413426, -0.871043,
		-0.958266, 0.212918, -0.190765,
		0.106593, 0.885294, 0.452651,
		32.203102, 29.541046, 50.053822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623306, 29.456059, 49.491112>,  <32.128487, 28.921339, 49.736965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623306, 29.456059, 49.491112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.963091, 29.619179, 49.625042>,  <32.166962, 29.717051, 49.705402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.963091, 29.619179, 49.625042>,  <31.623306, 29.456059, 49.491112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963091, 29.619179, 49.625042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086097, 0.518935, -0.850466,
		-0.520576, 0.751268, 0.405706,
		0.849463, 0.407802, 0.334827,
		32.217930, 29.741520, 49.725491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452299, 30.182297, 49.460751>,  <31.623306, 29.456059, 49.491112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452299, 30.182297, 49.460751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850185, 30.142328, 49.470203>,  <32.088917, 30.118347, 49.475876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850185, 30.142328, 49.470203>,  <31.452299, 30.182297, 49.460751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850185, 30.142328, 49.470203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075475, 0.555448, -0.828119,
		0.069620, 0.825526, 0.560054,
		0.994714, -0.099924, 0.023636,
		32.148602, 30.112350, 49.477295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616383, 30.906771, 49.351433>,  <31.452299, 30.182297, 49.460751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616383, 30.906771, 49.351433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948843, 30.689945, 49.301865>,  <32.148319, 30.559851, 49.272125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.948843, 30.689945, 49.301865>,  <31.616383, 30.906771, 49.351433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948843, 30.689945, 49.301865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181825, 0.475553, -0.860691,
		0.525476, 0.692834, 0.493818,
		0.831152, -0.542061, -0.123917,
		32.198189, 30.527327, 49.264690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141060, 31.495407, 49.149933>,  <31.616383, 30.906771, 49.351433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141060, 31.495407, 49.149933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292725, 31.144941, 49.030884>,  <32.383724, 30.934662, 48.959454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292725, 31.144941, 49.030884>,  <32.141060, 31.495407, 49.149933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292725, 31.144941, 49.030884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250451, 0.406802, -0.878514,
		0.890793, 0.258557, 0.373679,
		0.379159, -0.876162, -0.297620,
		32.406471, 30.882093, 48.941597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789429, 31.485924, 49.615196>,  <32.141060, 31.495407, 49.149933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789429, 31.485924, 49.615196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006794, 31.786171, 49.765541>,  <33.137215, 31.966320, 49.855747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006794, 31.786171, 49.765541>,  <32.789429, 31.485924, 49.615196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006794, 31.786171, 49.765541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059022, -0.480792, 0.874846,
		0.837385, -0.453222, -0.305573,
		0.543417, 0.750619, 0.375858,
		33.169819, 32.011356, 49.878300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376598, 31.151405, 49.886681>,  <32.789429, 31.485924, 49.615196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376598, 31.151405, 49.886681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376087, 31.509237, 50.065445>,  <33.375782, 31.723936, 50.172703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.376087, 31.509237, 50.065445>,  <33.376598, 31.151405, 49.886681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376087, 31.509237, 50.065445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126429, -0.443179, 0.887473,
		0.991975, 0.057634, -0.112535,
		-0.001276, 0.894578, 0.446910,
		33.375706, 31.777611, 50.199516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007694, 31.275480, 50.203285>,  <33.376598, 31.151405, 49.886681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007694, 31.275480, 50.203285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779545, 31.543720, 50.393009>,  <33.642654, 31.704664, 50.506844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779545, 31.543720, 50.393009>,  <34.007694, 31.275480, 50.203285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779545, 31.543720, 50.393009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405279, -0.272504, 0.872634,
		0.714441, 0.689954, -0.116352,
		-0.570371, 0.670601, 0.474312,
		33.608433, 31.744900, 50.535301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402271, 31.517776, 50.779640>,  <34.007694, 31.275480, 50.203285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402271, 31.517776, 50.779640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034683, 31.607922, 50.909077>,  <33.814133, 31.662008, 50.986740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034683, 31.607922, 50.909077>,  <34.402271, 31.517776, 50.779640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034683, 31.607922, 50.909077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264658, -0.255851, 0.929783,
		0.292332, 0.940080, 0.175474,
		-0.918966, 0.225365, 0.323593,
		33.758995, 31.675531, 51.006153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549221, 31.844673, 51.363697>,  <34.402271, 31.517776, 50.779640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549221, 31.844673, 51.363697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.174618, 31.708706, 51.398129>,  <33.949856, 31.627125, 51.418785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.174618, 31.708706, 51.398129>,  <34.549221, 31.844673, 51.363697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174618, 31.708706, 51.398129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202147, -0.322793, 0.924630,
		-0.286516, 0.883323, 0.371012,
		-0.936507, -0.339920, 0.086076,
		33.893665, 31.606730, 51.423950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321217, 32.199978, 51.970608>,  <34.549221, 31.844673, 51.363697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321217, 32.199978, 51.970608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106819, 31.868696, 51.905136>,  <33.978180, 31.669928, 51.865852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106819, 31.868696, 51.905136>,  <34.321217, 32.199978, 51.970608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106819, 31.868696, 51.905136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159182, -0.289556, 0.943832,
		-0.829077, 0.479836, 0.287036,
		-0.535997, -0.828200, -0.163683,
		33.946018, 31.620235, 51.856030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860580, 32.164684, 52.508259>,  <34.321217, 32.199978, 51.970608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860580, 32.164684, 52.508259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919029, 31.790804, 52.378651>,  <33.954098, 31.566477, 52.300888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.919029, 31.790804, 52.378651>,  <33.860580, 32.164684, 52.508259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919029, 31.790804, 52.378651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059398, -0.318653, 0.946009,
		-0.987482, -0.157479, 0.008956,
		0.146122, -0.934698, -0.324018,
		33.962868, 31.510395, 52.281445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664959, 31.696783, 53.055939>,  <33.860580, 32.164684, 52.508259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664959, 31.696783, 53.055939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.874043, 31.436392, 52.835758>,  <33.999493, 31.280157, 52.703651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.874043, 31.436392, 52.835758>,  <33.664959, 31.696783, 53.055939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874043, 31.436392, 52.835758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402891, -0.380394, 0.832453,
		-0.751299, -0.656906, 0.063437,
		0.522712, -0.650980, -0.550451,
		34.030857, 31.241098, 52.670624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543690, 31.046949, 53.346931>,  <33.664959, 31.696783, 53.055939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543690, 31.046949, 53.346931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887589, 31.030712, 53.143288>,  <34.093925, 31.020969, 53.021099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887589, 31.030712, 53.143288>,  <33.543690, 31.046949, 53.346931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887589, 31.030712, 53.143288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452359, -0.402234, 0.795977,
		-0.237093, -0.914637, -0.327455,
		0.859743, -0.040593, -0.509111,
		34.145512, 31.018534, 52.990555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.838249, 36.595673, 37.521309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235592, 36.560207, 37.550659>,  <35.473999, 36.538929, 37.568268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235592, 36.560207, 37.550659>,  <34.838249, 36.595673, 37.521309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235592, 36.560207, 37.550659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096488, -0.294127, 0.950884,
		-0.062726, -0.951645, -0.300727,
		0.993356, -0.088661, 0.073373,
		35.533600, 36.533607, 37.572670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989433, 35.974945, 37.869076>,  <34.838249, 36.595673, 37.521309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989433, 35.974945, 37.869076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325459, 36.183334, 37.929577>,  <35.527073, 36.308369, 37.965878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325459, 36.183334, 37.929577>,  <34.989433, 35.974945, 37.869076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325459, 36.183334, 37.929577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053956, -0.357664, 0.932290,
		0.539799, -0.775021, -0.328571,
		0.840063, 0.520978, 0.151250,
		35.577477, 36.339626, 37.974953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398129, 35.464069, 38.220985>,  <34.989433, 35.974945, 37.869076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398129, 35.464069, 38.220985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575920, 35.813396, 38.300743>,  <35.682594, 36.022991, 38.348598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575920, 35.813396, 38.300743>,  <35.398129, 35.464069, 38.220985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575920, 35.813396, 38.300743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215978, -0.320501, 0.922297,
		0.869362, -0.366878, -0.331073,
		0.444480, 0.873315, 0.199394,
		35.709263, 36.075390, 38.360561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032433, 35.235317, 38.496178>,  <35.398129, 35.464069, 38.220985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032433, 35.235317, 38.496178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930092, 35.602615, 38.617085>,  <35.868687, 35.822994, 38.689629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930092, 35.602615, 38.617085>,  <36.032433, 35.235317, 38.496178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930092, 35.602615, 38.617085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088518, -0.289109, 0.953195,
		0.962654, 0.270635, -0.007311,
		-0.255855, 0.918244, 0.302268,
		35.853336, 35.878090, 38.707764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507019, 35.322933, 39.113152>,  <36.032433, 35.235317, 38.496178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507019, 35.322933, 39.113152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217602, 35.597950, 39.137695>,  <36.043949, 35.762959, 39.152420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217602, 35.597950, 39.137695>,  <36.507019, 35.322933, 39.113152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217602, 35.597950, 39.137695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036012, -0.126369, 0.991329,
		0.689335, 0.715064, 0.116194,
		-0.723547, 0.687542, 0.061360,
		36.000538, 35.804214, 39.156105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645256, 35.658360, 39.716045>,  <36.507019, 35.322933, 39.113152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645256, 35.658360, 39.716045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250561, 35.698021, 39.664646>,  <36.013744, 35.721817, 39.633804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250561, 35.698021, 39.664646>,  <36.645256, 35.658360, 39.716045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250561, 35.698021, 39.664646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145036, -0.183254, 0.972308,
		0.072862, 0.978052, 0.195206,
		-0.986740, 0.099156, -0.128501,
		35.954540, 35.727768, 39.626095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313061, 36.137966, 40.229607>,  <36.645256, 35.658360, 39.716045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313061, 36.137966, 40.229607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007988, 35.910072, 40.107155>,  <35.824944, 35.773335, 40.033684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007988, 35.910072, 40.107155>,  <36.313061, 36.137966, 40.229607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007988, 35.910072, 40.107155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346083, -0.040367, 0.937335,
		-0.546394, 0.820834, -0.166390,
		-0.762680, -0.569739, -0.306133,
		35.779182, 35.739151, 40.015316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734165, 36.232845, 40.649830>,  <36.313061, 36.137966, 40.229607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734165, 36.232845, 40.649830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552181, 35.936718, 40.451862>,  <35.442993, 35.759041, 40.333080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552181, 35.936718, 40.451862>,  <35.734165, 36.232845, 40.649830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552181, 35.936718, 40.451862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747545, 0.015479, 0.664031,
		-0.483932, 0.672079, -0.560463,
		-0.454957, -0.740317, -0.494919,
		35.415695, 35.714622, 40.303387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921867, 36.280678, 40.553612>,  <35.734165, 36.232845, 40.649830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921867, 36.280678, 40.553612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003437, 35.890915, 40.515797>,  <35.052380, 35.657055, 40.493107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003437, 35.890915, 40.515797>,  <34.921867, 36.280678, 40.553612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003437, 35.890915, 40.515797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624055, -0.203786, 0.754339,
		-0.754301, -0.094835, -0.649643,
		0.203925, -0.974412, -0.094534,
		35.064613, 35.598591, 40.487438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295818, 35.940025, 40.612339>,  <34.921867, 36.280678, 40.553612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295818, 35.940025, 40.612339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571003, 35.658871, 40.684620>,  <34.736115, 35.490177, 40.727989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571003, 35.658871, 40.684620>,  <34.295818, 35.940025, 40.612339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571003, 35.658871, 40.684620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433413, -0.198198, 0.879131,
		-0.582116, -0.683129, -0.440994,
		0.687964, -0.702888, 0.180703,
		34.777393, 35.448006, 40.738831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953732, 35.416576, 40.990555>,  <34.295818, 35.940025, 40.612339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953732, 35.416576, 40.990555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323887, 35.289253, 41.072857>,  <34.545979, 35.212860, 41.122238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323887, 35.289253, 41.072857>,  <33.953732, 35.416576, 40.990555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323887, 35.289253, 41.072857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235114, -0.056303, 0.970336,
		-0.297280, -0.946314, -0.126941,
		0.925389, -0.318307, 0.205754,
		34.601505, 35.193760, 41.134583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807663, 34.897488, 41.549362>,  <33.953732, 35.416576, 40.990555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807663, 34.897488, 41.549362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196266, 34.979034, 41.597725>,  <34.429428, 35.027962, 41.626743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196266, 34.979034, 41.597725>,  <33.807663, 34.897488, 41.549362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196266, 34.979034, 41.597725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065481, -0.259389, 0.963551,
		0.227802, -0.944009, -0.238647,
		0.971503, 0.203872, 0.120904,
		34.487717, 35.040195, 41.633995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757576, 34.240616, 41.223743>,  <33.807663, 34.897488, 41.549362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757576, 34.240616, 41.223743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394627, 34.079681, 41.175079>,  <33.176857, 33.983120, 41.145882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394627, 34.079681, 41.175079>,  <33.757576, 34.240616, 41.223743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394627, 34.079681, 41.175079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001327, 0.292183, -0.956361,
		0.420326, -0.867614, -0.265653,
		-0.907372, -0.402336, -0.121661,
		33.122414, 33.958981, 41.138580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811172, 33.814919, 40.539349>,  <33.757576, 34.240616, 41.223743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811172, 33.814919, 40.539349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423561, 33.893177, 40.599625>,  <33.190994, 33.940132, 40.635792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423561, 33.893177, 40.599625>,  <33.811172, 33.814919, 40.539349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423561, 33.893177, 40.599625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062808, 0.394889, -0.916579,
		-0.238837, -0.897654, -0.370369,
		-0.969026, 0.195651, 0.150694,
		33.132854, 33.951874, 40.644833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502346, 33.525913, 40.014980>,  <33.811172, 33.814919, 40.539349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502346, 33.525913, 40.014980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257179, 33.812561, 40.148121>,  <33.110081, 33.984550, 40.228004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257179, 33.812561, 40.148121>,  <33.502346, 33.525913, 40.014980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257179, 33.812561, 40.148121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030062, 0.399800, -0.916109,
		-0.789577, -0.571503, -0.223501,
		-0.612915, 0.716620, 0.332854,
		33.073303, 34.027546, 40.247978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947895, 33.454155, 39.565659>,  <33.502346, 33.525913, 40.014980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947895, 33.454155, 39.565659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899399, 33.816788, 39.727356>,  <32.870300, 34.034367, 39.824375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899399, 33.816788, 39.727356>,  <32.947895, 33.454155, 39.565659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899399, 33.816788, 39.727356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105127, 0.393234, -0.913409,
		-0.987040, -0.153241, 0.047630,
		-0.121242, 0.906578, 0.404247,
		32.863026, 34.088760, 39.848629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416534, 33.747158, 39.205875>,  <32.947895, 33.454155, 39.565659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416534, 33.747158, 39.205875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591652, 34.068523, 39.367298>,  <32.696724, 34.261345, 39.464153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591652, 34.068523, 39.367298>,  <32.416534, 33.747158, 39.205875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591652, 34.068523, 39.367298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208937, 0.527482, -0.823473,
		-0.874461, 0.276194, 0.398792,
		0.437794, 0.803417, 0.403555,
		32.722992, 34.309547, 39.488365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038219, 34.252724, 38.886208>,  <32.416534, 33.747158, 39.205875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038219, 34.252724, 38.886208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354015, 34.462536, 39.013699>,  <32.543491, 34.588421, 39.090191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354015, 34.462536, 39.013699>,  <32.038219, 34.252724, 38.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354015, 34.462536, 39.013699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116566, 0.637974, -0.761185,
		-0.602599, 0.563792, 0.564813,
		0.789485, 0.524527, 0.318723,
		32.590862, 34.619892, 39.109314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724329, 34.908615, 39.074471>,  <32.038219, 34.252724, 38.886208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724329, 34.908615, 39.074471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110233, 34.940643, 38.974209>,  <32.341774, 34.959862, 38.914051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110233, 34.940643, 38.974209>,  <31.724329, 34.908615, 39.074471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110233, 34.940643, 38.974209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238765, 0.666746, -0.706003,
		0.110589, 0.740971, 0.662369,
		0.964760, 0.080074, -0.250653,
		32.399662, 34.964664, 38.899014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840235, 35.603695, 38.938339>,  <31.724329, 34.908615, 39.074471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840235, 35.603695, 38.938339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151134, 35.423363, 38.762779>,  <32.337673, 35.315163, 38.657444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151134, 35.423363, 38.762779>,  <31.840235, 35.603695, 38.938339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151134, 35.423363, 38.762779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175081, 0.515047, -0.839091,
		0.604342, 0.729027, 0.321388,
		0.777250, -0.450829, -0.438903,
		32.384308, 35.288113, 38.631107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027760, 36.043400, 38.312725>,  <31.840235, 35.603695, 38.938339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027760, 36.043400, 38.312725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276005, 35.738228, 38.240314>,  <32.424953, 35.555122, 38.196869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276005, 35.738228, 38.240314>,  <32.027760, 36.043400, 38.312725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276005, 35.738228, 38.240314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014464, 0.219685, -0.975464,
		0.783981, 0.608007, 0.125305,
		0.620617, -0.762932, -0.181023,
		32.462189, 35.509350, 38.186008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576015, 36.264336, 37.822456>,  <32.027760, 36.043400, 38.312725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576015, 36.264336, 37.822456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558281, 35.865967, 37.791012>,  <32.547642, 35.626945, 37.772144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558281, 35.865967, 37.791012>,  <32.576015, 36.264336, 37.822456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558281, 35.865967, 37.791012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107364, 0.073483, -0.991500,
		0.993231, -0.052400, 0.103668,
		-0.044337, -0.995919, -0.078612,
		32.544979, 35.567192, 37.767429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999168, 36.156292, 37.262302>,  <32.576015, 36.264336, 37.822456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999168, 36.156292, 37.262302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779949, 35.824921, 37.308529>,  <32.648418, 35.626099, 37.336266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779949, 35.824921, 37.308529>,  <32.999168, 36.156292, 37.262302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779949, 35.824921, 37.308529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021279, -0.124306, -0.992016,
		0.836178, -0.546128, 0.050498,
		-0.548045, -0.828428, 0.115563,
		32.615536, 35.576393, 37.343197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161297, 35.798546, 36.764572>,  <32.999168, 36.156292, 37.262302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161297, 35.798546, 36.764572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834633, 35.593273, 36.870186>,  <32.638634, 35.470112, 36.933552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834633, 35.593273, 36.870186>,  <33.161297, 35.798546, 36.764572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834633, 35.593273, 36.870186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192363, -0.189288, -0.962895,
		0.544115, -0.837148, 0.055868,
		-0.816661, -0.513179, 0.264030,
		32.589634, 35.439320, 36.949394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130199, 35.121704, 36.457321>,  <33.161297, 35.798546, 36.764572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130199, 35.121704, 36.457321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760906, 35.262547, 36.518845>,  <32.539330, 35.347050, 36.555759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760906, 35.262547, 36.518845>,  <33.130199, 35.121704, 36.457321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760906, 35.262547, 36.518845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277816, -0.335191, -0.900258,
		-0.265423, -0.873884, 0.407280,
		-0.923238, 0.352098, 0.153812,
		32.483936, 35.368176, 36.564987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747997, 34.624969, 36.232544>,  <33.130199, 35.121704, 36.457321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747997, 34.624969, 36.232544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496208, 34.935585, 36.243553>,  <32.345135, 35.121952, 36.250160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496208, 34.935585, 36.243553>,  <32.747997, 34.624969, 36.232544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496208, 34.935585, 36.243553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289018, -0.201109, -0.935961,
		-0.721271, -0.597118, 0.351025,
		-0.629473, 0.776534, 0.027524,
		32.307365, 35.168545, 36.251812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834671, 34.358997, 35.586102>,  <32.747997, 34.624969, 36.232544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834671, 34.358997, 35.586102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773884, 34.028816, 35.368649>,  <32.737411, 33.830708, 35.238178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773884, 34.028816, 35.368649>,  <32.834671, 34.358997, 35.586102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773884, 34.028816, 35.368649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094307, -0.559619, 0.823366,
		-0.983876, 0.073858, 0.162890,
		-0.151969, -0.825452, -0.543631,
		32.728294, 33.781181, 35.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616508, 33.904522, 36.029854>,  <32.834671, 34.358997, 35.586102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616508, 33.904522, 36.029854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698845, 33.641758, 35.739723>,  <32.748245, 33.484100, 35.565643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698845, 33.641758, 35.739723>,  <32.616508, 33.904522, 36.029854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698845, 33.641758, 35.739723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067823, -0.729843, 0.680242,
		-0.976233, -0.189214, -0.105677,
		0.205838, -0.656907, -0.725330,
		32.760597, 33.444687, 35.522125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086079, 33.404724, 36.033463>,  <32.616508, 33.904522, 36.029854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086079, 33.404724, 36.033463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446697, 33.280170, 35.913292>,  <32.663067, 33.205437, 35.841190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446697, 33.280170, 35.913292>,  <32.086079, 33.404724, 36.033463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446697, 33.280170, 35.913292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006898, -0.683899, 0.729544,
		-0.432634, -0.659788, -0.614416,
		0.901543, -0.311387, -0.300429,
		32.717159, 33.186756, 35.823162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084030, 32.654999, 35.847980>,  <32.086079, 33.404724, 36.033463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084030, 32.654999, 35.847980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453056, 32.765572, 35.955654>,  <32.674473, 32.831917, 36.020260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453056, 32.765572, 35.955654>,  <32.084030, 32.654999, 35.847980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453056, 32.765572, 35.955654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025996, -0.740599, 0.671445,
		0.384969, -0.612452, -0.690436,
		0.922564, 0.276434, 0.269186,
		32.729824, 32.848503, 36.036411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368107, 32.042213, 36.093594>,  <32.084030, 32.654999, 35.847980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368107, 32.042213, 36.093594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637730, 32.290657, 36.253529>,  <32.799503, 32.439724, 36.349491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637730, 32.290657, 36.253529>,  <32.368107, 32.042213, 36.093594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637730, 32.290657, 36.253529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113309, -0.621825, 0.774916,
		0.729934, -0.477035, -0.489525,
		0.674061, 0.621105, 0.399839,
		32.839947, 32.476990, 36.373482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970432, 31.667746, 36.197029>,  <32.368107, 32.042213, 36.093594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970432, 31.667746, 36.197029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984715, 31.983982, 36.441551>,  <32.993286, 32.173725, 36.588264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984715, 31.983982, 36.441551>,  <32.970432, 31.667746, 36.197029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984715, 31.983982, 36.441551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234748, -0.601213, 0.763830,
		0.971400, 0.116227, -0.207058,
		0.035708, 0.790591, 0.611303,
		32.995426, 32.221161, 36.624943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520779, 31.503748, 36.607109>,  <32.970432, 31.667746, 36.197029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520779, 31.503748, 36.607109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306377, 31.782911, 36.797112>,  <33.177738, 31.950409, 36.911114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306377, 31.782911, 36.797112>,  <33.520779, 31.503748, 36.607109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306377, 31.782911, 36.797112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063633, -0.527655, 0.847072,
		0.841817, 0.484255, 0.238412,
		-0.535999, 0.697909, 0.475004,
		33.145576, 31.992285, 36.939613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967117, 31.769066, 37.257095>,  <33.520779, 31.503748, 36.607109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967117, 31.769066, 37.257095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574516, 31.804649, 37.324902>,  <33.338955, 31.826000, 37.365585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574516, 31.804649, 37.324902>,  <33.967117, 31.769066, 37.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574516, 31.804649, 37.324902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123780, -0.380579, 0.916427,
		0.146039, 0.920459, 0.362529,
		-0.981504, 0.088960, 0.169514,
		33.280064, 31.831337, 37.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960106, 32.038559, 37.906582>,  <33.967117, 31.769066, 37.257095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960106, 32.038559, 37.906582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584518, 31.912115, 37.852295>,  <33.359165, 31.836248, 37.819721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584518, 31.912115, 37.852295>,  <33.960106, 32.038559, 37.906582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584518, 31.912115, 37.852295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011899, -0.364438, 0.931152,
		-0.343808, 0.875933, 0.338433,
		-0.938964, -0.316111, -0.135720,
		33.302830, 31.817282, 37.811581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520336, 32.331989, 38.436092>,  <33.960106, 32.038559, 37.906582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520336, 32.331989, 38.436092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358295, 31.983723, 38.324490>,  <33.261070, 31.774763, 38.257530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358295, 31.983723, 38.324490>,  <33.520336, 32.331989, 38.436092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358295, 31.983723, 38.324490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086477, -0.340284, 0.936338,
		-0.910175, 0.355181, 0.213141,
		-0.405098, -0.870663, -0.279003,
		33.236767, 31.722525, 38.240788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034767, 32.215637, 38.948128>,  <33.520336, 32.331989, 38.436092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034767, 32.215637, 38.948128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108494, 31.868774, 38.763058>,  <33.152729, 31.660658, 38.652016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108494, 31.868774, 38.763058>,  <33.034767, 32.215637, 38.948128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108494, 31.868774, 38.763058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091729, -0.483867, 0.870321,
		-0.978576, -0.117977, -0.168730,
		0.184321, -0.867153, -0.462679,
		33.163792, 31.608629, 38.624252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922501, 31.913542, 39.459892>,  <33.034767, 32.215637, 38.948128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922501, 31.913542, 39.459892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044224, 31.613445, 39.225105>,  <33.117256, 31.433388, 39.084232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044224, 31.613445, 39.225105>,  <32.922501, 31.913542, 39.459892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044224, 31.613445, 39.225105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050495, -0.602622, 0.796428,
		-0.951234, -0.271998, -0.145499,
		0.304307, -0.750242, -0.586969,
		33.135517, 31.388372, 39.049015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545414, 31.438944, 39.699795>,  <32.922501, 31.913542, 39.459892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545414, 31.438944, 39.699795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818489, 31.221199, 39.504818>,  <32.982334, 31.090551, 39.387833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818489, 31.221199, 39.504818>,  <32.545414, 31.438944, 39.699795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818489, 31.221199, 39.504818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037242, -0.640295, 0.767225,
		-0.729758, -0.541931, -0.416850,
		0.682690, -0.544365, -0.487443,
		33.023296, 31.057890, 39.358585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331936, 30.632647, 39.617180>,  <32.545414, 31.438944, 39.699795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331936, 30.632647, 39.617180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728127, 30.680779, 39.590435>,  <32.965843, 30.709658, 39.574387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728127, 30.680779, 39.590435>,  <32.331936, 30.632647, 39.617180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728127, 30.680779, 39.590435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128872, -0.639811, 0.757650,
		0.048387, -0.759054, -0.649227,
		0.990480, 0.120328, -0.066862,
		33.025272, 30.716877, 39.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616463, 29.862198, 39.746811>,  <32.331936, 30.632647, 39.617180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616463, 29.862198, 39.746811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919918, 30.119047, 39.790886>,  <33.101994, 30.273157, 39.817329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919918, 30.119047, 39.790886>,  <32.616463, 29.862198, 39.746811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919918, 30.119047, 39.790886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400048, -0.592610, 0.699125,
		0.514222, -0.486305, -0.706458,
		0.758642, 0.642122, 0.110187,
		33.147511, 30.311684, 39.823940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130238, 29.482298, 40.113972>,  <32.616463, 29.862198, 39.746811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130238, 29.482298, 40.113972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291672, 29.841846, 40.182262>,  <33.388531, 30.057575, 40.223236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291672, 29.841846, 40.182262>,  <33.130238, 29.482298, 40.113972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291672, 29.841846, 40.182262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406684, -0.343389, 0.846576,
		0.819589, -0.272235, -0.504144,
		0.403585, 0.898873, 0.170724,
		33.412746, 30.111507, 40.233479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884289, 29.370272, 40.155098>,  <33.130238, 29.482298, 40.113972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884289, 29.370272, 40.155098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788391, 29.707661, 40.347382>,  <33.730850, 29.910093, 40.462749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788391, 29.707661, 40.347382>,  <33.884289, 29.370272, 40.155098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788391, 29.707661, 40.347382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366876, -0.379718, 0.849245,
		0.898846, 0.379963, -0.218413,
		-0.239746, 0.843470, 0.480707,
		33.716469, 29.960701, 40.491592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477005, 29.541920, 40.585350>,  <33.884289, 29.370272, 40.155098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477005, 29.541920, 40.585350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155777, 29.732967, 40.727875>,  <33.963039, 29.847597, 40.813389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155777, 29.732967, 40.727875>,  <34.477005, 29.541920, 40.585350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155777, 29.732967, 40.727875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356148, -0.094683, 0.929620,
		0.477742, 0.873449, -0.094067,
		-0.803070, 0.477620, 0.356312,
		33.914856, 29.876253, 40.834766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726425, 30.007381, 40.990383>,  <34.477005, 29.541920, 40.585350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726425, 30.007381, 40.990383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344292, 29.976614, 41.104527>,  <34.115013, 29.958155, 41.173012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344292, 29.976614, 41.104527>,  <34.726425, 30.007381, 40.990383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344292, 29.976614, 41.104527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291837, -0.093116, 0.951925,
		-0.046648, 0.992680, 0.111404,
		-0.955330, -0.076917, 0.285357,
		34.057693, 29.953539, 41.190132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647087, 30.547731, 41.442413>,  <34.726425, 30.007381, 40.990383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647087, 30.547731, 41.442413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363796, 30.271704, 41.502029>,  <34.193821, 30.106087, 41.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363796, 30.271704, 41.502029>,  <34.647087, 30.547731, 41.442413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363796, 30.271704, 41.502029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302588, -0.105973, 0.947212,
		-0.637847, 0.715943, 0.283860,
		-0.708232, -0.690068, 0.149041,
		34.151325, 30.064684, 41.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557098, 30.670988, 42.067699>,  <34.647087, 30.547731, 41.442413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557098, 30.670988, 42.067699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382851, 30.312717, 42.031929>,  <34.278301, 30.097755, 42.010468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382851, 30.312717, 42.031929>,  <34.557098, 30.670988, 42.067699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382851, 30.312717, 42.031929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159588, -0.174625, 0.971616,
		-0.885871, 0.408984, 0.219009,
		-0.435620, -0.895677, -0.089426,
		34.252163, 30.044014, 42.005100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119144, 30.756517, 42.571617>,  <34.557098, 30.670988, 42.067699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119144, 30.756517, 42.571617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145134, 30.366140, 42.488369>,  <34.160728, 30.131914, 42.438419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145134, 30.366140, 42.488369>,  <34.119144, 30.756517, 42.571617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145134, 30.366140, 42.488369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007227, -0.208096, 0.978082,
		-0.997861, -0.065054, -0.006468,
		0.064974, -0.975943, -0.208121,
		34.164627, 30.073357, 42.425934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783463, 30.423910, 43.147526>,  <34.119144, 30.756517, 42.571617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783463, 30.423910, 43.147526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001034, 30.138113, 42.971504>,  <34.131577, 29.966635, 42.865891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001034, 30.138113, 42.971504>,  <33.783463, 30.423910, 43.147526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001034, 30.138113, 42.971504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001344, -0.523674, 0.851917,
		-0.839133, -0.463970, -0.283879,
		0.543924, -0.714491, -0.440056,
		34.164211, 29.923765, 42.839489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527550, 29.801371, 43.283443>,  <33.783463, 30.423910, 43.147526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527550, 29.801371, 43.283443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911358, 29.728897, 43.197201>,  <34.141644, 29.685413, 43.145454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911358, 29.728897, 43.197201>,  <33.527550, 29.801371, 43.283443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911358, 29.728897, 43.197201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120434, -0.428047, 0.895696,
		-0.254575, -0.885408, -0.388901,
		0.959524, -0.181185, -0.215604,
		34.199215, 29.674541, 43.132519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622734, 29.097094, 43.419533>,  <33.527550, 29.801371, 43.283443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622734, 29.097094, 43.419533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998993, 29.232704, 43.413414>,  <34.224751, 29.314072, 43.409740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998993, 29.232704, 43.413414>,  <33.622734, 29.097094, 43.419533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998993, 29.232704, 43.413414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207852, -0.539884, 0.815673,
		0.268275, -0.770445, -0.578311,
		0.940652, 0.339028, -0.015301,
		34.281189, 29.334412, 43.408825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115150, 28.474070, 43.546772>,  <33.622734, 29.097094, 43.419533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115150, 28.474070, 43.546772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308262, 28.804571, 43.662861>,  <34.424129, 29.002872, 43.732513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308262, 28.804571, 43.662861>,  <34.115150, 28.474070, 43.546772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308262, 28.804571, 43.662861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349792, -0.485752, 0.801056,
		0.802851, -0.285217, -0.523528,
		0.482780, 0.826254, 0.290220,
		34.453094, 29.052448, 43.749928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749939, 28.192728, 43.870564>,  <34.115150, 28.474070, 43.546772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749939, 28.192728, 43.870564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734821, 28.572906, 43.993996>,  <34.725750, 28.801014, 44.068054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734821, 28.572906, 43.993996>,  <34.749939, 28.192728, 43.870564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734821, 28.572906, 43.993996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202030, -0.295159, 0.933844,
		0.978650, 0.097641, -0.180862,
		-0.037798, 0.950446, 0.308584,
		34.723480, 28.858040, 44.086571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316429, 28.267672, 44.475304>,  <34.749939, 28.192728, 43.870564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316429, 28.267672, 44.475304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038792, 28.554258, 44.503342>,  <34.872211, 28.726210, 44.520164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038792, 28.554258, 44.503342>,  <35.316429, 28.267672, 44.475304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038792, 28.554258, 44.503342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079155, -0.172741, 0.981781,
		0.715522, 0.675898, 0.176610,
		-0.694092, 0.716465, 0.070100,
		34.830563, 28.769197, 44.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144741, 28.481808, 44.226658>,  <35.316429, 28.267672, 44.475304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144741, 28.481808, 44.226658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515575, 28.518291, 44.372089>,  <36.738075, 28.540182, 44.459351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515575, 28.518291, 44.372089>,  <36.144741, 28.481808, 44.226658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515575, 28.518291, 44.372089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261348, 0.538042, -0.801379,
		-0.268715, 0.837969, 0.474975,
		0.927087, 0.091209, 0.363581,
		36.793701, 28.545654, 44.481163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283978, 29.232254, 44.118172>,  <36.144741, 28.481808, 44.226658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283978, 29.232254, 44.118172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630714, 29.034298, 44.142387>,  <36.838757, 28.915524, 44.156918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630714, 29.034298, 44.142387>,  <36.283978, 29.232254, 44.118172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630714, 29.034298, 44.142387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315960, 0.451337, -0.834544,
		0.385683, 0.742549, 0.547604,
		0.866844, -0.494890, 0.060542,
		36.890766, 28.885830, 44.160549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806664, 29.712446, 43.986298>,  <36.283978, 29.232254, 44.118172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806664, 29.712446, 43.986298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963856, 29.356079, 43.895233>,  <37.058170, 29.142258, 43.840595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963856, 29.356079, 43.895233>,  <36.806664, 29.712446, 43.986298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963856, 29.356079, 43.895233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265723, 0.347046, -0.899417,
		0.880318, 0.292955, 0.373119,
		0.392978, -0.890919, -0.227665,
		37.081749, 29.088804, 43.826935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417057, 29.896112, 43.634758>,  <36.806664, 29.712446, 43.986298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417057, 29.896112, 43.634758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329845, 29.521160, 43.526112>,  <37.277519, 29.296188, 43.460922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329845, 29.521160, 43.526112>,  <37.417057, 29.896112, 43.634758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329845, 29.521160, 43.526112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327338, 0.191949, -0.925206,
		0.919408, -0.290635, 0.264990,
		-0.218033, -0.937383, -0.271615,
		37.264435, 29.239944, 43.444626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990513, 29.702410, 43.205681>,  <37.417057, 29.896112, 43.634758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990513, 29.702410, 43.205681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698067, 29.436275, 43.145279>,  <37.522598, 29.276594, 43.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698067, 29.436275, 43.145279>,  <37.990513, 29.702410, 43.205681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698067, 29.436275, 43.145279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130853, 0.080483, -0.988130,
		0.669591, -0.742194, 0.028219,
		-0.731112, -0.665335, -0.151009,
		37.478733, 29.236675, 43.099976>
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
