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
	<23.940788, 35.371956, 34.658176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202713, 35.317375, 34.955524>,  <24.359867, 35.284626, 35.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202713, 35.317375, 34.955524>,  <23.940788, 35.371956, 34.658176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202713, 35.317375, 34.955524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316364, -0.843770, -0.433550,
		0.686393, 0.519070, -0.509343,
		0.654811, -0.136448, 0.743374,
		24.399157, 35.276440, 35.178535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515017, 35.272694, 34.288628>,  <23.940788, 35.371956, 34.658176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515017, 35.272694, 34.288628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502834, 35.098370, 34.648438>,  <24.495525, 34.993774, 34.864323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502834, 35.098370, 34.648438>,  <24.515017, 35.272694, 34.288628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502834, 35.098370, 34.648438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417690, -0.823146, -0.384662,
		0.908079, 0.364007, 0.207103,
		-0.030456, -0.435809, 0.899524,
		24.493698, 34.967628, 34.918293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170166, 34.929310, 34.396976>,  <24.515017, 35.272694, 34.288628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170166, 34.929310, 34.396976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882902, 34.770260, 34.625412>,  <24.710543, 34.674831, 34.762474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.882902, 34.770260, 34.625412>,  <25.170166, 34.929310, 34.396976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882902, 34.770260, 34.625412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225499, -0.909366, -0.349577,
		0.658328, -0.122272, 0.742734,
		-0.718160, -0.397621, 0.571089,
		24.667454, 34.650974, 34.796738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744963, 34.650654, 34.737778>,  <25.170166, 34.929310, 34.396976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744963, 34.650654, 34.737778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024059, 34.703968, 35.019314>,  <26.191517, 34.735958, 35.188236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024059, 34.703968, 35.019314>,  <25.744963, 34.650654, 34.737778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024059, 34.703968, 35.019314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626090, 0.590907, 0.508763,
		-0.348095, -0.795653, 0.495748,
		0.697740, 0.133285, 0.703843,
		26.233381, 34.743954, 35.230465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253904, 34.839443, 34.133633>,  <25.744963, 34.650654, 34.737778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253904, 34.839443, 34.133633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409929, 35.189133, 34.249283>,  <26.503544, 35.398945, 34.318672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409929, 35.189133, 34.249283>,  <26.253904, 34.839443, 34.133633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409929, 35.189133, 34.249283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867806, -0.244051, -0.432842,
		-0.307838, 0.419737, -0.853848,
		0.390063, 0.874219, 0.289122,
		26.526949, 35.451397, 34.336018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945728, 34.643768, 33.903790>,  <26.253904, 34.839443, 34.133633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945728, 34.643768, 33.903790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139734, 34.980629, 33.809517>,  <27.256138, 35.182743, 33.752953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139734, 34.980629, 33.809517>,  <26.945728, 34.643768, 33.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139734, 34.980629, 33.809517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250370, 0.391946, 0.885264,
		0.837901, -0.370356, 0.400948,
		0.485013, 0.842149, -0.235686,
		27.285238, 35.233273, 33.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282413, 34.873306, 34.484768>,  <26.945728, 34.643768, 33.903790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282413, 34.873306, 34.484768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282911, 35.219196, 34.283871>,  <27.283211, 35.426731, 34.163334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282911, 35.219196, 34.283871>,  <27.282413, 34.873306, 34.484768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282911, 35.219196, 34.283871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116026, 0.498974, 0.858815,
		0.993245, 0.057204, 0.100952,
		0.001245, 0.864727, -0.502241,
		27.283285, 35.478615, 34.133198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789585, 35.250710, 34.819084>,  <27.282413, 34.873306, 34.484768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789585, 35.250710, 34.819084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459892, 35.418427, 34.666855>,  <27.262077, 35.519058, 34.575516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459892, 35.418427, 34.666855>,  <27.789585, 35.250710, 34.819084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459892, 35.418427, 34.666855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130495, 0.513350, 0.848200,
		0.551010, 0.748776, -0.368404,
		-0.824232, 0.419291, -0.380573,
		27.212622, 35.544212, 34.552685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765186, 35.989723, 34.765099>,  <27.789585, 35.250710, 34.819084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765186, 35.989723, 34.765099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413832, 35.815998, 34.844910>,  <27.203018, 35.711765, 34.892796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413832, 35.815998, 34.844910>,  <27.765186, 35.989723, 34.765099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413832, 35.815998, 34.844910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007027, 0.429150, 0.903206,
		-0.477896, 0.791963, -0.380012,
		-0.878388, -0.434309, 0.199525,
		27.150314, 35.685707, 34.904766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386520, 36.518574, 35.091789>,  <27.765186, 35.989723, 34.765099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386520, 36.518574, 35.091789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249918, 36.162445, 35.212261>,  <27.167957, 35.948769, 35.284546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249918, 36.162445, 35.212261>,  <27.386520, 36.518574, 35.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249918, 36.162445, 35.212261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129734, 0.272724, 0.953305,
		-0.930883, 0.364633, 0.022367,
		-0.341507, -0.890317, 0.301179,
		27.147467, 35.895351, 35.302616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945122, 36.667824, 35.606308>,  <27.386520, 36.518574, 35.091789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945122, 36.667824, 35.606308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171989, 36.367783, 35.742344>,  <27.308109, 36.187756, 35.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171989, 36.367783, 35.742344>,  <26.945122, 36.667824, 35.606308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171989, 36.367783, 35.742344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298875, 0.572235, 0.763689,
		-0.767459, -0.331495, 0.548742,
		0.567169, -0.750105, 0.340091,
		27.342140, 36.142750, 35.844372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913200, 36.578773, 36.365078>,  <26.945122, 36.667824, 35.606308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913200, 36.578773, 36.365078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254017, 36.419796, 36.228802>,  <27.458508, 36.324409, 36.147038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254017, 36.419796, 36.228802>,  <26.913200, 36.578773, 36.365078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254017, 36.419796, 36.228802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483741, 0.349073, 0.802585,
		-0.200053, -0.848640, 0.489683,
		0.852040, -0.397440, -0.340689,
		27.509628, 36.300564, 36.126595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172005, 36.378029, 37.051075>,  <26.913200, 36.578773, 36.365078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172005, 36.378029, 37.051075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471104, 36.388172, 36.785675>,  <27.650564, 36.394257, 36.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471104, 36.388172, 36.785675>,  <27.172005, 36.378029, 37.051075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471104, 36.388172, 36.785675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569750, 0.488635, 0.660773,
		0.340965, -0.872120, 0.350927,
		0.747748, 0.025360, -0.663498,
		27.695429, 36.395779, 36.586624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314470, 36.309025, 37.819717>,  <27.172005, 36.378029, 37.051075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314470, 36.309025, 37.819717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965923, 36.213776, 37.648132>,  <26.756794, 36.156628, 37.545181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965923, 36.213776, 37.648132>,  <27.314470, 36.309025, 37.819717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965923, 36.213776, 37.648132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435270, 0.028253, -0.899856,
		0.226397, -0.970824, 0.079029,
		-0.871369, -0.238124, -0.428967,
		26.704512, 36.142338, 37.519444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201538, 35.952007, 38.438457>,  <27.314470, 36.309025, 37.819717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201538, 35.952007, 38.438457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979305, 35.624039, 38.383240>,  <26.845966, 35.427258, 38.350109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979305, 35.624039, 38.383240>,  <27.201538, 35.952007, 38.438457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979305, 35.624039, 38.383240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165750, -0.271910, 0.947941,
		-0.814774, 0.503777, 0.286970,
		-0.555580, -0.819923, -0.138044,
		26.812632, 35.378063, 38.341827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596355, 35.918152, 38.909721>,  <27.201538, 35.952007, 38.438457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596355, 35.918152, 38.909721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742807, 35.563255, 38.797466>,  <26.830679, 35.350319, 38.730114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742807, 35.563255, 38.797466>,  <26.596355, 35.918152, 38.909721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742807, 35.563255, 38.797466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241112, -0.200827, 0.949491,
		-0.898785, -0.415300, 0.140396,
		0.366128, -0.887240, -0.280634,
		26.852646, 35.297085, 38.713276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720375, 35.602493, 39.636723>,  <26.596355, 35.918152, 38.909721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720375, 35.602493, 39.636723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907120, 35.377068, 39.909321>,  <27.019167, 35.241814, 40.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907120, 35.377068, 39.909321>,  <26.720375, 35.602493, 39.636723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907120, 35.377068, 39.909321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669264, -0.278556, -0.688834,
		0.578035, 0.777692, 0.247123,
		0.466863, -0.563561, 0.681497,
		27.047178, 35.208000, 40.113770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566422, 35.691608, 39.564159>,  <26.720375, 35.602493, 39.636723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566422, 35.691608, 39.564159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442648, 35.349354, 39.730118>,  <27.368383, 35.144001, 39.829693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442648, 35.349354, 39.730118>,  <27.566422, 35.691608, 39.564159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442648, 35.349354, 39.730118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473791, -0.517023, -0.712888,
		0.824484, -0.024015, 0.565376,
		-0.309432, -0.855635, 0.414899,
		27.349817, 35.092663, 39.854588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017727, 35.102413, 39.640324>,  <27.566422, 35.691608, 39.564159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017727, 35.102413, 39.640324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342934, 35.251884, 39.818928>,  <28.538057, 35.341568, 39.926090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342934, 35.251884, 39.818928>,  <28.017727, 35.102413, 39.640324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342934, 35.251884, 39.818928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507300, -0.830987, -0.228268,
		0.285745, 0.412100, -0.865172,
		0.813017, 0.373675, 0.446509,
		28.586838, 35.363987, 39.952881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659044, 34.969425, 39.162174>,  <28.017727, 35.102413, 39.640324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659044, 34.969425, 39.162174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729029, 34.995979, 39.555107>,  <28.771019, 35.011909, 39.790867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729029, 34.995979, 39.555107>,  <28.659044, 34.969425, 39.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729029, 34.995979, 39.555107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459508, -0.887905, -0.021842,
		0.870770, 0.455212, -0.185853,
		0.174963, 0.066382, 0.982335,
		28.781517, 35.015892, 39.849808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326008, 34.806614, 39.245174>,  <28.659044, 34.969425, 39.162174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326008, 34.806614, 39.245174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141771, 34.737556, 39.593437>,  <29.031229, 34.696121, 39.802395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141771, 34.737556, 39.593437>,  <29.326008, 34.806614, 39.245174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141771, 34.737556, 39.593437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438641, -0.897028, 0.054171,
		0.771653, 0.406858, 0.488894,
		-0.460592, -0.172648, 0.870659,
		29.003593, 34.685760, 39.854633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778637, 34.700237, 39.892811>,  <29.326008, 34.806614, 39.245174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778637, 34.700237, 39.892811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434034, 34.499596, 39.924313>,  <29.227272, 34.379211, 39.943214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434034, 34.499596, 39.924313>,  <29.778637, 34.700237, 39.892811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434034, 34.499596, 39.924313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506896, -0.840692, 0.190510,
		-0.029355, 0.204044, 0.978522,
		-0.861507, -0.501601, 0.078751,
		29.175583, 34.349113, 39.947937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492668, 34.595119, 39.971268>,  <29.778637, 34.700237, 39.892811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492668, 34.595119, 39.971268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601961, 34.979073, 39.946049>,  <30.667538, 35.209442, 39.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601961, 34.979073, 39.946049>,  <30.492668, 34.595119, 39.971268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601961, 34.979073, 39.946049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404144, 0.174027, 0.897988,
		0.872932, -0.219878, 0.435480,
		0.273233, 0.959879, -0.063051,
		30.683931, 35.267036, 39.927132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869366, 34.757404, 40.515804>,  <30.492668, 34.595119, 39.971268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869366, 34.757404, 40.515804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681997, 35.087273, 40.388996>,  <30.569576, 35.285194, 40.312912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681997, 35.087273, 40.388996>,  <30.869366, 34.757404, 40.515804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681997, 35.087273, 40.388996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510867, 0.039934, 0.858732,
		0.720831, 0.564201, 0.402591,
		-0.468420, 0.824671, -0.317018,
		30.541471, 35.334675, 40.293892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828663, 35.303806, 41.101070>,  <30.869366, 34.757404, 40.515804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828663, 35.303806, 41.101070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548775, 35.393017, 40.829586>,  <30.380842, 35.446541, 40.666695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548775, 35.393017, 40.829586>,  <30.828663, 35.303806, 41.101070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548775, 35.393017, 40.829586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678858, 0.088428, 0.728925,
		0.222584, 0.970794, 0.089526,
		-0.699720, 0.223023, -0.678714,
		30.338860, 35.459923, 40.625973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596605, 36.067398, 41.104439>,  <30.828663, 35.303806, 41.101070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596605, 36.067398, 41.104439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336920, 35.785763, 40.989349>,  <30.181108, 35.616783, 40.920296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336920, 35.785763, 40.989349>,  <30.596605, 36.067398, 41.104439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336920, 35.785763, 40.989349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581775, 0.215996, 0.784145,
		-0.489959, 0.676467, -0.549847,
		-0.649213, -0.704086, -0.287723,
		30.142157, 35.574535, 40.903034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883970, 36.326286, 41.032528>,  <30.596605, 36.067398, 41.104439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883970, 36.326286, 41.032528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868534, 35.938892, 41.130951>,  <29.859272, 35.706455, 41.190002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868534, 35.938892, 41.130951>,  <29.883970, 36.326286, 41.032528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868534, 35.938892, 41.130951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474955, 0.234421, 0.848213,
		-0.879164, -0.084130, -0.469035,
		-0.038591, -0.968488, 0.246053,
		29.856956, 35.648346, 41.204765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231382, 36.286240, 41.278603>,  <29.883970, 36.326286, 41.032528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231382, 36.286240, 41.278603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428869, 35.963779, 41.409054>,  <29.547361, 35.770302, 41.487324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428869, 35.963779, 41.409054>,  <29.231382, 36.286240, 41.278603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428869, 35.963779, 41.409054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368145, 0.146007, 0.918233,
		-0.787854, -0.573409, -0.224695,
		0.493716, -0.806154, 0.326130,
		29.576984, 35.721931, 41.506893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721542, 35.990791, 41.588173>,  <29.231382, 36.286240, 41.278603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721542, 35.990791, 41.588173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083490, 35.897388, 41.730541>,  <29.300659, 35.841347, 41.815964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083490, 35.897388, 41.730541>,  <28.721542, 35.990791, 41.588173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083490, 35.897388, 41.730541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362890, 0.013924, 0.931728,
		-0.222525, -0.972254, -0.072140,
		0.904872, -0.233512, 0.355919,
		29.354952, 35.827335, 41.837318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914795, 36.256149, 42.155193>,  <28.721542, 35.990791, 41.588173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914795, 36.256149, 42.155193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679708, 36.201462, 42.474167>,  <28.538656, 36.168648, 42.665550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679708, 36.201462, 42.474167>,  <28.914795, 36.256149, 42.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679708, 36.201462, 42.474167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534304, 0.674530, 0.509440,
		-0.607541, 0.725477, -0.323383,
		-0.587719, -0.136721, 0.797430,
		28.503393, 36.160446, 42.713394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013781, 36.834927, 42.593636>,  <28.914795, 36.256149, 42.155193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013781, 36.834927, 42.593636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926338, 36.622791, 42.921280>,  <28.873873, 36.495510, 43.117867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926338, 36.622791, 42.921280>,  <29.013781, 36.834927, 42.593636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926338, 36.622791, 42.921280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774237, 0.416655, 0.476398,
		-0.593943, 0.738332, 0.319527,
		-0.218608, -0.530343, 0.819114,
		28.860756, 36.463688, 43.167015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856859, 37.310139, 43.161106>,  <29.013781, 36.834927, 42.593636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856859, 37.310139, 43.161106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039612, 36.964931, 43.247326>,  <29.149263, 36.757809, 43.299057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039612, 36.964931, 43.247326>,  <28.856859, 37.310139, 43.161106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039612, 36.964931, 43.247326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792952, 0.504948, 0.340960,
		-0.403098, 0.015146, 0.915032,
		0.456880, -0.863017, 0.215553,
		29.176676, 36.706028, 43.311993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286617, 37.424854, 43.846786>,  <28.856859, 37.310139, 43.161106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286617, 37.424854, 43.846786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440029, 37.123085, 43.633713>,  <29.532076, 36.942024, 43.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440029, 37.123085, 43.633713>,  <29.286617, 37.424854, 43.846786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440029, 37.123085, 43.633713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919552, 0.258486, 0.295989,
		-0.085610, -0.603348, 0.792869,
		0.383530, -0.754424, -0.532681,
		29.555088, 36.896759, 43.473907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628601, 37.041531, 44.276054>,  <29.286617, 37.424854, 43.846786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628601, 37.041531, 44.276054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828468, 37.018250, 43.930351>,  <29.948389, 37.004280, 43.722927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828468, 37.018250, 43.930351>,  <29.628601, 37.041531, 44.276054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828468, 37.018250, 43.930351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863406, 0.113797, 0.491508,
		0.069741, -0.991797, 0.107117,
		0.499666, -0.058208, -0.864260,
		29.978369, 37.000786, 43.671074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246855, 36.721771, 44.358784>,  <29.628601, 37.041531, 44.276054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246855, 36.721771, 44.358784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316793, 36.929138, 44.023960>,  <30.358757, 37.053558, 43.823067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316793, 36.929138, 44.023960>,  <30.246855, 36.721771, 44.358784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316793, 36.929138, 44.023960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918010, 0.221496, 0.328933,
		0.355930, -0.825944, -0.437185,
		0.174845, 0.518417, -0.837062,
		30.369247, 37.084663, 43.772842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859077, 36.483414, 44.149090>,  <30.246855, 36.721771, 44.358784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859077, 36.483414, 44.149090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792171, 36.867290, 44.058750>,  <30.752028, 37.097618, 44.004547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792171, 36.867290, 44.058750>,  <30.859077, 36.483414, 44.149090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792171, 36.867290, 44.058750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913466, 0.237043, 0.330742,
		0.370947, -0.150984, -0.916298,
		-0.167265, 0.959695, -0.225849,
		30.741991, 37.155197, 43.990993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392981, 36.765545, 43.670620>,  <30.859077, 36.483414, 44.149090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392981, 36.765545, 43.670620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234116, 37.045258, 43.908363>,  <31.138798, 37.213085, 44.051010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234116, 37.045258, 43.908363>,  <31.392981, 36.765545, 43.670620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234116, 37.045258, 43.908363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884172, 0.117971, 0.452021,
		0.245973, 0.705043, -0.665140,
		-0.397162, 0.699283, 0.594362,
		31.114967, 37.255043, 44.086674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606182, 37.530704, 43.575340>,  <31.392981, 36.765545, 43.670620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606182, 37.530704, 43.575340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530764, 37.384861, 43.940090>,  <31.485514, 37.297356, 44.158939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530764, 37.384861, 43.940090>,  <31.606182, 37.530704, 43.575340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530764, 37.384861, 43.940090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981788, -0.047961, 0.183824,
		-0.023289, 0.929926, 0.367009,
		-0.188545, -0.364606, 0.911873,
		31.474199, 37.275478, 44.213654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945948, 37.853416, 44.094948>,  <31.606182, 37.530704, 43.575340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945948, 37.853416, 44.094948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879194, 37.482109, 44.227890>,  <31.839142, 37.259323, 44.307655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879194, 37.482109, 44.227890>,  <31.945948, 37.853416, 44.094948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879194, 37.482109, 44.227890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935461, -0.042554, 0.350860,
		-0.311550, 0.369461, 0.875463,
		-0.166883, -0.928272, 0.332358,
		31.829130, 37.203629, 44.327599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077209, 37.862576, 44.803055>,  <31.945948, 37.853416, 44.094948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077209, 37.862576, 44.803055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128117, 37.501881, 44.637806>,  <32.158661, 37.285461, 44.538658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128117, 37.501881, 44.637806>,  <32.077209, 37.862576, 44.803055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128117, 37.501881, 44.637806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912072, -0.057280, 0.406009,
		-0.389778, -0.428468, 0.815162,
		0.127270, -0.901740, -0.413120,
		32.166298, 37.231358, 44.513870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074104, 37.337074, 45.371544>,  <32.077209, 37.862576, 44.803055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074104, 37.337074, 45.371544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265831, 37.244205, 45.032993>,  <32.380867, 37.188484, 44.829865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265831, 37.244205, 45.032993>,  <32.074104, 37.337074, 45.371544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265831, 37.244205, 45.032993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875380, 0.057262, 0.480031,
		-0.062986, -0.970987, 0.230687,
		0.479314, -0.232174, -0.846377,
		32.409626, 37.174553, 44.779079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492104, 36.745651, 45.592964>,  <32.074104, 37.337074, 45.371544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492104, 36.745651, 45.592964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652172, 36.953979, 45.291340>,  <32.748215, 37.078976, 45.110367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652172, 36.953979, 45.291340>,  <32.492104, 36.745651, 45.592964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652172, 36.953979, 45.291340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902754, -0.082363, 0.422199,
		0.157782, -0.849685, -0.503131,
		0.400175, 0.520819, -0.754061,
		32.772224, 37.110226, 45.065121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142334, 36.554173, 45.402332>,  <32.492104, 36.745651, 45.592964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142334, 36.554173, 45.402332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129375, 36.939747, 45.296665>,  <33.121601, 37.171089, 45.233265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129375, 36.939747, 45.296665>,  <33.142334, 36.554173, 45.402332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129375, 36.939747, 45.296665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952451, 0.109892, 0.284185,
		0.302965, -0.242396, -0.921660,
		-0.032398, 0.963934, -0.264164,
		33.119656, 37.228928, 45.217415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801170, 36.789436, 44.972080>,  <33.142334, 36.554173, 45.402332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801170, 36.789436, 44.972080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630943, 37.117313, 45.125439>,  <33.528809, 37.314041, 45.217453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630943, 37.117313, 45.125439>,  <33.801170, 36.789436, 44.972080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630943, 37.117313, 45.125439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904625, 0.396295, 0.156857,
		-0.023365, 0.413586, -0.910165,
		-0.425568, 0.819693, 0.383399,
		33.503273, 37.363220, 45.240459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383408, 36.270233, 45.237968>,  <33.801170, 36.789436, 44.972080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383408, 36.270233, 45.237968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480171, 35.971519, 45.485771>,  <34.538231, 35.792290, 45.634453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480171, 35.971519, 45.485771>,  <34.383408, 36.270233, 45.237968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480171, 35.971519, 45.485771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922062, -0.021876, -0.386423,
		0.302127, 0.664705, 0.683291,
		0.241909, -0.746786, 0.619509,
		34.552746, 35.747482, 45.671623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022633, 36.315422, 45.453941>,  <34.383408, 36.270233, 45.237968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022633, 36.315422, 45.453941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990559, 35.920471, 45.508579>,  <34.971313, 35.683502, 45.541363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990559, 35.920471, 45.508579>,  <35.022633, 36.315422, 45.453941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990559, 35.920471, 45.508579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987822, -0.097046, -0.121616,
		0.133337, 0.125178, 0.983134,
		-0.080185, -0.987377, 0.136593,
		34.966503, 35.624260, 45.549557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607155, 36.124077, 45.781200>,  <35.022633, 36.315422, 45.453941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607155, 36.124077, 45.781200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476887, 35.777702, 45.629360>,  <35.398727, 35.569878, 45.538254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476887, 35.777702, 45.629360>,  <35.607155, 36.124077, 45.781200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476887, 35.777702, 45.629360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940505, -0.255542, -0.223939,
		0.096912, -0.429949, 0.897637,
		-0.325667, -0.865934, -0.379605,
		35.379189, 35.517921, 45.515480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824871, 35.566399, 46.048473>,  <35.607155, 36.124077, 45.781200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824871, 35.566399, 46.048473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760704, 35.491577, 45.660809>,  <35.722206, 35.446686, 45.428207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760704, 35.491577, 45.660809>,  <35.824871, 35.566399, 46.048473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760704, 35.491577, 45.660809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978204, -0.161283, -0.130782,
		-0.131847, -0.969020, 0.208844,
		-0.160413, -0.187049, -0.969165,
		35.712582, 35.435463, 45.370060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288933, 35.034775, 45.734901>,  <35.824871, 35.566399, 46.048473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288933, 35.034775, 45.734901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190979, 35.233540, 45.401890>,  <36.132206, 35.352798, 45.202084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190979, 35.233540, 45.401890>,  <36.288933, 35.034775, 45.734901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190979, 35.233540, 45.401890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965714, 0.201343, -0.163885,
		0.086187, -0.844120, -0.529182,
		-0.244886, 0.496914, -0.832531,
		36.117512, 35.382614, 45.152130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465355, 34.353062, 45.540367>,  <36.288933, 35.034775, 45.734901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465355, 34.353062, 45.540367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718094, 34.315018, 45.848061>,  <36.869736, 34.292191, 46.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718094, 34.315018, 45.848061>,  <36.465355, 34.353062, 45.540367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718094, 34.315018, 45.848061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740897, -0.217425, -0.635451,
		0.227689, 0.971432, -0.066912,
		0.631846, -0.095110, 0.769237,
		36.907646, 34.286484, 46.078831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971123, 34.812412, 45.456692>,  <36.465355, 34.353062, 45.540367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971123, 34.812412, 45.456692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086063, 34.482010, 45.650658>,  <37.155029, 34.283768, 45.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086063, 34.482010, 45.650658>,  <36.971123, 34.812412, 45.456692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086063, 34.482010, 45.650658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797481, -0.074090, -0.598778,
		0.530523, 0.558767, 0.637436,
		0.287350, -0.826008, 0.484913,
		37.172268, 34.234207, 45.796131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576122, 34.880779, 45.164326>,  <36.971123, 34.812412, 45.456692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576122, 34.880779, 45.164326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295513, 34.663723, 44.979546>,  <37.127148, 34.533489, 44.868675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295513, 34.663723, 44.979546>,  <37.576122, 34.880779, 45.164326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295513, 34.663723, 44.979546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481072, 0.117643, -0.868752,
		0.525768, -0.831684, 0.178521,
		-0.701525, -0.542643, -0.461953,
		37.085056, 34.500931, 44.840961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839565, 34.318050, 44.737274>,  <37.576122, 34.880779, 45.164326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839565, 34.318050, 44.737274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518833, 34.473167, 44.555428>,  <37.326393, 34.566238, 44.446320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518833, 34.473167, 44.555428>,  <37.839565, 34.318050, 44.737274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518833, 34.473167, 44.555428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500714, 0.020833, -0.865362,
		-0.326108, -0.921512, -0.210877,
		-0.801835, 0.387791, -0.454621,
		37.278282, 34.589504, 44.419041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715389, 33.993683, 44.120541>,  <37.839565, 34.318050, 44.737274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715389, 33.993683, 44.120541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650570, 34.388145, 44.134563>,  <37.611679, 34.624825, 44.142975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650570, 34.388145, 44.134563>,  <37.715389, 33.993683, 44.120541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650570, 34.388145, 44.134563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500951, 0.112819, -0.858091,
		-0.850170, -0.121490, -0.512300,
		-0.162046, 0.986160, 0.035055,
		37.601955, 34.683994, 44.145081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501976, 34.052872, 43.468311>,  <37.715389, 33.993683, 44.120541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501976, 34.052872, 43.468311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655205, 34.390995, 43.617287>,  <37.747143, 34.593868, 43.706673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655205, 34.390995, 43.617287>,  <37.501976, 34.052872, 43.468311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655205, 34.390995, 43.617287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673305, 0.020509, -0.739080,
		-0.632389, 0.533885, -0.561293,
		0.383073, 0.845308, 0.372438,
		37.770126, 34.644588, 43.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432861, 34.726326, 43.086159>,  <37.501976, 34.052872, 43.468311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432861, 34.726326, 43.086159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794815, 34.656475, 43.241432>,  <38.011990, 34.614567, 43.334595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794815, 34.656475, 43.241432>,  <37.432861, 34.726326, 43.086159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794815, 34.656475, 43.241432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354394, -0.196038, -0.914316,
		0.235761, 0.964922, -0.115506,
		0.904888, -0.174625, 0.388181,
		38.066280, 34.604088, 43.357887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937405, 35.183987, 42.775898>,  <37.432861, 34.726326, 43.086159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937405, 35.183987, 42.775898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100521, 34.837418, 42.891144>,  <38.198391, 34.629475, 42.960293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100521, 34.837418, 42.891144>,  <37.937405, 35.183987, 42.775898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100521, 34.837418, 42.891144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147206, -0.249030, -0.957243,
		0.901130, 0.432769, 0.025990,
		0.407793, -0.866426, 0.288114,
		38.222858, 34.577488, 42.977577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478497, 35.011963, 42.357559>,  <37.937405, 35.183987, 42.775898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478497, 35.011963, 42.357559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432827, 34.651180, 42.524143>,  <38.405426, 34.434711, 42.624096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432827, 34.651180, 42.524143>,  <38.478497, 35.011963, 42.357559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432827, 34.651180, 42.524143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353500, -0.428654, -0.831441,
		0.928440, 0.052287, 0.367784,
		-0.114179, -0.901955, 0.416463,
		38.398575, 34.380592, 42.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129299, 34.680462, 42.365810>,  <38.478497, 35.011963, 42.357559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129299, 34.680462, 42.365810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834179, 34.410454, 42.365669>,  <38.657108, 34.248447, 42.365585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834179, 34.410454, 42.365669>,  <39.129299, 34.680462, 42.365810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834179, 34.410454, 42.365669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318661, -0.347832, -0.881742,
		0.595073, -0.650659, 0.471733,
		-0.737797, -0.675023, -0.000354,
		38.612839, 34.207947, 42.365562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442329, 34.055016, 42.168434>,  <39.129299, 34.680462, 42.365810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442329, 34.055016, 42.168434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052448, 33.989071, 42.108082>,  <38.818520, 33.949505, 42.071869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052448, 33.989071, 42.108082>,  <39.442329, 34.055016, 42.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052448, 33.989071, 42.108082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211506, -0.462391, -0.861081,
		0.072195, -0.871214, 0.485565,
		-0.974707, -0.164866, -0.150885,
		38.760036, 33.939610, 42.062817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435944, 33.496113, 41.822926>,  <39.442329, 34.055016, 42.168434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435944, 33.496113, 41.822926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067425, 33.634941, 41.752769>,  <38.846313, 33.718239, 41.710674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067425, 33.634941, 41.752769>,  <39.435944, 33.496113, 41.822926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067425, 33.634941, 41.752769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072695, -0.289357, -0.954457,
		-0.382015, -0.892084, 0.241352,
		-0.921292, 0.347072, -0.175389,
		38.791039, 33.739063, 41.700153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192902, 32.964928, 41.412022>,  <39.435944, 33.496113, 41.822926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192902, 32.964928, 41.412022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975719, 33.294659, 41.347912>,  <38.845409, 33.492496, 41.309444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975719, 33.294659, 41.347912>,  <39.192902, 32.964928, 41.412022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975719, 33.294659, 41.347912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048090, -0.160027, -0.985940,
		-0.838384, -0.543029, 0.047246,
		-0.542954, 0.824325, -0.160278,
		38.812832, 33.541958, 41.299828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471596, 32.812260, 41.094772>,  <39.192902, 32.964928, 41.412022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471596, 32.812260, 41.094772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706768, 33.119411, 40.993034>,  <38.847874, 33.303703, 40.931992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706768, 33.119411, 40.993034>,  <38.471596, 32.812260, 41.094772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706768, 33.119411, 40.993034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181766, -0.431799, -0.883465,
		-0.788223, 0.473188, -0.393444,
		0.587934, 0.767882, -0.254344,
		38.883148, 33.349777, 40.916733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449547, 32.906914, 40.382580>,  <38.471596, 32.812260, 41.094772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449547, 32.906914, 40.382580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798313, 33.095493, 40.435486>,  <39.007572, 33.208641, 40.467228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798313, 33.095493, 40.435486>,  <38.449547, 32.906914, 40.382580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798313, 33.095493, 40.435486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269132, -0.235772, -0.933798,
		-0.409052, 0.849794, -0.332456,
		0.871920, 0.471447, 0.132264,
		39.059891, 33.236927, 40.475166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653175, 33.481247, 39.835957>,  <38.449547, 32.906914, 40.382580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653175, 33.481247, 39.835957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951149, 33.269531, 39.998398>,  <39.129932, 33.142502, 40.095863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951149, 33.269531, 39.998398>,  <38.653175, 33.481247, 39.835957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951149, 33.269531, 39.998398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311349, -0.262539, -0.913310,
		0.590026, 0.806797, -0.030780,
		0.744937, -0.529293, 0.406101,
		39.174629, 33.110744, 40.120228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448738, 33.577713, 39.575035>,  <38.653175, 33.481247, 39.835957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448738, 33.577713, 39.575035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311699, 33.223236, 39.699806>,  <39.229477, 33.010551, 39.774670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311699, 33.223236, 39.699806>,  <39.448738, 33.577713, 39.575035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311699, 33.223236, 39.699806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233434, -0.401900, -0.885429,
		0.910020, -0.230531, 0.344556,
		-0.342596, -0.886190, 0.311923,
		39.208920, 32.957378, 39.793385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946266, 33.023079, 39.648239>,  <39.448738, 33.577713, 39.575035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946266, 33.023079, 39.648239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600166, 32.834026, 39.581356>,  <39.392506, 32.720596, 39.541225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600166, 32.834026, 39.581356>,  <39.946266, 33.023079, 39.648239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600166, 32.834026, 39.581356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406466, -0.466109, -0.785829,
		0.293471, -0.747904, 0.595411,
		-0.865251, -0.472633, -0.167208,
		39.340591, 32.692238, 39.531193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214504, 32.366962, 39.451710>,  <39.946266, 33.023079, 39.648239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214504, 32.366962, 39.451710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825817, 32.407948, 39.366600>,  <39.592606, 32.432537, 39.315533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825817, 32.407948, 39.366600>,  <40.214504, 32.366962, 39.451710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825817, 32.407948, 39.366600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151027, -0.423028, -0.893442,
		-0.181554, -0.900305, 0.395587,
		-0.971714, 0.102463, -0.212773,
		39.534302, 32.438686, 39.302769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069714, 31.804317, 39.075718>,  <40.214504, 32.366962, 39.451710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069714, 31.804317, 39.075718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764786, 32.056477, 39.017117>,  <39.581829, 32.207771, 38.981956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764786, 32.056477, 39.017117>,  <40.069714, 31.804317, 39.075718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764786, 32.056477, 39.017117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020643, -0.249935, -0.968042,
		-0.646868, -0.734936, 0.203545,
		-0.762323, 0.630397, -0.146504,
		39.536087, 32.245594, 38.973164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406879, 31.394039, 38.829502>,  <40.069714, 31.804317, 39.075718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406879, 31.394039, 38.829502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360451, 31.772701, 38.709255>,  <39.332596, 31.999899, 38.637108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360451, 31.772701, 38.709255>,  <39.406879, 31.394039, 38.829502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360451, 31.772701, 38.709255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121360, -0.313916, -0.941662,
		-0.985799, -0.072814, 0.151322,
		-0.116069, 0.946654, -0.300622,
		39.325630, 32.056698, 38.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853127, 31.352610, 38.458462>,  <39.406879, 31.394039, 38.829502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853127, 31.352610, 38.458462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033661, 31.686756, 38.332947>,  <39.141979, 31.887245, 38.257637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033661, 31.686756, 38.332947>,  <38.853127, 31.352610, 38.458462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033661, 31.686756, 38.332947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248938, -0.219810, -0.943246,
		-0.856930, 0.503830, 0.108748,
		0.451332, 0.835368, -0.313784,
		39.169060, 31.937366, 38.238811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593895, 31.503757, 37.747627>,  <38.853127, 31.352610, 38.458462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593895, 31.503757, 37.747627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881653, 31.781551, 37.742516>,  <39.054306, 31.948227, 37.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881653, 31.781551, 37.742516>,  <38.593895, 31.503757, 37.747627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881653, 31.781551, 37.742516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047349, 0.030678, -0.998407,
		-0.692986, 0.718853, 0.054953,
		0.719394, 0.694484, -0.012777,
		39.097469, 31.989897, 37.738682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239853, 31.988125, 37.399654>,  <38.593895, 31.503757, 37.747627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239853, 31.988125, 37.399654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636780, 32.033897, 37.380806>,  <38.874935, 32.061359, 37.369495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636780, 32.033897, 37.380806>,  <38.239853, 31.988125, 37.399654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636780, 32.033897, 37.380806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029433, -0.151634, -0.987998,
		-0.120203, 0.981791, -0.147101,
		0.992313, 0.114430, -0.047124,
		38.934475, 32.068226, 37.366669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319855, 32.439568, 36.861633>,  <38.239853, 31.988125, 37.399654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319855, 32.439568, 36.861633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673084, 32.258904, 36.912502>,  <38.885021, 32.150505, 36.943024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673084, 32.258904, 36.912502>,  <38.319855, 32.439568, 36.861633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673084, 32.258904, 36.912502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169202, 0.053721, -0.984116,
		0.437658, 0.890569, 0.123862,
		0.883078, -0.451664, 0.127175,
		38.938007, 32.123405, 36.950653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784176, 32.762749, 36.337128>,  <38.319855, 32.439568, 36.861633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784176, 32.762749, 36.337128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961899, 32.417942, 36.434704>,  <39.068535, 32.211056, 36.493252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961899, 32.417942, 36.434704>,  <38.784176, 32.762749, 36.337128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961899, 32.417942, 36.434704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102582, -0.221554, -0.969738,
		0.889981, 0.455888, -0.010010,
		0.444309, -0.862021, 0.243944,
		39.095192, 32.159336, 36.507889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448231, 32.756832, 35.943916>,  <38.784176, 32.762749, 36.337128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448231, 32.756832, 35.943916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316494, 32.394680, 36.051113>,  <39.237450, 32.177387, 36.115433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316494, 32.394680, 36.051113>,  <39.448231, 32.756832, 35.943916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316494, 32.394680, 36.051113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067306, -0.305615, -0.949773,
		0.941808, -0.294765, 0.161590,
		-0.329345, -0.905380, 0.267991,
		39.217690, 32.123066, 36.131512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565639, 32.449490, 35.379047>,  <39.448231, 32.756832, 35.943916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565639, 32.449490, 35.379047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393749, 32.138592, 35.562885>,  <39.290615, 31.952053, 35.673187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393749, 32.138592, 35.562885>,  <39.565639, 32.449490, 35.379047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393749, 32.138592, 35.562885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030698, -0.496112, -0.867715,
		0.902439, -0.386986, 0.189331,
		-0.429723, -0.777248, 0.459591,
		39.264832, 31.905416, 35.700764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889637, 31.861696, 35.169739>,  <39.565639, 32.449490, 35.379047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889637, 31.861696, 35.169739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525269, 31.735107, 35.275623>,  <39.306648, 31.659153, 35.339153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525269, 31.735107, 35.275623>,  <39.889637, 31.861696, 35.169739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525269, 31.735107, 35.275623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108002, -0.436309, -0.893291,
		0.398199, -0.842305, 0.363263,
		-0.910919, -0.316475, 0.264708,
		39.251991, 31.640165, 35.355038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762024, 31.233028, 34.882240>,  <39.889637, 31.861696, 35.169739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762024, 31.233028, 34.882240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378998, 31.307539, 34.970211>,  <39.149181, 31.352245, 35.022995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378998, 31.307539, 34.970211>,  <39.762024, 31.233028, 34.882240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378998, 31.307539, 34.970211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270334, -0.315908, -0.909462,
		-0.099934, -0.930324, 0.352860,
		-0.957566, 0.186276, 0.219929,
		39.091728, 31.363422, 35.036190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388706, 30.610121, 34.621887>,  <39.762024, 31.233028, 34.882240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388706, 30.610121, 34.621887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125336, 30.907209, 34.670620>,  <38.967316, 31.085463, 34.699860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125336, 30.907209, 34.670620>,  <39.388706, 30.610121, 34.621887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125336, 30.907209, 34.670620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274759, -0.086494, -0.957615,
		-0.700704, -0.663990, 0.261020,
		-0.658424, 0.742722, 0.121831,
		38.927807, 31.130026, 34.707169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634331, 30.310772, 34.556992>,  <39.388706, 30.610121, 34.621887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634331, 30.310772, 34.556992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669525, 30.692724, 34.443527>,  <38.690639, 30.921896, 34.375450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669525, 30.692724, 34.443527>,  <38.634331, 30.310772, 34.556992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669525, 30.692724, 34.443527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428736, -0.220739, -0.876047,
		-0.899135, 0.198693, 0.389970,
		0.087983, 0.954880, -0.283661,
		38.695919, 30.979189, 34.358429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964901, 30.510395, 34.360973>,  <38.634331, 30.310772, 34.556992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964901, 30.510395, 34.360973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210106, 30.788626, 34.211098>,  <38.357227, 30.955564, 34.121174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210106, 30.788626, 34.211098>,  <37.964901, 30.510395, 34.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210106, 30.788626, 34.211098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473357, -0.056362, -0.879066,
		-0.632574, 0.716239, 0.294705,
		0.613011, 0.695575, -0.374690,
		38.394009, 30.997297, 34.098690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573410, 31.023899, 34.121609>,  <37.964901, 30.510395, 34.360973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573410, 31.023899, 34.121609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901367, 31.054783, 33.894695>,  <38.098141, 31.073313, 33.758549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901367, 31.054783, 33.894695>,  <37.573410, 31.023899, 34.121609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901367, 31.054783, 33.894695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558459, -0.110357, -0.822159,
		-0.126081, 0.990889, -0.047364,
		0.819895, 0.077208, -0.567284,
		38.147335, 31.077946, 33.724510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307865, 31.121098, 33.491314>,  <37.573410, 31.023899, 34.121609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307865, 31.121098, 33.491314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689877, 31.047850, 33.398037>,  <37.919083, 31.003901, 33.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689877, 31.047850, 33.398037>,  <37.307865, 31.121098, 33.491314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689877, 31.047850, 33.398037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280948, -0.307506, -0.909125,
		0.094768, 0.933760, -0.345125,
		0.955032, -0.183118, -0.233196,
		37.976387, 30.992914, 33.328079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388401, 31.426607, 32.805534>,  <37.307865, 31.121098, 33.491314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388401, 31.426607, 32.805534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681973, 31.157845, 32.845299>,  <37.858116, 30.996586, 32.869156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681973, 31.157845, 32.845299>,  <37.388401, 31.426607, 32.805534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681973, 31.157845, 32.845299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095914, -0.247417, -0.964150,
		0.672416, 0.698086, -0.246033,
		0.733932, -0.671908, 0.099411,
		37.902153, 30.956272, 32.875122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834908, 31.547983, 32.234695>,  <37.388401, 31.426607, 32.805534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834908, 31.547983, 32.234695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871754, 31.171247, 32.363972>,  <37.893864, 30.945206, 32.441536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871754, 31.171247, 32.363972>,  <37.834908, 31.547983, 32.234695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871754, 31.171247, 32.363972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318311, -0.335391, -0.886674,
		0.943500, -0.021195, -0.330693,
		0.092118, -0.941840, 0.323188,
		37.899387, 30.888695, 32.460930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004536, 31.162096, 31.631691>,  <37.834908, 31.547983, 32.234695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004536, 31.162096, 31.631691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896492, 30.878895, 31.892694>,  <37.831665, 30.708973, 32.049297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896492, 30.878895, 31.892694>,  <38.004536, 31.162096, 31.631691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896492, 30.878895, 31.892694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341508, -0.563189, -0.752457,
		0.900230, -0.426083, -0.089666,
		-0.270110, -0.708005, 0.652510,
		37.815460, 30.666492, 32.088448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229786, 30.526812, 31.341829>,  <38.004536, 31.162096, 31.631691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229786, 30.526812, 31.341829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927925, 30.422005, 31.582447>,  <37.746811, 30.359121, 31.726818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927925, 30.422005, 31.582447>,  <38.229786, 30.526812, 31.341829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927925, 30.422005, 31.582447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462302, -0.438245, -0.770855,
		0.465600, -0.859819, 0.209590,
		-0.754648, -0.262016, 0.601543,
		37.701530, 30.343399, 31.762911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169075, 29.837708, 31.284590>,  <38.229786, 30.526812, 31.341829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169075, 29.837708, 31.284590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818245, 29.923214, 31.456657>,  <37.607746, 29.974518, 31.559898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818245, 29.923214, 31.456657>,  <38.169075, 29.837708, 31.284590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818245, 29.923214, 31.456657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480332, -0.381982, -0.789538,
		-0.004459, -0.899108, 0.437705,
		-0.877075, 0.213764, 0.430167,
		37.555122, 29.987343, 31.585707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670673, 29.203047, 31.128174>,  <38.169075, 29.837708, 31.284590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670673, 29.203047, 31.128174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437702, 29.500023, 31.260572>,  <37.297920, 29.678207, 31.340012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437702, 29.500023, 31.260572>,  <37.670673, 29.203047, 31.128174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437702, 29.500023, 31.260572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724098, -0.288821, -0.626310,
		-0.369400, -0.604454, 0.705818,
		-0.582431, 0.742440, 0.330993,
		37.262974, 29.722755, 31.359871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927937, 28.895973, 31.278988>,  <37.670673, 29.203047, 31.128174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927937, 28.895973, 31.278988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908607, 29.282639, 31.178406>,  <36.897011, 29.514637, 31.118055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908607, 29.282639, 31.178406>,  <36.927937, 28.895973, 31.278988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908607, 29.282639, 31.178406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811947, -0.184641, -0.553760,
		-0.581728, 0.177408, 0.793801,
		-0.048327, 0.966661, -0.251457,
		36.894108, 29.572638, 31.102968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193142, 29.015968, 31.106298>,  <36.927937, 28.895973, 31.278988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193142, 29.015968, 31.106298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355537, 29.344666, 30.946342>,  <36.452976, 29.541883, 30.850368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355537, 29.344666, 30.946342>,  <36.193142, 29.015968, 31.106298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355537, 29.344666, 30.946342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682843, -0.018046, -0.730342,
		-0.607368, 0.569576, 0.553794,
		0.405991, 0.821741, -0.399891,
		36.477333, 29.591188, 30.826376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631863, 29.558712, 31.113071>,  <36.193142, 29.015968, 31.106298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631863, 29.558712, 31.113071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921478, 29.625290, 30.845322>,  <36.095249, 29.665237, 30.684671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921478, 29.625290, 30.845322>,  <35.631863, 29.558712, 31.113071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921478, 29.625290, 30.845322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676062, -0.021188, -0.736540,
		-0.136776, 0.985823, 0.097187,
		0.724039, 0.166445, -0.669375,
		36.138691, 29.675224, 30.644508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297527, 29.878592, 30.452145>,  <35.631863, 29.558712, 31.113071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297527, 29.878592, 30.452145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650612, 29.801844, 30.280558>,  <35.862461, 29.755795, 30.177605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650612, 29.801844, 30.280558>,  <35.297527, 29.878592, 30.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650612, 29.801844, 30.280558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467926, -0.274801, -0.839958,
		0.043283, 0.942162, -0.332350,
		0.882707, -0.191872, -0.428968,
		35.915424, 29.744282, 30.151867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361721, 30.218262, 29.816660>,  <35.297527, 29.878592, 30.452145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361721, 30.218262, 29.816660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608982, 29.906586, 29.775171>,  <35.757339, 29.719580, 29.750278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608982, 29.906586, 29.775171>,  <35.361721, 30.218262, 29.816660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608982, 29.906586, 29.775171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407860, -0.205130, -0.889703,
		0.671969, 0.592274, -0.444601,
		0.618149, -0.779188, -0.103724,
		35.794426, 29.672829, 29.744055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758881, 30.324594, 29.179399>,  <35.361721, 30.218262, 29.816660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758881, 30.324594, 29.179399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758327, 29.936266, 29.275324>,  <35.757996, 29.703270, 29.332878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758327, 29.936266, 29.275324>,  <35.758881, 30.324594, 29.179399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758327, 29.936266, 29.275324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273530, -0.230296, -0.933887,
		0.961862, -0.066890, -0.265229,
		-0.001386, -0.970819, 0.239809,
		35.757912, 29.645020, 29.347267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123451, 29.969515, 28.689432>,  <35.758881, 30.324594, 29.179399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123451, 29.969515, 28.689432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894814, 29.687611, 28.857525>,  <35.757629, 29.518469, 28.958380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894814, 29.687611, 28.857525>,  <36.123451, 29.969515, 28.689432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894814, 29.687611, 28.857525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268741, -0.323102, -0.907405,
		0.775279, -0.631601, -0.004714,
		-0.571595, -0.704759, 0.420231,
		35.723335, 29.476183, 28.983595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275211, 29.493702, 28.295832>,  <36.123451, 29.969515, 28.689432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275211, 29.493702, 28.295832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937813, 29.331364, 28.436573>,  <35.735374, 29.233961, 28.521017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937813, 29.331364, 28.436573>,  <36.275211, 29.493702, 28.295832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937813, 29.331364, 28.436573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192301, -0.383466, -0.903313,
		0.501528, -0.829605, 0.245409,
		-0.843499, -0.405844, 0.351852,
		35.684765, 29.209610, 28.542130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172031, 28.896029, 27.877361>,  <36.275211, 29.493702, 28.295832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172031, 28.896029, 27.877361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824612, 28.959665, 28.065111>,  <35.616161, 28.997847, 28.177761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824612, 28.959665, 28.065111>,  <36.172031, 28.896029, 27.877361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824612, 28.959665, 28.065111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495575, -0.289101, -0.819040,
		0.005395, -0.943986, 0.329940,
		-0.868548, 0.159091, 0.469376,
		35.564049, 29.007393, 28.205923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797909, 28.376659, 27.590166>,  <36.172031, 28.896029, 27.877361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797909, 28.376659, 27.590166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523682, 28.600706, 27.776182>,  <35.359146, 28.735134, 27.887791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523682, 28.600706, 27.776182>,  <35.797909, 28.376659, 27.590166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523682, 28.600706, 27.776182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671017, -0.238415, -0.702065,
		-0.282369, -0.793363, 0.539299,
		-0.685569, 0.560120, 0.465039,
		35.318012, 28.768742, 27.915693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225960, 27.978779, 27.714882>,  <35.797909, 28.376659, 27.590166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225960, 27.978779, 27.714882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091698, 28.355515, 27.708214>,  <35.011143, 28.581556, 27.704212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091698, 28.355515, 27.708214>,  <35.225960, 27.978779, 27.714882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091698, 28.355515, 27.708214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676348, -0.253281, -0.691666,
		-0.655660, -0.220885, 0.722025,
		-0.335653, 0.941838, -0.016671,
		34.991001, 28.638065, 27.703213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539940, 27.866745, 27.535219>,  <35.225960, 27.978779, 27.714882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539940, 27.866745, 27.535219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596397, 28.259716, 27.486370>,  <34.630272, 28.495499, 27.457060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596397, 28.259716, 27.486370>,  <34.539940, 27.866745, 27.535219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596397, 28.259716, 27.486370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714018, 0.015572, -0.699954,
		-0.685753, 0.185991, 0.703669,
		0.141143, 0.982428, -0.122122,
		34.638741, 28.554445, 27.449734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830433, 28.338869, 27.663933>,  <34.539940, 27.866745, 27.535219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830433, 28.338869, 27.663933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066822, 28.572762, 27.441639>,  <34.208656, 28.713097, 27.308262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066822, 28.572762, 27.441639>,  <33.830433, 28.338869, 27.663933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066822, 28.572762, 27.441639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739633, 0.117756, -0.662629,
		-0.322017, 0.802636, 0.502076,
		0.590972, 0.584730, -0.555736,
		34.244114, 28.748180, 27.274918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430641, 28.884157, 27.415951>,  <33.830433, 28.338869, 27.663933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430641, 28.884157, 27.415951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740314, 28.870123, 27.163155>,  <33.926117, 28.861702, 27.011477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740314, 28.870123, 27.163155>,  <33.430641, 28.884157, 27.415951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740314, 28.870123, 27.163155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628646, 0.073810, -0.774181,
		0.073810, 0.996655, 0.035086,
		0.774181, -0.035086, -0.631991,
		33.972569, 28.859598, 26.973557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361122, 29.472429, 26.972128>,  <33.430641, 28.884157, 27.415951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361122, 29.472429, 26.972128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584145, 29.193796, 26.791506>,  <33.717960, 29.026617, 26.683132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584145, 29.193796, 26.791506>,  <33.361122, 29.472429, 26.972128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584145, 29.193796, 26.791506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656943, -0.037706, -0.752997,
		0.507498, 0.716486, -0.478638,
		0.557559, -0.696582, -0.451554,
		33.751411, 28.984821, 26.656040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400150, 29.602444, 26.274721>,  <33.361122, 29.472429, 26.972128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400150, 29.602444, 26.274721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497147, 29.215027, 26.252365>,  <33.555344, 28.982576, 26.238951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497147, 29.215027, 26.252365>,  <33.400150, 29.602444, 26.274721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497147, 29.215027, 26.252365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530014, -0.084000, -0.843819,
		0.812580, 0.234238, -0.533710,
		0.242486, -0.968544, -0.055892,
		33.569893, 28.924463, 26.235598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432957, 29.412254, 25.574419>,  <33.400150, 29.602444, 26.274721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432957, 29.412254, 25.574419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365601, 29.066605, 25.764128>,  <33.325188, 28.859215, 25.877953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365601, 29.066605, 25.764128>,  <33.432957, 29.412254, 25.574419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365601, 29.066605, 25.764128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685699, -0.242961, -0.686139,
		0.708139, -0.440750, -0.551615,
		-0.168395, -0.864123, 0.474272,
		33.315083, 28.807367, 25.906410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458431, 28.761116, 24.980070>,  <33.432957, 29.412254, 25.574419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458431, 28.761116, 24.980070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253231, 28.647350, 25.304029>,  <33.130112, 28.579092, 25.498405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253231, 28.647350, 25.304029>,  <33.458431, 28.761116, 24.980070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253231, 28.647350, 25.304029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679159, -0.442524, -0.585591,
		0.524949, -0.850460, 0.033855,
		-0.513003, -0.284412, 0.809900,
		33.099331, 28.562027, 25.546999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341728, 28.117258, 24.904127>,  <33.458431, 28.761116, 24.980070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341728, 28.117258, 24.904127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064796, 28.185863, 25.184486>,  <32.898636, 28.227026, 25.352701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064796, 28.185863, 25.184486>,  <33.341728, 28.117258, 24.904127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064796, 28.185863, 25.184486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681189, -0.475767, -0.556442,
		0.238027, -0.862687, 0.446222,
		-0.692332, 0.171513, 0.700898,
		32.857098, 28.237318, 25.394756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957909, 27.463604, 25.088736>,  <33.341728, 28.117258, 24.904127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957909, 27.463604, 25.088736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719650, 27.771677, 25.179974>,  <32.576694, 27.956520, 25.234716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719650, 27.771677, 25.179974>,  <32.957909, 27.463604, 25.088736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719650, 27.771677, 25.179974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702120, -0.361282, -0.613598,
		-0.390180, -0.525631, 0.755957,
		-0.595640, 0.770187, 0.228091,
		32.540958, 28.002731, 25.248402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210701, 27.260984, 25.372021>,  <32.957909, 27.463604, 25.088736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210701, 27.260984, 25.372021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245884, 27.582176, 25.136229>,  <32.266994, 27.774891, 24.994753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245884, 27.582176, 25.136229>,  <32.210701, 27.260984, 25.372021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245884, 27.582176, 25.136229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856115, -0.241596, -0.456836,
		-0.509246, 0.544846, 0.666192,
		0.087956, 0.802979, -0.589482,
		32.272270, 27.823071, 24.959385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632029, 27.730644, 25.456278>,  <32.210701, 27.260984, 25.372021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632029, 27.730644, 25.456278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791296, 27.722076, 25.089453>,  <31.886856, 27.716936, 24.869358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791296, 27.722076, 25.089453>,  <31.632029, 27.730644, 25.456278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791296, 27.722076, 25.089453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903953, -0.179154, -0.388294,
		-0.155978, 0.983588, -0.090696,
		0.398170, -0.021420, -0.917062,
		31.910748, 27.715651, 24.814335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473936, 28.543848, 25.379124>,  <31.632029, 27.730644, 25.456278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473936, 28.543848, 25.379124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212025, 28.764019, 25.586313>,  <31.054878, 28.896122, 25.710627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212025, 28.764019, 25.586313>,  <31.473936, 28.543848, 25.379124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212025, 28.764019, 25.586313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333023, 0.405104, -0.851461,
		-0.678499, -0.730016, -0.081948,
		-0.654778, 0.550425, 0.517975,
		31.015591, 28.929146, 25.741705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737352, 28.289633, 25.501936>,  <31.473936, 28.543848, 25.379124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737352, 28.289633, 25.501936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707409, 28.688011, 25.482002>,  <30.689444, 28.927038, 25.470043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707409, 28.688011, 25.482002>,  <30.737352, 28.289633, 25.501936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707409, 28.688011, 25.482002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371148, -0.074210, -0.925604,
		-0.925551, -0.050794, 0.375199,
		-0.074859, 0.995948, -0.049833,
		30.684952, 28.986795, 25.467052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213266, 28.390350, 25.068808>,  <30.737352, 28.289633, 25.501936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213266, 28.390350, 25.068808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436237, 28.722002, 25.051775>,  <30.570021, 28.920994, 25.041555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436237, 28.722002, 25.051775>,  <30.213266, 28.390350, 25.068808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436237, 28.722002, 25.051775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159716, 0.056765, -0.985530,
		-0.814716, 0.556164, 0.164068,
		0.557430, 0.829131, -0.042581,
		30.603466, 28.970741, 25.039001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548594, 28.711325, 24.346491>,  <30.213266, 28.390350, 25.068808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548594, 28.711325, 24.346491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376324, 29.070271, 24.308006>,  <30.272963, 29.285639, 24.284916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376324, 29.070271, 24.308006>,  <30.548594, 28.711325, 24.346491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376324, 29.070271, 24.308006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191810, 0.195179, 0.961829,
		0.881889, 0.395780, -0.256182,
		-0.430674, 0.897365, -0.096212,
		30.247122, 29.339479, 24.279142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983316, 29.362005, 24.435436>,  <30.548594, 28.711325, 24.346491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983316, 29.362005, 24.435436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612175, 29.414173, 24.575193>,  <30.389490, 29.445473, 24.659048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612175, 29.414173, 24.575193>,  <30.983316, 29.362005, 24.435436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612175, 29.414173, 24.575193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369369, 0.192022, 0.909227,
		0.051489, 0.972686, -0.226341,
		-0.927855, 0.130418, 0.349393,
		30.333818, 29.453299, 24.680012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992306, 29.947830, 24.898888>,  <30.983316, 29.362005, 24.435436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992306, 29.947830, 24.898888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707598, 29.685467, 24.999418>,  <30.536774, 29.528048, 25.059736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707598, 29.685467, 24.999418>,  <30.992306, 29.947830, 24.898888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707598, 29.685467, 24.999418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221220, 0.130269, 0.966484,
		-0.666667, 0.743513, 0.052379,
		-0.711770, -0.655910, 0.251326,
		30.494066, 29.488693, 25.074816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472431, 30.249489, 25.377377>,  <30.992306, 29.947830, 24.898888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472431, 30.249489, 25.377377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528648, 29.856098, 25.423019>,  <30.562378, 29.620064, 25.450405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528648, 29.856098, 25.423019>,  <30.472431, 30.249489, 25.377377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528648, 29.856098, 25.423019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235525, 0.145153, 0.960968,
		-0.961653, -0.108181, 0.252033,
		0.140542, -0.983477, 0.114107,
		30.570810, 29.561054, 25.457251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938316, 29.938351, 25.876301>,  <30.472431, 30.249489, 25.377377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938316, 29.938351, 25.876301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282330, 29.734301, 25.871988>,  <30.488737, 29.611870, 25.869400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282330, 29.734301, 25.871988>,  <29.938316, 29.938351, 25.876301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282330, 29.734301, 25.871988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076093, 0.107333, 0.991307,
		-0.504535, -0.853376, 0.131127,
		0.860031, -0.510127, -0.010783,
		30.540339, 29.581263, 25.868753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858606, 29.366680, 26.239376>,  <29.938316, 29.938351, 25.876301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858606, 29.366680, 26.239376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253698, 29.428604, 26.247641>,  <30.490753, 29.465757, 26.252600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253698, 29.428604, 26.247641>,  <29.858606, 29.366680, 26.239376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253698, 29.428604, 26.247641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017749, -0.020183, 0.999639,
		0.155170, -0.987738, -0.017188,
		0.987728, 0.154809, 0.020664,
		30.550016, 29.475046, 26.253839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115305, 28.972300, 26.801420>,  <29.858606, 29.366680, 26.239376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115305, 28.972300, 26.801420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423601, 29.223236, 26.756878>,  <30.608580, 29.373798, 26.730152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423601, 29.223236, 26.756878>,  <30.115305, 28.972300, 26.801420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423601, 29.223236, 26.756878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056629, 0.106634, 0.992684,
		0.634627, -0.771409, 0.046662,
		0.770741, 0.627342, -0.111358,
		30.654823, 29.411438, 26.723471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641867, 28.740320, 27.251978>,  <30.115305, 28.972300, 26.801420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641867, 28.740320, 27.251978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713297, 29.130741, 27.202290>,  <30.756155, 29.364994, 27.172476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713297, 29.130741, 27.202290>,  <30.641867, 28.740320, 27.251978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713297, 29.130741, 27.202290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202871, 0.087014, 0.975332,
		0.962784, -0.199372, -0.182474,
		0.178577, 0.976053, -0.124222,
		30.766870, 29.423557, 27.165024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394293, 28.866667, 27.414482>,  <30.641867, 28.740320, 27.251978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394293, 28.866667, 27.414482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175365, 29.199057, 27.454327>,  <31.044008, 29.398491, 27.478233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175365, 29.199057, 27.454327>,  <31.394293, 28.866667, 27.414482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175365, 29.199057, 27.454327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147546, -0.021355, 0.988825,
		0.823815, 0.555901, -0.110919,
		-0.547320, 0.830974, 0.099613,
		31.011169, 29.448349, 27.484211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743006, 29.197847, 27.914078>,  <31.394293, 28.866667, 27.414482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743006, 29.197847, 27.914078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398083, 29.399197, 27.892017>,  <31.191130, 29.520006, 27.878780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398083, 29.399197, 27.892017>,  <31.743006, 29.197847, 27.914078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398083, 29.399197, 27.892017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061668, 0.212488, 0.975216,
		0.502617, 0.837534, -0.214272,
		-0.862307, 0.503374, -0.055151,
		31.139391, 29.550209, 27.875471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815678, 29.876499, 28.261320>,  <31.743006, 29.197847, 27.914078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815678, 29.876499, 28.261320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418903, 29.826393, 28.253559>,  <31.180840, 29.796329, 28.248901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418903, 29.826393, 28.253559>,  <31.815678, 29.876499, 28.261320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418903, 29.826393, 28.253559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072444, 0.434598, 0.897706,
		-0.104019, 0.891871, -0.440167,
		-0.991933, -0.125266, -0.019404,
		31.121323, 29.788813, 28.247738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584045, 30.426014, 28.449205>,  <31.815678, 29.876499, 28.261320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584045, 30.426014, 28.449205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285732, 30.169060, 28.519798>,  <31.106745, 30.014887, 28.562155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285732, 30.169060, 28.519798>,  <31.584045, 30.426014, 28.449205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285732, 30.169060, 28.519798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126288, 0.396436, 0.909335,
		-0.654109, 0.655879, -0.376781,
		-0.745783, -0.642387, 0.176482,
		31.061996, 29.976343, 28.572742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110161, 30.876139, 28.848804>,  <31.584045, 30.426014, 28.449205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110161, 30.876139, 28.848804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993382, 30.496433, 28.895565>,  <30.923315, 30.268610, 28.923622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993382, 30.496433, 28.895565>,  <31.110161, 30.876139, 28.848804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993382, 30.496433, 28.895565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076607, 0.145043, 0.986455,
		-0.953362, 0.279036, -0.115065,
		-0.291946, -0.949264, 0.116902,
		30.905798, 30.211655, 28.930635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710316, 30.928915, 29.514536>,  <31.110161, 30.876139, 28.848804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710316, 30.928915, 29.514536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769209, 30.534624, 29.481886>,  <30.804544, 30.298050, 29.462296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769209, 30.534624, 29.481886>,  <30.710316, 30.928915, 29.514536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769209, 30.534624, 29.481886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195246, -0.051934, 0.979378,
		-0.969639, -0.160135, 0.184813,
		0.147235, -0.985728, -0.081623,
		30.813379, 30.238905, 29.457399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250292, 30.654690, 29.985991>,  <30.710316, 30.928915, 29.514536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250292, 30.654690, 29.985991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562761, 30.415382, 29.914612>,  <30.750242, 30.271797, 29.871784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562761, 30.415382, 29.914612>,  <30.250292, 30.654690, 29.985991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562761, 30.415382, 29.914612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128007, -0.126272, 0.983702,
		-0.611053, -0.791282, -0.022058,
		0.781171, -0.598270, -0.178449,
		30.797113, 30.235901, 29.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172300, 30.170452, 30.393503>,  <30.250292, 30.654690, 29.985991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172300, 30.170452, 30.393503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557594, 30.193359, 30.288506>,  <30.788771, 30.207104, 30.225508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557594, 30.193359, 30.288506>,  <30.172300, 30.170452, 30.393503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557594, 30.193359, 30.288506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252680, 0.138907, 0.957527,
		0.091296, -0.988648, 0.119330,
		0.963233, 0.057266, -0.262493,
		30.846563, 30.210541, 30.209757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347618, 30.298874, 31.027634>,  <30.172300, 30.170452, 30.393503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347618, 30.298874, 31.027634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678261, 30.239414, 30.810516>,  <30.876646, 30.203739, 30.680246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678261, 30.239414, 30.810516>,  <30.347618, 30.298874, 31.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678261, 30.239414, 30.810516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561945, 0.270507, 0.781693,
		0.030631, -0.951173, 0.307135,
		0.826607, -0.148649, -0.542792,
		30.926243, 30.194818, 30.647678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830166, 29.726881, 31.300505>,  <30.347618, 30.298874, 31.027634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830166, 29.726881, 31.300505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011271, 30.035490, 31.121727>,  <31.119934, 30.220655, 31.014460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011271, 30.035490, 31.121727>,  <30.830166, 29.726881, 31.300505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011271, 30.035490, 31.121727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481373, 0.210430, 0.850881,
		0.750524, -0.600394, -0.276116,
		0.452761, 0.771522, -0.446946,
		31.147099, 30.266947, 30.987642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616711, 29.640182, 31.424496>,  <30.830166, 29.726881, 31.300505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616711, 29.640182, 31.424496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521524, 30.019466, 31.340336>,  <31.464413, 30.247038, 31.289839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521524, 30.019466, 31.340336>,  <31.616711, 29.640182, 31.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521524, 30.019466, 31.340336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531427, 0.308432, 0.788958,
		0.812993, 0.075932, -0.577301,
		-0.237965, 0.948211, -0.210401,
		31.450134, 30.303930, 31.277216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178047, 29.929281, 31.581680>,  <31.616711, 29.640182, 31.424496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178047, 29.929281, 31.581680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939442, 30.250160, 31.571482>,  <31.796278, 30.442688, 31.565363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939442, 30.250160, 31.571482>,  <32.178047, 29.929281, 31.581680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939442, 30.250160, 31.571482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528284, 0.416347, 0.739981,
		0.604227, 0.427939, -0.672145,
		-0.596512, 0.802199, -0.025495,
		31.760489, 30.490820, 31.563833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600910, 30.548756, 31.569523>,  <32.178047, 29.929281, 31.581680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600910, 30.548756, 31.569523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237049, 30.638882, 31.709101>,  <32.018734, 30.692957, 31.792847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237049, 30.638882, 31.709101>,  <32.600910, 30.548756, 31.569523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237049, 30.638882, 31.709101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402210, 0.268053, 0.875428,
		0.103714, 0.936685, -0.334461,
		-0.909654, 0.225317, 0.348944,
		31.964153, 30.706476, 31.813784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653519, 31.191711, 31.842222>,  <32.600910, 30.548756, 31.569523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653519, 31.191711, 31.842222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336407, 31.036215, 32.030003>,  <32.146141, 30.942917, 32.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336407, 31.036215, 32.030003>,  <32.653519, 31.191711, 31.842222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336407, 31.036215, 32.030003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352535, 0.335854, 0.873454,
		-0.497216, 0.857952, -0.129211,
		-0.792777, -0.388743, 0.469450,
		32.098572, 30.919592, 32.170837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460823, 31.734404, 32.300308>,  <32.653519, 31.191711, 31.842222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460823, 31.734404, 32.300308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279068, 31.406580, 32.439941>,  <32.170017, 31.209887, 32.523720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279068, 31.406580, 32.439941>,  <32.460823, 31.734404, 32.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279068, 31.406580, 32.439941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193859, 0.291507, 0.936719,
		-0.869457, 0.493302, 0.026422,
		-0.454383, -0.819559, 0.349084,
		32.142754, 31.160713, 32.544666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077896, 31.944698, 32.902054>,  <32.460823, 31.734404, 32.300308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077896, 31.944698, 32.902054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083672, 31.545738, 32.930290>,  <32.087135, 31.306362, 32.947231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083672, 31.545738, 32.930290>,  <32.077896, 31.944698, 32.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083672, 31.545738, 32.930290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128811, 0.071870, 0.989062,
		-0.991564, -0.005187, 0.129514,
		0.014438, -0.997401, 0.070595,
		32.088001, 31.246517, 32.951469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772539, 31.847963, 33.505241>,  <32.077896, 31.944698, 32.902054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772539, 31.847963, 33.505241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956022, 31.496967, 33.449245>,  <32.066113, 31.286369, 33.415649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956022, 31.496967, 33.449245>,  <31.772539, 31.847963, 33.505241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956022, 31.496967, 33.449245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312573, 0.011870, 0.949820,
		-0.831797, -0.479445, 0.279725,
		0.458706, -0.877492, -0.139988,
		32.093636, 31.233719, 33.407249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542875, 31.281952, 34.049877>,  <31.772539, 31.847963, 33.505241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542875, 31.281952, 34.049877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909792, 31.198402, 33.914265>,  <32.129944, 31.148272, 33.832897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909792, 31.198402, 33.914265>,  <31.542875, 31.281952, 34.049877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909792, 31.198402, 33.914265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319376, -0.122628, 0.939660,
		-0.237847, -0.970223, -0.045776,
		0.917294, -0.208876, -0.339033,
		32.184978, 31.135740, 33.812553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766855, 30.850796, 34.448189>,  <31.542875, 31.281952, 34.049877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766855, 30.850796, 34.448189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110325, 30.965454, 34.278244>,  <32.316406, 31.034248, 34.176277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110325, 30.965454, 34.278244>,  <31.766855, 30.850796, 34.448189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110325, 30.965454, 34.278244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483953, -0.180589, 0.856258,
		0.168715, -0.940863, -0.293789,
		0.858676, 0.286644, -0.424865,
		32.367928, 31.051447, 34.150784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280910, 30.327087, 34.603603>,  <31.766855, 30.850796, 34.448189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280910, 30.327087, 34.603603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473324, 30.663118, 34.503304>,  <32.588772, 30.864737, 34.443123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473324, 30.663118, 34.503304>,  <32.280910, 30.327087, 34.603603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473324, 30.663118, 34.503304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568247, -0.080964, 0.818865,
		0.667610, -0.536388, -0.516319,
		0.481032, 0.840079, -0.250749,
		32.617634, 30.915142, 34.428078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956902, 30.136919, 34.684471>,  <32.280910, 30.327087, 34.603603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956902, 30.136919, 34.684471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968029, 30.536486, 34.699409>,  <32.974705, 30.776226, 34.708374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968029, 30.536486, 34.699409>,  <32.956902, 30.136919, 34.684471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968029, 30.536486, 34.699409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530174, -0.046419, 0.846617,
		0.847432, -0.003750, -0.530891,
		0.027818, 0.998915, 0.037349,
		32.976376, 30.836161, 34.710613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538857, 30.222589, 34.879063>,  <32.956902, 30.136919, 34.684471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538857, 30.222589, 34.879063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391670, 30.584328, 34.965557>,  <33.303360, 30.801371, 35.017456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391670, 30.584328, 34.965557>,  <33.538857, 30.222589, 34.879063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391670, 30.584328, 34.965557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617897, 0.064036, 0.783648,
		0.694841, 0.421970, -0.582355,
		-0.367967, 0.904346, 0.216239,
		33.281281, 30.855631, 35.030430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106869, 30.594658, 34.922287>,  <33.538857, 30.222589, 34.879063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106869, 30.594658, 34.922287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834103, 30.828247, 35.098450>,  <33.670441, 30.968401, 35.204147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834103, 30.828247, 35.098450>,  <34.106869, 30.594658, 34.922287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834103, 30.828247, 35.098450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694382, 0.327677, 0.640673,
		0.229825, 0.742698, -0.628951,
		-0.681919, 0.583975, 0.440408,
		33.629528, 31.003439, 35.230572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368553, 31.367632, 34.902344>,  <34.106869, 30.594658, 34.922287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368553, 31.367632, 34.902344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099518, 31.306528, 35.191975>,  <33.938095, 31.269867, 35.365753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099518, 31.306528, 35.191975>,  <34.368553, 31.367632, 34.902344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099518, 31.306528, 35.191975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637997, 0.376060, 0.671966,
		-0.374945, 0.913917, -0.155475,
		-0.672589, -0.152757, 0.724078,
		33.897739, 31.260700, 35.409199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375885, 31.978085, 35.298038>,  <34.368553, 31.367632, 34.902344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375885, 31.978085, 35.298038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233131, 31.670977, 35.510891>,  <34.147480, 31.486712, 35.638603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233131, 31.670977, 35.510891>,  <34.375885, 31.978085, 35.298038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233131, 31.670977, 35.510891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645949, 0.208683, 0.734303,
		-0.674823, 0.605789, 0.421466,
		-0.356880, -0.767770, 0.532133,
		34.126068, 31.440645, 35.670532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170876, 32.268929, 35.974827>,  <34.375885, 31.978085, 35.298038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170876, 32.268929, 35.974827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163059, 31.880966, 36.071911>,  <34.158371, 31.648190, 36.130161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163059, 31.880966, 36.071911>,  <34.170876, 32.268929, 35.974827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163059, 31.880966, 36.071911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594274, 0.183956, 0.782942,
		-0.804025, 0.159533, 0.572793,
		-0.019537, -0.969902, 0.242711,
		34.157200, 31.589996, 36.144726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917030, 32.189983, 36.681488>,  <34.170876, 32.268929, 35.974827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917030, 32.189983, 36.681488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144676, 31.882563, 36.564568>,  <34.281265, 31.698111, 36.494415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144676, 31.882563, 36.564568>,  <33.917030, 32.189983, 36.681488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144676, 31.882563, 36.564568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488645, 0.030216, 0.871959,
		-0.661310, -0.639078, 0.392743,
		0.569117, -0.768548, -0.292300,
		34.315411, 31.651999, 36.476879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915932, 31.660332, 37.255054>,  <33.917030, 32.189983, 36.681488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915932, 31.660332, 37.255054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248558, 31.595135, 37.042667>,  <34.448135, 31.556017, 36.915237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248558, 31.595135, 37.042667>,  <33.915932, 31.660332, 37.255054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248558, 31.595135, 37.042667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528758, -0.060309, 0.846627,
		-0.170018, -0.984782, 0.036034,
		0.831570, -0.162995, -0.530965,
		34.498028, 31.546236, 36.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299282, 31.151129, 37.739117>,  <33.915932, 31.660332, 37.255054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299282, 31.151129, 37.739117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568573, 31.283487, 37.474609>,  <34.730148, 31.362902, 37.315907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568573, 31.283487, 37.474609>,  <34.299282, 31.151129, 37.739117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568573, 31.283487, 37.474609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703668, -0.011912, 0.710429,
		0.227200, -0.943593, -0.240860,
		0.673224, 0.330895, -0.661270,
		34.770542, 31.382755, 37.276230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944019, 30.680998, 37.823551>,  <34.299282, 31.151129, 37.739117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944019, 30.680998, 37.823551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048691, 31.030745, 37.660084>,  <35.111492, 31.240593, 37.562004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048691, 31.030745, 37.660084>,  <34.944019, 30.680998, 37.823551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048691, 31.030745, 37.660084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656122, 0.149380, 0.739723,
		0.707835, -0.461705, -0.534601,
		0.261675, 0.874365, -0.408671,
		35.127193, 31.293055, 37.537483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643360, 30.663847, 37.849174>,  <34.944019, 30.680998, 37.823551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643360, 30.663847, 37.849174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561783, 31.053234, 37.807674>,  <35.512836, 31.286867, 37.782772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561783, 31.053234, 37.807674>,  <35.643360, 30.663847, 37.849174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561783, 31.053234, 37.807674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741104, 0.222768, 0.633355,
		0.639664, 0.052278, -0.766874,
		-0.203945, 0.973469, -0.103753,
		35.500599, 31.345274, 37.776550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311047, 31.012489, 38.003304>,  <35.643360, 30.663847, 37.849174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311047, 31.012489, 38.003304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059807, 31.323454, 38.016750>,  <35.909065, 31.510033, 38.024818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059807, 31.323454, 38.016750>,  <36.311047, 31.012489, 38.003304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059807, 31.323454, 38.016750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629615, 0.482349, 0.609036,
		0.457255, 0.403699, -0.792430,
		-0.628095, 0.777410, 0.033619,
		35.871380, 31.556677, 38.026836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627048, 31.721972, 37.774586>,  <36.311047, 31.012489, 38.003304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627048, 31.721972, 37.774586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327106, 31.804653, 38.025982>,  <36.147141, 31.854261, 38.176819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327106, 31.804653, 38.025982>,  <36.627048, 31.721972, 37.774586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327106, 31.804653, 38.025982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639314, 0.470898, 0.607892,
		-0.170300, 0.857630, -0.485252,
		-0.749851, 0.206705, 0.628488,
		36.102150, 31.866665, 38.214527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782955, 32.363331, 37.937462>,  <36.627048, 31.721972, 37.774586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782955, 32.363331, 37.937462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539852, 32.245552, 38.232468>,  <36.393990, 32.174885, 38.409470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539852, 32.245552, 38.232468>,  <36.782955, 32.363331, 37.937462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539852, 32.245552, 38.232468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644485, 0.359721, 0.674715,
		-0.463966, 0.885383, -0.028859,
		-0.607762, -0.294446, 0.737514,
		36.357525, 32.157219, 38.453720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694954, 32.989697, 38.454483>,  <36.782955, 32.363331, 37.937462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694954, 32.989697, 38.454483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587406, 32.669682, 38.669018>,  <36.522877, 32.477673, 38.797737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587406, 32.669682, 38.669018>,  <36.694954, 32.989697, 38.454483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587406, 32.669682, 38.669018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667412, 0.246734, 0.702626,
		-0.694457, 0.546870, 0.467614,
		-0.268869, -0.800035, 0.536334,
		36.506744, 32.429672, 38.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655735, 33.215115, 39.028004>,  <36.694954, 32.989697, 38.454483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655735, 33.215115, 39.028004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715878, 32.826942, 39.103535>,  <36.751965, 32.594040, 39.148853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715878, 32.826942, 39.103535>,  <36.655735, 33.215115, 39.028004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715878, 32.826942, 39.103535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680375, 0.240149, 0.692400,
		-0.717273, 0.024366, 0.696366,
		0.150361, -0.970430, 0.188831,
		36.760986, 32.535812, 39.160183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173141, 33.486794, 38.495953>,  <36.655735, 33.215115, 39.028004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173141, 33.486794, 38.495953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227467, 33.881062, 38.535988>,  <36.260063, 34.117622, 38.560009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227467, 33.881062, 38.535988>,  <36.173141, 33.486794, 38.495953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227467, 33.881062, 38.535988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711271, 0.167327, -0.682712,
		-0.689673, 0.021534, 0.723801,
		0.135813, 0.985666, 0.100084,
		36.268211, 34.176762, 38.566013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415768, 33.742729, 38.601795>,  <36.173141, 33.486794, 38.495953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415768, 33.742729, 38.601795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644886, 34.050781, 38.489506>,  <35.782356, 34.235611, 38.422134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644886, 34.050781, 38.489506>,  <35.415768, 33.742729, 38.601795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644886, 34.050781, 38.489506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607574, 0.169008, -0.776073,
		-0.550231, 0.615094, 0.564717,
		0.572800, 0.770127, -0.280722,
		35.816727, 34.281818, 38.405289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916962, 34.247524, 38.596310>,  <35.415768, 33.742729, 38.601795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916962, 34.247524, 38.596310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215500, 34.389992, 38.371418>,  <35.394623, 34.475471, 38.236481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215500, 34.389992, 38.371418>,  <34.916962, 34.247524, 38.596310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215500, 34.389992, 38.371418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654099, 0.236465, -0.718498,
		-0.122961, 0.904005, 0.409457,
		0.746348, 0.356173, -0.562232,
		35.439404, 34.496845, 38.202747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792469, 34.898056, 38.422787>,  <34.916962, 34.247524, 38.596310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792469, 34.898056, 38.422787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012085, 34.721703, 38.138763>,  <35.143852, 34.615891, 37.968349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012085, 34.721703, 38.138763>,  <34.792469, 34.898056, 38.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012085, 34.721703, 38.138763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655837, 0.299383, -0.692999,
		0.518108, 0.846165, -0.124773,
		0.549037, -0.440879, -0.710059,
		35.176796, 34.589439, 37.925747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619991, 35.234425, 37.847839>,  <34.792469, 34.898056, 38.422787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619991, 35.234425, 37.847839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792450, 34.907578, 37.694778>,  <34.895927, 34.711468, 37.602940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792450, 34.907578, 37.694778>,  <34.619991, 35.234425, 37.847839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792450, 34.907578, 37.694778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563428, 0.087430, -0.821526,
		0.704741, 0.569799, -0.422694,
		0.431148, -0.817120, -0.382656,
		34.921795, 34.662441, 37.579983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665356, 35.342812, 37.078663>,  <34.619991, 35.234425, 37.847839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665356, 35.342812, 37.078663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728249, 34.949856, 37.119030>,  <34.765984, 34.714081, 37.143250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728249, 34.949856, 37.119030>,  <34.665356, 35.342812, 37.078663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728249, 34.949856, 37.119030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521742, -0.169397, -0.836116,
		0.838488, 0.078816, -0.539190,
		0.157236, -0.982391, 0.100915,
		34.775421, 34.655140, 37.149303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076542, 35.066380, 36.486691>,  <34.665356, 35.342812, 37.078663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076542, 35.066380, 36.486691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890629, 34.759308, 36.663166>,  <34.779079, 34.575066, 36.769051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890629, 34.759308, 36.663166>,  <35.076542, 35.066380, 36.486691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890629, 34.759308, 36.663166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388531, -0.270917, -0.880709,
		0.795625, -0.580755, -0.172348,
		-0.464784, -0.767677, 0.441189,
		34.751194, 34.529003, 36.795525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081409, 34.521057, 35.973305>,  <35.076542, 35.066380, 36.486691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081409, 34.521057, 35.973305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816677, 34.337170, 36.210167>,  <34.657837, 34.226837, 36.352283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816677, 34.337170, 36.210167>,  <35.081409, 34.521057, 35.973305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816677, 34.337170, 36.210167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566486, -0.210660, -0.796690,
		0.490996, -0.862717, -0.121004,
		-0.661828, -0.459719, 0.592151,
		34.618130, 34.199253, 36.387814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975414, 33.789047, 35.703434>,  <35.081409, 34.521057, 35.973305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975414, 33.789047, 35.703434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673367, 33.933346, 35.922398>,  <34.492138, 34.019924, 36.053776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673367, 33.933346, 35.922398>,  <34.975414, 33.789047, 35.703434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673367, 33.933346, 35.922398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620206, -0.122493, -0.774816,
		-0.212458, -0.924585, 0.316234,
		-0.755120, 0.360746, 0.547408,
		34.446831, 34.041569, 36.086620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378403, 33.466740, 35.403069>,  <34.975414, 33.789047, 35.703434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378403, 33.466740, 35.403069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199066, 33.738266, 35.635689>,  <34.091465, 33.901184, 35.775261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199066, 33.738266, 35.635689>,  <34.378403, 33.466740, 35.403069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199066, 33.738266, 35.635689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766713, 0.042410, -0.640588,
		-0.459506, -0.733081, 0.501445,
		-0.448337, 0.678818, 0.581550,
		34.064564, 33.941910, 35.810154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774223, 33.081139, 35.584961>,  <34.378403, 33.466740, 35.403069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774223, 33.081139, 35.584961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725216, 33.477669, 35.604031>,  <33.695812, 33.715588, 35.615471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725216, 33.477669, 35.604031>,  <33.774223, 33.081139, 35.584961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725216, 33.477669, 35.604031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679068, -0.048706, -0.732457,
		-0.723778, -0.122111, 0.679142,
		-0.122519, 0.991321, 0.047670,
		33.688461, 33.775066, 35.618332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089386, 33.157627, 35.376602>,  <33.774223, 33.081139, 35.584961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089386, 33.157627, 35.376602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225960, 33.529926, 35.324249>,  <33.307903, 33.753307, 35.292839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225960, 33.529926, 35.324249>,  <33.089386, 33.157627, 35.376602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225960, 33.529926, 35.324249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744184, 0.182644, -0.642519,
		-0.574120, 0.316777, 0.755009,
		0.341433, 0.930749, -0.130881,
		33.328388, 33.809151, 35.284985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491657, 33.651520, 35.506699>,  <33.089386, 33.157627, 35.376602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491657, 33.651520, 35.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769012, 33.831776, 35.281796>,  <32.935425, 33.939930, 35.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769012, 33.831776, 35.281796>,  <32.491657, 33.651520, 35.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769012, 33.831776, 35.281796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702426, 0.248774, -0.666865,
		-0.160638, 0.857344, 0.489036,
		0.693392, 0.450636, -0.562259,
		32.977032, 33.966965, 35.113117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122768, 34.165840, 35.192917>,  <32.491657, 33.651520, 35.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122768, 34.165840, 35.192917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454300, 34.119221, 34.974026>,  <32.653221, 34.091248, 34.842693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454300, 34.119221, 34.974026>,  <32.122768, 34.165840, 35.192917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454300, 34.119221, 34.974026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541370, 0.079896, -0.836980,
		0.141270, 0.989966, 0.003124,
		0.828831, -0.116549, -0.547225,
		32.702950, 34.084255, 34.809860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984051, 34.554108, 34.656410>,  <32.122768, 34.165840, 35.192917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984051, 34.554108, 34.656410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297855, 34.336956, 34.536526>,  <32.486137, 34.206665, 34.464596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297855, 34.336956, 34.536526>,  <31.984051, 34.554108, 34.656410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297855, 34.336956, 34.536526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426530, -0.121575, -0.896265,
		0.450127, 0.830964, -0.326931,
		0.784511, -0.542879, -0.299707,
		32.533207, 34.174091, 34.446613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100338, 34.817905, 33.937065>,  <31.984051, 34.554108, 34.656410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100338, 34.817905, 33.937065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249859, 34.452213, 33.999603>,  <32.339573, 34.232796, 34.037128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249859, 34.452213, 33.999603>,  <32.100338, 34.817905, 33.937065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249859, 34.452213, 33.999603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249052, -0.261317, -0.932570,
		0.893444, 0.309661, -0.325373,
		0.373806, -0.914234, 0.156350,
		32.362000, 34.177944, 34.046509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426964, 34.632648, 33.328472>,  <32.100338, 34.817905, 33.937065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426964, 34.632648, 33.328472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433994, 34.261398, 33.477207>,  <32.438213, 34.038647, 33.566448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433994, 34.261398, 33.477207>,  <32.426964, 34.632648, 33.328472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433994, 34.261398, 33.477207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126605, -0.370972, -0.919973,
		0.991797, -0.030903, -0.124028,
		0.017581, -0.928130, 0.371841,
		32.439270, 33.982960, 33.588760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842766, 34.194458, 32.928482>,  <32.426964, 34.632648, 33.328472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842766, 34.194458, 32.928482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576736, 33.936398, 33.078926>,  <32.417118, 33.781563, 33.169193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576736, 33.936398, 33.078926>,  <32.842766, 34.194458, 32.928482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576736, 33.936398, 33.078926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121262, -0.403667, -0.906834,
		0.736870, -0.648716, 0.190234,
		-0.665070, -0.645151, 0.376115,
		32.377216, 33.742851, 33.191761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870331, 33.598854, 32.525555>,  <32.842766, 34.194458, 32.928482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870331, 33.598854, 32.525555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526253, 33.537819, 32.720196>,  <32.319805, 33.501198, 32.836979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526253, 33.537819, 32.720196>,  <32.870331, 33.598854, 32.525555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526253, 33.537819, 32.720196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438777, -0.264819, -0.858688,
		0.259887, -0.952149, 0.160843,
		-0.860194, -0.152588, 0.486604,
		32.268196, 33.492043, 32.866177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716026, 32.986980, 32.306259>,  <32.870331, 33.598854, 32.525555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716026, 32.986980, 32.306259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385990, 33.190079, 32.405399>,  <32.187969, 33.311935, 32.464886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385990, 33.190079, 32.405399>,  <32.716026, 32.986980, 32.306259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385990, 33.190079, 32.405399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381716, -0.177504, -0.907075,
		-0.416566, -0.843024, 0.340270,
		-0.825085, 0.507743, 0.247853,
		32.138466, 33.342400, 32.479755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141010, 32.594608, 32.169640>,  <32.716026, 32.986980, 32.306259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141010, 32.594608, 32.169640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980309, 32.960808, 32.178112>,  <31.883888, 33.180527, 32.183197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980309, 32.960808, 32.178112>,  <32.141010, 32.594608, 32.169640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980309, 32.960808, 32.178112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473149, -0.187715, -0.860751,
		-0.784044, -0.355833, 0.508585,
		-0.401753, 0.915503, 0.021186,
		31.859783, 33.235458, 32.184467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468067, 32.570690, 32.116634>,  <32.141010, 32.594608, 32.169640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468067, 32.570690, 32.116634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603344, 32.911263, 31.956291>,  <31.684509, 33.115608, 31.860086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603344, 32.911263, 31.956291>,  <31.468067, 32.570690, 32.116634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603344, 32.911263, 31.956291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373952, -0.269296, -0.887491,
		-0.863589, 0.450042, 0.227322,
		0.338191, 0.851435, -0.400855,
		31.704802, 33.166695, 31.836035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015566, 32.703247, 31.592836>,  <31.468067, 32.570690, 32.116634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015566, 32.703247, 31.592836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296801, 32.965164, 31.481901>,  <31.465542, 33.122314, 31.415340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296801, 32.965164, 31.481901>,  <31.015566, 32.703247, 31.592836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296801, 32.965164, 31.481901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318702, -0.058491, -0.946048,
		-0.635686, 0.753543, 0.167559,
		0.703088, 0.654791, -0.277338,
		31.507727, 33.161602, 31.398701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689571, 33.227959, 31.133081>,  <31.015566, 32.703247, 31.592836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689571, 33.227959, 31.133081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079172, 33.221962, 31.042664>,  <31.312933, 33.218365, 30.988413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079172, 33.221962, 31.042664>,  <30.689571, 33.227959, 31.133081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079172, 33.221962, 31.042664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225078, -0.177291, -0.958075,
		-0.025709, 0.984044, -0.176057,
		0.974001, -0.014996, -0.226045,
		31.371372, 33.217464, 30.974850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789793, 33.733944, 30.601894>,  <30.689571, 33.227959, 31.133081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789793, 33.733944, 30.601894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083702, 33.462688, 30.595749>,  <31.260048, 33.299934, 30.592062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083702, 33.462688, 30.595749>,  <30.789793, 33.733944, 30.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083702, 33.462688, 30.595749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125673, -0.113843, -0.985518,
		0.666569, 0.726063, -0.168873,
		0.734774, -0.678138, -0.015363,
		31.304134, 33.259247, 30.591141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179180, 33.811058, 29.971970>,  <30.789793, 33.733944, 30.601894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179180, 33.811058, 29.971970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318935, 33.444153, 30.048450>,  <31.402788, 33.224010, 30.094339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318935, 33.444153, 30.048450>,  <31.179180, 33.811058, 29.971970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318935, 33.444153, 30.048450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087822, -0.235224, -0.967966,
		0.932854, 0.321403, -0.162740,
		0.349387, -0.917262, 0.191203,
		31.423752, 33.168976, 30.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699741, 33.636189, 29.437565>,  <31.179180, 33.811058, 29.971970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699741, 33.636189, 29.437565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618038, 33.272285, 29.582129>,  <31.569016, 33.053944, 29.668867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618038, 33.272285, 29.582129>,  <31.699741, 33.636189, 29.437565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618038, 33.272285, 29.582129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080494, -0.383551, -0.920005,
		0.975602, -0.158829, 0.151574,
		-0.204260, -0.909759, 0.361409,
		31.556761, 32.999359, 29.690552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212692, 33.281395, 29.238991>,  <31.699741, 33.636189, 29.437565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212692, 33.281395, 29.238991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932840, 33.007999, 29.322287>,  <31.764929, 32.843964, 29.372265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932840, 33.007999, 29.322287>,  <32.212692, 33.281395, 29.238991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932840, 33.007999, 29.322287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061479, -0.347949, -0.935495,
		0.711857, -0.641696, 0.285455,
		-0.699628, -0.683489, 0.208239,
		31.722952, 32.802952, 29.384758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424335, 32.679745, 28.957941>,  <32.212692, 33.281395, 29.238991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424335, 32.679745, 28.957941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027843, 32.629169, 28.973286>,  <31.789948, 32.598824, 28.982492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027843, 32.629169, 28.973286>,  <32.424335, 32.679745, 28.957941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027843, 32.629169, 28.973286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034277, -0.526471, -0.849502,
		0.127604, -0.840739, 0.526189,
		-0.991233, -0.126436, 0.038362,
		31.730474, 32.591240, 28.984795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271778, 31.957445, 28.744345>,  <32.424335, 32.679745, 28.957941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271778, 31.957445, 28.744345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927271, 32.153934, 28.692316>,  <31.720568, 32.271828, 28.661098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927271, 32.153934, 28.692316>,  <32.271778, 31.957445, 28.744345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927271, 32.153934, 28.692316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026579, -0.299167, -0.953831,
		-0.507460, -0.818044, 0.270718,
		-0.861266, 0.491226, -0.130072,
		31.668892, 32.301304, 28.653294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896181, 31.569778, 28.269590>,  <32.271778, 31.957445, 28.744345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896181, 31.569778, 28.269590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691816, 31.913124, 28.250896>,  <31.569197, 32.119129, 28.239681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691816, 31.913124, 28.250896>,  <31.896181, 31.569778, 28.269590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691816, 31.913124, 28.250896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201534, -0.172451, -0.964181,
		-0.835676, -0.483193, 0.261096,
		-0.510911, 0.858362, -0.046734,
		31.538544, 32.170631, 28.236876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424149, 31.388670, 27.863543>,  <31.896181, 31.569778, 28.269590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424149, 31.388670, 27.863543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378967, 31.786009, 27.854544>,  <31.351858, 32.024410, 27.849144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378967, 31.786009, 27.854544>,  <31.424149, 31.388670, 27.863543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378967, 31.786009, 27.854544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016860, -0.024557, -0.999556,
		-0.993457, -0.112525, 0.019522,
		-0.112954, 0.993345, -0.022499,
		31.345081, 32.084011, 27.847794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876909, 31.524450, 27.498016>,  <31.424149, 31.388670, 27.863543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876909, 31.524450, 27.498016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074814, 31.871010, 27.471003>,  <31.193556, 32.078945, 27.454794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074814, 31.871010, 27.471003>,  <30.876909, 31.524450, 27.498016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074814, 31.871010, 27.471003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068789, -0.038425, -0.996891,
		-0.866303, 0.497868, 0.040588,
		0.494761, 0.866401, -0.067536,
		31.223242, 32.130932, 27.450743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454735, 31.945545, 27.075186>,  <30.876909, 31.524450, 27.498016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454735, 31.945545, 27.075186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821129, 32.102539, 27.041893>,  <31.040964, 32.196735, 27.021917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821129, 32.102539, 27.041893>,  <30.454735, 31.945545, 27.075186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821129, 32.102539, 27.041893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169598, 0.190770, -0.966873,
		-0.363607, 0.899756, 0.241308,
		0.915984, 0.392487, -0.083231,
		31.095924, 32.220284, 27.016924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329882, 32.500748, 26.735516>,  <30.454735, 31.945545, 27.075186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329882, 32.500748, 26.735516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717373, 32.407383, 26.701838>,  <30.949867, 32.351364, 26.681631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717373, 32.407383, 26.701838>,  <30.329882, 32.500748, 26.735516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717373, 32.407383, 26.701838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045638, 0.165927, -0.985081,
		0.243900, 0.958117, 0.150085,
		0.968726, -0.233412, -0.084196,
		31.007990, 32.337360, 26.676579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630913, 33.113953, 26.385357>,  <30.329882, 32.500748, 26.735516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630913, 33.113953, 26.385357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899096, 32.820591, 26.340439>,  <31.060005, 32.644573, 26.313488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899096, 32.820591, 26.340439>,  <30.630913, 33.113953, 26.385357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899096, 32.820591, 26.340439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022990, 0.171817, -0.984861,
		0.741592, 0.657725, 0.132057,
		0.670457, -0.733401, -0.112297,
		31.100233, 32.600571, 26.306749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953152, 33.345402, 25.848759>,  <30.630913, 33.113953, 26.385357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953152, 33.345402, 25.848759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052376, 32.957909, 25.850653>,  <31.111910, 32.725414, 25.851789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052376, 32.957909, 25.850653>,  <30.953152, 33.345402, 25.848759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052376, 32.957909, 25.850653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159418, -0.045642, -0.986156,
		0.955538, 0.243870, -0.165756,
		0.248059, -0.968733, 0.004735,
		31.126793, 32.667290, 25.852074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521868, 33.298073, 25.402489>,  <30.953152, 33.345402, 25.848759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521868, 33.298073, 25.402489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386282, 32.921925, 25.413868>,  <31.304932, 32.696236, 25.420696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386282, 32.921925, 25.413868>,  <31.521868, 33.298073, 25.402489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386282, 32.921925, 25.413868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044346, -0.014236, -0.998915,
		0.939754, -0.339856, -0.036876,
		-0.338962, -0.940370, 0.028450,
		31.284594, 32.639812, 25.422403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850002, 33.209587, 24.748688>,  <31.521868, 33.298073, 25.402489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850002, 33.209587, 24.748688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863827, 33.571728, 24.579382>,  <31.872122, 33.789013, 24.477798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863827, 33.571728, 24.579382>,  <31.850002, 33.209587, 24.748688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863827, 33.571728, 24.579382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487984, 0.354310, 0.797707,
		0.872168, -0.234117, -0.429549,
		0.034563, 0.905347, -0.423263,
		31.874195, 33.843330, 24.452402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532681, 33.367897, 24.795403>,  <31.850002, 33.209587, 24.748688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532681, 33.367897, 24.795403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354256, 33.720394, 24.732861>,  <32.247200, 33.931892, 24.695335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354256, 33.720394, 24.732861>,  <32.532681, 33.367897, 24.795403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354256, 33.720394, 24.732861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496017, 0.388826, 0.776390,
		0.744980, 0.268763, -0.610550,
		-0.446062, 0.881238, -0.156357,
		32.220436, 33.984764, 24.685953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047962, 33.936443, 24.782925>,  <32.532681, 33.367897, 24.795403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047962, 33.936443, 24.782925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722103, 34.149830, 24.873928>,  <32.526588, 34.277863, 24.928530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722103, 34.149830, 24.873928>,  <33.047962, 33.936443, 24.782925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722103, 34.149830, 24.873928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452706, 0.339739, 0.824400,
		0.362498, 0.774590, -0.518272,
		-0.814649, 0.533468, 0.227507,
		32.477707, 34.309872, 24.942181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246387, 34.648266, 24.992102>,  <33.047962, 33.936443, 24.782925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246387, 34.648266, 24.992102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878399, 34.606216, 25.143150>,  <32.657604, 34.580986, 25.233780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878399, 34.606216, 25.143150>,  <33.246387, 34.648266, 24.992102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878399, 34.606216, 25.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287920, 0.472499, 0.832975,
		-0.265994, 0.875039, -0.404418,
		-0.919972, -0.105126, 0.377623,
		32.602406, 34.574680, 25.256437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162262, 35.236176, 25.382938>,  <33.246387, 34.648266, 24.992102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162262, 35.236176, 25.382938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898300, 34.962475, 25.507082>,  <32.739922, 34.798256, 25.581568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898300, 34.962475, 25.507082>,  <33.162262, 35.236176, 25.382938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898300, 34.962475, 25.507082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183439, 0.253844, 0.949691,
		-0.728610, 0.683640, -0.041995,
		-0.659907, -0.684251, 0.310360,
		32.700329, 34.757198, 25.600189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751514, 35.571186, 25.877617>,  <33.162262, 35.236176, 25.382938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751514, 35.571186, 25.877617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696850, 35.184078, 25.962225>,  <32.664051, 34.951813, 26.012989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696850, 35.184078, 25.962225>,  <32.751514, 35.571186, 25.877617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696850, 35.184078, 25.962225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201486, 0.181904, 0.962452,
		-0.969911, 0.174145, 0.170134,
		-0.136658, -0.967773, 0.211519,
		32.655853, 34.893745, 26.025681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348557, 35.621304, 26.426031>,  <32.751514, 35.571186, 25.877617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348557, 35.621304, 26.426031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457169, 35.236332, 26.424885>,  <32.522335, 35.005348, 26.424196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457169, 35.236332, 26.424885>,  <32.348557, 35.621304, 26.426031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457169, 35.236332, 26.424885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030389, -0.011551, 0.999471,
		-0.961950, -0.271299, -0.032384,
		0.271530, -0.962426, -0.002867,
		32.538628, 34.947605, 26.424025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883934, 35.297832, 26.920792>,  <32.348557, 35.621304, 26.426031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883934, 35.297832, 26.920792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193157, 35.044151, 26.915606>,  <32.378689, 34.891941, 26.912495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193157, 35.044151, 26.915606>,  <31.883934, 35.297832, 26.920792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193157, 35.044151, 26.915606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008212, -0.010432, 0.999912,
		-0.634285, -0.773094, -0.002857,
		0.773055, -0.634206, -0.012966,
		32.425076, 34.853889, 26.911716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749775, 34.749325, 27.416874>,  <31.883934, 35.297832, 26.920792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749775, 34.749325, 27.416874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146114, 34.772339, 27.368032>,  <32.383919, 34.786148, 27.338728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146114, 34.772339, 27.368032>,  <31.749775, 34.749325, 27.416874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146114, 34.772339, 27.368032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127076, -0.092608, 0.987560,
		0.045510, -0.994039, -0.099072,
		0.990848, 0.057534, -0.122104,
		32.443367, 34.789600, 27.331402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999281, 34.246227, 27.773136>,  <31.749775, 34.749325, 27.416874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999281, 34.246227, 27.773136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312431, 34.493114, 27.741770>,  <32.500320, 34.641247, 27.722950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312431, 34.493114, 27.741770>,  <31.999281, 34.246227, 27.773136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312431, 34.493114, 27.741770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200325, -0.130735, 0.970968,
		0.589048, -0.775854, -0.225993,
		0.782875, 0.617219, -0.078414,
		32.547295, 34.678280, 27.718246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598362, 33.926853, 28.064732>,  <31.999281, 34.246227, 27.773136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598362, 33.926853, 28.064732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686573, 34.316708, 28.079971>,  <32.739502, 34.550621, 28.089115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686573, 34.316708, 28.079971>,  <32.598362, 33.926853, 28.064732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686573, 34.316708, 28.079971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251485, -0.094558, 0.963231,
		0.942402, -0.202840, -0.265959,
		0.220530, 0.974636, 0.038100,
		32.752731, 34.609097, 28.091402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186970, 33.920937, 28.553785>,  <32.598362, 33.926853, 28.064732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186970, 33.920937, 28.553785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080791, 34.305088, 28.519829>,  <33.017086, 34.535580, 28.499454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080791, 34.305088, 28.519829>,  <33.186970, 33.920937, 28.553785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080791, 34.305088, 28.519829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363704, 0.181289, 0.913703,
		0.892894, 0.211662, -0.397417,
		-0.265444, 0.960382, -0.084890,
		33.001160, 34.593204, 28.494362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780624, 34.414417, 28.682579>,  <33.186970, 33.920937, 28.553785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780624, 34.414417, 28.682579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448746, 34.612625, 28.785391>,  <33.249619, 34.731548, 28.847078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448746, 34.612625, 28.785391>,  <33.780624, 34.414417, 28.682579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448746, 34.612625, 28.785391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410802, 0.230261, 0.882169,
		0.377948, 0.837521, -0.394607,
		-0.829697, 0.495519, 0.257028,
		33.199837, 34.761280, 28.862499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991489, 35.050751, 29.017479>,  <33.780624, 34.414417, 28.682579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991489, 35.050751, 29.017479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612141, 34.989922, 29.128805>,  <33.384529, 34.953423, 29.195601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612141, 34.989922, 29.128805>,  <33.991489, 35.050751, 29.017479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612141, 34.989922, 29.128805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257451, 0.143345, 0.955600,
		-0.185219, 0.977919, -0.096793,
		-0.948374, -0.152075, 0.278317,
		33.327629, 34.944298, 29.212299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909729, 35.613522, 29.429161>,  <33.991489, 35.050751, 29.017479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909729, 35.613522, 29.429161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617146, 35.353432, 29.511303>,  <33.441597, 35.197376, 29.560589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617146, 35.353432, 29.511303>,  <33.909729, 35.613522, 29.429161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617146, 35.353432, 29.511303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005652, 0.295368, 0.955367,
		-0.681863, 0.699971, -0.212374,
		-0.731458, -0.650229, 0.205357,
		33.397709, 35.158363, 29.572910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365612, 35.988678, 29.710625>,  <33.909729, 35.613522, 29.429161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365612, 35.988678, 29.710625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312550, 35.614513, 29.841713>,  <33.280712, 35.390015, 29.920366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312550, 35.614513, 29.841713>,  <33.365612, 35.988678, 29.710625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312550, 35.614513, 29.841713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052323, 0.336791, 0.940124,
		-0.989780, 0.107569, -0.093622,
		-0.132659, -0.935415, 0.327720,
		33.272751, 35.333889, 29.940029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760529, 35.874573, 30.086744>,  <33.365612, 35.988678, 29.710625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760529, 35.874573, 30.086744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984760, 35.571098, 30.219501>,  <33.119297, 35.389015, 30.299156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984760, 35.571098, 30.219501>,  <32.760529, 35.874573, 30.086744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984760, 35.571098, 30.219501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141862, 0.306879, 0.941117,
		-0.815862, -0.574649, 0.064400,
		0.560575, -0.758686, 0.331892,
		33.152931, 35.343494, 30.319069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446922, 35.745296, 30.700100>,  <32.760529, 35.874573, 30.086744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446922, 35.745296, 30.700100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789017, 35.540062, 30.729254>,  <32.994274, 35.416920, 30.746746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789017, 35.540062, 30.729254>,  <32.446922, 35.745296, 30.700100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789017, 35.540062, 30.729254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050958, 0.223214, 0.973437,
		-0.515729, -0.828803, 0.217046,
		0.855235, -0.513090, 0.072883,
		33.045586, 35.386135, 30.751120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399303, 35.356789, 31.357752>,  <32.446922, 35.745296, 30.700100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399303, 35.356789, 31.357752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792572, 35.378407, 31.287943>,  <33.028534, 35.391376, 31.246058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792572, 35.378407, 31.287943>,  <32.399303, 35.356789, 31.357752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792572, 35.378407, 31.287943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161047, 0.194683, 0.967555,
		0.086268, -0.979376, 0.182702,
		0.983169, 0.054046, -0.174520,
		33.087524, 35.394619, 31.235586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624760, 35.064369, 31.914463>,  <32.399303, 35.356789, 31.357752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624760, 35.064369, 31.914463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932331, 35.272186, 31.765429>,  <33.116875, 35.396877, 31.676008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932331, 35.272186, 31.765429>,  <32.624760, 35.064369, 31.914463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932331, 35.272186, 31.765429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328778, 0.178471, 0.927391,
		0.548319, -0.835595, -0.033584,
		0.768929, 0.519548, -0.372584,
		33.163010, 35.428051, 31.653654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185791, 34.816154, 32.185078>,  <32.624760, 35.064369, 31.914463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185791, 34.816154, 32.185078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346363, 35.162567, 32.065857>,  <33.442707, 35.370415, 31.994324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346363, 35.162567, 32.065857>,  <33.185791, 34.816154, 32.185078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346363, 35.162567, 32.065857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383925, 0.136344, 0.913243,
		0.831538, -0.481033, -0.277760,
		0.401429, 0.866035, -0.298055,
		33.466793, 35.422379, 31.976440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916611, 34.803555, 32.422691>,  <33.185791, 34.816154, 32.185078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916611, 34.803555, 32.422691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788006, 35.178600, 32.369770>,  <33.710842, 35.403629, 32.338017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788006, 35.178600, 32.369770>,  <33.916611, 34.803555, 32.422691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788006, 35.178600, 32.369770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258853, 0.221429, 0.940194,
		0.910837, 0.268039, -0.313897,
		-0.321514, 0.937616, -0.132303,
		33.691551, 35.459885, 32.330078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444798, 35.286495, 32.666111>,  <33.916611, 34.803555, 32.422691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444798, 35.286495, 32.666111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138222, 35.543404, 32.663074>,  <33.954277, 35.697548, 32.661251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138222, 35.543404, 32.663074>,  <34.444798, 35.286495, 32.666111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138222, 35.543404, 32.663074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279082, 0.343633, 0.896677,
		0.578519, 0.685130, -0.442620,
		-0.766439, 0.642272, -0.007591,
		33.908291, 35.736084, 32.660797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759480, 35.902817, 32.883614>,  <34.444798, 35.286495, 32.666111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759480, 35.902817, 32.883614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371784, 35.953510, 32.968002>,  <34.139168, 35.983929, 33.018635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371784, 35.953510, 32.968002>,  <34.759480, 35.902817, 32.883614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371784, 35.953510, 32.968002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245781, 0.542975, 0.802975,
		-0.012785, 0.830130, -0.557424,
		-0.969241, 0.126738, 0.210972,
		34.081013, 35.991531, 33.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700092, 36.596378, 33.063728>,  <34.759480, 35.902817, 32.883614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700092, 36.596378, 33.063728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355972, 36.437901, 33.192055>,  <34.149502, 36.342815, 33.269051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355972, 36.437901, 33.192055>,  <34.700092, 36.596378, 33.063728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355972, 36.437901, 33.192055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093348, 0.496232, 0.863157,
		-0.501176, 0.772517, -0.389922,
		-0.860296, -0.396195, 0.320812,
		34.097885, 36.319042, 33.288300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216217, 37.127384, 33.466888>,  <34.700092, 36.596378, 33.063728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216217, 37.127384, 33.466888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065460, 36.778957, 33.592873>,  <33.975006, 36.569901, 33.668465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065460, 36.778957, 33.592873>,  <34.216217, 37.127384, 33.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065460, 36.778957, 33.592873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081790, 0.307413, 0.948054,
		-0.922641, 0.383071, -0.044616,
		-0.376888, -0.871065, 0.314964,
		33.952393, 36.517639, 33.687363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683460, 37.339600, 33.958817>,  <34.216217, 37.127384, 33.466888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683460, 37.339600, 33.958817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822067, 36.967831, 34.009583>,  <33.905231, 36.744770, 34.040043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822067, 36.967831, 34.009583>,  <33.683460, 37.339600, 33.958817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822067, 36.967831, 34.009583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227543, 0.214539, 0.949841,
		-0.910027, -0.300259, 0.285825,
		0.346519, -0.929418, 0.126914,
		33.926022, 36.689007, 34.047657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314671, 37.224453, 34.468830>,  <33.683460, 37.339600, 33.958817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314671, 37.224453, 34.468830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601665, 36.946110, 34.481426>,  <33.773865, 36.779106, 34.488983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601665, 36.946110, 34.481426>,  <33.314671, 37.224453, 34.468830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601665, 36.946110, 34.481426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014716, 0.030053, 0.999440,
		-0.696412, -0.717553, 0.011323,
		0.717491, -0.695856, 0.031489,
		33.816914, 36.737354, 34.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129787, 36.711788, 34.947422>,  <33.314671, 37.224453, 34.468830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129787, 36.711788, 34.947422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523495, 36.648460, 34.916023>,  <33.759720, 36.610466, 34.897186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523495, 36.648460, 34.916023>,  <33.129787, 36.711788, 34.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523495, 36.648460, 34.916023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081039, 0.009671, 0.996664,
		-0.157029, -0.987341, 0.022349,
		0.984263, -0.158316, -0.078494,
		33.818775, 36.600967, 34.892475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313335, 36.286106, 35.531116>,  <33.129787, 36.711788, 34.947422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313335, 36.286106, 35.531116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658703, 36.459999, 35.428730>,  <33.865925, 36.564335, 35.367298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658703, 36.459999, 35.428730>,  <33.313335, 36.286106, 35.531116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658703, 36.459999, 35.428730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123766, 0.309343, 0.942862,
		0.489075, -0.845763, 0.213287,
		0.863416, 0.434732, -0.255968,
		33.917728, 36.590420, 35.351940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614033, 36.090897, 35.997520>,  <33.313335, 36.286106, 35.531116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614033, 36.090897, 35.997520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838074, 36.391926, 35.859001>,  <33.972496, 36.572544, 35.775890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838074, 36.391926, 35.859001>,  <33.614033, 36.090897, 35.997520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838074, 36.391926, 35.859001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173872, 0.301923, 0.937343,
		0.809974, -0.585217, 0.038255,
		0.560099, 0.752571, -0.346302,
		34.006104, 36.617699, 35.755112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296215, 35.964226, 36.252872>,  <33.614033, 36.090897, 35.997520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296215, 35.964226, 36.252872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293667, 36.352905, 36.158424>,  <34.292137, 36.586113, 36.101753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293667, 36.352905, 36.158424>,  <34.296215, 35.964226, 36.252872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293667, 36.352905, 36.158424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409510, 0.217954, 0.885888,
		0.912284, -0.091055, -0.399309,
		-0.006366, 0.971702, -0.236124,
		34.291756, 36.644417, 36.087585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935898, 36.194321, 36.418011>,  <34.296215, 35.964226, 36.252872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935898, 36.194321, 36.418011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731632, 36.538231, 36.417358>,  <34.609074, 36.744579, 36.416965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731632, 36.538231, 36.417358>,  <34.935898, 36.194321, 36.418011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731632, 36.538231, 36.417358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515395, 0.307635, 0.799830,
		0.688180, 0.407601, -0.600224,
		-0.510662, 0.859780, -0.001633,
		34.578434, 36.796165, 36.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453030, 36.770050, 36.551033>,  <34.935898, 36.194321, 36.418011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453030, 36.770050, 36.551033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101284, 36.931416, 36.652203>,  <34.890236, 37.028236, 36.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101284, 36.931416, 36.652203>,  <35.453030, 36.770050, 36.551033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101284, 36.931416, 36.652203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425303, 0.426642, 0.798182,
		0.214090, 0.809464, -0.546748,
		-0.879365, 0.403417, 0.252928,
		34.837475, 37.052441, 36.728081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587959, 37.381615, 36.837601>,  <35.453030, 36.770050, 36.551033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587959, 37.381615, 36.837601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213844, 37.307476, 36.958195>,  <34.989376, 37.262993, 37.030552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213844, 37.307476, 36.958195>,  <35.587959, 37.381615, 36.837601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213844, 37.307476, 36.958195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205619, 0.408741, 0.889186,
		-0.288038, 0.893631, -0.344177,
		-0.935283, -0.185349, 0.301480,
		34.933258, 37.251873, 37.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351830, 37.951088, 37.149929>,  <35.587959, 37.381615, 36.837601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351830, 37.951088, 37.149929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138847, 37.658489, 37.320297>,  <35.011059, 37.482929, 37.422516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138847, 37.658489, 37.320297>,  <35.351830, 37.951088, 37.149929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138847, 37.658489, 37.320297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279307, 0.323158, 0.904188,
		-0.799047, 0.600403, 0.032244,
		-0.532457, -0.731495, 0.425916,
		34.979111, 37.439041, 37.448071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086826, 38.256050, 37.740685>,  <35.351830, 37.951088, 37.149929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086826, 38.256050, 37.740685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059387, 37.866142, 37.825642>,  <35.042923, 37.632198, 37.876617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059387, 37.866142, 37.825642>,  <35.086826, 38.256050, 37.740685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059387, 37.866142, 37.825642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286243, 0.184713, 0.940184,
		-0.955698, 0.125295, 0.266350,
		-0.068602, -0.974773, 0.212395,
		35.038807, 37.573711, 37.889359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839539, 38.237022, 38.384270>,  <35.086826, 38.256050, 37.740685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839539, 38.237022, 38.384270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967747, 37.859734, 38.349407>,  <35.044674, 37.633362, 38.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967747, 37.859734, 38.349407>,  <34.839539, 38.237022, 38.384270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967747, 37.859734, 38.349407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362887, 0.037280, 0.931087,
		-0.874973, -0.330065, 0.354232,
		0.320525, -0.943222, -0.087158,
		35.063904, 37.576767, 38.323261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657871, 37.866009, 39.024982>,  <34.839539, 38.237022, 38.384270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657871, 37.866009, 39.024982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936981, 37.607040, 38.902367>,  <35.104446, 37.451660, 38.828796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936981, 37.607040, 38.902367>,  <34.657871, 37.866009, 39.024982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936981, 37.607040, 38.902367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545576, 0.203025, 0.813098,
		-0.464181, -0.734594, 0.494881,
		0.697770, -0.647419, -0.306537,
		35.146313, 37.412815, 38.810406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909309, 37.516632, 39.658634>,  <34.657871, 37.866009, 39.024982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909309, 37.516632, 39.658634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191921, 37.458923, 39.381504>,  <35.361488, 37.424297, 39.215225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191921, 37.458923, 39.381504>,  <34.909309, 37.516632, 39.658634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191921, 37.458923, 39.381504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706967, 0.188009, 0.681800,
		0.031894, -0.971514, 0.234828,
		0.706527, -0.144270, -0.692824,
		35.403881, 37.415642, 39.173656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360134, 36.954945, 39.912064>,  <34.909309, 37.516632, 39.658634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360134, 36.954945, 39.912064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543610, 37.246563, 39.708851>,  <35.653694, 37.421535, 39.586926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543610, 37.246563, 39.708851>,  <35.360134, 36.954945, 39.912064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543610, 37.246563, 39.708851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520690, 0.242768, 0.818502,
		0.720062, -0.639961, -0.268255,
		0.458686, 0.729050, -0.508029,
		35.681217, 37.465279, 39.556442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936382, 36.925320, 40.208282>,  <35.360134, 36.954945, 39.912064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936382, 36.925320, 40.208282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971237, 37.270508, 40.009209>,  <35.992149, 37.477619, 39.889767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971237, 37.270508, 40.009209>,  <35.936382, 36.925320, 40.208282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971237, 37.270508, 40.009209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624002, 0.342148, 0.702535,
		0.776549, -0.371772, -0.508682,
		0.087138, 0.862971, -0.497682,
		35.997379, 37.529400, 39.859905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632038, 37.295971, 40.409512>,  <35.936382, 36.925320, 40.208282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632038, 37.295971, 40.409512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385757, 37.570488, 40.254639>,  <36.237988, 37.735199, 40.161713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385757, 37.570488, 40.254639>,  <36.632038, 37.295971, 40.409512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385757, 37.570488, 40.254639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348666, 0.677926, 0.647185,
		0.706641, 0.263475, -0.656688,
		-0.615703, 0.686293, -0.387185,
		36.201046, 37.776375, 40.138485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394005, 37.891956, 40.681774>,  <36.632038, 37.295971, 40.409512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394005, 37.891956, 40.681774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624657, 38.183247, 40.533619>,  <36.763046, 38.358021, 40.444725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624657, 38.183247, 40.533619>,  <36.394005, 37.891956, 40.681774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624657, 38.183247, 40.533619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480449, -0.064426, -0.874653,
		-0.660810, 0.682299, 0.312727,
		0.576627, 0.728229, -0.370383,
		36.797646, 38.401714, 40.422504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882282, 38.348972, 40.510445>,  <36.394005, 37.891956, 40.681774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882282, 38.348972, 40.510445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205158, 38.290314, 40.281727>,  <36.398884, 38.255119, 40.144497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205158, 38.290314, 40.281727>,  <35.882282, 38.348972, 40.510445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205158, 38.290314, 40.281727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587959, -0.285859, -0.756696,
		-0.052488, 0.946985, -0.316961,
		0.807186, -0.146642, -0.571792,
		36.447315, 38.246323, 40.110188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852623, 38.755749, 39.887684>,  <35.882282, 38.348972, 40.510445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852623, 38.755749, 39.887684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063057, 38.416973, 39.856869>,  <36.189316, 38.213707, 39.838379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063057, 38.416973, 39.856869>,  <35.852623, 38.755749, 39.887684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063057, 38.416973, 39.856869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675461, -0.361087, -0.642937,
		0.516711, 0.390271, -0.762035,
		0.526081, -0.846938, -0.077035,
		36.220882, 38.162891, 39.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154678, 38.662224, 39.163616>,  <35.852623, 38.755749, 39.887684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154678, 38.662224, 39.163616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099567, 38.318069, 39.359886>,  <36.066502, 38.111576, 39.477650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099567, 38.318069, 39.359886>,  <36.154678, 38.662224, 39.163616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099567, 38.318069, 39.359886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579123, -0.331914, -0.744614,
		0.803514, -0.386751, -0.452537,
		-0.137776, -0.860382, 0.490674,
		36.058235, 38.059956, 39.507088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568626, 39.286797, 39.517452>,  <36.154678, 38.662224, 39.163616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568626, 39.286797, 39.517452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947048, 39.404320, 39.572086>,  <37.174103, 39.474834, 39.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947048, 39.404320, 39.572086>,  <36.568626, 39.286797, 39.517452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947048, 39.404320, 39.572086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223484, -0.896951, 0.381488,
		0.234598, -0.330383, -0.914227,
		0.946054, 0.293812, 0.136587,
		37.230865, 39.492462, 39.613064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111843, 38.813023, 39.223293>,  <36.568626, 39.286797, 39.517452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111843, 38.813023, 39.223293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231133, 39.004650, 39.553520>,  <37.302704, 39.119629, 39.751656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231133, 39.004650, 39.553520>,  <37.111843, 38.813023, 39.223293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231133, 39.004650, 39.553520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176767, -0.877678, 0.445460,
		0.937986, 0.013087, -0.346425,
		0.298220, 0.479072, 0.825563,
		37.320599, 39.148373, 39.801189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789062, 38.494797, 39.400127>,  <37.111843, 38.813023, 39.223293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789062, 38.494797, 39.400127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587505, 38.658295, 39.704502>,  <37.466572, 38.756393, 39.887127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587505, 38.658295, 39.704502>,  <37.789062, 38.494797, 39.400127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587505, 38.658295, 39.704502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098410, -0.848048, 0.520702,
		0.858141, 0.337262, 0.387102,
		-0.503894, 0.408741, 0.760935,
		37.436337, 38.780918, 39.932781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053780, 38.456310, 40.216709>,  <37.789062, 38.494797, 39.400127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053780, 38.456310, 40.216709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663174, 38.441147, 40.301548>,  <37.428810, 38.432049, 40.352451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663174, 38.441147, 40.301548>,  <38.053780, 38.456310, 40.216709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663174, 38.441147, 40.301548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208945, -0.406846, 0.889280,
		0.052578, 0.912710, 0.405211,
		-0.976513, -0.037910, 0.212097,
		37.370220, 38.429775, 40.365177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090263, 38.536427, 40.965897>,  <38.053780, 38.456310, 40.216709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090263, 38.536427, 40.965897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765614, 38.336636, 40.844711>,  <37.570824, 38.216759, 40.771999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765614, 38.336636, 40.844711>,  <38.090263, 38.536427, 40.965897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765614, 38.336636, 40.844711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068350, -0.433851, 0.898388,
		-0.580167, 0.749861, 0.317985,
		-0.811624, -0.499481, -0.302960,
		37.522125, 38.186790, 40.753822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610237, 38.515076, 41.493122>,  <38.090263, 38.536427, 40.965897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610237, 38.515076, 41.493122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526295, 38.208611, 41.250156>,  <37.475929, 38.024731, 41.104378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526295, 38.208611, 41.250156>,  <37.610237, 38.515076, 41.493122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526295, 38.208611, 41.250156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046004, -0.612826, 0.788877,
		-0.976649, 0.193494, 0.093359,
		-0.209856, -0.766162, -0.607418,
		37.463337, 37.978764, 41.067932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106335, 38.130753, 41.895988>,  <37.610237, 38.515076, 41.493122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106335, 38.130753, 41.895988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240845, 37.888100, 41.607845>,  <37.321552, 37.742508, 41.434959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240845, 37.888100, 41.607845>,  <37.106335, 38.130753, 41.895988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240845, 37.888100, 41.607845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126367, -0.728923, 0.672832,
		-0.933246, -0.317289, -0.168464,
		0.336279, -0.606629, -0.720359,
		37.341728, 37.706112, 41.391739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843922, 37.485706, 41.997036>,  <37.106335, 38.130753, 41.895988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843922, 37.485706, 41.997036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147316, 37.396210, 41.752205>,  <37.329353, 37.342510, 41.605305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147316, 37.396210, 41.752205>,  <36.843922, 37.485706, 41.997036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147316, 37.396210, 41.752205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180442, -0.830392, 0.527153,
		-0.626212, -0.510282, -0.589466,
		0.758485, -0.223745, -0.612078,
		37.374863, 37.329086, 41.568581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853283, 36.859062, 42.010441>,  <36.843922, 37.485706, 41.997036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853283, 36.859062, 42.010441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224777, 36.959202, 41.901058>,  <37.447674, 37.019283, 41.835430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224777, 36.959202, 41.901058>,  <36.853283, 36.859062, 42.010441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224777, 36.959202, 41.901058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352223, -0.826012, 0.440049,
		-0.115710, -0.505005, -0.855325,
		0.928736, 0.250347, -0.273453,
		37.503399, 37.034306, 41.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822010, 36.329723, 41.548935>,  <36.853283, 36.859062, 42.010441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822010, 36.329723, 41.548935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179577, 36.475651, 41.653099>,  <37.394119, 36.563210, 41.715595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179577, 36.475651, 41.653099>,  <36.822010, 36.329723, 41.548935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179577, 36.475651, 41.653099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284142, -0.910555, 0.300256,
		0.346655, -0.194413, -0.917624,
		0.893920, 0.364821, 0.260408,
		37.447754, 36.585098, 41.731220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907711, 35.694424, 41.714436>,  <36.822010, 36.329723, 41.548935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907711, 35.694424, 41.714436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233242, 35.905632, 41.811504>,  <37.428558, 36.032356, 41.869743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233242, 35.905632, 41.811504>,  <36.907711, 35.694424, 41.714436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233242, 35.905632, 41.811504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518713, -0.848319, 0.106264,
		0.261970, 0.039396, -0.964272,
		0.813823, 0.528018, 0.242669,
		37.477390, 36.064037, 41.884304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441265, 35.416512, 41.354012>,  <36.907711, 35.694424, 41.714436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441265, 35.416512, 41.354012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609966, 35.594246, 41.670162>,  <37.711185, 35.700886, 41.859852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609966, 35.594246, 41.670162>,  <37.441265, 35.416512, 41.354012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609966, 35.594246, 41.670162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604451, -0.787523, 0.120196,
		0.675845, 0.427049, -0.600719,
		0.421750, 0.444339, 0.790373,
		37.736492, 35.727547, 41.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545193, 34.821686, 41.872349>,  <37.441265, 35.416512, 41.354012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545193, 34.821686, 41.872349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400192, 35.100735, 42.119545>,  <37.313190, 35.268166, 42.267860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400192, 35.100735, 42.119545>,  <37.545193, 34.821686, 41.872349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400192, 35.100735, 42.119545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425826, -0.713809, 0.556012,
		0.829014, -0.061600, 0.555825,
		-0.362502, 0.697626, 0.617989,
		37.291443, 35.310024, 42.304943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571808, 34.087269, 41.490051>,  <37.545193, 34.821686, 41.872349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571808, 34.087269, 41.490051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921581, 33.913033, 41.575489>,  <38.131447, 33.808491, 41.626751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921581, 33.913033, 41.575489>,  <37.571808, 34.087269, 41.490051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921581, 33.913033, 41.575489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169857, 0.137510, 0.975828,
		-0.454431, -0.889580, 0.046256,
		0.874438, -0.435589, 0.213591,
		38.183914, 33.782356, 41.639565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526905, 33.540745, 41.927914>,  <37.571808, 34.087269, 41.490051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526905, 33.540745, 41.927914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904083, 33.666588, 41.971497>,  <38.130390, 33.742092, 41.997646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904083, 33.666588, 41.971497>,  <37.526905, 33.540745, 41.927914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904083, 33.666588, 41.971497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116074, 0.003921, 0.993233,
		0.312053, -0.949213, 0.040215,
		0.942948, 0.314609, 0.108955,
		38.186966, 33.760971, 42.004185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707508, 33.201080, 42.471992>,  <37.526905, 33.540745, 41.927914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707508, 33.201080, 42.471992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980064, 33.491756, 42.437061>,  <38.143600, 33.666161, 42.416103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980064, 33.491756, 42.437061>,  <37.707508, 33.201080, 42.471992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980064, 33.491756, 42.437061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032494, 0.089161, 0.995487,
		0.731196, -0.681155, 0.037140,
		0.681392, 0.726690, -0.087328,
		38.184483, 33.709763, 42.410862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956379, 33.241196, 43.017452>,  <37.707508, 33.201080, 42.471992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956379, 33.241196, 43.017452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110313, 33.595474, 42.913578>,  <38.202675, 33.808041, 42.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110313, 33.595474, 42.913578>,  <37.956379, 33.241196, 43.017452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110313, 33.595474, 42.913578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047921, 0.300144, 0.952689,
		0.921738, -0.354189, 0.157951,
		0.384840, 0.885699, -0.259681,
		38.225765, 33.861183, 42.835674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648972, 33.418873, 43.319889>,  <37.956379, 33.241196, 43.017452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648972, 33.418873, 43.319889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497208, 33.781376, 43.245323>,  <38.406151, 33.998878, 43.200584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497208, 33.781376, 43.245323>,  <38.648972, 33.418873, 43.319889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497208, 33.781376, 43.245323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095024, 0.238577, 0.966463,
		0.920338, 0.348968, -0.176634,
		-0.379406, 0.906257, -0.186411,
		38.383385, 34.053253, 43.189400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827641, 33.505108, 43.953220>,  <38.648972, 33.418873, 43.319889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827641, 33.505108, 43.953220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039391, 33.762047, 44.174908>,  <39.166443, 33.916210, 44.307919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039391, 33.762047, 44.174908>,  <38.827641, 33.505108, 43.953220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039391, 33.762047, 44.174908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157102, -0.716180, 0.680004,
		0.833713, -0.272911, -0.480044,
		0.529378, 0.642344, 0.554214,
		39.198204, 33.954750, 44.341171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566963, 33.332897, 44.218475>,  <38.827641, 33.505108, 43.953220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566963, 33.332897, 44.218475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380741, 33.551479, 44.496941>,  <39.269009, 33.682629, 44.664021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380741, 33.551479, 44.496941>,  <39.566963, 33.332897, 44.218475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380741, 33.551479, 44.496941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119330, -0.740669, 0.661189,
		0.876938, 0.390892, 0.279612,
		-0.465553, 0.546455, 0.696166,
		39.241074, 33.715416, 44.705791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795101, 32.607422, 44.534790>,  <39.566963, 33.332897, 44.218475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795101, 32.607422, 44.534790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523434, 32.606312, 44.241199>,  <39.360432, 32.605644, 44.065044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523434, 32.606312, 44.241199>,  <39.795101, 32.607422, 44.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523434, 32.606312, 44.241199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668225, -0.416037, -0.616757,
		-0.303648, -0.909344, 0.284415,
		-0.679171, -0.002776, -0.733975,
		39.319683, 32.605480, 44.021008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721737, 31.928112, 44.351635>,  <39.795101, 32.607422, 44.534790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721737, 31.928112, 44.351635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643627, 32.166779, 44.040287>,  <39.596764, 32.309978, 43.853477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643627, 32.166779, 44.040287>,  <39.721737, 31.928112, 44.351635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643627, 32.166779, 44.040287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779164, -0.387616, -0.492602,
		-0.595628, -0.702669, -0.389210,
		-0.195272, 0.596666, -0.778369,
		39.585045, 32.345779, 43.806778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734337, 31.644779, 43.714874>,  <39.721737, 31.928112, 44.351635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734337, 31.644779, 43.714874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788769, 32.027065, 43.610500>,  <39.821430, 32.256435, 43.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788769, 32.027065, 43.610500>,  <39.734337, 31.644779, 43.714874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788769, 32.027065, 43.610500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877562, -0.238515, -0.415927,
		-0.459746, -0.172388, -0.871158,
		0.136084, 0.955716, -0.260937,
		39.829594, 32.313782, 43.532219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723854, 31.711130, 42.953613>,  <39.734337, 31.644779, 43.714874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723854, 31.711130, 42.953613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972519, 31.945948, 43.161041>,  <40.121719, 32.086838, 43.285500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972519, 31.945948, 43.161041>,  <39.723854, 31.711130, 42.953613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972519, 31.945948, 43.161041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774529, -0.361984, -0.518722,
		-0.116800, 0.724117, -0.679715,
		0.621662, 0.587046, 0.518569,
		40.159016, 32.122063, 43.316612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175930, 32.080376, 42.468048>,  <39.723854, 31.711130, 42.953613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175930, 32.080376, 42.468048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379723, 32.079014, 42.812237>,  <40.501999, 32.078197, 43.018749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379723, 32.079014, 42.812237>,  <40.175930, 32.080376, 42.468048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379723, 32.079014, 42.812237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772656, -0.438312, -0.459222,
		0.378721, 0.898817, -0.220679,
		0.509483, -0.003409, 0.860474,
		40.532566, 32.077991, 43.070377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792542, 32.369740, 42.396725>,  <40.175930, 32.080376, 42.468048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792542, 32.369740, 42.396725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832924, 32.096485, 42.686035>,  <40.857155, 31.932531, 42.859623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832924, 32.096485, 42.686035>,  <40.792542, 32.369740, 42.396725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832924, 32.096485, 42.686035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652801, -0.503119, -0.566323,
		0.750771, 0.529331, 0.395160,
		0.100960, -0.683140, 0.723275,
		40.863213, 31.891542, 42.903019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524750, 32.379253, 42.554253>,  <40.792542, 32.369740, 42.396725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524750, 32.379253, 42.554253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311367, 32.042988, 42.591568>,  <41.183338, 31.841228, 42.613956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311367, 32.042988, 42.591568>,  <41.524750, 32.379253, 42.554253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311367, 32.042988, 42.591568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590527, -0.449134, -0.670490,
		0.605558, -0.302587, 0.736030,
		-0.533457, -0.840667, 0.093291,
		41.151329, 31.790789, 42.619556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942665, 31.744501, 42.797447>,  <41.524750, 32.379253, 42.554253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942665, 31.744501, 42.797447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629005, 31.681049, 42.557468>,  <41.440807, 31.642979, 42.413479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629005, 31.681049, 42.557468>,  <41.942665, 31.744501, 42.797447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629005, 31.681049, 42.557468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603865, -0.417838, -0.678792,
		-0.143007, -0.894566, 0.423440,
		-0.784153, -0.158629, -0.599950,
		41.393761, 31.633461, 42.377483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036362, 31.048210, 42.531548>,  <41.942665, 31.744501, 42.797447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036362, 31.048210, 42.531548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808807, 31.262726, 42.282143>,  <41.672276, 31.391436, 42.132500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808807, 31.262726, 42.282143>,  <42.036362, 31.048210, 42.531548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808807, 31.262726, 42.282143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533382, -0.336481, -0.776070,
		-0.625995, -0.774064, -0.094626,
		-0.568888, 0.536287, -0.623508,
		41.638142, 31.423613, 42.095089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823273, 30.578621, 41.948830>,  <42.036362, 31.048210, 42.531548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823273, 30.578621, 41.948830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818592, 30.964994, 41.845417>,  <41.815784, 31.196817, 41.783371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818592, 30.964994, 41.845417>,  <41.823273, 30.578621, 41.948830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818592, 30.964994, 41.845417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760002, -0.159428, -0.630063,
		-0.649815, -0.203858, -0.732244,
		-0.011704, 0.965932, -0.258532,
		41.815083, 31.254774, 41.767857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846878, 30.470112, 41.284649>,  <41.823273, 30.578621, 41.948830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846878, 30.470112, 41.284649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992325, 30.826385, 41.393803>,  <42.079594, 31.040150, 41.459293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992325, 30.826385, 41.393803>,  <41.846878, 30.470112, 41.284649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992325, 30.826385, 41.393803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795693, -0.144638, -0.588178,
		-0.484410, 0.431004, -0.761303,
		0.363621, 0.890682, 0.272882,
		42.101410, 31.093590, 41.475666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056290, 30.938381, 40.681530>,  <41.846878, 30.470112, 41.284649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056290, 30.938381, 40.681530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277718, 31.026464, 41.002792>,  <42.410576, 31.079315, 41.195549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277718, 31.026464, 41.002792>,  <42.056290, 30.938381, 40.681530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277718, 31.026464, 41.002792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832486, -0.119860, -0.540925,
		-0.022850, 0.968061, -0.249672,
		0.553574, 0.220209, 0.803159,
		42.443790, 31.092527, 41.243740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604576, 31.540085, 40.601883>,  <42.056290, 30.938381, 40.681530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604576, 31.540085, 40.601883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687233, 31.217836, 40.823971>,  <42.736828, 31.024487, 40.957222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687233, 31.217836, 40.823971>,  <42.604576, 31.540085, 40.601883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687233, 31.217836, 40.823971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789354, -0.198028, -0.581124,
		0.578116, 0.558352, 0.595000,
		0.206645, -0.805623, 0.555220,
		42.749226, 30.976149, 40.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358681, 31.490410, 40.817440>,  <42.604576, 31.540085, 40.601883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358681, 31.490410, 40.817440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141518, 31.157793, 40.770458>,  <43.011219, 30.958223, 40.742268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141518, 31.157793, 40.770458>,  <43.358681, 31.490410, 40.817440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141518, 31.157793, 40.770458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534788, -0.234488, -0.811799,
		0.647502, -0.503543, 0.572002,
		-0.542903, -0.831541, -0.117457,
		42.978645, 30.908331, 40.735222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609692, 31.224714, 40.170204>,  <43.358681, 31.490410, 40.817440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609692, 31.224714, 40.170204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365402, 30.914776, 40.235477>,  <43.218826, 30.728813, 40.274639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365402, 30.914776, 40.235477>,  <43.609692, 31.224714, 40.170204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365402, 30.914776, 40.235477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374880, -0.464451, -0.802341,
		0.697479, -0.428838, 0.574126,
		-0.610728, -0.774844, 0.163181,
		43.182182, 30.682323, 40.284431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688248, 31.380461, 39.422813>,  <43.609692, 31.224714, 40.170204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688248, 31.380461, 39.422813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917042, 31.366539, 39.095005>,  <44.054317, 31.358185, 38.898319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917042, 31.366539, 39.095005>,  <43.688248, 31.380461, 39.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917042, 31.366539, 39.095005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778929, 0.336207, 0.529371,
		0.257104, -0.941145, 0.219417,
		0.571984, -0.034806, -0.819525,
		44.088638, 31.356096, 38.849148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323891, 30.970783, 39.530880>,  <43.688248, 31.380461, 39.422813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323891, 30.970783, 39.530880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389168, 31.234499, 39.237293>,  <44.428333, 31.392729, 39.061142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389168, 31.234499, 39.237293>,  <44.323891, 30.970783, 39.530880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389168, 31.234499, 39.237293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881918, 0.235999, 0.408074,
		0.442255, -0.713890, -0.542928,
		0.163190, 0.659291, -0.733965,
		44.438126, 31.432287, 39.017105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951256, 30.898930, 39.246429>,  <44.323891, 30.970783, 39.530880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951256, 30.898930, 39.246429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866352, 31.287992, 39.208725>,  <44.815411, 31.521431, 39.186104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866352, 31.287992, 39.208725>,  <44.951256, 30.898930, 39.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866352, 31.287992, 39.208725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862800, 0.231822, 0.449260,
		0.458827, 0.014033, -0.888415,
		-0.212259, 0.972657, -0.094259,
		44.802673, 31.579790, 39.180447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541203, 31.326500, 38.864182>,  <44.951256, 30.898930, 39.246429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541203, 31.326500, 38.864182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318226, 31.554014, 39.106087>,  <45.184441, 31.690523, 39.251232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318226, 31.554014, 39.106087>,  <45.541203, 31.326500, 38.864182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318226, 31.554014, 39.106087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828225, 0.330546, 0.452530,
		0.057490, 0.753140, -0.655344,
		-0.557439, 0.568788, 0.604766,
		45.150993, 31.724651, 39.287518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729191, 32.070213, 38.752151>,  <45.541203, 31.326500, 38.864182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729191, 32.070213, 38.752151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632610, 31.982323, 39.130238>,  <45.574661, 31.929588, 39.357090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632610, 31.982323, 39.130238>,  <45.729191, 32.070213, 38.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632610, 31.982323, 39.130238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932809, 0.215970, 0.288485,
		-0.267524, 0.951356, 0.152814,
		-0.241449, -0.219723, 0.945211,
		45.560177, 31.916407, 39.413799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998692, 32.612534, 39.270313>,  <45.729191, 32.070213, 38.752151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998692, 32.612534, 39.270313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980099, 32.234436, 39.399532>,  <45.968941, 32.007580, 39.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980099, 32.234436, 39.399532>,  <45.998692, 32.612534, 39.270313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980099, 32.234436, 39.399532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973105, 0.030195, 0.228376,
		-0.225625, 0.324974, 0.918415,
		-0.046485, -0.945241, 0.323046,
		45.966152, 31.950863, 39.496445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274876, 32.661251, 39.539886>,  <45.998692, 32.612534, 39.270313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274876, 32.661251, 39.539886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464966, 32.618309, 39.889202>,  <45.579018, 32.592545, 40.098793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464966, 32.618309, 39.889202>,  <45.274876, 32.661251, 39.539886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464966, 32.618309, 39.889202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138904, 0.989236, 0.046016,
		-0.868832, 0.099436, 0.485019,
		0.475222, -0.107351, 0.873292,
		45.607533, 32.586105, 40.151192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829788, 32.920761, 40.154327>,  <45.274876, 32.661251, 39.539886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829788, 32.920761, 40.154327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223686, 32.978294, 40.115173>,  <45.460026, 33.012814, 40.091679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223686, 32.978294, 40.115173>,  <44.829788, 32.920761, 40.154327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223686, 32.978294, 40.115173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154961, 0.980901, -0.117563,
		0.079110, 0.130939, 0.988229,
		0.984748, 0.143836, -0.097890,
		45.519112, 33.021446, 40.085808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130619, 33.041325, 40.137306>,  <44.829788, 32.920761, 40.154327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130619, 33.041325, 40.137306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058231, 33.432404, 40.179924>,  <44.014801, 33.667053, 40.205494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058231, 33.432404, 40.179924>,  <44.130619, 33.041325, 40.137306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058231, 33.432404, 40.179924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054554, 0.118144, -0.991497,
		-0.981975, -0.173616, -0.074718,
		-0.180967, 0.977701, 0.106543,
		44.003941, 33.725716, 40.211887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786602, 33.357944, 39.530487>,  <44.130619, 33.041325, 40.137306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786602, 33.357944, 39.530487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929672, 33.683239, 39.714104>,  <44.015514, 33.878414, 39.824272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929672, 33.683239, 39.714104>,  <43.786602, 33.357944, 39.530487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929672, 33.683239, 39.714104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155429, 0.432860, -0.887961,
		-0.920821, 0.388949, 0.028423,
		0.357675, 0.813235, 0.459040,
		44.036976, 33.927208, 39.851814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302849, 33.898071, 39.512516>,  <43.786602, 33.357944, 39.530487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302849, 33.898071, 39.512516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697109, 33.963081, 39.494289>,  <43.933666, 34.002087, 39.483353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697109, 33.963081, 39.494289>,  <43.302849, 33.898071, 39.512516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697109, 33.963081, 39.494289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096735, 0.322693, -0.941548,
		-0.138324, 0.932445, 0.333785,
		0.985652, 0.162527, -0.045564,
		43.992805, 34.011841, 39.480621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417065, 33.687557, 38.795170>,  <43.302849, 33.898071, 39.512516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417065, 33.687557, 38.795170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144382, 33.533291, 39.043858>,  <42.980774, 33.440731, 39.193069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144382, 33.533291, 39.043858>,  <43.417065, 33.687557, 38.795170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144382, 33.533291, 39.043858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324916, 0.601796, 0.729569,
		-0.655521, 0.699358, -0.284938,
		-0.681705, -0.385667, 0.621723,
		42.939873, 33.417591, 39.230373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982750, 34.062313, 38.399368>,  <43.417065, 33.687557, 38.795170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982750, 34.062313, 38.399368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810146, 34.381344, 38.567970>,  <43.706585, 34.572762, 38.669132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810146, 34.381344, 38.567970>,  <43.982750, 34.062313, 38.399368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810146, 34.381344, 38.567970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140864, 0.521085, -0.841801,
		-0.891043, -0.303870, -0.337203,
		-0.431510, 0.797580, 0.421504,
		43.680695, 34.620617, 38.694420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558949, 34.394058, 37.906330>,  <43.982750, 34.062313, 38.399368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558949, 34.394058, 37.906330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681606, 34.659359, 38.179409>,  <43.755199, 34.818539, 38.343254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681606, 34.659359, 38.179409>,  <43.558949, 34.394058, 37.906330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681606, 34.659359, 38.179409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142366, 0.677221, -0.721875,
		-0.941118, 0.318550, 0.113241,
		0.306643, 0.663248, 0.682695,
		43.773598, 34.858334, 38.384216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183620, 35.082771, 37.849495>,  <43.558949, 34.394058, 37.906330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183620, 35.082771, 37.849495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562824, 35.117054, 37.972088>,  <43.790348, 35.137623, 38.045643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562824, 35.117054, 37.972088>,  <43.183620, 35.082771, 37.849495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562824, 35.117054, 37.972088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164042, 0.693656, -0.701379,
		-0.272704, 0.715190, 0.643534,
		0.948010, 0.085702, 0.306484,
		43.847229, 35.142765, 38.064034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307022, 35.719574, 37.839592>,  <43.183620, 35.082771, 37.849495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307022, 35.719574, 37.839592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663269, 35.540783, 37.806103>,  <43.877018, 35.433510, 37.786011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663269, 35.540783, 37.806103>,  <43.307022, 35.719574, 37.839592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663269, 35.540783, 37.806103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210310, 0.568083, -0.795645,
		0.403193, 0.691011, 0.599950,
		0.890621, -0.446974, -0.083721,
		43.930454, 35.406693, 37.780987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658546, 36.249653, 37.562775>,  <43.307022, 35.719574, 37.839592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658546, 36.249653, 37.562775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838276, 35.896648, 37.507221>,  <43.946114, 35.684845, 37.473888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838276, 35.896648, 37.507221>,  <43.658546, 36.249653, 37.562775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838276, 35.896648, 37.507221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425412, 0.348061, -0.835391,
		0.785578, 0.316279, 0.531822,
		0.449323, -0.882508, -0.138880,
		43.973072, 35.631897, 37.465557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450592, 36.366310, 37.488407>,  <43.658546, 36.249653, 37.562775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450592, 36.366310, 37.488407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279095, 36.081982, 37.265373>,  <44.176197, 35.911385, 37.131554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279095, 36.081982, 37.265373>,  <44.450592, 36.366310, 37.488407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279095, 36.081982, 37.265373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373876, 0.422255, -0.825783,
		0.822432, -0.562519, 0.084721,
		-0.428745, -0.710825, -0.557588,
		44.150471, 35.868732, 37.098095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917374, 36.033413, 36.998074>,  <44.450592, 36.366310, 37.488407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917374, 36.033413, 36.998074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569389, 35.964222, 36.813362>,  <44.360600, 35.922707, 36.702534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569389, 35.964222, 36.813362>,  <44.917374, 36.033413, 36.998074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569389, 35.964222, 36.813362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390846, 0.329099, -0.859612,
		0.300663, -0.928317, -0.218698,
		-0.869967, -0.172976, -0.461777,
		44.308399, 35.912327, 36.674828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167057, 35.329102, 36.691227>,  <44.917374, 36.033413, 36.998074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167057, 35.329102, 36.691227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089039, 35.181648, 36.327675>,  <45.042229, 35.093178, 36.109543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.089039, 35.181648, 36.327675>,  <45.167057, 35.329102, 36.691227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089039, 35.181648, 36.327675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482606, 0.770662, -0.416139,
		0.853843, -0.519798, 0.027590,
		-0.195046, -0.368633, -0.908882,
		45.030525, 35.071060, 36.055012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837410, 35.477108, 36.443783>,  <45.167057, 35.329102, 36.691227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837410, 35.477108, 36.443783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545975, 35.441685, 36.172104>,  <45.371113, 35.420429, 36.009098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.545975, 35.441685, 36.172104>,  <45.837410, 35.477108, 36.443783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545975, 35.441685, 36.172104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340866, 0.813214, -0.471693,
		0.594108, -0.575187, -0.562313,
		-0.728592, -0.088563, -0.679198,
		45.327396, 35.415115, 35.968346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185860, 35.849400, 35.796459>,  <45.837410, 35.477108, 36.443783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185860, 35.849400, 35.796459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789089, 35.859863, 35.746826>,  <45.551025, 35.866142, 35.717045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789089, 35.859863, 35.746826>,  <46.185860, 35.849400, 35.796459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789089, 35.859863, 35.746826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084018, 0.868480, -0.488552,
		0.094983, -0.495033, -0.863667,
		-0.991927, 0.026159, -0.124083,
		45.491512, 35.867710, 35.709602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680920, 35.869274, 35.306911>,  <46.185860, 35.849400, 35.796459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680920, 35.869274, 35.306911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052410, 35.917088, 35.166519>,  <47.275303, 35.945778, 35.082283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052410, 35.917088, 35.166519>,  <46.680920, 35.869274, 35.306911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052410, 35.917088, 35.166519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221933, -0.937522, 0.267951,
		-0.297018, -0.326746, -0.897227,
		0.928723, 0.119538, -0.350977,
		47.331028, 35.952950, 35.061226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.952934, 35.259212, 34.794792>,  <46.680920, 35.869274, 35.306911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.952934, 35.259212, 34.794792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227409, 35.457417, 35.007816>,  <47.392094, 35.576340, 35.135632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227409, 35.457417, 35.007816>,  <46.952934, 35.259212, 34.794792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227409, 35.457417, 35.007816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236518, -0.844311, 0.480831,
		0.687900, -0.203981, -0.696553,
		0.686187, 0.495511, 0.532556,
		47.433266, 35.606071, 35.167583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613930, 34.891975, 34.688004>,  <46.952934, 35.259212, 34.794792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613930, 34.891975, 34.688004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539738, 35.062260, 35.042263>,  <47.495224, 35.164433, 35.254818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539738, 35.062260, 35.042263>,  <47.613930, 34.891975, 34.688004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539738, 35.062260, 35.042263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056959, -0.904426, 0.422812,
		0.980996, 0.027978, 0.192002,
		-0.185481, 0.425713, 0.885644,
		47.484093, 35.189972, 35.307957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.936256, 33.356373, 29.405325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020657, 32.977558, 29.502159>,  <38.071297, 32.750271, 29.560261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020657, 32.977558, 29.502159>,  <37.936256, 33.356373, 29.405325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020657, 32.977558, 29.502159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154087, 0.276790, 0.948496,
		-0.965266, -0.162827, 0.204327,
		0.210997, -0.947035, 0.242086,
		38.083954, 32.693447, 29.574785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484985, 33.209263, 29.895140>,  <37.936256, 33.356373, 29.405325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484985, 33.209263, 29.895140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.769356, 32.931622, 29.940401>,  <37.939976, 32.765038, 29.967558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.769356, 32.931622, 29.940401>,  <37.484985, 33.209263, 29.895140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769356, 32.931622, 29.940401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014836, 0.175664, 0.984338,
		-0.703114, -0.698109, 0.135181,
		0.710922, -0.694108, 0.113155,
		37.982632, 32.723389, 29.974348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288498, 32.695183, 30.522284>,  <37.484985, 33.209263, 29.895140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288498, 32.695183, 30.522284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685394, 32.675629, 30.476564>,  <37.923534, 32.663898, 30.449133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685394, 32.675629, 30.476564>,  <37.288498, 32.695183, 30.522284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685394, 32.675629, 30.476564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112639, -0.035438, 0.993004,
		-0.052606, -0.998175, -0.029655,
		0.992243, -0.048898, -0.114297,
		37.983067, 32.660965, 30.442276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543442, 32.264240, 31.092369>,  <37.288498, 32.695183, 30.522284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543442, 32.264240, 31.092369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894115, 32.416836, 30.975136>,  <38.104519, 32.508392, 30.904797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894115, 32.416836, 30.975136>,  <37.543442, 32.264240, 31.092369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894115, 32.416836, 30.975136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315314, 0.004450, 0.948977,
		0.363328, -0.924363, -0.116388,
		0.876681, 0.381488, -0.293082,
		38.157120, 32.531281, 30.887211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132847, 31.845230, 31.521282>,  <37.543442, 32.264240, 31.092369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132847, 31.845230, 31.521282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263988, 32.196777, 31.382658>,  <38.342674, 32.407707, 31.299482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263988, 32.196777, 31.382658>,  <38.132847, 31.845230, 31.521282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263988, 32.196777, 31.382658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291988, 0.254612, 0.921909,
		0.898474, -0.403442, -0.173143,
		0.327852, 0.878867, -0.346563,
		38.362343, 32.460438, 31.278688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859558, 31.927486, 31.749838>,  <38.132847, 31.845230, 31.521282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859558, 31.927486, 31.749838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732555, 32.300041, 31.678604>,  <38.656353, 32.523575, 31.635864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.732555, 32.300041, 31.678604>,  <38.859558, 31.927486, 31.749838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732555, 32.300041, 31.678604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222762, 0.255808, 0.940712,
		0.921721, 0.259008, -0.288696,
		-0.317503, 0.931385, -0.178086,
		38.637306, 32.579456, 31.625177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354317, 32.321198, 32.020641>,  <38.859558, 31.927486, 31.749838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354317, 32.321198, 32.020641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033890, 32.557045, 31.979368>,  <38.841633, 32.698551, 31.954603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033890, 32.557045, 31.979368>,  <39.354317, 32.321198, 32.020641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033890, 32.557045, 31.979368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183500, 0.405985, 0.895267,
		0.569755, 0.698234, -0.433415,
		-0.801066, 0.589615, -0.103186,
		38.793571, 32.733929, 31.948412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580795, 33.074684, 32.235657>,  <39.354317, 32.321198, 32.020641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580795, 33.074684, 32.235657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180809, 33.072636, 32.238087>,  <38.940815, 33.071407, 32.239544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180809, 33.072636, 32.238087>,  <39.580795, 33.074684, 32.235657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180809, 33.072636, 32.238087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001332, 0.645122, 0.764078,
		-0.007833, 0.764062, -0.645095,
		-0.999968, -0.005126, 0.006071,
		38.880817, 33.071098, 32.239906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394497, 33.797447, 32.219841>,  <39.580795, 33.074684, 32.235657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394497, 33.797447, 32.219841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092953, 33.580853, 32.368698>,  <38.912025, 33.450893, 32.458012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092953, 33.580853, 32.368698>,  <39.394497, 33.797447, 32.219841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092953, 33.580853, 32.368698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067911, 0.499142, 0.863855,
		-0.653520, 0.676495, -0.339508,
		-0.753856, -0.541490, 0.372141,
		38.866795, 33.418404, 32.480339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972370, 34.334194, 32.541260>,  <39.394497, 33.797447, 32.219841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972370, 34.334194, 32.541260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877785, 34.000370, 32.740299>,  <38.821033, 33.800076, 32.859722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.877785, 34.000370, 32.740299>,  <38.972370, 34.334194, 32.541260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877785, 34.000370, 32.740299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207426, 0.543671, 0.813263,
		-0.949241, 0.089093, -0.301667,
		-0.236464, -0.834557, 0.497594,
		38.806847, 33.750004, 32.889576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503620, 34.495464, 32.957752>,  <38.972370, 34.334194, 32.541260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503620, 34.495464, 32.957752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.627018, 34.173969, 33.161259>,  <38.701057, 33.981071, 33.283363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.627018, 34.173969, 33.161259>,  <38.503620, 34.495464, 32.957752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627018, 34.173969, 33.161259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267871, 0.439802, 0.857216,
		-0.912731, -0.400729, -0.079622,
		0.308493, -0.803735, 0.508765,
		38.719566, 33.932850, 33.313889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845745, 34.230438, 33.454971>,  <38.503620, 34.495464, 32.957752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845745, 34.230438, 33.454971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186241, 34.072475, 33.593208>,  <38.390537, 33.977695, 33.676151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.186241, 34.072475, 33.593208>,  <37.845745, 34.230438, 33.454971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186241, 34.072475, 33.593208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254224, 0.265793, 0.929906,
		-0.459085, -0.879432, 0.125858,
		0.851241, -0.394910, 0.345594,
		38.441612, 33.954002, 33.696888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604931, 33.882580, 34.003735>,  <37.845745, 34.230438, 33.454971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604931, 33.882580, 34.003735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992317, 33.911503, 34.099106>,  <38.224751, 33.928856, 34.156330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992317, 33.911503, 34.099106>,  <37.604931, 33.882580, 34.003735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992317, 33.911503, 34.099106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247808, 0.180269, 0.951890,
		0.025849, -0.980956, 0.192503,
		0.968464, 0.072309, 0.238429,
		38.282856, 33.933197, 34.170635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708103, 33.465374, 34.601566>,  <37.604931, 33.882580, 34.003735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708103, 33.465374, 34.601566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027412, 33.706295, 34.601429>,  <38.218998, 33.850845, 34.601349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027412, 33.706295, 34.601429>,  <37.708103, 33.465374, 34.601566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027412, 33.706295, 34.601429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047631, 0.063693, 0.996832,
		0.600412, -0.795726, 0.079532,
		0.798271, 0.602299, -0.000341,
		38.266895, 33.886986, 34.601326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177959, 33.209801, 35.064426>,  <37.708103, 33.465374, 34.601566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177959, 33.209801, 35.064426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240860, 33.604153, 35.041389>,  <38.278603, 33.840763, 35.027569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.240860, 33.604153, 35.041389>,  <38.177959, 33.209801, 35.064426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240860, 33.604153, 35.041389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185525, 0.086772, 0.978801,
		0.969975, -0.143237, 0.196550,
		0.157255, 0.985877, -0.057592,
		38.288036, 33.899918, 35.024113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448875, 33.276447, 35.775932>,  <38.177959, 33.209801, 35.064426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448875, 33.276447, 35.775932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414459, 33.654369, 35.649479>,  <38.393810, 33.881123, 35.573605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414459, 33.654369, 35.649479>,  <38.448875, 33.276447, 35.775932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414459, 33.654369, 35.649479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144245, 0.302158, 0.942281,
		0.985794, 0.126676, 0.110285,
		-0.086041, 0.944804, -0.316138,
		38.388645, 33.937809, 35.554638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059261, 33.727398, 36.030407>,  <38.448875, 33.276447, 35.775932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059261, 33.727398, 36.030407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758083, 33.971760, 35.932526>,  <38.577377, 34.118378, 35.873798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758083, 33.971760, 35.932526>,  <39.059261, 33.727398, 36.030407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758083, 33.971760, 35.932526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076619, 0.450686, 0.889388,
		0.653612, 0.650909, -0.386147,
		-0.752942, 0.610901, -0.244702,
		38.532200, 34.155029, 35.859116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300613, 34.271336, 36.266369>,  <39.059261, 33.727398, 36.030407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300613, 34.271336, 36.266369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906158, 34.331051, 36.237377>,  <38.669487, 34.366882, 36.219982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.906158, 34.331051, 36.237377>,  <39.300613, 34.271336, 36.266369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906158, 34.331051, 36.237377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010416, 0.380211, 0.924841,
		0.165628, 0.912772, -0.373383,
		-0.986133, 0.149291, -0.072481,
		38.610317, 34.375839, 36.215633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141094, 34.997204, 36.472427>,  <39.300613, 34.271336, 36.266369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141094, 34.997204, 36.472427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804916, 34.788158, 36.529732>,  <38.603210, 34.662731, 36.564114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804916, 34.788158, 36.529732>,  <39.141094, 34.997204, 36.472427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804916, 34.788158, 36.529732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113015, 0.427597, 0.896877,
		-0.529975, 0.737589, -0.418436,
		-0.840448, -0.522612, 0.143257,
		38.552780, 34.631374, 36.572708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803268, 35.427288, 36.906754>,  <39.141094, 34.997204, 36.472427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803268, 35.427288, 36.906754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586971, 35.091999, 36.934975>,  <38.457191, 34.890823, 36.951908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586971, 35.091999, 36.934975>,  <38.803268, 35.427288, 36.906754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586971, 35.091999, 36.934975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259565, 0.246052, 0.933854,
		-0.800140, 0.486661, -0.350625,
		-0.540742, -0.838224, 0.070556,
		38.424747, 34.840530, 36.956142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162037, 35.591774, 37.184807>,  <38.803268, 35.427288, 36.906754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162037, 35.591774, 37.184807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233086, 35.208851, 37.276031>,  <38.275715, 34.979095, 37.330765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233086, 35.208851, 37.276031>,  <38.162037, 35.591774, 37.184807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233086, 35.208851, 37.276031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339008, 0.158040, 0.927414,
		-0.923864, -0.242043, -0.296464,
		0.177620, -0.957308, 0.228062,
		38.286373, 34.921658, 37.344452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687588, 35.613873, 37.711430>,  <38.162037, 35.591774, 37.184807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687588, 35.613873, 37.711430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529377, 35.964672, 37.820564>,  <37.434452, 36.175152, 37.886044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529377, 35.964672, 37.820564>,  <37.687588, 35.613873, 37.711430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529377, 35.964672, 37.820564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312639, 0.150759, -0.937832,
		-0.863606, -0.456237, 0.214554,
		-0.395527, 0.876995, 0.272834,
		37.410717, 36.227772, 37.902416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065937, 35.653183, 37.418591>,  <37.687588, 35.613873, 37.711430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065937, 35.653183, 37.418591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.171700, 36.035240, 37.471954>,  <37.235157, 36.264473, 37.503975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.171700, 36.035240, 37.471954>,  <37.065937, 35.653183, 37.418591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171700, 36.035240, 37.471954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264160, 0.204771, -0.942491,
		-0.927529, 0.213956, 0.306452,
		0.264404, 0.955140, 0.133413,
		37.251022, 36.321781, 37.511978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443855, 36.041283, 37.314968>,  <37.065937, 35.653183, 37.418591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443855, 36.041283, 37.314968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729759, 36.315914, 37.261692>,  <36.901302, 36.480694, 37.229725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729759, 36.315914, 37.261692>,  <36.443855, 36.041283, 37.314968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729759, 36.315914, 37.261692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342655, 0.177767, -0.922489,
		-0.609681, 0.704993, 0.362318,
		0.714756, 0.686574, -0.133189,
		36.944187, 36.521885, 37.221737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103230, 36.584080, 36.938450>,  <36.443855, 36.041283, 37.314968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103230, 36.584080, 36.938450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.488819, 36.669334, 36.874779>,  <36.720173, 36.720486, 36.836575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.488819, 36.669334, 36.874779>,  <36.103230, 36.584080, 36.938450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488819, 36.669334, 36.874779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184761, 0.105936, -0.977057,
		-0.191380, 0.971263, 0.141498,
		0.963969, 0.213133, -0.159178,
		36.778011, 36.733273, 36.827026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134090, 37.019176, 36.320393>,  <36.103230, 36.584080, 36.938450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134090, 37.019176, 36.320393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514721, 36.901951, 36.357517>,  <36.743099, 36.831615, 36.379791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514721, 36.901951, 36.357517>,  <36.134090, 37.019176, 36.320393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514721, 36.901951, 36.357517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098476, 0.004589, -0.995129,
		0.291209, 0.956082, 0.033227,
		0.951578, -0.293062, 0.092814,
		36.800194, 36.814034, 36.385361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482574, 37.433903, 35.893070>,  <36.134090, 37.019176, 36.320393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482574, 37.433903, 35.893070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715298, 37.112675, 35.944565>,  <36.854931, 36.919937, 35.975464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715298, 37.112675, 35.944565>,  <36.482574, 37.433903, 35.893070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715298, 37.112675, 35.944565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106776, -0.081498, -0.990938,
		0.806289, 0.590279, 0.038333,
		0.581806, -0.803075, 0.128738,
		36.889839, 36.871754, 35.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104397, 37.613590, 35.588585>,  <36.482574, 37.433903, 35.893070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104397, 37.613590, 35.588585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076458, 37.214737, 35.600227>,  <37.059696, 36.975426, 35.607212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076458, 37.214737, 35.600227>,  <37.104397, 37.613590, 35.588585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076458, 37.214737, 35.600227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073028, -0.034209, -0.996743,
		0.994881, -0.067492, 0.075208,
		-0.069845, -0.997133, 0.029105,
		37.055504, 36.915596, 35.608959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608479, 37.402126, 35.176632>,  <37.104397, 37.613590, 35.588585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608479, 37.402126, 35.176632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389656, 37.068180, 35.201069>,  <37.258362, 36.867813, 35.215733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389656, 37.068180, 35.201069>,  <37.608479, 37.402126, 35.176632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389656, 37.068180, 35.201069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197253, -0.199490, -0.959841,
		0.813525, -0.513034, 0.273812,
		-0.547054, -0.834865, 0.061093,
		37.225540, 36.817722, 35.219398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929600, 36.879250, 34.806656>,  <37.608479, 37.402126, 35.176632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929600, 36.879250, 34.806656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551170, 36.750645, 34.822495>,  <37.324112, 36.673481, 34.831997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551170, 36.750645, 34.822495>,  <37.929600, 36.879250, 34.806656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551170, 36.750645, 34.822495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108296, -0.429115, -0.896734,
		0.305303, -0.844092, 0.440794,
		-0.946077, -0.321512, 0.039598,
		37.267345, 36.654190, 34.834373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901096, 36.226116, 34.430733>,  <37.929600, 36.879250, 34.806656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901096, 36.226116, 34.430733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509365, 36.303577, 34.454102>,  <37.274326, 36.350056, 34.468121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509365, 36.303577, 34.454102>,  <37.901096, 36.226116, 34.430733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509365, 36.303577, 34.454102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154122, -0.527347, -0.835554,
		-0.131002, -0.827286, 0.546293,
		-0.979329, 0.193655, 0.058419,
		37.215565, 36.361675, 34.471626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614124, 35.695145, 34.189983>,  <37.901096, 36.226116, 34.430733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614124, 35.695145, 34.189983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279667, 35.914268, 34.178928>,  <37.078991, 36.045742, 34.172295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279667, 35.914268, 34.178928>,  <37.614124, 35.695145, 34.189983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279667, 35.914268, 34.178928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276029, -0.463796, -0.841843,
		-0.474013, -0.696260, 0.539012,
		-0.836134, 0.547828, -0.027657,
		37.028824, 36.078609, 34.170635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016823, 35.257328, 34.193134>,  <37.614124, 35.695145, 34.189983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016823, 35.257328, 34.193134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948345, 35.602444, 34.002857>,  <36.907257, 35.809513, 33.888691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948345, 35.602444, 34.002857>,  <37.016823, 35.257328, 34.193134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948345, 35.602444, 34.002857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338160, -0.504947, -0.794152,
		-0.925386, 0.024903, 0.378207,
		-0.171197, 0.862792, -0.475692,
		36.896984, 35.861282, 33.860149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528183, 35.054508, 33.840279>,  <37.016823, 35.257328, 34.193134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528183, 35.054508, 33.840279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628353, 35.393398, 33.652878>,  <36.688457, 35.596733, 33.540436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628353, 35.393398, 33.652878>,  <36.528183, 35.054508, 33.840279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628353, 35.393398, 33.652878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241290, -0.414030, -0.877700,
		-0.937584, 0.332847, 0.100742,
		0.250429, 0.847226, -0.468501,
		36.703484, 35.647568, 33.512329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220589, 34.977737, 33.228275>,  <36.528183, 35.054508, 33.840279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220589, 34.977737, 33.228275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452621, 35.288647, 33.130833>,  <36.591843, 35.475193, 33.072365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452621, 35.288647, 33.130833>,  <36.220589, 34.977737, 33.228275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452621, 35.288647, 33.130833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013007, -0.307871, -0.951339,
		-0.814453, 0.548688, -0.188701,
		0.580084, 0.777275, -0.243610,
		36.626648, 35.521828, 33.057751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906876, 35.370564, 32.664227>,  <36.220589, 34.977737, 33.228275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906876, 35.370564, 32.664227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297989, 35.453720, 32.653511>,  <36.532658, 35.503613, 32.647083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297989, 35.453720, 32.653511>,  <35.906876, 35.370564, 32.664227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297989, 35.453720, 32.653511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030524, -0.267647, -0.963033,
		-0.207372, 0.940823, -0.268047,
		0.977786, 0.207888, -0.026785,
		36.591324, 35.516087, 32.645477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061409, 35.957165, 32.180679>,  <35.906876, 35.370564, 32.664227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061409, 35.957165, 32.180679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418797, 35.780437, 32.212955>,  <36.633228, 35.674400, 32.232323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418797, 35.780437, 32.212955>,  <36.061409, 35.957165, 32.180679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418797, 35.780437, 32.212955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029740, -0.237465, -0.970941,
		0.448140, 0.865106, -0.225307,
		0.893469, -0.441818, 0.080689,
		36.686836, 35.647892, 32.237164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392658, 36.103546, 31.543213>,  <36.061409, 35.957165, 32.180679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392658, 36.103546, 31.543213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599297, 35.795063, 31.692007>,  <36.723278, 35.609974, 31.781282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599297, 35.795063, 31.692007>,  <36.392658, 36.103546, 31.543213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599297, 35.795063, 31.692007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003895, -0.436555, -0.899669,
		0.856223, 0.463313, -0.228524,
		0.516592, -0.771208, 0.371984,
		36.754272, 35.563702, 31.803602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044197, 36.007332, 31.060379>,  <36.392658, 36.103546, 31.543213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044197, 36.007332, 31.060379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968739, 35.673012, 31.266624>,  <36.923466, 35.472420, 31.390371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968739, 35.673012, 31.266624>,  <37.044197, 36.007332, 31.060379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968739, 35.673012, 31.266624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006537, -0.526096, -0.850400,
		0.982024, -0.157051, 0.104707,
		-0.188642, -0.835798, 0.515613,
		36.912148, 35.422272, 31.421309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673599, 35.524696, 30.991495>,  <37.044197, 36.007332, 31.060379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673599, 35.524696, 30.991495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347382, 35.301819, 31.054014>,  <37.151649, 35.168095, 31.091526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347382, 35.301819, 31.054014>,  <37.673599, 35.524696, 30.991495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347382, 35.301819, 31.054014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146974, -0.460658, -0.875324,
		0.559722, -0.690893, 0.457579,
		-0.815543, -0.557190, 0.156296,
		37.102718, 35.134663, 31.100903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.873192, 34.842102, 30.689610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475998, 34.863823, 30.731621>,  <37.237682, 34.876858, 30.756828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475998, 34.863823, 30.731621>,  <37.873192, 34.842102, 30.689610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475998, 34.863823, 30.731621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114503, -0.220140, -0.968724,
		-0.029484, -0.973956, 0.224814,
		-0.992985, 0.054304, 0.105030,
		37.178101, 34.880116, 30.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664021, 34.173504, 30.436613>,  <37.873192, 34.842102, 30.689610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664021, 34.173504, 30.436613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375607, 34.448479, 30.401890>,  <37.202557, 34.613464, 30.381056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375607, 34.448479, 30.401890>,  <37.664021, 34.173504, 30.436613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375607, 34.448479, 30.401890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244097, -0.369264, -0.896694,
		-0.648475, -0.625361, 0.434054,
		-0.721038, 0.687435, -0.086810,
		37.159294, 34.654709, 30.375847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121563, 33.849133, 30.042673>,  <37.664021, 34.173504, 30.436613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121563, 33.849133, 30.042673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971764, 34.219978, 30.036875>,  <36.881882, 34.442486, 30.033396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971764, 34.219978, 30.036875>,  <37.121563, 33.849133, 30.042673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971764, 34.219978, 30.036875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302930, -0.137113, -0.943098,
		-0.876346, -0.348801, 0.332199,
		-0.374503, 0.927113, -0.014496,
		36.859413, 34.498112, 30.032526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450855, 33.734200, 29.787617>,  <37.121563, 33.849133, 30.042673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450855, 33.734200, 29.787617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590149, 34.104649, 29.729620>,  <36.673725, 34.326920, 29.694822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.590149, 34.104649, 29.729620>,  <36.450855, 33.734200, 29.787617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590149, 34.104649, 29.729620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331096, -0.023187, -0.943312,
		-0.876987, 0.376503, 0.298562,
		0.348237, 0.926125, -0.144993,
		36.694618, 34.382484, 29.686123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996941, 33.993736, 29.368790>,  <36.450855, 33.734200, 29.787617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996941, 33.993736, 29.368790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309032, 34.239796, 29.323471>,  <36.496288, 34.387432, 29.296280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309032, 34.239796, 29.323471>,  <35.996941, 33.993736, 29.368790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309032, 34.239796, 29.323471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193133, 0.064649, -0.979040,
		-0.594928, 0.785759, 0.169246,
		0.780231, 0.615145, -0.113295,
		36.543102, 34.424339, 29.289482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649788, 34.494972, 28.999041>,  <35.996941, 33.993736, 29.368790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649788, 34.494972, 28.999041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042885, 34.493813, 28.925056>,  <36.278744, 34.493118, 28.880667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042885, 34.493813, 28.925056>,  <35.649788, 34.494972, 28.999041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042885, 34.493813, 28.925056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184924, 0.009476, -0.982707,
		0.004602, 0.999951, 0.008776,
		0.982742, -0.002899, -0.184959,
		36.337708, 34.492943, 28.869568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794270, 35.031765, 28.468140>,  <35.649788, 34.494972, 28.999041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794270, 35.031765, 28.468140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103302, 34.777821, 28.464722>,  <36.288719, 34.625454, 28.462671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103302, 34.777821, 28.464722>,  <35.794270, 35.031765, 28.468140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103302, 34.777821, 28.464722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159753, -0.181346, -0.970357,
		0.614493, 0.751041, -0.241526,
		0.772578, -0.634862, -0.008545,
		36.335075, 34.587360, 28.462158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090096, 35.177063, 27.842020>,  <35.794270, 35.031765, 28.468140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090096, 35.177063, 27.842020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272301, 34.839600, 27.955688>,  <36.381626, 34.637123, 28.023890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272301, 34.839600, 27.955688>,  <36.090096, 35.177063, 27.842020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272301, 34.839600, 27.955688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049111, -0.342540, -0.938219,
		0.888872, 0.413417, -0.197465,
		0.455515, -0.843654, 0.284171,
		36.408955, 34.586502, 28.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676571, 35.025890, 27.417217>,  <36.090096, 35.177063, 27.842020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676571, 35.025890, 27.417217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544418, 34.676575, 27.560446>,  <36.465126, 34.466988, 27.646383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544418, 34.676575, 27.560446>,  <36.676571, 35.025890, 27.417217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544418, 34.676575, 27.560446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063505, -0.357949, -0.931579,
		0.941707, -0.330520, 0.062803,
		-0.330385, -0.873286, 0.358073,
		36.445301, 34.414589, 27.667868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116425, 34.476997, 27.026533>,  <36.676571, 35.025890, 27.417217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116425, 34.476997, 27.026533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786484, 34.292770, 27.157677>,  <36.588520, 34.182232, 27.236362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.786484, 34.292770, 27.157677>,  <37.116425, 34.476997, 27.026533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786484, 34.292770, 27.157677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171260, -0.349112, -0.921299,
		0.538784, -0.816085, 0.209088,
		-0.824853, -0.460572, 0.327858,
		36.539028, 34.154598, 27.256035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111729, 33.872467, 26.695601>,  <37.116425, 34.476997, 27.026533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111729, 33.872467, 26.695601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736465, 33.959454, 26.803358>,  <36.511307, 34.011646, 26.868013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736465, 33.959454, 26.803358>,  <37.111729, 33.872467, 26.695601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736465, 33.959454, 26.803358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316988, -0.226627, -0.920955,
		-0.139221, -0.949394, 0.281545,
		-0.938155, 0.217463, 0.269395,
		36.455017, 34.024693, 26.884176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759106, 33.363949, 26.393356>,  <37.111729, 33.872467, 26.695601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759106, 33.363949, 26.393356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471790, 33.633385, 26.463026>,  <36.299400, 33.795048, 26.504827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.471790, 33.633385, 26.463026>,  <36.759106, 33.363949, 26.393356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471790, 33.633385, 26.463026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422293, -0.223137, -0.878566,
		-0.552930, -0.704616, 0.444729,
		-0.718287, 0.673592, 0.174176,
		36.256306, 33.835461, 26.515278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224289, 32.930317, 26.196886>,  <36.759106, 33.363949, 26.393356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224289, 32.930317, 26.196886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047821, 33.287464, 26.233027>,  <35.941940, 33.501751, 26.254711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.047821, 33.287464, 26.233027>,  <36.224289, 32.930317, 26.196886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047821, 33.287464, 26.233027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469764, -0.143974, -0.870973,
		-0.764652, -0.426689, 0.482952,
		-0.441167, 0.892865, 0.090353,
		35.915470, 33.555325, 26.260132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489506, 32.821388, 26.339514>,  <36.224289, 32.930317, 26.196886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489506, 32.821388, 26.339514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534939, 33.185116, 26.179398>,  <35.562199, 33.403355, 26.083328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534939, 33.185116, 26.179398>,  <35.489506, 32.821388, 26.339514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534939, 33.185116, 26.179398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578290, -0.267109, -0.770865,
		-0.807886, 0.319038, 0.495514,
		0.113579, 0.909322, -0.400291,
		35.569012, 33.457912, 26.059311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950016, 32.846336, 25.986856>,  <35.489506, 32.821388, 26.339514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950016, 32.846336, 25.986856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127983, 33.168865, 25.830957>,  <35.234764, 33.362381, 25.737419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.127983, 33.168865, 25.830957>,  <34.950016, 32.846336, 25.986856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127983, 33.168865, 25.830957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509199, -0.130248, -0.850736,
		-0.736728, 0.576962, 0.352627,
		0.444914, 0.806319, -0.389746,
		35.261456, 33.410759, 25.714033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425064, 33.239807, 25.848965>,  <34.950016, 32.846336, 25.986856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425064, 33.239807, 25.848965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733955, 33.350857, 25.620373>,  <34.919289, 33.417488, 25.483217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733955, 33.350857, 25.620373>,  <34.425064, 33.239807, 25.848965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733955, 33.350857, 25.620373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565262, -0.110460, -0.817483,
		-0.290079, 0.954318, 0.071630,
		0.772226, 0.277624, -0.571482,
		34.965622, 33.434143, 25.448929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164928, 33.777401, 25.407217>,  <34.425064, 33.239807, 25.848965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164928, 33.777401, 25.407217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490601, 33.636360, 25.222702>,  <34.686005, 33.551735, 25.111992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490601, 33.636360, 25.222702>,  <34.164928, 33.777401, 25.407217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490601, 33.636360, 25.222702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500680, -0.024080, -0.865297,
		0.293994, 0.935465, -0.196144,
		0.814179, -0.352598, -0.461290,
		34.734856, 33.530582, 25.084314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247929, 34.198292, 24.793900>,  <34.164928, 33.777401, 25.407217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247929, 34.198292, 24.793900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.418911, 33.838154, 24.761276>,  <34.521500, 33.622070, 24.741703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.418911, 33.838154, 24.761276>,  <34.247929, 34.198292, 24.793900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418911, 33.838154, 24.761276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404409, -0.109753, -0.907969,
		0.808538, 0.421101, -0.411024,
		0.427457, -0.900349, -0.081558,
		34.547150, 33.568050, 24.736809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506622, 34.177525, 24.141317>,  <34.247929, 34.198292, 24.793900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506622, 34.177525, 24.141317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528320, 33.788868, 24.233374>,  <34.541340, 33.555672, 24.288607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.528320, 33.788868, 24.233374>,  <34.506622, 34.177525, 24.141317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528320, 33.788868, 24.233374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588290, -0.217330, -0.778898,
		0.806828, -0.093138, -0.583398,
		0.054245, -0.971645, 0.230140,
		34.544594, 33.497375, 24.302416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624306, 33.876770, 23.498938>,  <34.506622, 34.177525, 24.141317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624306, 33.876770, 23.498938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502228, 33.564388, 23.716919>,  <34.428982, 33.376961, 23.847708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502228, 33.564388, 23.716919>,  <34.624306, 33.876770, 23.498938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502228, 33.564388, 23.716919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506464, -0.351501, -0.787363,
		0.806444, -0.516295, -0.288249,
		-0.305192, -0.780952, 0.544951,
		34.410671, 33.330101, 23.880404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786236, 33.303970, 23.206623>,  <34.624306, 33.876770, 23.498938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786236, 33.303970, 23.206623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486050, 33.173832, 23.436735>,  <34.305939, 33.095749, 23.574802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486050, 33.173832, 23.436735>,  <34.786236, 33.303970, 23.206623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486050, 33.173832, 23.436735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468776, -0.351549, -0.810347,
		0.465884, -0.877816, 0.111311,
		-0.750467, -0.325348, 0.575281,
		34.260910, 33.076229, 23.609320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618290, 32.575470, 22.988956>,  <34.786236, 33.303970, 23.206623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618290, 32.575470, 22.988956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306534, 32.742138, 23.176117>,  <34.119480, 32.842140, 23.288414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306534, 32.742138, 23.176117>,  <34.618290, 32.575470, 22.988956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306534, 32.742138, 23.176117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575313, -0.180213, -0.797833,
		-0.248114, -0.891015, 0.380174,
		-0.779393, 0.416673, 0.467899,
		34.072716, 32.867138, 23.316486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970276, 32.139488, 23.136736>,  <34.618290, 32.575470, 22.988956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970276, 32.139488, 23.136736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878880, 32.521927, 23.063330>,  <33.824043, 32.751389, 23.019287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.878880, 32.521927, 23.063330>,  <33.970276, 32.139488, 23.136736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878880, 32.521927, 23.063330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563214, -0.283569, -0.776130,
		-0.794092, -0.073980, 0.603278,
		-0.228490, 0.956094, -0.183513,
		33.810333, 32.808754, 23.008276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312134, 31.515211, 23.132788>,  <33.970276, 32.139488, 23.136736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312134, 31.515211, 23.132788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118973, 31.195501, 22.989700>,  <34.003075, 31.003675, 22.903849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118973, 31.195501, 22.989700>,  <34.312134, 31.515211, 23.132788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118973, 31.195501, 22.989700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155869, -0.480439, 0.863066,
		-0.861688, 0.361024, 0.356590,
		-0.482907, -0.799275, -0.357716,
		33.974102, 30.955719, 22.882385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848370, 31.335911, 23.700558>,  <34.312134, 31.515211, 23.132788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848370, 31.335911, 23.700558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951580, 31.030413, 23.463877>,  <34.013508, 30.847115, 23.321867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951580, 31.030413, 23.463877>,  <33.848370, 31.335911, 23.700558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951580, 31.030413, 23.463877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257212, -0.536037, 0.804056,
		-0.931269, -0.359664, 0.058131,
		0.258030, -0.763745, -0.591704,
		34.028988, 30.801289, 23.286366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487267, 30.785114, 23.788301>,  <33.848370, 31.335911, 23.700558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487267, 30.785114, 23.788301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845608, 30.663414, 23.658764>,  <34.060612, 30.590393, 23.581041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845608, 30.663414, 23.658764>,  <33.487267, 30.785114, 23.788301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845608, 30.663414, 23.658764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165186, -0.448540, 0.878365,
		-0.412496, -0.840384, -0.351571,
		0.895857, -0.304247, -0.323841,
		34.114365, 30.572140, 23.561611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732021, 30.328791, 24.240891>,  <33.487267, 30.785114, 23.788301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732021, 30.328791, 24.240891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077579, 30.385029, 24.047430>,  <34.284916, 30.418772, 23.931355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077579, 30.385029, 24.047430>,  <33.732021, 30.328791, 24.240891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077579, 30.385029, 24.047430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502300, -0.311281, 0.806721,
		-0.037129, -0.939860, -0.339536,
		0.863896, 0.140596, -0.483649,
		34.336750, 30.427208, 23.902334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120602, 29.647631, 24.259991>,  <33.732021, 30.328791, 24.240891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120602, 29.647631, 24.259991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360111, 29.964325, 24.211613>,  <34.503819, 30.154341, 24.182585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360111, 29.964325, 24.211613>,  <34.120602, 29.647631, 24.259991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360111, 29.964325, 24.211613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483368, -0.236817, 0.842777,
		0.638613, -0.563094, -0.524498,
		0.598773, 0.791734, -0.120947,
		34.539742, 30.201845, 24.175329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784004, 29.418789, 24.523813>,  <34.120602, 29.647631, 24.259991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784004, 29.418789, 24.523813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790993, 29.817778, 24.496258>,  <34.795185, 30.057171, 24.479725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.790993, 29.817778, 24.496258>,  <34.784004, 29.418789, 24.523813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790993, 29.817778, 24.496258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454451, 0.053448, 0.889166,
		0.890600, -0.046842, -0.452368,
		0.017472, 0.997471, -0.068888,
		34.796234, 30.117020, 24.475592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465698, 29.620567, 24.931078>,  <34.784004, 29.418789, 24.523813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465698, 29.620567, 24.931078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231506, 29.944798, 24.925713>,  <35.090992, 30.139336, 24.922493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.231506, 29.944798, 24.925713>,  <35.465698, 29.620567, 24.931078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231506, 29.944798, 24.925713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473266, 0.355186, 0.806141,
		0.658201, 0.465633, -0.591572,
		-0.585484, 0.810573, -0.013415,
		35.055862, 30.187969, 24.921688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981583, 30.121292, 25.002010>,  <35.465698, 29.620567, 24.931078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981583, 30.121292, 25.002010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635941, 30.268173, 25.139702>,  <35.428555, 30.356302, 25.222317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.635941, 30.268173, 25.139702>,  <35.981583, 30.121292, 25.002010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635941, 30.268173, 25.139702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483545, 0.415831, 0.770240,
		0.139694, 0.832014, -0.536879,
		-0.864101, 0.367202, 0.344227,
		35.376709, 30.378334, 25.242970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172745, 30.774639, 25.289526>,  <35.981583, 30.121292, 25.002010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172745, 30.774639, 25.289526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803215, 30.726807, 25.434994>,  <35.581497, 30.698107, 25.522274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.803215, 30.726807, 25.434994>,  <36.172745, 30.774639, 25.289526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803215, 30.726807, 25.434994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289422, 0.403629, 0.867939,
		-0.250576, 0.907074, -0.338271,
		-0.923822, -0.119582, 0.363667,
		35.526070, 30.690931, 25.544094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869862, 31.441566, 25.476435>,  <36.172745, 30.774639, 25.289526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869862, 31.441566, 25.476435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702232, 31.156157, 25.701027>,  <35.601654, 30.984911, 25.835783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702232, 31.156157, 25.701027>,  <35.869862, 31.441566, 25.476435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702232, 31.156157, 25.701027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256483, 0.500185, 0.827062,
		-0.870975, 0.490607, -0.026605,
		-0.419069, -0.713527, 0.561481,
		35.576511, 30.942099, 25.869471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249798, 31.718281, 25.924303>,  <35.869862, 31.441566, 25.476435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249798, 31.718281, 25.924303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363758, 31.386568, 26.116604>,  <35.432137, 31.187540, 26.231985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.363758, 31.386568, 26.116604>,  <35.249798, 31.718281, 25.924303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363758, 31.386568, 26.116604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084621, 0.521340, 0.849143,
		-0.954814, -0.201243, 0.218706,
		0.284904, -0.829281, 0.480753,
		35.449230, 31.137783, 26.260830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027992, 31.771444, 26.595324>,  <35.249798, 31.718281, 25.924303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027992, 31.771444, 26.595324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298931, 31.481544, 26.645828>,  <35.461494, 31.307604, 26.676132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298931, 31.481544, 26.645828>,  <35.027992, 31.771444, 26.595324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298931, 31.481544, 26.645828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288940, 0.419924, 0.860335,
		-0.676551, -0.546259, 0.493842,
		0.677342, -0.724751, 0.126264,
		35.502132, 31.264118, 26.683708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109238, 31.695198, 27.298231>,  <35.027992, 31.771444, 26.595324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109238, 31.695198, 27.298231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439213, 31.507835, 27.171690>,  <35.637196, 31.395416, 27.095766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439213, 31.507835, 27.171690>,  <35.109238, 31.695198, 27.298231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439213, 31.507835, 27.171690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525658, 0.430034, 0.733999,
		-0.207770, -0.771792, 0.600973,
		0.824934, -0.468409, -0.316351,
		35.686691, 31.367313, 27.076784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475166, 31.391644, 27.873264>,  <35.109238, 31.695198, 27.298231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475166, 31.391644, 27.873264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778259, 31.386267, 27.612295>,  <35.960117, 31.383041, 27.455713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778259, 31.386267, 27.612295>,  <35.475166, 31.391644, 27.873264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778259, 31.386267, 27.612295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628739, 0.282710, 0.724405,
		0.174710, -0.959112, 0.222670,
		0.757736, -0.013441, -0.652423,
		36.005581, 31.382235, 27.416569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066589, 31.166491, 28.303938>,  <35.475166, 31.391644, 27.873264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066589, 31.166491, 28.303938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222889, 31.337013, 27.977606>,  <36.316669, 31.439327, 27.781807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222889, 31.337013, 27.977606>,  <36.066589, 31.166491, 28.303938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222889, 31.337013, 27.977606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672543, 0.472918, 0.569241,
		0.628491, -0.771111, -0.101915,
		0.390751, 0.426305, -0.815830,
		36.340115, 31.464905, 27.732857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763836, 30.955013, 28.417372>,  <36.066589, 31.166491, 28.303938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763836, 30.955013, 28.417372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776085, 31.240227, 28.137188>,  <36.783432, 31.411354, 27.969078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776085, 31.240227, 28.137188>,  <36.763836, 30.955013, 28.417372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776085, 31.240227, 28.137188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740183, 0.454772, 0.495289,
		0.671708, -0.533633, -0.513852,
		0.030618, 0.713034, -0.700460,
		36.785271, 31.454138, 27.927050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495258, 31.006054, 28.131851>,  <36.763836, 30.955013, 28.417372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495258, 31.006054, 28.131851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317261, 31.356825, 28.059210>,  <37.210461, 31.567287, 28.015625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317261, 31.356825, 28.059210>,  <37.495258, 31.006054, 28.131851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317261, 31.356825, 28.059210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717380, 0.470449, 0.513852,
		0.536046, 0.098382, -0.838436,
		-0.444995, 0.876926, -0.181605,
		37.183762, 31.619904, 28.004728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091663, 31.402578, 28.008284>,  <37.495258, 31.006054, 28.131851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091663, 31.402578, 28.008284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795345, 31.656105, 28.097279>,  <37.617554, 31.808220, 28.150677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795345, 31.656105, 28.097279>,  <38.091663, 31.402578, 28.008284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795345, 31.656105, 28.097279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622626, 0.523574, 0.581556,
		0.252109, 0.569341, -0.782491,
		-0.740795, 0.633815, 0.222489,
		37.573105, 31.846249, 28.164024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493992, 31.982355, 28.127771>,  <38.091663, 31.402578, 28.008284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493992, 31.982355, 28.127771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150940, 32.056511, 28.319645>,  <37.945107, 32.101006, 28.434769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150940, 32.056511, 28.319645>,  <38.493992, 31.982355, 28.127771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150940, 32.056511, 28.319645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494793, 0.551692, 0.671428,
		-0.140162, 0.813183, -0.564879,
		-0.857633, 0.185389, 0.479683,
		37.893650, 32.112129, 28.463551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592747, 32.660976, 28.406998>,  <38.493992, 31.982355, 28.127771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592747, 32.660976, 28.406998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279575, 32.497559, 28.594662>,  <38.091671, 32.399509, 28.707260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.279575, 32.497559, 28.594662>,  <38.592747, 32.660976, 28.406998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279575, 32.497559, 28.594662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253051, 0.479798, 0.840095,
		-0.568316, 0.776459, -0.272267,
		-0.782932, -0.408541, 0.469161,
		38.044697, 32.374996, 28.735411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414158, 33.140415, 28.912819>,  <38.592747, 32.660976, 28.406998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414158, 33.140415, 28.912819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270306, 32.796772, 29.058474>,  <38.183994, 32.590588, 29.145866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270306, 32.796772, 29.058474>,  <38.414158, 33.140415, 28.912819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270306, 32.796772, 29.058474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129236, 0.340625, 0.931275,
		-0.924100, 0.381978, -0.011473,
		-0.359634, -0.859108, 0.364137,
		38.162415, 32.539040, 29.167715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.000195, 36.876934, 32.969059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932457, 36.519352, 33.135033>,  <36.891815, 36.304802, 33.234619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.932457, 36.519352, 33.135033>,  <37.000195, 36.876934, 32.969059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932457, 36.519352, 33.135033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146495, 0.439171, 0.886379,
		-0.974609, 0.089313, -0.205328,
		-0.169339, -0.893953, 0.414936,
		36.881657, 36.251167, 33.259514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462013, 37.000370, 33.399837>,  <37.000195, 36.876934, 32.969059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462013, 37.000370, 33.399837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.606022, 36.650173, 33.528774>,  <36.692429, 36.440056, 33.606136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.606022, 36.650173, 33.528774>,  <36.462013, 37.000370, 33.399837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606022, 36.650173, 33.528774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205101, 0.262784, 0.942803,
		-0.910119, -0.405544, -0.084955,
		0.360023, -0.875488, 0.322342,
		36.714027, 36.387527, 33.625477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139893, 37.014603, 34.027851>,  <36.462013, 37.000370, 33.399837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139893, 37.014603, 34.027851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395504, 36.709320, 34.066147>,  <36.548870, 36.526150, 34.089123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.395504, 36.709320, 34.066147>,  <36.139893, 37.014603, 34.027851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395504, 36.709320, 34.066147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017287, 0.110185, 0.993761,
		-0.768991, -0.636693, 0.057217,
		0.639025, -0.763204, 0.095738,
		36.587212, 36.480358, 34.094868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951061, 36.549488, 34.499329>,  <36.139893, 37.014603, 34.027851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951061, 36.549488, 34.499329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349186, 36.510834, 34.498318>,  <36.588062, 36.487640, 34.497711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349186, 36.510834, 34.498318>,  <35.951061, 36.549488, 34.499329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349186, 36.510834, 34.498318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024770, 0.229677, 0.972952,
		-0.093446, -0.968457, 0.230995,
		0.995316, -0.096640, -0.002526,
		36.647781, 36.481842, 34.497559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068195, 36.173096, 35.028595>,  <35.951061, 36.549488, 34.499329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068195, 36.173096, 35.028595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434555, 36.315407, 34.954254>,  <36.654373, 36.400795, 34.909649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434555, 36.315407, 34.954254>,  <36.068195, 36.173096, 35.028595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434555, 36.315407, 34.954254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161590, 0.097025, 0.982077,
		0.367437, -0.929519, 0.031375,
		0.915903, 0.355781, -0.185852,
		36.709328, 36.422142, 34.898499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464493, 35.797684, 35.448177>,  <36.068195, 36.173096, 35.028595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464493, 35.797684, 35.448177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.707047, 36.107723, 35.377159>,  <36.852577, 36.293747, 35.334549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.707047, 36.107723, 35.377159>,  <36.464493, 35.797684, 35.448177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707047, 36.107723, 35.377159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298344, -0.014805, 0.954343,
		0.737083, -0.631666, -0.240224,
		0.606382, 0.775099, -0.177541,
		36.888962, 36.340252, 35.323898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009232, 35.610764, 35.762505>,  <36.464493, 35.797684, 35.448177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009232, 35.610764, 35.762505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.027626, 36.006832, 35.709663>,  <37.038662, 36.244473, 35.677959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.027626, 36.006832, 35.709663>,  <37.009232, 35.610764, 35.762505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027626, 36.006832, 35.709663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206317, 0.119978, 0.971102,
		0.977404, -0.071914, -0.198771,
		0.045988, 0.990169, -0.132104,
		37.041424, 36.303883, 35.670033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526043, 35.739185, 36.146729>,  <37.009232, 35.610764, 35.762505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526043, 35.739185, 36.146729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.335915, 36.086037, 36.087196>,  <37.221836, 36.294147, 36.051476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.335915, 36.086037, 36.087196>,  <37.526043, 35.739185, 36.146729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335915, 36.086037, 36.087196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112741, 0.227800, 0.967159,
		0.872557, 0.442935, -0.206040,
		-0.475324, 0.867131, -0.148832,
		37.193317, 36.346176, 36.042545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927753, 36.271591, 36.406586>,  <37.526043, 35.739185, 36.146729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927753, 36.271591, 36.406586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575329, 36.459698, 36.386269>,  <37.363876, 36.572563, 36.374077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575329, 36.459698, 36.386269>,  <37.927753, 36.271591, 36.406586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575329, 36.459698, 36.386269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082414, 0.258368, 0.962525,
		0.465770, 0.843856, -0.266394,
		-0.881060, 0.470270, -0.050794,
		37.311012, 36.600780, 36.371029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026505, 36.963840, 36.648476>,  <37.927753, 36.271591, 36.406586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026505, 36.963840, 36.648476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639439, 36.877857, 36.701271>,  <37.407200, 36.826267, 36.732948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639439, 36.877857, 36.701271>,  <38.026505, 36.963840, 36.648476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639439, 36.877857, 36.701271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084320, 0.217497, 0.972412,
		-0.237734, 0.952097, -0.192339,
		-0.967664, -0.214957, 0.131987,
		37.349140, 36.813370, 36.740868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811394, 37.480835, 37.016819>,  <38.026505, 36.963840, 36.648476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811394, 37.480835, 37.016819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580593, 37.159203, 37.074127>,  <37.442112, 36.966225, 37.108513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580593, 37.159203, 37.074127>,  <37.811394, 37.480835, 37.016819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580593, 37.159203, 37.074127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162284, 0.059047, 0.984976,
		-0.800458, 0.591584, 0.096418,
		-0.577002, -0.804079, 0.143269,
		37.407494, 36.917980, 37.117107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608341, 37.564205, 37.721924>,  <37.811394, 37.480835, 37.016819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608341, 37.564205, 37.721924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494961, 37.183388, 37.675854>,  <37.426933, 36.954895, 37.648212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494961, 37.183388, 37.675854>,  <37.608341, 37.564205, 37.721924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494961, 37.183388, 37.675854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189513, -0.173343, 0.966456,
		-0.940076, 0.252112, 0.229559,
		-0.283448, -0.952046, -0.115177,
		37.409927, 36.897774, 37.641300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205189, 37.507633, 38.238415>,  <37.608341, 37.564205, 37.721924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205189, 37.507633, 38.238415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265587, 37.121468, 38.153393>,  <37.301826, 36.889771, 38.102379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265587, 37.121468, 38.153393>,  <37.205189, 37.507633, 38.238415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265587, 37.121468, 38.153393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051150, -0.207103, 0.976981,
		-0.987210, -0.158394, 0.018108,
		0.150998, -0.965412, -0.212556,
		37.310886, 36.831844, 38.089626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038960, 37.260525, 38.986584>,  <37.205189, 37.507633, 38.238415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038960, 37.260525, 38.986584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127560, 37.630527, 38.863098>,  <37.180717, 37.852528, 38.789005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127560, 37.630527, 38.863098>,  <37.038960, 37.260525, 38.986584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127560, 37.630527, 38.863098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955115, -0.141926, 0.260024,
		0.196709, -0.352452, -0.914923,
		0.221497, 0.925005, -0.308714,
		37.194008, 37.908028, 38.770485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449059, 37.059765, 38.569885>,  <37.038960, 37.260525, 38.986584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449059, 37.059765, 38.569885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100929, 37.135620, 38.751690>,  <35.892052, 37.181133, 38.860771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100929, 37.135620, 38.751690>,  <36.449059, 37.059765, 38.569885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100929, 37.135620, 38.751690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489883, -0.238579, -0.838508,
		-0.050577, -0.952427, 0.300540,
		-0.870320, 0.189639, 0.454511,
		35.839832, 37.192513, 38.888042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062260, 36.683887, 38.189056>,  <36.449059, 37.059765, 38.569885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062260, 36.683887, 38.189056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.790234, 36.906559, 38.379894>,  <35.627018, 37.040161, 38.494396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.790234, 36.906559, 38.379894>,  <36.062260, 36.683887, 38.189056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790234, 36.906559, 38.379894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618502, -0.086214, -0.781040,
		-0.393653, -0.826245, 0.402936,
		-0.680068, 0.556675, 0.477096,
		35.586212, 37.073563, 38.523022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483082, 36.374996, 38.221821>,  <36.062260, 36.683887, 38.189056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483082, 36.374996, 38.221821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.351025, 36.751820, 38.245590>,  <35.271790, 36.977913, 38.259853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.351025, 36.751820, 38.245590>,  <35.483082, 36.374996, 38.221821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351025, 36.751820, 38.245590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625513, -0.171198, -0.761199,
		-0.706920, -0.288478, 0.645790,
		-0.330147, 0.942058, 0.059424,
		35.251980, 37.034435, 38.263416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763840, 36.334648, 38.076656>,  <35.483082, 36.374996, 38.221821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763840, 36.334648, 38.076656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.856457, 36.718708, 38.014053>,  <34.912025, 36.949146, 37.976494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.856457, 36.718708, 38.014053>,  <34.763840, 36.334648, 38.076656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856457, 36.718708, 38.014053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646269, 0.031566, -0.762456,
		-0.727135, 0.277683, 0.627827,
		0.231539, 0.960154, -0.156505,
		34.925919, 37.006756, 37.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170029, 36.578293, 37.996090>,  <34.763840, 36.334648, 38.076656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170029, 36.578293, 37.996090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.405148, 36.855297, 37.828796>,  <34.546219, 37.021500, 37.728420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.405148, 36.855297, 37.828796>,  <34.170029, 36.578293, 37.996090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405148, 36.855297, 37.828796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557632, -0.027733, -0.829625,
		-0.586126, 0.720870, 0.369867,
		0.587795, 0.692515, -0.418235,
		34.581486, 37.063053, 37.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816048, 37.038605, 37.620125>,  <34.170029, 36.578293, 37.996090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816048, 37.038605, 37.620125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.172356, 37.069374, 37.440968>,  <34.386143, 37.087837, 37.333473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.172356, 37.069374, 37.440968>,  <33.816048, 37.038605, 37.620125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172356, 37.069374, 37.440968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436298, -0.130976, -0.890219,
		-0.127145, 0.988397, -0.083107,
		0.890774, 0.076927, -0.447889,
		34.439587, 37.092453, 37.306602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648041, 37.491013, 37.022499>,  <33.816048, 37.038605, 37.620125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648041, 37.491013, 37.022499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.009960, 37.351891, 36.924221>,  <34.227112, 37.268417, 36.865253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.009960, 37.351891, 36.924221>,  <33.648041, 37.491013, 37.022499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009960, 37.351891, 36.924221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297421, -0.103237, -0.949148,
		0.304753, 0.931866, -0.196854,
		0.904802, -0.347804, -0.245695,
		34.281403, 37.247551, 36.850513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787712, 37.853855, 36.394699>,  <33.648041, 37.491013, 37.022499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787712, 37.853855, 36.394699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032501, 37.537697, 36.405750>,  <34.179375, 37.348003, 36.412380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032501, 37.537697, 36.405750>,  <33.787712, 37.853855, 36.394699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032501, 37.537697, 36.405750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060929, -0.081943, -0.994773,
		0.788525, 0.607095, -0.098305,
		0.611977, -0.790393, 0.027624,
		34.216095, 37.300579, 36.414036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257397, 37.912239, 35.911549>,  <33.787712, 37.853855, 36.394699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257397, 37.912239, 35.911549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253223, 37.514172, 35.950596>,  <34.250721, 37.275330, 35.974022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253223, 37.514172, 35.950596>,  <34.257397, 37.912239, 35.911549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253223, 37.514172, 35.950596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077372, -0.096523, -0.992319,
		0.996948, -0.017901, -0.075992,
		-0.010429, -0.995170, 0.097613,
		34.250095, 37.215622, 35.979881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707249, 37.646954, 35.345112>,  <34.257397, 37.912239, 35.911549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707249, 37.646954, 35.345112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.485157, 37.336266, 35.464054>,  <34.351902, 37.149853, 35.535419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.485157, 37.336266, 35.464054>,  <34.707249, 37.646954, 35.345112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485157, 37.336266, 35.464054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061202, -0.394715, -0.916763,
		0.829442, -0.490815, 0.266695,
		-0.555230, -0.776724, 0.297355,
		34.318588, 37.103249, 35.553261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010426, 37.055790, 34.939140>,  <34.707249, 37.646954, 35.345112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010426, 37.055790, 34.939140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.660419, 36.912880, 35.069805>,  <34.450417, 36.827133, 35.148205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.660419, 36.912880, 35.069805>,  <35.010426, 37.055790, 34.939140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660419, 36.912880, 35.069805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117896, -0.497192, -0.859593,
		0.469525, -0.790667, 0.392928,
		-0.875012, -0.357276, 0.326661,
		34.397915, 36.805698, 35.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091198, 36.389069, 34.756313>,  <35.010426, 37.055790, 34.939140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091198, 36.389069, 34.756313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.700356, 36.465656, 34.793427>,  <34.465851, 36.511608, 34.815693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.700356, 36.465656, 34.793427>,  <35.091198, 36.389069, 34.756313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700356, 36.465656, 34.793427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183132, -0.534855, -0.824860,
		-0.108311, -0.822964, 0.557673,
		-0.977104, 0.191469, 0.092780,
		34.407223, 36.523098, 34.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787987, 35.809437, 34.437626>,  <35.091198, 36.389069, 34.756313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787987, 35.809437, 34.437626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.516441, 36.103100, 34.442600>,  <34.353516, 36.279297, 34.445587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.516441, 36.103100, 34.442600>,  <34.787987, 35.809437, 34.437626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516441, 36.103100, 34.442600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383736, -0.340288, -0.858459,
		-0.626016, -0.587546, 0.512732,
		-0.678860, 0.734163, 0.012437,
		34.312782, 36.323349, 34.446331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112297, 35.500305, 34.520153>,  <34.787987, 35.809437, 34.437626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112297, 35.500305, 34.520153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.070415, 35.863220, 34.357243>,  <34.045284, 36.080967, 34.259499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.070415, 35.863220, 34.357243>,  <34.112297, 35.500305, 34.520153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070415, 35.863220, 34.357243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451807, -0.408220, -0.793238,
		-0.885950, 0.100952, 0.452661,
		-0.104706, 0.907285, -0.407273,
		34.039005, 36.135406, 34.235062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806973, 35.070343, 35.144627>,  <34.112297, 35.500305, 34.520153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806973, 35.070343, 35.144627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.659447, 34.699253, 35.167652>,  <33.570930, 34.476601, 35.181469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.659447, 34.699253, 35.167652>,  <33.806973, 35.070343, 35.144627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659447, 34.699253, 35.167652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244374, -0.037022, 0.968974,
		-0.896806, 0.371436, 0.240365,
		-0.368810, -0.927720, 0.057568,
		33.548805, 34.420937, 35.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391647, 35.059086, 35.772797>,  <33.806973, 35.070343, 35.144627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391647, 35.059086, 35.772797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.488792, 34.675228, 35.716080>,  <33.547077, 34.444912, 35.682049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.488792, 34.675228, 35.716080>,  <33.391647, 35.059086, 35.772797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488792, 34.675228, 35.716080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225804, -0.086225, 0.970349,
		-0.943415, -0.267675, 0.195750,
		0.242860, -0.959643, -0.141788,
		33.561649, 34.387337, 35.673542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312275, 34.720612, 36.422401>,  <33.391647, 35.059086, 35.772797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312275, 34.720612, 36.422401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.564419, 34.466770, 36.243546>,  <33.715706, 34.314468, 36.136230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.564419, 34.466770, 36.243546>,  <33.312275, 34.720612, 36.422401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564419, 34.466770, 36.243546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538087, -0.058002, 0.840891,
		-0.559564, -0.770662, 0.304907,
		0.630357, -0.634599, -0.447139,
		33.753525, 34.276390, 36.109406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436111, 34.273678, 36.910625>,  <33.312275, 34.720612, 36.422401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436111, 34.273678, 36.910625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.740360, 34.197231, 36.662457>,  <33.922909, 34.151363, 36.513554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.740360, 34.197231, 36.662457>,  <33.436111, 34.273678, 36.910625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740360, 34.197231, 36.662457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623022, -0.053736, 0.780356,
		-0.182480, -0.980095, 0.078199,
		0.760621, -0.191119, -0.620426,
		33.968548, 34.139896, 36.476330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738987, 33.659828, 37.130688>,  <33.436111, 34.273678, 36.910625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738987, 33.659828, 37.130688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015350, 33.864685, 36.926590>,  <34.181168, 33.987598, 36.804131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.015350, 33.864685, 36.926590>,  <33.738987, 33.659828, 37.130688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015350, 33.864685, 36.926590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651123, -0.134139, 0.747025,
		0.314142, -0.848359, -0.426148,
		0.690908, 0.512146, -0.510247,
		34.222622, 34.018330, 36.773518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251156, 33.457188, 37.411362>,  <33.738987, 33.659828, 37.130688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251156, 33.457188, 37.411362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411720, 33.760693, 37.206169>,  <34.508060, 33.942795, 37.083054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411720, 33.760693, 37.206169>,  <34.251156, 33.457188, 37.411362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411720, 33.760693, 37.206169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787416, 0.000183, 0.616422,
		0.467810, -0.651371, -0.597385,
		0.401411, 0.758759, -0.512985,
		34.532143, 33.988319, 37.052273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040573, 33.367485, 37.265434>,  <34.251156, 33.457188, 37.411362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040573, 33.367485, 37.265434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.934601, 33.753105, 37.257214>,  <34.871017, 33.984478, 37.252281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.934601, 33.753105, 37.257214>,  <35.040573, 33.367485, 37.265434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934601, 33.753105, 37.257214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824832, 0.237614, 0.513021,
		0.499460, 0.118965, -0.858130,
		-0.264935, 0.964047, -0.020552,
		34.855122, 34.042320, 37.251049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750484, 33.713669, 37.261517>,  <35.040573, 33.367485, 37.265434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750484, 33.713669, 37.261517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.504116, 34.025818, 37.304699>,  <35.356293, 34.213108, 37.330608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.504116, 34.025818, 37.304699>,  <35.750484, 33.713669, 37.261517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504116, 34.025818, 37.304699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705644, 0.485556, 0.516045,
		0.350291, 0.394020, -0.849732,
		-0.615925, 0.780374, 0.107952,
		35.319340, 34.259930, 37.337086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130413, 34.375519, 37.053612>,  <35.750484, 33.713669, 37.261517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130413, 34.375519, 37.053612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833969, 34.460781, 37.308273>,  <35.656105, 34.511940, 37.461071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833969, 34.460781, 37.308273>,  <36.130413, 34.375519, 37.053612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833969, 34.460781, 37.308273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654544, 0.440466, 0.614461,
		-0.149444, 0.872097, -0.465955,
		-0.741107, 0.213160, 0.636650,
		35.611637, 34.524731, 37.499268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336708, 34.961349, 37.382488>,  <36.130413, 34.375519, 37.053612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336708, 34.961349, 37.382488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.071461, 34.821495, 37.647221>,  <35.912312, 34.737583, 37.806061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.071461, 34.821495, 37.647221>,  <36.336708, 34.961349, 37.382488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071461, 34.821495, 37.647221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650219, 0.168930, 0.740728,
		-0.370790, 0.921529, 0.115320,
		-0.663121, -0.349638, 0.661833,
		35.872524, 34.716602, 37.845772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516132, 35.267578, 37.961155>,  <36.336708, 34.961349, 37.382488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516132, 35.267578, 37.961155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.299252, 34.962769, 38.102764>,  <36.169125, 34.779881, 38.187729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.299252, 34.962769, 38.102764>,  <36.516132, 35.267578, 37.961155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299252, 34.962769, 38.102764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694165, -0.168824, 0.699738,
		-0.473451, 0.625150, 0.620509,
		-0.542198, -0.762027, 0.354028,
		36.136593, 34.734161, 38.208973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365337, 35.524071, 38.680080>,  <36.516132, 35.267578, 37.961155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365337, 35.524071, 38.680080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361507, 35.126530, 38.635956>,  <36.359207, 34.888004, 38.609482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361507, 35.126530, 38.635956>,  <36.365337, 35.524071, 38.680080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361507, 35.126530, 38.635956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838442, -0.068098, 0.540720,
		-0.544906, -0.087311, 0.833939,
		-0.009579, -0.993851, -0.110312,
		36.358635, 34.828373, 38.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.280127, 34.369312, 32.499054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402884, 33.999866, 32.407177>,  <31.476538, 33.778198, 32.352051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402884, 33.999866, 32.407177>,  <31.280127, 34.369312, 32.499054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402884, 33.999866, 32.407177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459654, -0.067489, 0.885531,
		-0.833387, -0.377343, 0.403829,
		0.306894, -0.923611, -0.229691,
		31.494951, 33.722782, 32.338268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090897, 33.869320, 33.003422>,  <31.280127, 34.369312, 32.499054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090897, 33.869320, 33.003422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417988, 33.705650, 32.841484>,  <31.614243, 33.607449, 32.744324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417988, 33.705650, 32.841484>,  <31.090897, 33.869320, 33.003422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417988, 33.705650, 32.841484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381929, -0.140498, 0.913450,
		-0.430643, -0.901573, 0.041387,
		0.817727, -0.409178, -0.404841,
		31.663305, 33.582897, 32.720032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159132, 33.219498, 33.370571>,  <31.090897, 33.869320, 33.003422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159132, 33.219498, 33.370571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513042, 33.319481, 33.213249>,  <31.725389, 33.379471, 33.118855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513042, 33.319481, 33.213249>,  <31.159132, 33.219498, 33.370571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513042, 33.319481, 33.213249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435818, -0.144943, 0.888287,
		0.165029, -0.957346, -0.237179,
		0.884776, 0.249960, -0.393309,
		31.778475, 33.394470, 33.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646967, 32.911304, 33.851707>,  <31.159132, 33.219498, 33.370571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646967, 32.911304, 33.851707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875828, 33.161182, 33.639145>,  <32.013145, 33.311111, 33.511608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875828, 33.161182, 33.639145>,  <31.646967, 32.911304, 33.851707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875828, 33.161182, 33.639145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587893, 0.139396, 0.796838,
		0.571859, -0.768324, -0.287500,
		0.572153, 0.624698, -0.531407,
		32.047474, 33.348591, 33.479721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292690, 32.787205, 34.035961>,  <31.646967, 32.911304, 33.851707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292690, 32.787205, 34.035961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306293, 33.165272, 33.906033>,  <32.314457, 33.392113, 33.828075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306293, 33.165272, 33.906033>,  <32.292690, 32.787205, 34.035961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306293, 33.165272, 33.906033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676968, 0.217307, 0.703202,
		0.735227, -0.243805, -0.632456,
		0.034007, 0.945165, -0.324818,
		32.316494, 33.448822, 33.808586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965294, 33.010731, 34.013897>,  <32.292690, 32.787205, 34.035961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965294, 33.010731, 34.013897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770634, 33.357906, 34.053608>,  <32.653839, 33.566212, 34.077435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770634, 33.357906, 34.053608>,  <32.965294, 33.010731, 34.013897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770634, 33.357906, 34.053608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650470, 0.284144, 0.704380,
		0.583150, 0.407361, -0.702847,
		-0.486646, 0.867940, 0.099278,
		32.624641, 33.618290, 34.083393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465740, 33.451107, 33.967934>,  <32.965294, 33.010731, 34.013897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465740, 33.451107, 33.967934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171120, 33.676678, 34.117317>,  <32.994347, 33.812019, 34.206947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171120, 33.676678, 34.117317>,  <33.465740, 33.451107, 33.967934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171120, 33.676678, 34.117317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607273, 0.308226, 0.732268,
		0.297837, 0.766147, -0.569484,
		-0.736555, 0.563928, 0.373459,
		32.950153, 33.845856, 34.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771545, 34.134655, 34.070415>,  <33.465740, 33.451107, 33.967934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771545, 34.134655, 34.070415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449913, 34.137814, 34.308201>,  <33.256935, 34.139709, 34.450874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449913, 34.137814, 34.308201>,  <33.771545, 34.134655, 34.070415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449913, 34.137814, 34.308201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570084, 0.293963, 0.767197,
		-0.168695, 0.955784, -0.240870,
		-0.804081, 0.007894, 0.594467,
		33.208687, 34.140182, 34.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829376, 34.706104, 34.507587>,  <33.771545, 34.134655, 34.070415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829376, 34.706104, 34.507587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585526, 34.449078, 34.693260>,  <33.439217, 34.294861, 34.804665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585526, 34.449078, 34.693260>,  <33.829376, 34.706104, 34.507587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585526, 34.449078, 34.693260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573892, 0.046180, 0.817628,
		-0.546816, 0.764837, 0.340611,
		-0.609622, -0.642566, 0.464186,
		33.402637, 34.256310, 34.832516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523315, 35.401814, 34.120743>,  <33.829376, 34.706104, 34.507587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523315, 35.401814, 34.120743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667576, 35.753212, 33.995415>,  <33.754131, 35.964050, 33.920219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667576, 35.753212, 33.995415>,  <33.523315, 35.401814, 34.120743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667576, 35.753212, 33.995415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266567, -0.224826, -0.937227,
		-0.893796, 0.421533, 0.153095,
		0.360653, 0.878500, -0.313316,
		33.775772, 36.016762, 33.901421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010586, 35.717102, 33.674515>,  <33.523315, 35.401814, 34.120743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010586, 35.717102, 33.674515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344990, 35.912708, 33.574955>,  <33.545631, 36.030071, 33.515217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344990, 35.912708, 33.574955>,  <33.010586, 35.717102, 33.674515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344990, 35.912708, 33.574955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225998, -0.106483, -0.968290,
		-0.500012, 0.865751, 0.021496,
		0.836010, 0.489015, -0.248901,
		33.595791, 36.059414, 33.500286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824055, 36.161770, 33.229416>,  <33.010586, 35.717102, 33.674515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824055, 36.161770, 33.229416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217545, 36.127899, 33.166035>,  <33.453640, 36.107578, 33.128006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217545, 36.127899, 33.166035>,  <32.824055, 36.161770, 33.229416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217545, 36.127899, 33.166035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169699, -0.148366, -0.974264,
		0.058988, 0.985300, -0.160321,
		0.983729, -0.084676, -0.158452,
		33.512665, 36.102497, 33.118500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823311, 36.391266, 32.561859>,  <32.824055, 36.161770, 33.229416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823311, 36.391266, 32.561859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173153, 36.200581, 32.597191>,  <33.383060, 36.086170, 32.618389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173153, 36.200581, 32.597191>,  <32.823311, 36.391266, 32.561859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173153, 36.200581, 32.597191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025152, -0.137326, -0.990207,
		0.484176, 0.868265, -0.108116,
		0.874609, -0.476715, 0.088328,
		33.435535, 36.057568, 32.623688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284515, 36.702553, 32.090603>,  <32.823311, 36.391266, 32.561859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284515, 36.702553, 32.090603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401222, 36.334007, 32.193329>,  <33.471245, 36.112881, 32.254963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401222, 36.334007, 32.193329>,  <33.284515, 36.702553, 32.090603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401222, 36.334007, 32.193329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174071, -0.212864, -0.961451,
		0.940516, 0.325225, 0.098276,
		0.291768, -0.921367, 0.256814,
		33.488754, 36.057598, 32.270374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882969, 36.606766, 31.705343>,  <33.284515, 36.702553, 32.090603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882969, 36.606766, 31.705343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718140, 36.253201, 31.793783>,  <33.619244, 36.041061, 31.846848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718140, 36.253201, 31.793783>,  <33.882969, 36.606766, 31.705343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718140, 36.253201, 31.793783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169098, -0.312634, -0.934701,
		0.895322, -0.347777, 0.278297,
		-0.412073, -0.883918, 0.221100,
		33.594517, 35.988026, 31.860113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247887, 36.111244, 31.338858>,  <33.882969, 36.606766, 31.705343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247887, 36.111244, 31.338858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922348, 35.897007, 31.429005>,  <33.727024, 35.768463, 31.483093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922348, 35.897007, 31.429005>,  <34.247887, 36.111244, 31.338858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922348, 35.897007, 31.429005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069309, -0.474551, -0.877495,
		0.576931, -0.698527, 0.423334,
		-0.813847, -0.535595, 0.225369,
		33.678192, 35.736328, 31.496614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346020, 35.464100, 31.031185>,  <34.247887, 36.111244, 31.338858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346020, 35.464100, 31.031185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953133, 35.450150, 31.104977>,  <33.717400, 35.441780, 31.149252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953133, 35.450150, 31.104977>,  <34.346020, 35.464100, 31.031185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953133, 35.450150, 31.104977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140146, -0.517635, -0.844046,
		0.124929, -0.854891, 0.503542,
		-0.982218, -0.034877, 0.184477,
		33.658466, 35.439686, 31.160320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205875, 34.834538, 30.999664>,  <34.346020, 35.464100, 31.031185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205875, 34.834538, 30.999664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860348, 35.009090, 30.898952>,  <33.653030, 35.113823, 30.838526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860348, 35.009090, 30.898952>,  <34.205875, 34.834538, 30.999664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860348, 35.009090, 30.898952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040079, -0.557692, -0.829080,
		-0.502210, -0.706082, 0.499233,
		-0.863817, 0.436380, -0.251779,
		33.601204, 35.140003, 30.823420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863506, 34.312981, 30.592279>,  <34.205875, 34.834538, 30.999664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863506, 34.312981, 30.592279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655972, 34.646801, 30.518169>,  <33.531452, 34.847095, 30.473703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655972, 34.646801, 30.518169>,  <33.863506, 34.312981, 30.592279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655972, 34.646801, 30.518169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203772, -0.331213, -0.921290,
		-0.830232, -0.440246, 0.341904,
		-0.518837, 0.834555, -0.185274,
		33.500320, 34.897167, 30.462587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208118, 34.095306, 30.367048>,  <33.863506, 34.312981, 30.592279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208118, 34.095306, 30.367048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248158, 34.472858, 30.241140>,  <33.272182, 34.699390, 30.165596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248158, 34.472858, 30.241140>,  <33.208118, 34.095306, 30.367048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248158, 34.472858, 30.241140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188082, -0.292703, -0.937523,
		-0.977039, 0.153050, 0.148226,
		0.100102, 0.943875, -0.314768,
		33.278187, 34.756020, 30.146709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558239, 34.299084, 30.007509>,  <33.208118, 34.095306, 30.367048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558239, 34.299084, 30.007509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829819, 34.557587, 29.868149>,  <32.992767, 34.712688, 29.784533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829819, 34.557587, 29.868149>,  <32.558239, 34.299084, 30.007509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829819, 34.557587, 29.868149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302304, -0.186367, -0.934815,
		-0.669060, 0.740014, 0.068832,
		0.678948, 0.646256, -0.348400,
		33.033504, 34.751465, 29.763628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088314, 34.715389, 29.576422>,  <32.558239, 34.299084, 30.007509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088314, 34.715389, 29.576422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461815, 34.776943, 29.447165>,  <32.685917, 34.813877, 29.369610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461815, 34.776943, 29.447165>,  <32.088314, 34.715389, 29.576422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461815, 34.776943, 29.447165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321007, -0.039235, -0.946264,
		-0.158295, 0.987309, 0.012763,
		0.933754, 0.153886, -0.323144,
		32.741940, 34.823109, 29.350222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105305, 35.319473, 29.116886>,  <32.088314, 34.715389, 29.576422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105305, 35.319473, 29.116886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439796, 35.122772, 29.019806>,  <32.640491, 35.004749, 28.961557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439796, 35.122772, 29.019806>,  <32.105305, 35.319473, 29.116886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439796, 35.122772, 29.019806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206352, 0.127874, -0.970086,
		0.508081, 0.861292, 0.005456,
		0.836225, -0.491757, -0.242699,
		32.690662, 34.975246, 28.946997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.546692, 28.707909, 29.947342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315529, 29.015760, 29.838755>,  <36.176830, 29.200472, 29.773602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.315529, 29.015760, 29.838755>,  <36.546692, 28.707909, 29.947342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315529, 29.015760, 29.838755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512401, 0.601086, 0.613303,
		0.635193, 0.215330, -0.741730,
		-0.577906, 0.769629, -0.271470,
		36.142159, 29.246649, 29.757313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987415, 29.229465, 29.699671>,  <36.546692, 28.707909, 29.947342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987415, 29.229465, 29.699671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655930, 29.393808, 29.851686>,  <36.457039, 29.492414, 29.942896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655930, 29.393808, 29.851686>,  <36.987415, 29.229465, 29.699671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655930, 29.393808, 29.851686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549384, 0.467575, 0.692496,
		0.106817, 0.782670, -0.613203,
		-0.828714, 0.410855, 0.380041,
		36.407314, 29.517065, 29.965698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086880, 30.009296, 29.791758>,  <36.987415, 29.229465, 29.699671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086880, 30.009296, 29.791758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797253, 29.894848, 30.042791>,  <36.623478, 29.826180, 30.193411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.797253, 29.894848, 30.042791>,  <37.086880, 30.009296, 29.791758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797253, 29.894848, 30.042791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445336, 0.500880, 0.742156,
		-0.526690, 0.816857, -0.235251,
		-0.724068, -0.286120, 0.627584,
		36.580032, 29.809011, 30.231066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062992, 30.596420, 30.267479>,  <37.086880, 30.009296, 29.791758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062992, 30.596420, 30.267479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881210, 30.280928, 30.433069>,  <36.772141, 30.091633, 30.532423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881210, 30.280928, 30.433069>,  <37.062992, 30.596420, 30.267479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881210, 30.280928, 30.433069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566204, 0.102997, 0.817805,
		-0.687666, 0.606049, 0.399776,
		-0.454454, -0.788731, 0.413975,
		36.744873, 30.044308, 30.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770535, 30.813206, 30.849957>,  <37.062992, 30.596420, 30.267479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770535, 30.813206, 30.849957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835159, 30.427668, 30.934713>,  <36.873936, 30.196344, 30.985567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835159, 30.427668, 30.934713>,  <36.770535, 30.813206, 30.849957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835159, 30.427668, 30.934713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341834, 0.256078, 0.904198,
		-0.925768, -0.073654, 0.370848,
		0.161564, -0.963846, 0.211892,
		36.883629, 30.138514, 30.998281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439384, 30.734142, 31.436457>,  <36.770535, 30.813206, 30.849957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439384, 30.734142, 31.436457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.721119, 30.450243, 31.431274>,  <36.890160, 30.279903, 31.428165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.721119, 30.450243, 31.431274>,  <36.439384, 30.734142, 31.436457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721119, 30.450243, 31.431274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264081, 0.245039, 0.932854,
		-0.658916, -0.660466, 0.360021,
		0.704338, -0.709747, -0.012956,
		36.932419, 30.237320, 31.427387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574604, 30.551407, 32.099613>,  <36.439384, 30.734142, 31.436457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574604, 30.551407, 32.099613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878162, 30.359812, 31.923138>,  <37.060299, 30.244854, 31.817253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878162, 30.359812, 31.923138>,  <36.574604, 30.551407, 32.099613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878162, 30.359812, 31.923138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524569, 0.048198, 0.850003,
		-0.385878, -0.876497, 0.287840,
		0.758898, -0.478989, -0.441184,
		37.105831, 30.216116, 31.790783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735630, 30.188395, 32.615566>,  <36.574604, 30.551407, 32.099613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735630, 30.188395, 32.615566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055840, 30.208506, 32.376690>,  <37.247967, 30.220572, 32.233364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055840, 30.208506, 32.376690>,  <36.735630, 30.188395, 32.615566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055840, 30.208506, 32.376690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581044, 0.178977, 0.793949,
		0.146793, -0.982568, 0.114068,
		0.800524, 0.050268, -0.597188,
		37.295998, 30.223589, 32.197533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380909, 29.811756, 32.954685>,  <36.735630, 30.188395, 32.615566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380909, 29.811756, 32.954685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517586, 30.054459, 32.667603>,  <37.599590, 30.200079, 32.495354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517586, 30.054459, 32.667603>,  <37.380909, 29.811756, 32.954685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517586, 30.054459, 32.667603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719891, 0.321942, 0.614906,
		0.604156, -0.726775, -0.326793,
		0.341690, 0.606754, -0.717703,
		37.620094, 30.236485, 32.452293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187874, 29.700289, 32.853451>,  <37.380909, 29.811756, 32.954685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187874, 29.700289, 32.853451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.066288, 30.070204, 32.761913>,  <37.993336, 30.292152, 32.706989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.066288, 30.070204, 32.761913>,  <38.187874, 29.700289, 32.853451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066288, 30.070204, 32.761913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638988, 0.376077, 0.671015,
		0.706611, 0.057735, -0.705243,
		-0.303966, 0.924788, -0.228848,
		37.975098, 30.347641, 32.693260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833035, 30.073582, 33.030750>,  <38.187874, 29.700289, 32.853451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833035, 30.073582, 33.030750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569794, 30.367325, 32.964279>,  <38.411850, 30.543571, 32.924397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569794, 30.367325, 32.964279>,  <38.833035, 30.073582, 33.030750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569794, 30.367325, 32.964279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427343, 0.546029, 0.720576,
		0.619899, 0.403200, -0.673168,
		-0.658106, 0.734358, -0.166178,
		38.372360, 30.587633, 32.914425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279739, 30.711954, 32.981911>,  <38.833035, 30.073582, 33.030750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279739, 30.711954, 32.981911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900734, 30.812958, 33.060360>,  <38.673332, 30.873560, 33.107430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900734, 30.812958, 33.060360>,  <39.279739, 30.711954, 32.981911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900734, 30.812958, 33.060360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292277, 0.435381, 0.851480,
		0.129616, 0.864108, -0.486330,
		-0.947509, 0.252508, 0.196127,
		38.616482, 30.888710, 33.119198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310116, 31.396292, 33.193100>,  <39.279739, 30.711954, 32.981911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310116, 31.396292, 33.193100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957577, 31.284075, 33.345165>,  <38.746052, 31.216743, 33.436405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957577, 31.284075, 33.345165>,  <39.310116, 31.396292, 33.193100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957577, 31.284075, 33.345165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199490, 0.508417, 0.837685,
		-0.428287, 0.814130, -0.392126,
		-0.881348, -0.280544, 0.380158,
		38.693172, 31.199911, 33.459213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103947, 31.966066, 33.519417>,  <39.310116, 31.396292, 33.193100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103947, 31.966066, 33.519417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887318, 31.672445, 33.683300>,  <38.757339, 31.496273, 33.781631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887318, 31.672445, 33.683300>,  <39.103947, 31.966066, 33.519417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887318, 31.672445, 33.683300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264817, 0.313584, 0.911886,
		-0.797852, 0.602352, 0.024561,
		-0.541575, -0.734055, 0.409707,
		38.724846, 31.452229, 33.806213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666069, 32.608124, 33.425777>,  <39.103947, 31.966066, 33.519417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666069, 32.608124, 33.425777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670357, 32.976784, 33.270622>,  <38.672928, 33.197979, 33.177528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670357, 32.976784, 33.270622>,  <38.666069, 32.608124, 33.425777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670357, 32.976784, 33.270622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216706, -0.376547, -0.900695,
		-0.976178, 0.093711, 0.195690,
		0.010719, 0.921646, -0.387885,
		38.673573, 33.253277, 33.154259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950256, 32.731121, 33.030930>,  <38.666069, 32.608124, 33.425777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950256, 32.731121, 33.030930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248993, 32.930019, 32.854305>,  <38.428234, 33.049358, 32.748333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248993, 32.930019, 32.854305>,  <37.950256, 32.731121, 33.030930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248993, 32.930019, 32.854305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265230, -0.386165, -0.883476,
		-0.609820, 0.776931, -0.156519,
		0.746842, 0.497247, -0.441557,
		38.473045, 33.079193, 32.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637802, 32.774910, 32.413715>,  <37.950256, 32.731121, 33.030930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637802, 32.774910, 32.413715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020294, 32.878857, 32.359924>,  <38.249790, 32.941227, 32.327648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020294, 32.878857, 32.359924>,  <37.637802, 32.774910, 32.413715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020294, 32.878857, 32.359924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093359, -0.164612, -0.981930,
		-0.277312, 0.951509, -0.133147,
		0.956233, 0.259871, -0.134481,
		38.307163, 32.956818, 32.319580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713017, 33.457188, 31.909992>,  <37.637802, 32.774910, 32.413715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713017, 33.457188, 31.909992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.052563, 33.245789, 31.905708>,  <38.256290, 33.118950, 31.903139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.052563, 33.245789, 31.905708>,  <37.713017, 33.457188, 31.909992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052563, 33.245789, 31.905708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033947, -0.034287, -0.998835,
		0.527520, 0.848239, -0.047047,
		0.848864, -0.528502, -0.010708,
		38.307220, 33.087238, 31.902496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206741, 33.790649, 31.425825>,  <37.713017, 33.457188, 31.909992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206741, 33.790649, 31.425825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348869, 33.420479, 31.478472>,  <38.434147, 33.198376, 31.510059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348869, 33.420479, 31.478472>,  <38.206741, 33.790649, 31.425825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348869, 33.420479, 31.478472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099728, -0.102468, -0.989725,
		0.929408, 0.364798, 0.055883,
		0.355323, -0.925431, 0.131615,
		38.455467, 33.142849, 31.517956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836731, 33.636192, 30.908089>,  <38.206741, 33.790649, 31.425825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836731, 33.636192, 30.908089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698711, 33.276886, 31.016943>,  <38.615902, 33.061302, 31.082256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.698711, 33.276886, 31.016943>,  <38.836731, 33.636192, 30.908089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698711, 33.276886, 31.016943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017219, -0.283835, -0.958719,
		0.938428, -0.335487, 0.082469,
		-0.345045, -0.898268, 0.272136,
		38.595200, 33.007404, 31.098583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245087, 33.090942, 30.457504>,  <38.836731, 33.636192, 30.908089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245087, 33.090942, 30.457504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912083, 32.919769, 30.598246>,  <38.712280, 32.817066, 30.682690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912083, 32.919769, 30.598246>,  <39.245087, 33.090942, 30.457504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912083, 32.919769, 30.598246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217045, -0.332405, -0.917823,
		0.509722, -0.840466, 0.183850,
		-0.832511, -0.427931, 0.351853,
		38.662331, 32.791389, 30.703802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275814, 32.407169, 30.317154>,  <39.245087, 33.090942, 30.457504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275814, 32.407169, 30.317154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892784, 32.517559, 30.350334>,  <38.662964, 32.583794, 30.370243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892784, 32.517559, 30.350334>,  <39.275814, 32.407169, 30.317154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892784, 32.517559, 30.350334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196851, -0.416218, -0.887700,
		-0.210457, -0.866372, 0.452888,
		-0.957579, 0.275974, 0.082951,
		38.605511, 32.600353, 30.375219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805477, 31.799351, 30.265137>,  <39.275814, 32.407169, 30.317154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805477, 31.799351, 30.265137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565289, 32.101368, 30.159809>,  <38.421173, 32.282578, 30.096613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565289, 32.101368, 30.159809>,  <38.805477, 31.799351, 30.265137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565289, 32.101368, 30.159809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253248, -0.491909, -0.833001,
		-0.758482, -0.433511, 0.486593,
		-0.600475, 0.755045, -0.263319,
		38.385147, 32.327881, 30.080814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512440, 31.457983, 29.732037>,  <38.805477, 31.799351, 30.265137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512440, 31.457983, 29.732037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403164, 31.841972, 29.707331>,  <38.337597, 32.072365, 29.692507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403164, 31.841972, 29.707331>,  <38.512440, 31.457983, 29.732037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403164, 31.841972, 29.707331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545505, -0.207486, -0.812018,
		-0.792333, -0.188141, 0.580355,
		-0.273189, 0.959975, -0.061766,
		38.321205, 32.129967, 29.688801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760220, 31.383764, 29.573126>,  <38.512440, 31.457983, 29.732037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760220, 31.383764, 29.573126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892048, 31.741091, 29.450901>,  <37.971146, 31.955486, 29.377567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.892048, 31.741091, 29.450901>,  <37.760220, 31.383764, 29.573126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892048, 31.741091, 29.450901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568306, -0.070740, -0.819771,
		-0.753932, 0.443822, 0.484365,
		0.329568, 0.893319, -0.305560,
		37.990917, 32.009087, 29.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061741, 31.839466, 29.413452>,  <37.760220, 31.383764, 29.573126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061741, 31.839466, 29.413452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366234, 31.998367, 29.208431>,  <37.548931, 32.093708, 29.085419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.366234, 31.998367, 29.208431>,  <37.061741, 31.839466, 29.413452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366234, 31.998367, 29.208431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501472, -0.140510, -0.853688,
		-0.411150, 0.906888, 0.092251,
		0.761236, 0.397255, -0.512550,
		37.594604, 32.117542, 29.054667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835556, 32.370491, 29.095390>,  <37.061741, 31.839466, 29.413452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835556, 32.370491, 29.095390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.161476, 32.288155, 28.878605>,  <37.357029, 32.238754, 28.748533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.161476, 32.288155, 28.878605>,  <36.835556, 32.370491, 29.095390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161476, 32.288155, 28.878605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575307, -0.171732, -0.799706,
		0.071538, 0.963399, -0.258349,
		0.814803, -0.205839, -0.541965,
		37.405918, 32.226402, 28.716015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548046, 32.598572, 28.496319>,  <36.835556, 32.370491, 29.095390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548046, 32.598572, 28.496319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864754, 32.368359, 28.414480>,  <37.054779, 32.230232, 28.365377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864754, 32.368359, 28.414480>,  <36.548046, 32.598572, 28.496319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864754, 32.368359, 28.414480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457967, -0.337707, -0.822326,
		0.404179, 0.744795, -0.530961,
		0.791773, -0.575530, -0.204598,
		37.102287, 32.195698, 28.353102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762459, 33.369579, 28.428312>,  <36.548046, 32.598572, 28.496319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762459, 33.369579, 28.428312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640114, 33.738632, 28.334335>,  <36.566708, 33.960064, 28.277948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640114, 33.738632, 28.334335>,  <36.762459, 33.369579, 28.428312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640114, 33.738632, 28.334335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335047, 0.335294, 0.880523,
		0.891173, 0.190606, -0.411680,
		-0.305867, 0.922631, -0.234943,
		36.548355, 34.015423, 28.263853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382565, 33.810532, 28.402098>,  <36.762459, 33.369579, 28.428312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382565, 33.810532, 28.402098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053658, 34.031704, 28.455992>,  <36.856316, 34.164406, 28.488329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053658, 34.031704, 28.455992>,  <37.382565, 33.810532, 28.402098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053658, 34.031704, 28.455992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436276, 0.460402, 0.773106,
		0.365440, 0.694478, -0.619801,
		-0.822263, 0.552929, 0.134735,
		36.806980, 34.197582, 28.496412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617878, 34.379543, 28.710270>,  <37.382565, 33.810532, 28.402098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617878, 34.379543, 28.710270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223763, 34.421776, 28.764013>,  <36.987293, 34.447117, 28.796259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223763, 34.421776, 28.764013>,  <37.617878, 34.379543, 28.710270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223763, 34.421776, 28.764013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169537, 0.505585, 0.845956,
		0.021387, 0.856292, -0.516049,
		-0.985292, 0.105582, 0.134360,
		36.928177, 34.453449, 28.804321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570801, 35.069885, 28.901388>,  <37.617878, 34.379543, 28.710270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570801, 35.069885, 28.901388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.260021, 34.867279, 29.050947>,  <37.073555, 34.745716, 29.140682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.260021, 34.867279, 29.050947>,  <37.570801, 35.069885, 28.901388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260021, 34.867279, 29.050947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120214, 0.463613, 0.877845,
		-0.617982, 0.726987, -0.299313,
		-0.776947, -0.506511, 0.373898,
		37.026936, 34.715324, 29.163116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190186, 35.562321, 29.418201>,  <37.570801, 35.069885, 28.901388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190186, 35.562321, 29.418201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035603, 35.203197, 29.502666>,  <36.942852, 34.987724, 29.553345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035603, 35.203197, 29.502666>,  <37.190186, 35.562321, 29.418201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035603, 35.203197, 29.502666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058738, 0.252443, 0.965827,
		-0.920435, 0.360847, -0.150294,
		-0.386457, -0.897810, 0.211161,
		36.919666, 34.933853, 29.566015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578434, 35.711048, 29.744936>,  <37.190186, 35.562321, 29.418201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578434, 35.711048, 29.744936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650719, 35.330647, 29.845287>,  <36.694092, 35.102406, 29.905499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650719, 35.330647, 29.845287>,  <36.578434, 35.711048, 29.744936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650719, 35.330647, 29.845287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205512, 0.212935, 0.955209,
		-0.961825, -0.224178, -0.156962,
		0.180714, -0.951001, 0.250877,
		36.704933, 35.045345, 29.920551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106636, 35.405010, 30.349554>,  <36.578434, 35.711048, 29.744936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106636, 35.405010, 30.349554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434494, 35.175949, 30.343132>,  <36.631207, 35.038513, 30.339279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434494, 35.175949, 30.343132>,  <36.106636, 35.405010, 30.349554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434494, 35.175949, 30.343132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012000, -0.045179, 0.998907,
		-0.572750, -0.818554, -0.043902,
		0.819642, -0.572651, -0.016054,
		36.680386, 35.004154, 30.338316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892895, 34.828136, 30.888298>,  <36.106636, 35.405010, 30.349554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892895, 34.828136, 30.888298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290554, 34.845020, 30.848511>,  <36.529148, 34.855152, 30.824638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290554, 34.845020, 30.848511>,  <35.892895, 34.828136, 30.888298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290554, 34.845020, 30.848511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096125, 0.074935, 0.992545,
		0.049349, -0.996294, 0.070439,
		0.994145, 0.042211, -0.099467,
		36.588799, 34.857685, 30.818670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153843, 34.454891, 31.504576>,  <35.892895, 34.828136, 30.888298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153843, 34.454891, 31.504576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471661, 34.661160, 31.376333>,  <36.662350, 34.784920, 31.299387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471661, 34.661160, 31.376333>,  <36.153843, 34.454891, 31.504576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471661, 34.661160, 31.376333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255255, 0.195434, 0.946916,
		0.550951, -0.834202, 0.023654,
		0.794542, 0.515667, -0.320608,
		36.710022, 34.815861, 31.280151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657120, 34.301334, 31.988317>,  <36.153843, 34.454891, 31.504576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657120, 34.301334, 31.988317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756657, 34.647194, 31.813755>,  <36.816380, 34.854710, 31.709017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756657, 34.647194, 31.813755>,  <36.657120, 34.301334, 31.988317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756657, 34.647194, 31.813755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237599, 0.382316, 0.892962,
		0.938947, -0.325901, -0.110303,
		0.248846, 0.864652, -0.436408,
		36.831310, 34.906590, 31.682833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444702, 34.545097, 32.186169>,  <36.657120, 34.301334, 31.988317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444702, 34.545097, 32.186169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236320, 34.866501, 32.070946>,  <37.111290, 35.059345, 32.001812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.236320, 34.866501, 32.070946>,  <37.444702, 34.545097, 32.186169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236320, 34.866501, 32.070946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269274, 0.474936, 0.837811,
		0.809998, 0.358896, -0.463785,
		-0.520955, 0.803511, -0.288056,
		37.080032, 35.107555, 31.984529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837543, 34.975849, 32.569824>,  <37.444702, 34.545097, 32.186169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837543, 34.975849, 32.569824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513710, 35.184887, 32.462891>,  <37.319408, 35.310310, 32.398731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513710, 35.184887, 32.462891>,  <37.837543, 34.975849, 32.569824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513710, 35.184887, 32.462891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020429, 0.430057, 0.902571,
		0.586646, 0.736169, -0.337491,
		-0.809585, 0.522595, -0.267331,
		37.270836, 35.341667, 32.382690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892853, 35.658733, 32.648094>,  <37.837543, 34.975849, 32.569824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892853, 35.658733, 32.648094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.493492, 35.638016, 32.638962>,  <37.253876, 35.625587, 32.633484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.493492, 35.638016, 32.638962>,  <37.892853, 35.658733, 32.648094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493492, 35.638016, 32.638962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044032, 0.457268, 0.888238,
		-0.035563, 0.887820, -0.458815,
		-0.998397, -0.051791, -0.022831,
		37.193974, 35.622478, 32.632111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554131, 36.355747, 32.719036>,  <37.892853, 35.658733, 32.648094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554131, 36.355747, 32.719036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265831, 36.118500, 32.862553>,  <37.092850, 35.976151, 32.948662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.265831, 36.118500, 32.862553>,  <37.554131, 36.355747, 32.719036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265831, 36.118500, 32.862553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120619, 0.616997, 0.777667,
		-0.682622, 0.517225, -0.516240,
		-0.720748, -0.593121, 0.358789,
		37.049606, 35.940563, 32.970188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.642330, 35.816170, 28.562719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727051, 35.427010, 28.525621>,  <32.777885, 35.193512, 28.503363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727051, 35.427010, 28.525621>,  <32.642330, 35.816170, 28.562719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727051, 35.427010, 28.525621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042758, 0.104033, -0.993654,
		0.976376, 0.206495, 0.063634,
		0.211804, -0.972901, -0.092746,
		32.790592, 35.135139, 28.497797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189793, 35.804363, 28.120058>,  <32.642330, 35.816170, 28.562719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189793, 35.804363, 28.120058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069485, 35.423683, 28.095373>,  <32.997299, 35.195274, 28.080563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069485, 35.423683, 28.095373>,  <33.189793, 35.804363, 28.120058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069485, 35.423683, 28.095373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027482, 0.056031, -0.998051,
		0.953302, -0.301875, 0.009302,
		-0.300765, -0.951700, -0.061711,
		32.979256, 35.138172, 28.076860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566437, 35.486164, 27.581181>,  <33.189793, 35.804363, 28.120058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566437, 35.486164, 27.581181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250088, 35.244934, 27.622786>,  <33.060276, 35.100197, 27.647749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250088, 35.244934, 27.622786>,  <33.566437, 35.486164, 27.581181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250088, 35.244934, 27.622786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016083, -0.149420, -0.988643,
		0.611765, -0.783567, 0.108473,
		-0.790876, -0.603073, 0.104012,
		33.012825, 35.064011, 27.653990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720776, 34.820786, 27.211990>,  <33.566437, 35.486164, 27.581181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720776, 34.820786, 27.211990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321934, 34.847584, 27.226336>,  <33.082626, 34.863663, 27.234943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321934, 34.847584, 27.226336>,  <33.720776, 34.820786, 27.211990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321934, 34.847584, 27.226336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056903, -0.345495, -0.936694,
		-0.050363, -0.936026, 0.348309,
		-0.997108, 0.066995, 0.035862,
		33.022800, 34.867683, 27.237095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646961, 34.296684, 26.690422>,  <33.720776, 34.820786, 27.211990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646961, 34.296684, 26.690422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296585, 34.459759, 26.793594>,  <33.086361, 34.557602, 26.855497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296585, 34.459759, 26.793594>,  <33.646961, 34.296684, 26.690422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296585, 34.459759, 26.793594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421550, -0.386843, -0.820152,
		-0.234585, -0.827131, 0.510709,
		-0.875937, 0.407684, 0.257929,
		33.033806, 34.582066, 26.870974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142246, 33.779068, 26.565121>,  <33.646961, 34.296684, 26.690422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142246, 33.779068, 26.565121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940067, 34.122940, 26.535528>,  <32.818760, 34.329262, 26.517773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940067, 34.122940, 26.535528>,  <33.142246, 33.779068, 26.565121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940067, 34.122940, 26.535528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416176, -0.318002, -0.851864,
		-0.755855, -0.399787, 0.518511,
		-0.505451, 0.859677, -0.073982,
		32.788433, 34.380844, 26.513334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433338, 33.652275, 26.337763>,  <33.142246, 33.779068, 26.565121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433338, 33.652275, 26.337763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500206, 34.036770, 26.250048>,  <32.540325, 34.267467, 26.197418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500206, 34.036770, 26.250048>,  <32.433338, 33.652275, 26.337763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500206, 34.036770, 26.250048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501969, -0.108453, -0.858059,
		-0.848576, 0.253515, 0.464379,
		0.167168, 0.961232, -0.219287,
		32.550358, 34.325138, 26.184261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827759, 33.883781, 26.051603>,  <32.433338, 33.652275, 26.337763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827759, 33.883781, 26.051603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064579, 34.179348, 25.922932>,  <32.206673, 34.356689, 25.845728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064579, 34.179348, 25.922932>,  <31.827759, 33.883781, 26.051603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064579, 34.179348, 25.922932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499087, 0.022774, -0.866253,
		-0.632764, 0.673410, 0.382268,
		0.592049, 0.738918, -0.321680,
		32.242195, 34.401024, 25.826427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384117, 34.414097, 25.768671>,  <31.827759, 33.883781, 26.051603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384117, 34.414097, 25.768671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.750015, 34.479969, 25.621094>,  <31.969555, 34.519493, 25.532547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.750015, 34.479969, 25.621094>,  <31.384117, 34.414097, 25.768671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750015, 34.479969, 25.621094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361812, -0.072515, -0.929427,
		-0.179816, 0.983677, -0.006748,
		0.914745, 0.164684, -0.368945,
		32.024437, 34.529373, 25.510410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241882, 34.815479, 25.145981>,  <31.384117, 34.414097, 25.768671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241882, 34.815479, 25.145981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616688, 34.682312, 25.103708>,  <31.841572, 34.602409, 25.078344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.616688, 34.682312, 25.103708>,  <31.241882, 34.815479, 25.145981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616688, 34.682312, 25.103708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131115, -0.054809, -0.989851,
		0.323750, 0.941360, -0.095008,
		0.937014, -0.332921, -0.105682,
		31.897793, 34.582436, 25.072004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649580, 35.172115, 24.508011>,  <31.241882, 34.815479, 25.145981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649580, 35.172115, 24.508011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830408, 34.820065, 24.565985>,  <31.938906, 34.608833, 24.600769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830408, 34.820065, 24.565985>,  <31.649580, 35.172115, 24.508011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830408, 34.820065, 24.565985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196593, -0.256803, -0.946258,
		0.870047, 0.399284, -0.289121,
		0.452072, -0.880128, 0.144934,
		31.966030, 34.556026, 24.609465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037693, 34.934803, 23.818375>,  <31.649580, 35.172115, 24.508011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037693, 34.934803, 23.818375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.952129, 34.599571, 24.019119>,  <31.900791, 34.398434, 24.139566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.952129, 34.599571, 24.019119>,  <32.037693, 34.934803, 23.818375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952129, 34.599571, 24.019119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207678, -0.462994, -0.861688,
		0.954523, -0.288548, -0.075012,
		-0.213908, -0.838079, 0.501864,
		31.887957, 34.348148, 24.169678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483494, 34.412209, 23.656803>,  <32.037693, 34.934803, 23.818375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483494, 34.412209, 23.656803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121994, 34.268345, 23.749659>,  <31.905094, 34.182026, 23.805372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121994, 34.268345, 23.749659>,  <32.483494, 34.412209, 23.656803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121994, 34.268345, 23.749659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055893, -0.438507, -0.896988,
		0.424404, -0.823625, 0.376196,
		-0.903746, -0.359659, 0.232139,
		31.850870, 34.160446, 23.819300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595284, 33.686302, 23.500546>,  <32.483494, 34.412209, 23.656803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595284, 33.686302, 23.500546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210281, 33.794514, 23.492523>,  <31.979280, 33.859440, 23.487709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210281, 33.794514, 23.492523>,  <32.595284, 33.686302, 23.500546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210281, 33.794514, 23.492523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065926, -0.304997, -0.950069,
		-0.263129, -0.913124, 0.311395,
		-0.962505, 0.270520, -0.020054,
		31.921530, 33.875671, 23.486506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061062, 33.336273, 23.973652>,  <32.595284, 33.686302, 23.500546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061062, 33.336273, 23.973652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357502, 33.152893, 23.777452>,  <33.535366, 33.042866, 23.659733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357502, 33.152893, 23.777452>,  <33.061062, 33.336273, 23.973652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357502, 33.152893, 23.777452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597910, 0.118348, 0.792778,
		-0.305397, -0.880807, 0.361818,
		0.741105, -0.458446, -0.490500,
		33.579834, 33.015358, 23.630302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343121, 32.934990, 24.470957>,  <33.061062, 33.336273, 23.973652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343121, 32.934990, 24.470957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623035, 32.954430, 24.185879>,  <33.790985, 32.966095, 24.014832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.623035, 32.954430, 24.185879>,  <33.343121, 32.934990, 24.470957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623035, 32.954430, 24.185879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712857, 0.016910, 0.701105,
		0.046129, -0.998675, -0.022814,
		0.699790, 0.048604, -0.712693,
		33.832973, 32.969009, 23.972071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814411, 32.421413, 24.626785>,  <33.343121, 32.934990, 24.470957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814411, 32.421413, 24.626785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003326, 32.694614, 24.403913>,  <34.116676, 32.858536, 24.270189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003326, 32.694614, 24.403913>,  <33.814411, 32.421413, 24.626785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003326, 32.694614, 24.403913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677655, 0.122886, 0.725040,
		0.563675, -0.720003, -0.404803,
		0.472287, 0.683004, -0.557181,
		34.145012, 32.899517, 24.236759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630348, 32.250111, 24.738979>,  <33.814411, 32.421413, 24.626785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630348, 32.250111, 24.738979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600143, 32.621529, 24.593594>,  <34.582020, 32.844379, 24.506363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600143, 32.621529, 24.593594>,  <34.630348, 32.250111, 24.738979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600143, 32.621529, 24.593594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830384, 0.260356, 0.492622,
		0.552051, -0.264617, -0.790707,
		-0.075509, 0.928543, -0.363463,
		34.577492, 32.900093, 24.484554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220295, 32.486176, 24.601160>,  <34.630348, 32.250111, 24.738979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220295, 32.486176, 24.601160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013359, 32.828323, 24.611677>,  <34.889198, 33.033611, 24.617987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013359, 32.828323, 24.611677>,  <35.220295, 32.486176, 24.601160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013359, 32.828323, 24.611677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670325, 0.385940, 0.633810,
		0.531997, 0.345522, -0.773042,
		-0.517343, 0.855374, 0.026293,
		34.858154, 33.084934, 24.619564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739712, 33.082214, 24.404993>,  <35.220295, 32.486176, 24.601160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739712, 33.082214, 24.404993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430645, 33.222435, 24.616690>,  <35.245205, 33.306568, 24.743708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.430645, 33.222435, 24.616690>,  <35.739712, 33.082214, 24.404993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430645, 33.222435, 24.616690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634796, 0.420827, 0.648027,
		0.004447, 0.836671, -0.547688,
		-0.772667, 0.350552, 0.529244,
		35.198845, 33.327602, 24.775463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999393, 33.723228, 24.722397>,  <35.739712, 33.082214, 24.404993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999393, 33.723228, 24.722397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678169, 33.642445, 24.946648>,  <35.485435, 33.593975, 25.081198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678169, 33.642445, 24.946648>,  <35.999393, 33.723228, 24.722397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678169, 33.642445, 24.946648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487455, 0.318501, 0.812985,
		-0.342754, 0.926158, -0.157327,
		-0.803061, -0.201964, 0.560628,
		35.437252, 33.581856, 25.114836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912914, 34.373825, 25.134233>,  <35.999393, 33.723228, 24.722397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912914, 34.373825, 25.134233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730991, 34.070045, 25.320301>,  <35.621838, 33.887775, 25.431942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730991, 34.070045, 25.320301>,  <35.912914, 34.373825, 25.134233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730991, 34.070045, 25.320301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330257, 0.341251, 0.880045,
		-0.827091, 0.553877, 0.095610,
		-0.454810, -0.759452, 0.465167,
		35.594547, 33.842209, 25.459850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760811, 34.663334, 25.641689>,  <35.912914, 34.373825, 25.134233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760811, 34.663334, 25.641689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686710, 34.288155, 25.758947>,  <35.642250, 34.063046, 25.829302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686710, 34.288155, 25.758947>,  <35.760811, 34.663334, 25.641689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686710, 34.288155, 25.758947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339067, 0.218981, 0.914921,
		-0.922342, 0.268887, 0.277461,
		-0.185252, -0.937948, 0.293146,
		35.631134, 34.006771, 25.846891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512077, 34.781784, 26.323093>,  <35.760811, 34.663334, 25.641689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512077, 34.781784, 26.323093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630875, 34.399929, 26.314445>,  <35.702152, 34.170818, 26.309258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630875, 34.399929, 26.314445>,  <35.512077, 34.781784, 26.323093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630875, 34.399929, 26.314445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484442, 0.131125, 0.864941,
		-0.822868, -0.267354, 0.501409,
		0.296992, -0.954635, -0.021619,
		35.719971, 34.113537, 26.307961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264675, 34.530571, 26.872965>,  <35.512077, 34.781784, 26.323093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264675, 34.530571, 26.872965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.556129, 34.281258, 26.759405>,  <35.731003, 34.131668, 26.691269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.556129, 34.281258, 26.759405>,  <35.264675, 34.530571, 26.872965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556129, 34.281258, 26.759405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391299, 0.038638, 0.919452,
		-0.562111, -0.781039, 0.272045,
		0.728639, -0.623285, -0.283901,
		35.774723, 34.094273, 26.674234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280186, 34.118675, 27.436012>,  <35.264675, 34.530571, 26.872965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280186, 34.118675, 27.436012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634197, 34.073475, 27.255365>,  <35.846603, 34.046352, 27.146976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634197, 34.073475, 27.255365>,  <35.280186, 34.118675, 27.436012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634197, 34.073475, 27.255365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451274, -0.030074, 0.891878,
		-0.114369, -0.993139, 0.024380,
		0.885026, -0.113006, -0.451618,
		35.899704, 34.039574, 27.119881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498077, 33.536465, 27.672424>,  <35.280186, 34.118675, 27.436012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498077, 33.536465, 27.672424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819035, 33.741848, 27.550745>,  <36.011608, 33.865078, 27.477737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819035, 33.741848, 27.550745>,  <35.498077, 33.536465, 27.672424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819035, 33.741848, 27.550745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319631, 0.060726, 0.945594,
		0.503992, -0.855965, -0.115390,
		0.802389, 0.513455, -0.304198,
		36.059750, 33.895885, 27.459486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160339, 33.259480, 28.000647>,  <35.498077, 33.536465, 27.672424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160339, 33.259480, 28.000647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250931, 33.636742, 27.903351>,  <36.305286, 33.863098, 27.844973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250931, 33.636742, 27.903351>,  <36.160339, 33.259480, 28.000647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250931, 33.636742, 27.903351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344793, 0.155928, 0.925637,
		0.910948, -0.293503, -0.289880,
		0.226477, 0.943156, -0.243240,
		36.318874, 33.919689, 27.830379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714409, 32.844337, 27.813934>,  <36.160339, 33.259480, 28.000647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714409, 32.844337, 27.813934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848305, 32.472076, 27.873037>,  <36.928642, 32.248718, 27.908499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848305, 32.472076, 27.873037>,  <36.714409, 32.844337, 27.813934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848305, 32.472076, 27.873037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611840, -0.333912, -0.717045,
		0.716658, 0.149623, -0.681186,
		0.334742, -0.930653, 0.147755,
		36.948727, 32.192879, 27.917364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846939, 32.585751, 27.195213>,  <36.714409, 32.844337, 27.813934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846939, 32.585751, 27.195213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826542, 32.234810, 27.386066>,  <36.814304, 32.024246, 27.500578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826542, 32.234810, 27.386066>,  <36.846939, 32.585751, 27.195213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826542, 32.234810, 27.386066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571290, -0.366244, -0.734502,
		0.819163, -0.310036, -0.482545,
		-0.050993, -0.877350, 0.477134,
		36.811245, 31.971605, 27.529207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922939, 32.037987, 26.745058>,  <36.846939, 32.585751, 27.195213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922939, 32.037987, 26.745058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.743374, 31.852615, 27.050661>,  <36.635635, 31.741392, 27.234024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.743374, 31.852615, 27.050661>,  <36.922939, 32.037987, 26.745058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743374, 31.852615, 27.050661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693980, -0.357797, -0.624799,
		0.562909, -0.810689, -0.160989,
		-0.448916, -0.463428, 0.764009,
		36.608700, 31.713587, 27.279863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894291, 31.403576, 26.439924>,  <36.922939, 32.037987, 26.745058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894291, 31.403576, 26.439924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617218, 31.391956, 26.728186>,  <36.450974, 31.384985, 26.901142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.617218, 31.391956, 26.728186>,  <36.894291, 31.403576, 26.439924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617218, 31.391956, 26.728186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531139, -0.655424, -0.536945,
		0.487931, -0.754702, 0.438575,
		-0.692686, -0.029048, 0.720654,
		36.409412, 31.383242, 26.944382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708870, 30.719275, 26.633379>,  <36.894291, 31.403576, 26.439924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708870, 30.719275, 26.633379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395596, 30.932425, 26.761547>,  <36.207630, 31.060314, 26.838448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395596, 30.932425, 26.761547>,  <36.708870, 30.719275, 26.633379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395596, 30.932425, 26.761547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621225, -0.648589, -0.439786,
		-0.026528, -0.543488, 0.838998,
		-0.783184, 0.532873, 0.320422,
		36.160641, 31.092287, 26.857674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277042, 30.231403, 26.772848>,  <36.708870, 30.719275, 26.633379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277042, 30.231403, 26.772848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046513, 30.556627, 26.739901>,  <35.908195, 30.751760, 26.720133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.046513, 30.556627, 26.739901>,  <36.277042, 30.231403, 26.772848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046513, 30.556627, 26.739901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496404, -0.428361, -0.755043,
		-0.649177, -0.394263, 0.650481,
		-0.576326, 0.813058, -0.082369,
		35.873615, 30.800545, 26.715191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608696, 29.946421, 26.679226>,  <36.277042, 30.231403, 26.772848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608696, 29.946421, 26.679226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.591843, 30.326424, 26.555479>,  <35.581730, 30.554426, 26.481232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.591843, 30.326424, 26.555479>,  <35.608696, 29.946421, 26.679226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591843, 30.326424, 26.555479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528475, -0.283969, -0.800047,
		-0.847903, 0.129787, 0.514020,
		-0.042130, 0.950009, -0.309367,
		35.579205, 30.611427, 26.462669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061798, 29.767754, 27.228432>,  <35.608696, 29.946421, 26.679226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061798, 29.767754, 27.228432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891388, 29.413023, 27.300035>,  <34.789143, 29.200184, 27.342999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891388, 29.413023, 27.300035>,  <35.061798, 29.767754, 27.228432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891388, 29.413023, 27.300035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296767, 0.049933, 0.953644,
		-0.854655, 0.459397, 0.241908,
		-0.426022, -0.886827, 0.179009,
		34.763580, 29.146975, 27.353739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624981, 29.855618, 27.706821>,  <35.061798, 29.767754, 27.228432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624981, 29.855618, 27.706821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728054, 29.469183, 27.713467>,  <34.789898, 29.237322, 27.717453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728054, 29.469183, 27.713467>,  <34.624981, 29.855618, 27.706821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728054, 29.469183, 27.713467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278139, 0.090629, 0.956256,
		-0.925332, -0.241789, 0.292060,
		0.257682, -0.966087, 0.016611,
		34.805359, 29.179358, 27.718451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411465, 29.595119, 28.328814>,  <34.624981, 29.855618, 27.706821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411465, 29.595119, 28.328814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.675808, 29.321365, 28.205606>,  <34.834415, 29.157112, 28.131681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.675808, 29.321365, 28.205606>,  <34.411465, 29.595119, 28.328814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675808, 29.321365, 28.205606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359989, -0.071058, 0.930247,
		-0.658536, -0.725648, 0.199412,
		0.660862, -0.684387, -0.308020,
		34.874065, 29.116049, 28.113201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328983, 28.929722, 28.632545>,  <34.411465, 29.595119, 28.328814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328983, 28.929722, 28.632545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711002, 28.962721, 28.518648>,  <34.940212, 28.982519, 28.450310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.711002, 28.962721, 28.518648>,  <34.328983, 28.929722, 28.632545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711002, 28.962721, 28.518648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284233, 0.018121, 0.958584,
		0.084242, -0.996426, -0.006142,
		0.955047, 0.082499, -0.284744,
		34.997517, 28.987469, 28.433226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733147, 28.559816, 29.105595>,  <34.328983, 28.929722, 28.632545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733147, 28.559816, 29.105595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992676, 28.808289, 28.929792>,  <35.148396, 28.957371, 28.824312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.992676, 28.808289, 28.929792>,  <34.733147, 28.559816, 29.105595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992676, 28.808289, 28.929792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446395, 0.157036, 0.880949,
		0.616245, -0.767774, -0.175402,
		0.648825, 0.621179, -0.439503,
		35.187325, 28.994642, 28.797941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247990, 28.427591, 29.549469>,  <34.733147, 28.559816, 29.105595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247990, 28.427591, 29.549469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353119, 28.764927, 29.361980>,  <35.416195, 28.967329, 29.249487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353119, 28.764927, 29.361980>,  <35.247990, 28.427591, 29.549469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353119, 28.764927, 29.361980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728822, 0.144810, 0.669215,
		0.632252, -0.517500, -0.576586,
		0.262824, 0.843341, -0.468722,
		35.431965, 29.017929, 29.221363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019245, 28.407255, 29.523697>,  <35.247990, 28.427591, 29.549469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019245, 28.407255, 29.523697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922188, 28.790930, 29.465614>,  <35.863953, 29.021135, 29.430765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922188, 28.790930, 29.465614>,  <36.019245, 28.407255, 29.523697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922188, 28.790930, 29.465614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859322, 0.281977, 0.426679,
		0.450209, -0.021247, -0.892670,
		-0.242647, 0.959186, -0.145207,
		35.849392, 29.078686, 29.422052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.763737, 31.370573, 25.441021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947958, 31.724339, 25.410810>,  <31.058491, 31.936598, 25.392685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947958, 31.724339, 25.410810>,  <30.763737, 31.370573, 25.441021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947958, 31.724339, 25.410810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286551, -0.067607, 0.955676,
		0.840107, -0.461781, -0.284566,
		0.460552, 0.884414, -0.075527,
		31.086124, 31.989662, 25.388153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315931, 31.377274, 25.929581>,  <30.763737, 31.370573, 25.441021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315931, 31.377274, 25.929581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.262135, 31.772263, 25.896576>,  <31.229856, 32.009254, 25.876774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.262135, 31.772263, 25.896576>,  <31.315931, 31.377274, 25.929581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262135, 31.772263, 25.896576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328039, 0.122940, 0.936630,
		0.935041, 0.098903, -0.340464,
		-0.134492, 0.987474, -0.082510,
		31.221786, 32.068504, 25.871822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982328, 31.764275, 26.089973>,  <31.315931, 31.377274, 25.929581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982328, 31.764275, 26.089973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673939, 32.006748, 26.168095>,  <31.488905, 32.152233, 26.214968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.673939, 32.006748, 26.168095>,  <31.982328, 31.764275, 26.089973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673939, 32.006748, 26.168095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357185, 0.157673, 0.920629,
		0.527277, 0.779538, -0.338081,
		-0.770972, 0.606184, 0.195302,
		31.442648, 32.188602, 26.226685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316093, 32.226250, 26.570538>,  <31.982328, 31.764275, 26.089973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316093, 32.226250, 26.570538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920338, 32.259121, 26.618471>,  <31.682884, 32.278843, 26.647230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920338, 32.259121, 26.618471>,  <32.316093, 32.226250, 26.570538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920338, 32.259121, 26.618471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140233, 0.324124, 0.935563,
		0.038039, 0.942439, -0.332208,
		-0.989388, 0.082174, 0.119832,
		31.623522, 32.283772, 26.654421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336075, 32.657074, 27.013416>,  <32.316093, 32.226250, 26.570538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336075, 32.657074, 27.013416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959921, 32.521069, 27.016733>,  <31.734228, 32.439465, 27.018723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959921, 32.521069, 27.016733>,  <32.336075, 32.657074, 27.013416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959921, 32.521069, 27.016733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079014, 0.242113, 0.967026,
		-0.330805, 0.908722, -0.254545,
		-0.940386, -0.340009, 0.008291,
		31.677805, 32.419067, 27.019220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982277, 33.182011, 27.388929>,  <32.336075, 32.657074, 27.013416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982277, 33.182011, 27.388929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.756857, 32.852364, 27.411713>,  <31.621605, 32.654575, 27.425383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.756857, 32.852364, 27.411713>,  <31.982277, 33.182011, 27.388929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756857, 32.852364, 27.411713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024343, 0.052355, 0.998332,
		-0.825725, 0.563994, -0.009443,
		-0.563548, -0.824117, 0.056960,
		31.587793, 32.605129, 27.428801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459009, 33.403076, 27.839128>,  <31.982277, 33.182011, 27.388929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459009, 33.403076, 27.839128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.417049, 33.005348, 27.846266>,  <31.391874, 32.766712, 27.850548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.417049, 33.005348, 27.846266>,  <31.459009, 33.403076, 27.839128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417049, 33.005348, 27.846266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124419, 0.030922, 0.991748,
		-0.986669, 0.101814, -0.126956,
		-0.104900, -0.994323, 0.017842,
		31.385580, 32.707050, 27.851618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904644, 33.300171, 28.257887>,  <31.459009, 33.403076, 27.839128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904644, 33.300171, 28.257887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130110, 32.969776, 28.255716>,  <31.265388, 32.771538, 28.254414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130110, 32.969776, 28.255716>,  <30.904644, 33.300171, 28.257887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130110, 32.969776, 28.255716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075307, -0.057930, 0.995476,
		-0.822564, -0.560706, -0.094855,
		0.563665, -0.825986, -0.005426,
		31.299210, 32.721981, 28.254089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474680, 32.942638, 28.595903>,  <30.904644, 33.300171, 28.257887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474680, 32.942638, 28.595903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813782, 32.730637, 28.603914>,  <31.017242, 32.603436, 28.608721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813782, 32.730637, 28.603914>,  <30.474680, 32.942638, 28.595903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813782, 32.730637, 28.603914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087885, -0.103138, 0.990777,
		-0.523054, -0.841697, -0.134016,
		0.847756, -0.530008, 0.020026,
		31.068110, 32.571636, 28.609922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429279, 32.369198, 29.039127>,  <30.474680, 32.942638, 28.595903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429279, 32.369198, 29.039127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.824293, 32.429508, 29.021046>,  <31.061302, 32.465694, 29.010197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.824293, 32.429508, 29.021046>,  <30.429279, 32.369198, 29.039127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824293, 32.429508, 29.021046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061814, -0.107361, 0.992297,
		0.144761, -0.982721, -0.115343,
		0.987534, 0.150775, -0.045204,
		31.120554, 32.474739, 29.007484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692963, 32.142979, 29.778664>,  <30.429279, 32.369198, 29.039127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692963, 32.142979, 29.778664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.006880, 32.348335, 29.639793>,  <31.195230, 32.471550, 29.556471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.006880, 32.348335, 29.639793>,  <30.692963, 32.142979, 29.778664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006880, 32.348335, 29.639793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352816, 0.090460, 0.931310,
		0.509528, -0.853376, -0.110139,
		0.784794, 0.513388, -0.347177,
		31.242317, 32.502350, 29.535641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125511, 31.869164, 30.249773>,  <30.692963, 32.142979, 29.778664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125511, 31.869164, 30.249773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294762, 32.191380, 30.083847>,  <31.396311, 32.384708, 29.984291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294762, 32.191380, 30.083847>,  <31.125511, 31.869164, 30.249773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294762, 32.191380, 30.083847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358782, 0.271438, 0.893083,
		0.832010, -0.526713, -0.174161,
		0.423125, 0.805540, -0.414814,
		31.421700, 32.433041, 29.959402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657198, 31.252182, 30.360447>,  <31.125511, 31.869164, 30.249773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657198, 31.252182, 30.360447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.488638, 30.952694, 30.565128>,  <31.387501, 30.773001, 30.687937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.488638, 30.952694, 30.565128>,  <31.657198, 31.252182, 30.360447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488638, 30.952694, 30.565128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314220, -0.408753, -0.856847,
		0.850698, -0.521864, -0.063013,
		-0.421401, -0.748718, 0.511705,
		31.362217, 30.728079, 30.718639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112190, 30.650541, 30.217461>,  <31.657198, 31.252182, 30.360447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112190, 30.650541, 30.217461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.747046, 30.518652, 30.313759>,  <31.527958, 30.439518, 30.371538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.747046, 30.518652, 30.313759>,  <32.112190, 30.650541, 30.217461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747046, 30.518652, 30.313759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193628, -0.169488, -0.966324,
		0.359424, -0.928739, 0.090876,
		-0.912865, -0.329723, 0.240748,
		31.473186, 30.419735, 30.385983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089458, 30.079206, 29.877203>,  <32.112190, 30.650541, 30.217461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089458, 30.079206, 29.877203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.706785, 30.116600, 29.987492>,  <31.477182, 30.139036, 30.053665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.706785, 30.116600, 29.987492>,  <32.089458, 30.079206, 29.877203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706785, 30.116600, 29.987492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291044, -0.331130, -0.897578,
		0.007388, -0.938943, 0.343994,
		-0.956681, 0.093486, 0.275720,
		31.419781, 30.144646, 30.070208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839319, 29.477655, 29.656799>,  <32.089458, 30.079206, 29.877203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839319, 29.477655, 29.656799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515467, 29.704569, 29.717051>,  <31.321156, 29.840717, 29.753201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.515467, 29.704569, 29.717051>,  <31.839319, 29.477655, 29.656799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515467, 29.704569, 29.717051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382005, -0.314452, -0.869018,
		-0.445615, -0.761123, 0.471295,
		-0.809629, 0.567285, 0.150629,
		31.272577, 29.874754, 29.762239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227726, 29.038137, 29.448038>,  <31.839319, 29.477655, 29.656799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227726, 29.038137, 29.448038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.088362, 29.412712, 29.431538>,  <31.004744, 29.637457, 29.421638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.088362, 29.412712, 29.431538>,  <31.227726, 29.038137, 29.448038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088362, 29.412712, 29.431538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318045, -0.159499, -0.934563,
		-0.881736, -0.312491, 0.353399,
		-0.348409, 0.936435, -0.041249,
		30.983839, 29.693642, 29.419163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649673, 28.958212, 29.128639>,  <31.227726, 29.038137, 29.448038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649673, 28.958212, 29.128639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706013, 29.349537, 29.067892>,  <30.739817, 29.584332, 29.031443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706013, 29.349537, 29.067892>,  <30.649673, 28.958212, 29.128639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706013, 29.349537, 29.067892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213818, -0.119719, -0.969510,
		-0.966666, 0.169025, 0.192319,
		0.140847, 0.978314, -0.151869,
		30.748266, 29.643030, 29.022331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002546, 29.234957, 28.722603>,  <30.649673, 28.958212, 29.128639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002546, 29.234957, 28.722603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327057, 29.465860, 28.685499>,  <30.521763, 29.604403, 28.663237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327057, 29.465860, 28.685499>,  <30.002546, 29.234957, 28.722603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327057, 29.465860, 28.685499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125083, 0.016384, -0.992011,
		-0.571126, 0.816398, 0.085497,
		0.811276, 0.577258, -0.092760,
		30.570440, 29.639038, 28.657671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816523, 29.761412, 28.250429>,  <30.002546, 29.234957, 28.722603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816523, 29.761412, 28.250429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216164, 29.778341, 28.250782>,  <30.455948, 29.788498, 28.250994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216164, 29.778341, 28.250782>,  <29.816523, 29.761412, 28.250429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216164, 29.778341, 28.250782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004629, 0.129931, -0.991512,
		-0.042077, 0.990620, 0.130010,
		0.999104, 0.042322, 0.000882,
		30.515894, 29.791039, 28.251047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969370, 30.302683, 27.861273>,  <29.816523, 29.761412, 28.250429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969370, 30.302683, 27.861273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.298609, 30.075586, 27.866730>,  <30.496151, 29.939329, 27.870005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.298609, 30.075586, 27.866730>,  <29.969370, 30.302683, 27.861273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298609, 30.075586, 27.866730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100815, 0.122435, -0.987343,
		0.558883, 0.814053, 0.158012,
		0.823095, -0.567739, 0.013642,
		30.545538, 29.905264, 27.870823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508862, 30.681707, 27.532806>,  <29.969370, 30.302683, 27.861273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508862, 30.681707, 27.532806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639832, 30.304022, 27.518665>,  <30.718414, 30.077410, 27.510180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639832, 30.304022, 27.518665>,  <30.508862, 30.681707, 27.532806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639832, 30.304022, 27.518665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179771, 0.098985, -0.978716,
		0.927618, 0.314102, 0.202153,
		0.327427, -0.944215, -0.035354,
		30.738060, 30.020758, 27.508059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093569, 30.661573, 27.066881>,  <30.508862, 30.681707, 27.532806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093569, 30.661573, 27.066881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978888, 30.278868, 27.086500>,  <30.910080, 30.049244, 27.098270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978888, 30.278868, 27.086500>,  <31.093569, 30.661573, 27.066881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978888, 30.278868, 27.086500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218021, -0.115012, -0.969143,
		0.932882, -0.267162, 0.241569,
		-0.286702, -0.956764, 0.049045,
		30.892878, 29.991838, 27.101213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518364, 30.321163, 26.555763>,  <31.093569, 30.661573, 27.066881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518364, 30.321163, 26.555763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244909, 30.036547, 26.620697>,  <31.080837, 29.865776, 26.659658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244909, 30.036547, 26.620697>,  <31.518364, 30.321163, 26.555763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244909, 30.036547, 26.620697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072669, -0.287691, -0.954962,
		0.726197, -0.641049, 0.248383,
		-0.683635, -0.711541, 0.162336,
		31.039818, 29.823084, 26.669397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833019, 29.761793, 26.197311>,  <31.518364, 30.321163, 26.555763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833019, 29.761793, 26.197311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444483, 29.672394, 26.229670>,  <31.211361, 29.618755, 26.249084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444483, 29.672394, 26.229670>,  <31.833019, 29.761793, 26.197311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444483, 29.672394, 26.229670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007786, -0.370084, -0.928965,
		0.237559, -0.901713, 0.361218,
		-0.971342, -0.223497, 0.080896,
		31.153080, 29.605345, 26.253939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688360, 28.978239, 25.927340>,  <31.833019, 29.761793, 26.197311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688360, 28.978239, 25.927340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.339266, 29.172621, 25.908682>,  <31.129808, 29.289249, 25.897488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.339266, 29.172621, 25.908682>,  <31.688360, 28.978239, 25.927340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339266, 29.172621, 25.908682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221173, -0.478757, -0.849632,
		-0.435210, -0.731192, 0.525310,
		-0.872740, 0.485953, -0.046640,
		31.077444, 29.318407, 25.894690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017208, 28.448082, 26.399088>,  <31.688360, 28.978239, 25.927340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017208, 28.448082, 26.399088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.270832, 28.391327, 26.095024>,  <32.423004, 28.357275, 25.912586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.270832, 28.391327, 26.095024>,  <32.017208, 28.448082, 26.399088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270832, 28.391327, 26.095024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763953, 0.267212, 0.587344,
		0.119788, -0.953135, 0.277822,
		0.634055, -0.141887, -0.760159,
		32.461048, 28.348761, 25.866976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686642, 28.100882, 26.681206>,  <32.017208, 28.448082, 26.399088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686642, 28.100882, 26.681206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807640, 28.231510, 26.323021>,  <32.880238, 28.309887, 26.108110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807640, 28.231510, 26.323021>,  <32.686642, 28.100882, 26.681206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807640, 28.231510, 26.323021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887796, 0.245354, 0.389384,
		0.346865, -0.912773, -0.215709,
		0.302494, 0.326569, -0.895461,
		32.898388, 28.329481, 26.054382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253292, 27.634537, 26.523026>,  <32.686642, 28.100882, 26.681206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253292, 27.634537, 26.523026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.293064, 27.979668, 26.324776>,  <33.316929, 28.186747, 26.205826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.293064, 27.979668, 26.324776>,  <33.253292, 27.634537, 26.523026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293064, 27.979668, 26.324776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809351, 0.219623, 0.544717,
		0.578847, -0.455296, -0.676492,
		0.099434, 0.862827, -0.495623,
		33.322895, 28.238516, 26.176088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948437, 27.670568, 26.182676>,  <33.253292, 27.634537, 26.523026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948437, 27.670568, 26.182676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.834873, 28.054052, 26.189243>,  <33.766735, 28.284143, 26.193184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.834873, 28.054052, 26.189243>,  <33.948437, 27.670568, 26.182676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834873, 28.054052, 26.189243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825232, 0.235593, 0.513311,
		0.488248, 0.159284, -0.858046,
		-0.283912, 0.958710, 0.016419,
		33.749699, 28.341665, 26.194168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535503, 28.070189, 26.127892>,  <33.948437, 27.670568, 26.182676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535503, 28.070189, 26.127892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281139, 28.332989, 26.289865>,  <34.128521, 28.490669, 26.387051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281139, 28.332989, 26.289865>,  <34.535503, 28.070189, 26.127892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281139, 28.332989, 26.289865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732200, 0.347756, 0.585618,
		0.243932, 0.668893, -0.702196,
		-0.635909, 0.656999, 0.404935,
		34.090366, 28.530088, 26.411346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914860, 28.752117, 26.110645>,  <34.535503, 28.070189, 26.127892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914860, 28.752117, 26.110645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.622513, 28.756351, 26.383623>,  <34.447105, 28.758892, 26.547409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.622513, 28.756351, 26.383623>,  <34.914860, 28.752117, 26.110645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622513, 28.756351, 26.383623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621249, 0.424388, 0.658745,
		-0.282647, 0.905419, -0.316746,
		-0.730863, 0.010586, 0.682442,
		34.403255, 28.759527, 26.588356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046589, 29.392239, 26.471615>,  <34.914860, 28.752117, 26.110645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046589, 29.392239, 26.471615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.809917, 29.194601, 26.726419>,  <34.667915, 29.076019, 26.879303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.809917, 29.194601, 26.726419>,  <35.046589, 29.392239, 26.471615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809917, 29.194601, 26.726419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643065, 0.187276, 0.742560,
		-0.486191, 0.848999, 0.206926,
		-0.591681, -0.494093, 0.637014,
		34.632412, 29.046373, 26.917524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926823, 30.096502, 26.567938>,  <35.046589, 29.392239, 26.471615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926823, 30.096502, 26.567938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138996, 30.364294, 26.359922>,  <35.266300, 30.524969, 26.235113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.138996, 30.364294, 26.359922>,  <34.926823, 30.096502, 26.567938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138996, 30.364294, 26.359922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410874, -0.333550, -0.848485,
		-0.741501, 0.663734, 0.098146,
		0.530432, 0.669478, -0.520039,
		35.298126, 30.565138, 26.203911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376137, 30.443283, 26.088890>,  <34.926823, 30.096502, 26.567938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376137, 30.443283, 26.088890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732861, 30.514973, 25.922731>,  <34.946896, 30.557987, 25.823036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.732861, 30.514973, 25.922731>,  <34.376137, 30.443283, 26.088890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732861, 30.514973, 25.922731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420791, -0.008645, -0.907116,
		-0.166168, 0.983770, 0.067706,
		0.891809, 0.179224, -0.415398,
		35.000404, 30.568739, 25.798113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316448, 31.028353, 25.583218>,  <34.376137, 30.443283, 26.088890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316448, 31.028353, 25.583218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649399, 30.841034, 25.464659>,  <34.849167, 30.728643, 25.393522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.649399, 30.841034, 25.464659>,  <34.316448, 31.028353, 25.583218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649399, 30.841034, 25.464659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302949, 0.063375, -0.950897,
		0.464086, 0.881295, -0.089119,
		0.832373, -0.468297, -0.296399,
		34.899113, 30.700544, 25.375738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419548, 31.277708, 24.878590>,  <34.316448, 31.028353, 25.583218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419548, 31.277708, 24.878590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.632900, 30.939947, 24.898569>,  <34.760910, 30.737291, 24.910557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.632900, 30.939947, 24.898569>,  <34.419548, 31.277708, 24.878590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632900, 30.939947, 24.898569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144708, -0.149269, -0.978151,
		0.833406, 0.514497, -0.201809,
		0.533379, -0.844400, 0.049950,
		34.792915, 30.686626, 24.913553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962170, 31.454021, 24.561855>,  <34.419548, 31.277708, 24.878590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962170, 31.454021, 24.561855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.936474, 31.055777, 24.534647>,  <34.921059, 30.816830, 24.518322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.936474, 31.055777, 24.534647>,  <34.962170, 31.454021, 24.561855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936474, 31.055777, 24.534647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134658, 0.076184, -0.987959,
		0.988808, -0.054303, -0.138961,
		-0.064236, -0.995614, -0.068019,
		34.917202, 30.757092, 24.514242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291084, 31.196949, 23.917139>,  <34.962170, 31.454021, 24.561855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291084, 31.196949, 23.917139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.075027, 30.866306, 23.980347>,  <34.945393, 30.667921, 24.018270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.075027, 30.866306, 23.980347>,  <35.291084, 31.196949, 23.917139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075027, 30.866306, 23.980347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147817, -0.091662, -0.984758,
		0.828493, -0.555263, -0.072677,
		-0.540137, -0.826608, 0.158018,
		34.912987, 30.618324, 24.027752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513084, 30.655062, 23.449911>,  <35.291084, 31.196949, 23.917139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513084, 30.655062, 23.449911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144089, 30.570129, 23.578861>,  <34.922691, 30.519169, 23.656231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144089, 30.570129, 23.578861>,  <35.513084, 30.655062, 23.449911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144089, 30.570129, 23.578861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361665, 0.183478, -0.914076,
		0.134933, -0.959820, -0.246048,
		-0.922492, -0.212326, 0.322376,
		34.867340, 30.506430, 23.675573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189903, 30.211250, 22.960709>,  <35.513084, 30.655062, 23.449911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189903, 30.211250, 22.960709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.865467, 30.340708, 23.155600>,  <34.670807, 30.418383, 23.272533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.865467, 30.340708, 23.155600>,  <35.189903, 30.211250, 22.960709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865467, 30.340708, 23.155600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465620, 0.146914, -0.872705,
		-0.354026, -0.934704, 0.031534,
		-0.811088, 0.323643, 0.487228,
		34.622139, 30.437801, 23.301767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654713, 29.886595, 22.648933>,  <35.189903, 30.211250, 22.960709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654713, 29.886595, 22.648933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.474564, 30.191010, 22.835690>,  <34.366474, 30.373659, 22.947744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.474564, 30.191010, 22.835690>,  <34.654713, 29.886595, 22.648933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474564, 30.191010, 22.835690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533387, 0.190023, -0.824251,
		-0.716006, -0.620252, 0.320347,
		-0.450370, 0.761038, 0.466893,
		34.339451, 30.419321, 22.975758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.926281, 34.060356, 37.699253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558941, 34.213100, 37.740860>,  <38.338539, 34.304749, 37.765823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558941, 34.213100, 37.740860>,  <38.926281, 34.060356, 37.699253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558941, 34.213100, 37.740860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026309, 0.203340, -0.978755,
		-0.394899, -0.901574, -0.176690,
		-0.918348, 0.381861, 0.104018,
		38.283436, 34.327660, 37.772064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385857, 33.614071, 37.484993>,  <38.926281, 34.060356, 37.699253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385857, 33.614071, 37.484993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334038, 34.009201, 37.450523>,  <38.302948, 34.246277, 37.429844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334038, 34.009201, 37.450523>,  <38.385857, 33.614071, 37.484993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334038, 34.009201, 37.450523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015628, -0.088926, -0.995916,
		-0.991450, -0.127668, 0.026957,
		-0.129544, 0.987822, -0.086170,
		38.295174, 34.305550, 37.424671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818970, 33.656212, 37.070911>,  <38.385857, 33.614071, 37.484993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818970, 33.656212, 37.070911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980087, 34.021679, 37.049149>,  <38.076759, 34.240959, 37.036091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980087, 34.021679, 37.049149>,  <37.818970, 33.656212, 37.070911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980087, 34.021679, 37.049149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208661, 0.033787, -0.977404,
		-0.891187, 0.405049, 0.204256,
		0.402798, 0.913671, -0.054408,
		38.100925, 34.295780, 37.032825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408909, 34.058826, 36.636181>,  <37.818970, 33.656212, 37.070911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408909, 34.058826, 36.636181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753193, 34.260349, 36.606899>,  <37.959763, 34.381264, 36.589329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753193, 34.260349, 36.606899>,  <37.408909, 34.058826, 36.636181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753193, 34.260349, 36.606899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068761, -0.027438, -0.997256,
		-0.504434, 0.863380, 0.011026,
		0.860708, 0.503807, -0.073208,
		38.011406, 34.411491, 36.584938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301838, 34.504848, 36.086533>,  <37.408909, 34.058826, 36.636181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301838, 34.504848, 36.086533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698662, 34.491020, 36.134892>,  <37.936756, 34.482723, 36.163906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698662, 34.491020, 36.134892>,  <37.301838, 34.504848, 36.086533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698662, 34.491020, 36.134892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111610, -0.200786, -0.973257,
		0.057923, 0.979025, -0.195333,
		0.992063, -0.034573, 0.120899,
		37.996281, 34.480648, 36.171162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575138, 34.935608, 35.594048>,  <37.301838, 34.504848, 36.086533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575138, 34.935608, 35.594048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881695, 34.697674, 35.691055>,  <38.065628, 34.554913, 35.749260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881695, 34.697674, 35.691055>,  <37.575138, 34.935608, 35.594048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881695, 34.697674, 35.691055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305586, 0.005517, -0.952149,
		0.565031, 0.803831, 0.186000,
		0.766392, -0.594833, 0.242522,
		38.111614, 34.519222, 35.763813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089760, 35.224640, 35.233700>,  <37.575138, 34.935608, 35.594048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089760, 35.224640, 35.233700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157261, 34.836006, 35.300079>,  <38.197762, 34.602825, 35.339909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.157261, 34.836006, 35.300079>,  <38.089760, 35.224640, 35.233700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157261, 34.836006, 35.300079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441773, -0.075951, -0.893906,
		0.881112, 0.224162, 0.416405,
		0.168753, -0.971588, 0.165950,
		38.207886, 34.544529, 35.349865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626755, 35.124474, 34.905445>,  <38.089760, 35.224640, 35.233700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626755, 35.124474, 34.905445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526798, 34.740612, 34.957005>,  <38.466824, 34.510296, 34.987942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.526798, 34.740612, 34.957005>,  <38.626755, 35.124474, 34.905445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526798, 34.740612, 34.957005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322986, -0.208110, -0.923239,
		0.912818, -0.189075, 0.361960,
		-0.249889, -0.959657, 0.128898,
		38.451832, 34.452717, 34.995674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233994, 34.676582, 34.741268>,  <38.626755, 35.124474, 34.905445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233994, 34.676582, 34.741268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924332, 34.426903, 34.699184>,  <38.738537, 34.277096, 34.673935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924332, 34.426903, 34.699184>,  <39.233994, 34.676582, 34.741268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924332, 34.426903, 34.699184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381257, -0.327106, -0.864665,
		0.505307, -0.709492, 0.491209,
		-0.774150, -0.624198, -0.105209,
		38.692085, 34.239643, 34.667622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533405, 34.123955, 34.428181>,  <39.233994, 34.676582, 34.741268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533405, 34.123955, 34.428181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145203, 34.050362, 34.365871>,  <38.912281, 34.006207, 34.328487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.145203, 34.050362, 34.365871>,  <39.533405, 34.123955, 34.428181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145203, 34.050362, 34.365871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214940, -0.367829, -0.904711,
		0.109154, -0.911511, 0.396526,
		-0.970508, -0.183982, -0.155770,
		38.854050, 33.995167, 34.319141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572937, 33.492165, 34.077942>,  <39.533405, 34.123955, 34.428181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572937, 33.492165, 34.077942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.210716, 33.624439, 33.971645>,  <38.993382, 33.703804, 33.907867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.210716, 33.624439, 33.971645>,  <39.572937, 33.492165, 34.077942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210716, 33.624439, 33.971645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157524, -0.319523, -0.934394,
		-0.393898, -0.888005, 0.237255,
		-0.905555, 0.330683, -0.265742,
		38.939049, 33.723644, 33.891922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184902, 32.853382, 33.888409>,  <39.572937, 33.492165, 34.077942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184902, 32.853382, 33.888409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040737, 33.187111, 33.721550>,  <38.954239, 33.387348, 33.621433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.040737, 33.187111, 33.721550>,  <39.184902, 32.853382, 33.888409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040737, 33.187111, 33.721550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071798, -0.421067, -0.904183,
		-0.930025, -0.355832, 0.091857,
		-0.360415, 0.834318, -0.417151,
		38.932613, 33.437405, 33.596405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779625, 32.299740, 34.162388>,  <39.184902, 32.853382, 33.888409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779625, 32.299740, 34.162388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.736118, 31.904627, 34.207024>,  <38.710014, 31.667559, 34.233807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.736118, 31.904627, 34.207024>,  <38.779625, 32.299740, 34.162388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736118, 31.904627, 34.207024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158245, 0.093617, 0.982952,
		-0.981391, 0.124574, 0.146129,
		-0.108770, -0.987784, 0.111588,
		38.703487, 31.608292, 34.240501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197262, 32.185005, 34.589027>,  <38.779625, 32.299740, 34.162388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197262, 32.185005, 34.589027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.436890, 31.868271, 34.636536>,  <38.580666, 31.678230, 34.665043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.436890, 31.868271, 34.636536>,  <38.197262, 32.185005, 34.589027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436890, 31.868271, 34.636536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070633, 0.095499, 0.992920,
		-0.797576, -0.603217, 0.001280,
		0.599068, -0.791839, 0.118774,
		38.616611, 31.630718, 34.672169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942047, 31.843460, 35.250645>,  <38.197262, 32.185005, 34.589027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942047, 31.843460, 35.250645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312050, 31.697729, 35.207516>,  <38.534050, 31.610291, 35.181637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312050, 31.697729, 35.207516>,  <37.942047, 31.843460, 35.250645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312050, 31.697729, 35.207516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079371, -0.092230, 0.992569,
		-0.371567, -0.926692, -0.056396,
		0.925007, -0.364330, -0.107822,
		38.589554, 31.588430, 35.175171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084469, 31.255356, 35.733727>,  <37.942047, 31.843460, 35.250645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084469, 31.255356, 35.733727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.455830, 31.359129, 35.627319>,  <38.678646, 31.421392, 35.563473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.455830, 31.359129, 35.627319>,  <38.084469, 31.255356, 35.733727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455830, 31.359129, 35.627319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282577, -0.028038, 0.958835,
		0.241294, -0.965354, -0.099340,
		0.928401, 0.259432, -0.266021,
		38.734348, 31.436958, 35.547512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519184, 30.946743, 36.204681>,  <38.084469, 31.255356, 35.733727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519184, 30.946743, 36.204681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755306, 31.237307, 36.063900>,  <38.896980, 31.411644, 35.979431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755306, 31.237307, 36.063900>,  <38.519184, 30.946743, 36.204681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755306, 31.237307, 36.063900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148272, 0.331030, 0.931898,
		0.793447, -0.602287, 0.087702,
		0.590302, 0.726408, -0.351958,
		38.932396, 31.455229, 35.958313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205692, 30.834051, 36.417374>,  <38.519184, 30.946743, 36.204681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205692, 30.834051, 36.417374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170517, 31.224543, 36.338135>,  <39.149410, 31.458838, 36.290592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170517, 31.224543, 36.338135>,  <39.205692, 30.834051, 36.417374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170517, 31.224543, 36.338135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075123, 0.204800, 0.975917,
		0.993289, 0.070942, -0.091348,
		-0.087942, 0.976229, -0.198097,
		39.144135, 31.517412, 36.278706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523476, 31.038660, 36.938927>,  <39.205692, 30.834051, 36.417374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523476, 31.038660, 36.938927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.398174, 31.392145, 36.799831>,  <39.322994, 31.604237, 36.716373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.398174, 31.392145, 36.799831>,  <39.523476, 31.038660, 36.938927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398174, 31.392145, 36.799831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032959, 0.376066, 0.926006,
		0.949098, 0.278613, -0.146930,
		-0.313253, 0.883713, -0.347741,
		39.304199, 31.657259, 36.695511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088989, 31.499559, 37.090385>,  <39.523476, 31.038660, 36.938927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088989, 31.499559, 37.090385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734665, 31.681429, 37.053268>,  <39.522072, 31.790550, 37.030998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734665, 31.681429, 37.053268>,  <40.088989, 31.499559, 37.090385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734665, 31.681429, 37.053268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115222, 0.409200, 0.905140,
		0.449513, 0.791093, -0.414863,
		-0.885812, 0.454674, -0.092789,
		39.468922, 31.817831, 37.025433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247593, 32.186630, 37.337402>,  <40.088989, 31.499559, 37.090385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247593, 32.186630, 37.337402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850040, 32.146614, 37.356121>,  <39.611507, 32.122604, 37.367352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850040, 32.146614, 37.356121>,  <40.247593, 32.186630, 37.337402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850040, 32.146614, 37.356121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010387, 0.337127, 0.941402,
		-0.109957, 0.936128, -0.334025,
		-0.993882, -0.100044, 0.046793,
		39.551876, 32.116600, 37.370159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081448, 32.774174, 37.608639>,  <40.247593, 32.186630, 37.337402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081448, 32.774174, 37.608639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768326, 32.531837, 37.665447>,  <39.580452, 32.386436, 37.699532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768326, 32.531837, 37.665447>,  <40.081448, 32.774174, 37.608639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768326, 32.531837, 37.665447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253951, 0.519400, 0.815925,
		-0.568087, 0.602644, -0.560443,
		-0.782806, -0.605842, 0.142022,
		39.533485, 32.350086, 37.708054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647278, 33.158123, 37.897602>,  <40.081448, 32.774174, 37.608639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647278, 33.158123, 37.897602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496460, 32.800865, 37.995689>,  <39.405968, 32.586510, 38.054543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.496460, 32.800865, 37.995689>,  <39.647278, 33.158123, 37.897602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496460, 32.800865, 37.995689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243110, 0.350913, 0.904300,
		-0.893720, 0.281345, -0.349441,
		-0.377043, -0.893143, 0.245220,
		39.383347, 32.532921, 38.069256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979156, 33.210030, 38.207283>,  <39.647278, 33.158123, 37.897602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979156, 33.210030, 38.207283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099804, 32.852318, 38.339516>,  <39.172192, 32.637691, 38.418858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099804, 32.852318, 38.339516>,  <38.979156, 33.210030, 38.207283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099804, 32.852318, 38.339516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094075, 0.317125, 0.943706,
		-0.948777, -0.315736, 0.011520,
		0.301615, -0.894283, 0.330584,
		39.190289, 32.584034, 38.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612389, 33.105625, 38.765430>,  <38.979156, 33.210030, 38.207283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612389, 33.105625, 38.765430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.905800, 32.839024, 38.818657>,  <39.081848, 32.679062, 38.850594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.905800, 32.839024, 38.818657>,  <38.612389, 33.105625, 38.765430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905800, 32.839024, 38.818657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117577, 0.068393, 0.990706,
		-0.669411, -0.742357, -0.028197,
		0.733529, -0.666504, 0.133067,
		39.125858, 32.639072, 38.858578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284550, 32.568871, 39.098476>,  <38.612389, 33.105625, 38.765430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284550, 32.568871, 39.098476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677670, 32.597820, 39.166447>,  <38.913540, 32.615192, 39.207230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677670, 32.597820, 39.166447>,  <38.284550, 32.568871, 39.098476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677670, 32.597820, 39.166447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171291, 0.013014, 0.985134,
		0.069095, -0.997292, 0.025188,
		0.982795, 0.072382, 0.169928,
		38.972507, 32.619534, 39.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625874, 32.455608, 38.926323>,  <38.284550, 32.568871, 39.098476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625874, 32.455608, 38.926323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534809, 32.329235, 39.294750>,  <37.480171, 32.253410, 39.515804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534809, 32.329235, 39.294750>,  <37.625874, 32.455608, 38.926323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534809, 32.329235, 39.294750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880499, -0.337124, -0.333269,
		0.415803, -0.886868, -0.201428,
		-0.227659, -0.315932, 0.921064,
		37.466511, 32.234455, 39.571068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468578, 31.730097, 39.051079>,  <37.625874, 32.455608, 38.926323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468578, 31.730097, 39.051079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252434, 31.962690, 39.294350>,  <37.122746, 32.102245, 39.440311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252434, 31.962690, 39.294350>,  <37.468578, 31.730097, 39.051079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252434, 31.962690, 39.294350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836141, -0.290148, -0.465492,
		-0.094213, -0.760060, 0.642988,
		-0.540363, 0.581484, 0.608181,
		37.090324, 32.137135, 39.476803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841866, 31.295513, 39.319283>,  <37.468578, 31.730097, 39.051079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841866, 31.295513, 39.319283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834732, 31.694103, 39.286488>,  <36.830452, 31.933256, 39.266811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834732, 31.694103, 39.286488>,  <36.841866, 31.295513, 39.319283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834732, 31.694103, 39.286488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756703, -0.067045, -0.650312,
		-0.653516, 0.050441, 0.755230,
		-0.017832, 0.996474, -0.081984,
		36.829384, 31.993046, 39.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118576, 31.517050, 39.576729>,  <36.841866, 31.295513, 39.319283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118576, 31.517050, 39.576729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263035, 31.787172, 39.319504>,  <36.349712, 31.949245, 39.165169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263035, 31.787172, 39.319504>,  <36.118576, 31.517050, 39.576729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263035, 31.787172, 39.319504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810220, -0.114152, -0.574902,
		-0.461643, 0.728648, 0.505923,
		0.361149, 0.675308, -0.643063,
		36.371380, 31.989765, 39.126583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490040, 31.700857, 39.331768>,  <36.118576, 31.517050, 39.576729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490040, 31.700857, 39.331768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758266, 31.831680, 39.065422>,  <35.919201, 31.910173, 38.905613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758266, 31.831680, 39.065422>,  <35.490040, 31.700857, 39.331768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758266, 31.831680, 39.065422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680275, -0.086949, -0.727782,
		-0.295924, 0.940995, 0.164185,
		0.670563, 0.327059, -0.665866,
		35.959435, 31.929798, 38.865662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035038, 32.061649, 38.903408>,  <35.490040, 31.700857, 39.331768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035038, 32.061649, 38.903408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384663, 32.033916, 38.711071>,  <35.594437, 32.017277, 38.595669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384663, 32.033916, 38.711071>,  <35.035038, 32.061649, 38.903408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384663, 32.033916, 38.711071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483758, -0.033259, -0.874570,
		0.044643, 0.997039, -0.062610,
		0.874063, -0.069331, -0.480841,
		35.646881, 32.013119, 38.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064625, 32.531246, 38.237980>,  <35.035038, 32.061649, 38.903408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064625, 32.531246, 38.237980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304214, 32.216179, 38.180275>,  <35.447968, 32.027138, 38.145653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304214, 32.216179, 38.180275>,  <35.064625, 32.531246, 38.237980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304214, 32.216179, 38.180275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512016, -0.238203, -0.825287,
		0.615690, 0.568186, -0.545976,
		0.598970, -0.787670, -0.144261,
		35.483906, 31.979877, 38.136997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194775, 32.624298, 37.563236>,  <35.064625, 32.531246, 38.237980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194775, 32.624298, 37.563236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302189, 32.246246, 37.637665>,  <35.366638, 32.019417, 37.682323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.302189, 32.246246, 37.637665>,  <35.194775, 32.624298, 37.563236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302189, 32.246246, 37.637665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466499, -0.296599, -0.833311,
		0.842775, 0.136969, -0.520548,
		0.268532, -0.945129, 0.186071,
		35.382748, 31.962708, 37.693485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512836, 32.387882, 36.913719>,  <35.194775, 32.624298, 37.563236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512836, 32.387882, 36.913719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392941, 32.061920, 37.112148>,  <35.321003, 31.866344, 37.231205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392941, 32.061920, 37.112148>,  <35.512836, 32.387882, 36.913719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392941, 32.061920, 37.112148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387354, -0.371239, -0.843883,
		0.871845, -0.445102, -0.204380,
		-0.299740, -0.814902, 0.496075,
		35.303017, 31.817450, 37.260971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687611, 31.912306, 36.475903>,  <35.512836, 32.387882, 36.913719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687611, 31.912306, 36.475903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401680, 31.735601, 36.692741>,  <35.230122, 31.629580, 36.822845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.401680, 31.735601, 36.692741>,  <35.687611, 31.912306, 36.475903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401680, 31.735601, 36.692741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412021, -0.360299, -0.836913,
		0.565034, -0.821603, 0.075536,
		-0.714826, -0.441762, 0.542098,
		35.187233, 31.603073, 36.855370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543091, 31.125965, 36.352806>,  <35.687611, 31.912306, 36.475903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543091, 31.125965, 36.352806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199062, 31.276861, 36.490189>,  <34.992645, 31.367399, 36.572620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199062, 31.276861, 36.490189>,  <35.543091, 31.125965, 36.352806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199062, 31.276861, 36.490189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479593, -0.368275, -0.796470,
		-0.173972, -0.849743, 0.497665,
		-0.860072, 0.377240, 0.343461,
		34.941040, 31.390034, 36.593227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961933, 30.607244, 36.337452>,  <35.543091, 31.125965, 36.352806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961933, 30.607244, 36.337452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742973, 30.938017, 36.388897>,  <34.611599, 31.136480, 36.419765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742973, 30.938017, 36.388897>,  <34.961933, 30.607244, 36.337452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742973, 30.938017, 36.388897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743527, -0.410030, -0.528246,
		-0.384085, -0.384792, 0.839294,
		-0.547401, 0.826928, 0.128617,
		34.578754, 31.186096, 36.427479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288185, 30.354383, 36.493004>,  <34.961933, 30.607244, 36.337452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288185, 30.354383, 36.493004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251770, 30.735218, 36.376221>,  <34.229923, 30.963718, 36.306149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251770, 30.735218, 36.376221>,  <34.288185, 30.354383, 36.493004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251770, 30.735218, 36.376221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728994, -0.263446, -0.631794,
		-0.678439, 0.155325, 0.718049,
		-0.091034, 0.952088, -0.291963,
		34.224461, 31.020844, 36.288631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637371, 30.484165, 36.410118>,  <34.288185, 30.354383, 36.493004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637371, 30.484165, 36.410118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761326, 30.798893, 36.196617>,  <33.835697, 30.987730, 36.068516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761326, 30.798893, 36.196617>,  <33.637371, 30.484165, 36.410118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761326, 30.798893, 36.196617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837510, -0.039836, -0.544968,
		-0.450054, 0.615897, 0.646624,
		0.309885, 0.786819, -0.533748,
		33.854290, 31.034939, 36.036491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016312, 30.900276, 36.295601>,  <33.637371, 30.484165, 36.410118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016312, 30.900276, 36.295601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290962, 31.018631, 36.029972>,  <33.455753, 31.089643, 35.870594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290962, 31.018631, 36.029972>,  <33.016312, 30.900276, 36.295601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290962, 31.018631, 36.029972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657645, -0.136599, -0.740840,
		-0.309918, 0.945405, 0.100797,
		0.686625, 0.295888, -0.664076,
		33.496948, 31.107397, 35.830750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626144, 31.380514, 35.953499>,  <33.016312, 30.900276, 36.295601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626144, 31.380514, 35.953499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946148, 31.292870, 35.730080>,  <33.138149, 31.240284, 35.596027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946148, 31.292870, 35.730080>,  <32.626144, 31.380514, 35.953499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946148, 31.292870, 35.730080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564349, 0.041239, -0.824505,
		0.203691, 0.974828, -0.090662,
		0.800012, -0.219109, -0.558544,
		33.186153, 31.227137, 35.562515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739334, 31.891121, 35.457859>,  <32.626144, 31.380514, 35.953499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739334, 31.891121, 35.457859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943768, 31.588898, 35.293941>,  <33.066425, 31.407564, 35.195591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943768, 31.588898, 35.293941>,  <32.739334, 31.891121, 35.457859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943768, 31.588898, 35.293941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481600, 0.143182, -0.864616,
		0.711941, 0.639245, -0.290699,
		0.511079, -0.755556, -0.409797,
		33.097092, 31.362230, 35.171001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038834, 32.123199, 34.803532>,  <32.739334, 31.891121, 35.457859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038834, 32.123199, 34.803532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016125, 31.725683, 34.765274>,  <33.002499, 31.487173, 34.742321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016125, 31.725683, 34.765274>,  <33.038834, 32.123199, 34.803532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016125, 31.725683, 34.765274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243595, 0.106693, -0.963991,
		0.968214, -0.031432, -0.248141,
		-0.056775, -0.993795, -0.095645,
		32.999092, 31.427546, 34.736580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352150, 31.986267, 34.114204>,  <33.038834, 32.123199, 34.803532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352150, 31.986267, 34.114204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137135, 31.664009, 34.213791>,  <33.008125, 31.470654, 34.273544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137135, 31.664009, 34.213791>,  <33.352150, 31.986267, 34.114204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137135, 31.664009, 34.213791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251805, -0.128420, -0.959220,
		0.804764, -0.578311, -0.133835,
		-0.537541, -0.805646, 0.248969,
		32.975872, 31.422316, 34.288483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482872, 31.431221, 33.642502>,  <33.352150, 31.986267, 34.114204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482872, 31.431221, 33.642502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137482, 31.309553, 33.803448>,  <32.930248, 31.236553, 33.900017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137482, 31.309553, 33.803448>,  <33.482872, 31.431221, 33.642502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137482, 31.309553, 33.803448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385009, -0.117895, -0.915352,
		0.325860, -0.945294, -0.015310,
		-0.863472, -0.304171, 0.402364,
		32.878441, 31.218302, 33.924156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313110, 30.763121, 33.272400>,  <33.482872, 31.431221, 33.642502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313110, 30.763121, 33.272400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982883, 30.894848, 33.455700>,  <32.784748, 30.973885, 33.565678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982883, 30.894848, 33.455700>,  <33.313110, 30.763121, 33.272400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982883, 30.894848, 33.455700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523297, -0.142863, -0.840090,
		-0.211193, -0.933347, 0.290276,
		-0.825565, 0.329322, 0.458246,
		32.735214, 30.993643, 33.593174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807293, 30.176886, 33.231228>,  <33.313110, 30.763121, 33.272400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807293, 30.176886, 33.231228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607079, 30.519815, 33.279327>,  <32.486950, 30.725573, 33.308186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607079, 30.519815, 33.279327>,  <32.807293, 30.176886, 33.231228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607079, 30.519815, 33.279327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574244, -0.224855, -0.787200,
		-0.647847, -0.463073, 0.604862,
		-0.500537, 0.857323, 0.120245,
		32.456917, 30.777012, 33.315399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174335, 29.915302, 32.886021>,  <32.807293, 30.176886, 33.231228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174335, 29.915302, 32.886021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147625, 30.311214, 32.936424>,  <32.131599, 30.548761, 32.966667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.147625, 30.311214, 32.936424>,  <32.174335, 29.915302, 32.886021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147625, 30.311214, 32.936424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645813, 0.053395, -0.761626,
		-0.760570, -0.132237, 0.635647,
		-0.066775, 0.989779, 0.126011,
		32.127594, 30.608149, 32.974228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415110, 30.159842, 32.950130>,  <32.174335, 29.915302, 32.886021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415110, 30.159842, 32.950130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636106, 30.469990, 32.827785>,  <31.768705, 30.656078, 32.754379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636106, 30.469990, 32.827785>,  <31.415110, 30.159842, 32.950130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636106, 30.469990, 32.827785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533987, 0.047499, -0.844157,
		-0.640006, 0.629718, 0.440281,
		0.552494, 0.775370, -0.305862,
		31.801855, 30.702600, 32.736027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925055, 30.688196, 32.669125>,  <31.415110, 30.159842, 32.950130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925055, 30.688196, 32.669125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.292555, 30.736603, 32.518791>,  <31.513056, 30.765646, 32.428593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.292555, 30.736603, 32.518791>,  <30.925055, 30.688196, 32.669125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292555, 30.736603, 32.518791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379461, 0.007618, -0.925176,
		-0.109099, 0.992621, 0.052920,
		0.918753, 0.121017, -0.375830,
		31.568180, 30.772907, 32.406044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744541, 31.028374, 32.134392>,  <30.925055, 30.688196, 32.669125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744541, 31.028374, 32.134392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124702, 30.944277, 32.042717>,  <31.352800, 30.893818, 31.987711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124702, 30.944277, 32.042717>,  <30.744541, 31.028374, 32.134392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124702, 30.944277, 32.042717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247112, -0.062993, -0.966937,
		0.188855, 0.975617, -0.111823,
		0.950405, -0.210244, -0.229190,
		31.409824, 30.881203, 31.973961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961023, 31.546638, 31.568096>,  <30.744541, 31.028374, 32.134392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961023, 31.546638, 31.568096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208801, 31.232988, 31.552958>,  <31.357468, 31.044798, 31.543875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208801, 31.232988, 31.552958>,  <30.961023, 31.546638, 31.568096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208801, 31.232988, 31.552958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321275, -0.209222, -0.923585,
		0.716288, 0.584271, -0.381523,
		0.619446, -0.784126, -0.037848,
		31.394634, 30.997751, 31.541603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268219, 31.538570, 30.918974>,  <30.961023, 31.546638, 31.568096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268219, 31.538570, 30.918974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300560, 31.158028, 31.037888>,  <31.319965, 30.929701, 31.109236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.300560, 31.158028, 31.037888>,  <31.268219, 31.538570, 30.918974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300560, 31.158028, 31.037888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294623, -0.307746, -0.904704,
		0.952187, -0.014438, -0.305175,
		0.080854, -0.951359, 0.297285,
		31.324816, 30.872620, 31.127073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826160, 31.969862, 30.409969>,  <31.268219, 31.538570, 30.918974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826160, 31.969862, 30.409969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712498, 32.340248, 30.310497>,  <31.644300, 32.562481, 30.250814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.712498, 32.340248, 30.310497>,  <31.826160, 31.969862, 30.409969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712498, 32.340248, 30.310497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413967, 0.352438, 0.839297,
		0.864805, 0.135547, -0.483467,
		-0.284156, 0.925967, -0.248678,
		31.627251, 32.618038, 30.235893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309437, 32.447639, 30.585430>,  <31.826160, 31.969862, 30.409969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309437, 32.447639, 30.585430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.016132, 32.719498, 30.577400>,  <31.840149, 32.882614, 30.572582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.016132, 32.719498, 30.577400>,  <32.309437, 32.447639, 30.585430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016132, 32.719498, 30.577400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351139, 0.403796, 0.844778,
		0.582257, 0.612397, -0.534740,
		-0.733265, 0.679646, -0.020077,
		31.796152, 32.923393, 30.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627335, 33.183823, 30.651516>,  <32.309437, 32.447639, 30.585430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627335, 33.183823, 30.651516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247772, 33.191200, 30.777521>,  <32.020035, 33.195629, 30.853125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247772, 33.191200, 30.777521>,  <32.627335, 33.183823, 30.651516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247772, 33.191200, 30.777521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272590, 0.550797, 0.788871,
		-0.158955, 0.834435, -0.527685,
		-0.948909, 0.018447, 0.315011,
		31.963100, 33.196735, 30.872025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562473, 33.792484, 31.008205>,  <32.627335, 33.183823, 30.651516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562473, 33.792484, 31.008205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238678, 33.590645, 31.128279>,  <32.044399, 33.469540, 31.200323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238678, 33.590645, 31.128279>,  <32.562473, 33.792484, 31.008205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238678, 33.590645, 31.128279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000501, 0.510670, 0.859776,
		-0.587136, 0.696129, -0.413129,
		-0.809488, -0.504598, 0.300182,
		31.995831, 33.439266, 31.218334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172951, 34.218761, 31.441923>,  <32.562473, 33.792484, 31.008205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172951, 34.218761, 31.441923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079453, 33.852413, 31.572491>,  <32.023354, 33.632607, 31.650831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079453, 33.852413, 31.572491>,  <32.172951, 34.218761, 31.441923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079453, 33.852413, 31.572491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171026, 0.291756, 0.941078,
		-0.957138, 0.275800, 0.088440,
		-0.233746, -0.915867, 0.326419,
		32.009327, 33.577652, 31.670416>
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
