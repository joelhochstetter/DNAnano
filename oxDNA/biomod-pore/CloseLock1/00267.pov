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
	<24.276960, 34.725307, 34.785385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344316, 35.044628, 35.016682>,  <24.384731, 35.236221, 35.155460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344316, 35.044628, 35.016682>,  <24.276960, 34.725307, 34.785385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344316, 35.044628, 35.016682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973528, -0.042710, -0.224541,
		-0.154554, 0.600747, -0.784357,
		0.168393, 0.798297, 0.578243,
		24.394835, 35.284119, 35.190155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694128, 35.152027, 34.395443>,  <24.276960, 34.725307, 34.785385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694128, 35.152027, 34.395443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738331, 35.210121, 34.788727>,  <24.764853, 35.244980, 35.024696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738331, 35.210121, 34.788727>,  <24.694128, 35.152027, 34.395443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738331, 35.210121, 34.788727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993797, -0.028583, -0.107473,
		0.012494, 0.988984, -0.147494,
		0.110505, 0.145237, 0.983206,
		24.771482, 35.253693, 35.083691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057798, 35.737701, 34.514931>,  <24.694128, 35.152027, 34.395443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057798, 35.737701, 34.514931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095751, 35.473545, 34.812893>,  <25.118523, 35.315052, 34.991669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095751, 35.473545, 34.812893>,  <25.057798, 35.737701, 34.514931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095751, 35.473545, 34.812893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994123, 0.023673, -0.105640,
		0.052129, 0.750551, 0.658753,
		0.094883, -0.660388, 0.744906,
		25.124216, 35.275429, 35.036366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485394, 35.977535, 34.971512>,  <25.057798, 35.737701, 34.514931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485394, 35.977535, 34.971512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537638, 35.582588, 35.007385>,  <25.568985, 35.345619, 35.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537638, 35.582588, 35.007385>,  <25.485394, 35.977535, 34.971512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537638, 35.582588, 35.007385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991089, 0.132415, 0.014431,
		-0.026124, 0.086996, 0.995866,
		0.130612, -0.987369, 0.089680,
		25.576820, 35.286377, 35.034290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152519, 35.958801, 35.341503>,  <25.485394, 35.977535, 34.971512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152519, 35.958801, 35.341503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092384, 35.646049, 35.099487>,  <26.056303, 35.458401, 34.954277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092384, 35.646049, 35.099487>,  <26.152519, 35.958801, 35.341503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092384, 35.646049, 35.099487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982770, -0.051632, -0.177474,
		0.107523, -0.621291, 0.776167,
		-0.150338, -0.781877, -0.605035,
		26.047283, 35.411488, 34.917976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704987, 36.020916, 34.961510>,  <26.152519, 35.958801, 35.341503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704987, 36.020916, 34.961510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971489, 36.151600, 35.229649>,  <27.131392, 36.230011, 35.390530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971489, 36.151600, 35.229649>,  <26.704987, 36.020916, 34.961510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971489, 36.151600, 35.229649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125122, 0.935152, -0.331414,
		-0.735150, 0.136933, 0.663931,
		0.666258, 0.326711, 0.670344,
		27.171366, 36.249615, 35.430752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531046, 36.591644, 35.450397>,  <26.704987, 36.020916, 34.961510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531046, 36.591644, 35.450397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924368, 36.651749, 35.409355>,  <27.160362, 36.687813, 35.384727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924368, 36.651749, 35.409355>,  <26.531046, 36.591644, 35.450397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924368, 36.651749, 35.409355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145802, 0.988063, 0.049733,
		0.108858, -0.033942, 0.993478,
		0.983307, 0.150265, -0.102610,
		27.219360, 36.696827, 35.378571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465937, 37.254166, 35.330952>,  <26.531046, 36.591644, 35.450397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465937, 37.254166, 35.330952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860962, 37.244392, 35.393078>,  <27.097977, 37.238529, 35.430355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860962, 37.244392, 35.393078>,  <26.465937, 37.254166, 35.330952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860962, 37.244392, 35.393078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010419, 0.995849, 0.090425,
		-0.156880, -0.087682, 0.983718,
		0.987563, -0.024435, 0.155315,
		27.157230, 37.237061, 35.439671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572754, 37.729553, 35.730976>,  <26.465937, 37.254166, 35.330952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572754, 37.729553, 35.730976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954021, 37.670921, 35.625160>,  <27.182783, 37.635742, 35.561668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954021, 37.670921, 35.625160>,  <26.572754, 37.729553, 35.730976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954021, 37.670921, 35.625160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212802, 0.946583, 0.242271,
		0.214901, -0.287221, 0.933446,
		0.953170, -0.146575, -0.264543,
		27.239973, 37.626949, 35.545795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036106, 38.227654, 36.192226>,  <26.572754, 37.729553, 35.730976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036106, 38.227654, 36.192226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250603, 38.132313, 35.868343>,  <27.379301, 38.075108, 35.674011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250603, 38.132313, 35.868343>,  <27.036106, 38.227654, 36.192226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250603, 38.132313, 35.868343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411259, 0.911510, 0.004046,
		0.737096, -0.335170, 0.586814,
		0.536243, -0.238350, -0.809711,
		27.411476, 38.060806, 35.625431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758204, 38.493538, 36.329113>,  <27.036106, 38.227654, 36.192226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758204, 38.493538, 36.329113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718237, 38.475155, 35.931538>,  <27.694258, 38.464127, 35.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718237, 38.475155, 35.931538>,  <27.758204, 38.493538, 36.329113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718237, 38.475155, 35.931538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251769, 0.965257, -0.069940,
		0.962616, -0.257229, -0.084871,
		-0.099913, -0.045957, -0.993934,
		27.688263, 38.461369, 35.633358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274723, 38.802536, 36.051495>,  <27.758204, 38.493538, 36.329113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274723, 38.802536, 36.051495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996698, 38.807175, 35.763954>,  <27.829884, 38.809959, 35.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996698, 38.807175, 35.763954>,  <28.274723, 38.802536, 36.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996698, 38.807175, 35.763954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174961, 0.972540, -0.153478,
		0.697335, -0.232448, -0.678006,
		-0.695063, 0.011600, -0.718855,
		27.788179, 38.810654, 35.548298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544643, 39.209545, 35.465729>,  <28.274723, 38.802536, 36.051495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544643, 39.209545, 35.465729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155951, 39.205494, 35.371380>,  <27.922735, 39.203064, 35.314770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155951, 39.205494, 35.371380>,  <28.544643, 39.209545, 35.465729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155951, 39.205494, 35.371380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015526, 0.994174, -0.106659,
		0.235575, -0.107306, -0.965914,
		-0.971732, -0.010129, -0.235869,
		27.864431, 39.202454, 35.300621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553322, 39.741829, 35.013916>,  <28.544643, 39.209545, 35.465729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553322, 39.741829, 35.013916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173502, 39.698879, 35.131783>,  <27.945610, 39.673111, 35.202503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173502, 39.698879, 35.131783>,  <28.553322, 39.741829, 35.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173502, 39.698879, 35.131783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142406, 0.984736, -0.100082,
		-0.279424, -0.136995, -0.950344,
		-0.949549, -0.107369, 0.294668,
		27.888638, 39.666668, 35.220184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192524, 40.142403, 34.579582>,  <28.553322, 39.741829, 35.013916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192524, 40.142403, 34.579582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966894, 40.107113, 34.907982>,  <27.831516, 40.085938, 35.105022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966894, 40.107113, 34.907982>,  <28.192524, 40.142403, 34.579582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966894, 40.107113, 34.907982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078562, 0.995499, 0.053001,
		-0.821977, -0.034602, -0.568469,
		-0.564076, -0.088226, 0.820996,
		27.797670, 40.080647, 35.154282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590574, 40.497353, 34.386223>,  <28.192524, 40.142403, 34.579582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590574, 40.497353, 34.386223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580467, 40.484112, 34.785877>,  <27.574404, 40.476166, 35.025669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580467, 40.484112, 34.785877>,  <27.590574, 40.497353, 34.386223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580467, 40.484112, 34.785877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019069, 0.999254, 0.033593,
		-0.999499, 0.019901, -0.024617,
		-0.025267, -0.033106, 0.999132,
		27.572887, 40.474178, 35.085617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033426, 40.940609, 34.645885>,  <27.590574, 40.497353, 34.386223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033426, 40.940609, 34.645885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294443, 40.895668, 34.945637>,  <27.451054, 40.868702, 35.125488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294443, 40.895668, 34.945637>,  <27.033426, 40.940609, 34.645885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294443, 40.895668, 34.945637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012861, 0.987162, 0.159206,
		-0.757643, -0.113526, 0.642720,
		0.652542, -0.112355, 0.749377,
		27.490206, 40.861961, 35.170448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890827, 41.524372, 35.051067>,  <27.033426, 40.940609, 34.645885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890827, 41.524372, 35.051067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256388, 41.420025, 35.175476>,  <27.475723, 41.357414, 35.250122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256388, 41.420025, 35.175476>,  <26.890827, 41.524372, 35.051067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256388, 41.420025, 35.175476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146316, 0.926360, 0.347058,
		-0.378655, -0.271668, 0.884769,
		0.913899, -0.260871, 0.311022,
		27.530558, 41.341763, 35.268784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921942, 41.801697, 35.731903>,  <26.890827, 41.524372, 35.051067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921942, 41.801697, 35.731903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299629, 41.733829, 35.619007>,  <27.526241, 41.693108, 35.551270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299629, 41.733829, 35.619007>,  <26.921942, 41.801697, 35.731903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299629, 41.733829, 35.619007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243675, 0.936482, 0.252239,
		0.221517, -0.306945, 0.925589,
		0.944221, -0.169667, -0.282242,
		27.582895, 41.682930, 35.534336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325253, 42.226231, 36.167320>,  <26.921942, 41.801697, 35.731903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325253, 42.226231, 36.167320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541409, 42.155216, 35.838333>,  <27.671103, 42.112606, 35.640942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541409, 42.155216, 35.838333>,  <27.325253, 42.226231, 36.167320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541409, 42.155216, 35.838333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311393, 0.950281, -0.000532,
		0.781674, -0.255825, 0.568805,
		0.540389, -0.177538, -0.822472,
		27.703526, 42.101955, 35.591591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090952, 42.446091, 36.333965>,  <27.325253, 42.226231, 36.167320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090952, 42.446091, 36.333965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983084, 42.456188, 35.948917>,  <27.918364, 42.462246, 35.717888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983084, 42.456188, 35.948917>,  <28.090952, 42.446091, 36.333965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983084, 42.456188, 35.948917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241650, 0.969443, -0.042269,
		0.932140, -0.244016, -0.267530,
		-0.269669, 0.025248, -0.962622,
		27.902184, 42.463764, 35.660130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625280, 42.866867, 36.003620>,  <28.090952, 42.446091, 36.333965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625280, 42.866867, 36.003620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320055, 42.865681, 35.745094>,  <28.136919, 42.864967, 35.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320055, 42.865681, 35.745094>,  <28.625280, 42.866867, 36.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320055, 42.865681, 35.745094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089277, 0.989920, -0.109949,
		0.640126, -0.141599, -0.755108,
		-0.763065, -0.002968, -0.646315,
		28.091135, 42.864792, 35.551201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832787, 43.344658, 35.571362>,  <28.625280, 42.866867, 36.003620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832787, 43.344658, 35.571362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436083, 43.305046, 35.538841>,  <28.198061, 43.281281, 35.519329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436083, 43.305046, 35.538841>,  <28.832787, 43.344658, 35.571362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436083, 43.305046, 35.538841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102567, 0.993900, 0.040539,
		0.076790, 0.048543, -0.995865,
		-0.991758, -0.099030, -0.081301,
		28.138556, 43.275337, 35.514450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614597, 43.866459, 35.007038>,  <28.832787, 43.344658, 35.571362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614597, 43.866459, 35.007038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273296, 43.805408, 35.206501>,  <28.068516, 43.768780, 35.326180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273296, 43.805408, 35.206501>,  <28.614597, 43.866459, 35.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273296, 43.805408, 35.206501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069013, 0.980852, 0.182120,
		-0.516909, 0.120981, -0.847448,
		-0.853254, -0.152624, 0.498662,
		28.017321, 43.759621, 35.356098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158937, 44.367153, 34.803791>,  <28.614597, 43.866459, 35.007038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158937, 44.367153, 34.803791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007374, 44.263115, 35.159042>,  <27.916435, 44.200691, 35.372192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007374, 44.263115, 35.159042>,  <28.158937, 44.367153, 34.803791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007374, 44.263115, 35.159042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080289, 0.946834, 0.311543,
		-0.921945, 0.189353, -0.337880,
		-0.378908, -0.260098, 0.888132,
		27.893702, 44.185085, 35.425484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501503, 44.709118, 35.010620>,  <28.158937, 44.367153, 34.803791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501503, 44.709118, 35.010620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728161, 44.614216, 35.326248>,  <27.864155, 44.557274, 35.515625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728161, 44.614216, 35.326248>,  <27.501503, 44.709118, 35.010620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728161, 44.614216, 35.326248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033189, 0.950298, 0.309567,
		-0.823294, -0.201603, 0.530607,
		0.566645, -0.237254, 0.789065,
		27.898155, 44.543041, 35.562969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255415, 45.152012, 35.551178>,  <27.501503, 44.709118, 35.010620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255415, 45.152012, 35.551178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636175, 45.030125, 35.564041>,  <27.864632, 44.956993, 35.571758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636175, 45.030125, 35.564041>,  <27.255415, 45.152012, 35.551178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636175, 45.030125, 35.564041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290816, 0.931510, 0.218439,
		-0.096517, -0.198581, 0.975320,
		0.951898, -0.304722, 0.032156,
		27.921745, 44.938709, 35.573689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518024, 45.189110, 36.234913>,  <27.255415, 45.152012, 35.551178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518024, 45.189110, 36.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832289, 45.211025, 35.988422>,  <28.020847, 45.224174, 35.840527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832289, 45.211025, 35.988422>,  <27.518024, 45.189110, 36.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832289, 45.211025, 35.988422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335194, 0.799506, 0.498433,
		0.519985, -0.598155, 0.609776,
		0.785659, 0.054785, -0.616228,
		28.067987, 45.227459, 35.803555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237743, 44.613564, 36.626595>,  <27.518024, 45.189110, 36.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237743, 44.613564, 36.626595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887531, 44.576740, 36.816319>,  <26.677404, 44.554646, 36.930153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887531, 44.576740, 36.816319>,  <27.237743, 44.613564, 36.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887531, 44.576740, 36.816319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412662, -0.368120, -0.833185,
		0.251304, -0.925210, 0.284312,
		-0.875532, -0.092058, 0.474309,
		26.624872, 44.549122, 36.958611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794922, 45.147629, 37.117401>,  <27.237743, 44.613564, 36.626595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794922, 45.147629, 37.117401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897322, 44.921841, 37.431301>,  <26.958761, 44.786369, 37.619640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897322, 44.921841, 37.431301>,  <26.794922, 45.147629, 37.117401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897322, 44.921841, 37.431301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758051, 0.620973, 0.199377,
		-0.599853, 0.543843, 0.586866,
		0.255998, -0.564471, 0.784753,
		26.974121, 44.752499, 37.666725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870670, 45.612419, 37.894279>,  <26.794922, 45.147629, 37.117401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870670, 45.612419, 37.894279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102051, 45.298546, 37.805134>,  <27.240879, 45.110222, 37.751648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102051, 45.298546, 37.805134>,  <26.870670, 45.612419, 37.894279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102051, 45.298546, 37.805134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808121, 0.588460, 0.025596,
		0.111063, -0.194908, 0.974513,
		0.578451, -0.784682, -0.222865,
		27.275585, 45.063141, 37.738274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446012, 45.767319, 38.224682>,  <26.870670, 45.612419, 37.894279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446012, 45.767319, 38.224682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569155, 45.453316, 38.009655>,  <27.643040, 45.264912, 37.880638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569155, 45.453316, 38.009655>,  <27.446012, 45.767319, 38.224682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569155, 45.453316, 38.009655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948475, 0.297738, 0.108383,
		0.074973, -0.543238, 0.836224,
		0.307853, -0.785012, -0.537570,
		27.661510, 45.217812, 37.848385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033478, 45.476654, 38.652546>,  <27.446012, 45.767319, 38.224682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033478, 45.476654, 38.652546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028639, 45.413780, 38.257549>,  <28.025736, 45.376057, 38.020550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028639, 45.413780, 38.257549>,  <28.033478, 45.476654, 38.652546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028639, 45.413780, 38.257549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993943, 0.105984, -0.029046,
		0.109224, -0.981866, 0.154947,
		-0.012098, -0.157181, -0.987496,
		28.025009, 45.366627, 37.961300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576994, 44.971584, 38.576649>,  <28.033478, 45.476654, 38.652546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576994, 44.971584, 38.576649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488163, 45.208004, 38.266464>,  <28.434864, 45.349854, 38.080353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488163, 45.208004, 38.266464>,  <28.576994, 44.971584, 38.576649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488163, 45.208004, 38.266464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971931, 0.197540, -0.127782,
		0.077660, -0.782076, -0.618325,
		-0.222079, 0.591046, -0.775465,
		28.421539, 45.385319, 38.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521744, 44.197262, 38.247601>,  <28.576994, 44.971584, 38.576649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521744, 44.197262, 38.247601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402197, 44.248356, 38.625885>,  <28.330469, 44.279011, 38.852856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402197, 44.248356, 38.625885>,  <28.521744, 44.197262, 38.247601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402197, 44.248356, 38.625885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544932, -0.790698, 0.279010,
		0.783407, 0.598733, 0.166709,
		-0.298869, 0.127733, 0.945707,
		28.312536, 44.286674, 38.909595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009766, 44.110500, 38.763138>,  <28.521744, 44.197262, 38.247601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009766, 44.110500, 38.763138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667587, 44.018032, 38.948513>,  <28.462280, 43.962551, 39.059738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667587, 44.018032, 38.948513>,  <29.009766, 44.110500, 38.763138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667587, 44.018032, 38.948513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338205, -0.927049, 0.161855,
		0.392211, 0.295194, 0.871224,
		-0.855446, -0.231171, 0.463435,
		28.410954, 43.948681, 39.087543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113241, 43.935436, 39.539944>,  <29.009766, 44.110500, 38.763138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113241, 43.935436, 39.539944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827639, 43.722630, 39.357887>,  <28.656277, 43.594948, 39.248653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827639, 43.722630, 39.357887>,  <29.113241, 43.935436, 39.539944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827639, 43.722630, 39.357887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532833, -0.834612, 0.139684,
		-0.454182, -0.142780, 0.879393,
		-0.714008, -0.532012, -0.455144,
		28.613436, 43.563026, 39.221344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020729, 43.301769, 39.979053>,  <29.113241, 43.935436, 39.539944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020729, 43.301769, 39.979053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797777, 43.190063, 39.666302>,  <28.664007, 43.123039, 39.478649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797777, 43.190063, 39.666302>,  <29.020729, 43.301769, 39.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797777, 43.190063, 39.666302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334054, -0.937577, 0.096735,
		-0.760091, -0.207274, 0.615873,
		-0.557378, -0.279262, -0.781884,
		28.630564, 43.106285, 39.431736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759134, 42.586292, 40.178848>,  <29.020729, 43.301769, 39.979053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759134, 42.586292, 40.178848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709274, 42.602634, 39.782303>,  <28.679358, 42.612438, 39.544376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709274, 42.602634, 39.782303>,  <28.759134, 42.586292, 40.178848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709274, 42.602634, 39.782303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142882, -0.987999, -0.058683,
		-0.981859, -0.148962, 0.117316,
		-0.124650, 0.040856, -0.991359,
		28.671879, 42.614891, 39.484894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522541, 41.965958, 40.085442>,  <28.759134, 42.586292, 40.178848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522541, 41.965958, 40.085442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654057, 42.079006, 39.724991>,  <28.732965, 42.146835, 39.508720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654057, 42.079006, 39.724991>,  <28.522541, 41.965958, 40.085442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654057, 42.079006, 39.724991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025810, -0.951127, -0.307719,
		-0.944051, 0.124432, -0.305425,
		0.328788, 0.282619, -0.901124,
		28.752693, 42.163792, 39.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123219, 41.620041, 39.573608>,  <28.522541, 41.965958, 40.085442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123219, 41.620041, 39.573608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461752, 41.714306, 39.382534>,  <28.664871, 41.770863, 39.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461752, 41.714306, 39.382534>,  <28.123219, 41.620041, 39.573608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461752, 41.714306, 39.382534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018353, -0.909175, -0.416010,
		-0.532341, 0.343316, -0.773788,
		0.846331, 0.235660, -0.477690,
		28.715651, 41.785004, 39.239227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063063, 41.405205, 38.894238>,  <28.123219, 41.620041, 39.573608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063063, 41.405205, 38.894238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458929, 41.462017, 38.902107>,  <28.696449, 41.496105, 38.906830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458929, 41.462017, 38.902107>,  <28.063063, 41.405205, 38.894238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458929, 41.462017, 38.902107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120242, -0.747293, -0.653525,
		-0.078118, 0.649138, -0.756649,
		0.989666, 0.142033, 0.019676,
		28.755829, 41.504627, 38.908009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283321, 41.431271, 38.216152>,  <28.063063, 41.405205, 38.894238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283321, 41.431271, 38.216152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600306, 41.304291, 38.424473>,  <28.790497, 41.228104, 38.549465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.600306, 41.304291, 38.424473>,  <28.283321, 41.431271, 38.216152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600306, 41.304291, 38.424473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067379, -0.803088, -0.592039,
		0.606191, 0.504258, -0.615025,
		0.792460, -0.317449, 0.520801,
		28.838043, 41.209057, 38.580711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754719, 41.097004, 37.736179>,  <28.283321, 41.431271, 38.216152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754719, 41.097004, 37.736179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921209, 40.955761, 38.071339>,  <29.021103, 40.871017, 38.272434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921209, 40.955761, 38.071339>,  <28.754719, 41.097004, 37.736179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921209, 40.955761, 38.071339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274003, -0.829970, -0.485873,
		0.866995, 0.431819, -0.248702,
		0.416225, -0.353104, 0.837899,
		29.046076, 40.849831, 38.322708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439993, 40.834198, 37.606628>,  <28.754719, 41.097004, 37.736179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439993, 40.834198, 37.606628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342735, 40.653397, 37.949924>,  <29.284382, 40.544918, 38.155903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342735, 40.653397, 37.949924>,  <29.439993, 40.834198, 37.606628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342735, 40.653397, 37.949924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292981, -0.877689, -0.379241,
		0.924686, 0.159239, 0.345831,
		-0.243142, -0.452001, 0.858240,
		29.269793, 40.517796, 38.207397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947289, 40.414490, 37.775169>,  <29.439993, 40.834198, 37.606628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947289, 40.414490, 37.775169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633318, 40.258579, 37.967819>,  <29.444935, 40.165031, 38.083408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633318, 40.258579, 37.967819>,  <29.947289, 40.414490, 37.775169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633318, 40.258579, 37.967819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282478, -0.916970, -0.281729,
		0.551449, -0.085088, 0.829858,
		-0.784927, -0.389776, 0.481627,
		29.397840, 40.141647, 38.112309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199766, 39.802155, 38.137596>,  <29.947289, 40.414490, 37.775169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199766, 39.802155, 38.137596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807777, 39.736336, 38.092735>,  <29.572584, 39.696846, 38.065819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807777, 39.736336, 38.092735>,  <30.199766, 39.802155, 38.137596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807777, 39.736336, 38.092735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191534, -0.932971, -0.304760,
		-0.054491, -0.320138, 0.945803,
		-0.979972, -0.164547, -0.112156,
		29.513786, 39.686974, 38.059090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099154, 39.110783, 38.343418>,  <30.199766, 39.802155, 38.137596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099154, 39.110783, 38.343418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739090, 39.172649, 38.180550>,  <29.523052, 39.209770, 38.082829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739090, 39.172649, 38.180550>,  <30.099154, 39.110783, 38.343418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739090, 39.172649, 38.180550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075273, -0.976003, -0.204336,
		-0.429004, -0.153286, 0.890202,
		-0.900161, 0.154669, -0.407171,
		29.469042, 39.219051, 38.058399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660824, 38.691879, 38.642483>,  <30.099154, 39.110783, 38.343418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660824, 38.691879, 38.642483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505632, 38.776264, 38.283604>,  <29.412518, 38.826897, 38.068275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505632, 38.776264, 38.283604>,  <29.660824, 38.691879, 38.642483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505632, 38.776264, 38.283604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061165, -0.977198, -0.203328,
		-0.919637, -0.024010, 0.392036,
		-0.387978, 0.210967, -0.897199,
		29.389238, 38.839554, 38.014442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054636, 38.172493, 38.530312>,  <29.660824, 38.691879, 38.642483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054636, 38.172493, 38.530312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159601, 38.311665, 38.170292>,  <29.222580, 38.395168, 37.954281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159601, 38.311665, 38.170292>,  <29.054636, 38.172493, 38.530312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159601, 38.311665, 38.170292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059285, -0.925157, -0.374926,
		-0.963132, 0.151746, -0.222148,
		0.262415, 0.347933, -0.900045,
		29.238325, 38.416046, 37.900280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561123, 37.779266, 38.092850>,  <29.054636, 38.172493, 38.530312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561123, 37.779266, 38.092850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835672, 37.928318, 37.843037>,  <29.000402, 38.017750, 37.693150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835672, 37.928318, 37.843037>,  <28.561123, 37.779266, 38.092850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835672, 37.928318, 37.843037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025316, -0.870483, -0.491547,
		-0.726809, 0.321574, -0.606910,
		0.686373, 0.372625, -0.624534,
		29.041584, 38.040104, 37.655678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355749, 37.586262, 37.376286>,  <28.561123, 37.779266, 38.092850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355749, 37.586262, 37.376286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737780, 37.687710, 37.314949>,  <28.966997, 37.748577, 37.278149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737780, 37.687710, 37.314949>,  <28.355749, 37.586262, 37.376286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737780, 37.687710, 37.314949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110401, -0.784609, -0.610083,
		-0.275037, 0.565745, -0.777359,
		0.955074, 0.253616, -0.153337,
		29.024302, 37.763794, 37.268948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521616, 37.699009, 36.636700>,  <28.355749, 37.586262, 37.376286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521616, 37.699009, 36.636700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879482, 37.611916, 36.792732>,  <29.094202, 37.559658, 36.886353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879482, 37.611916, 36.792732>,  <28.521616, 37.699009, 36.636700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879482, 37.611916, 36.792732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160196, -0.658745, -0.735114,
		0.417023, 0.720171, -0.554477,
		0.894667, -0.217735, 0.390080,
		29.147882, 37.546597, 36.909756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125322, 37.670246, 36.028843>,  <28.521616, 37.699009, 36.636700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125322, 37.670246, 36.028843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225576, 37.453732, 36.349888>,  <29.285728, 37.323822, 36.542515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225576, 37.453732, 36.349888>,  <29.125322, 37.670246, 36.028843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225576, 37.453732, 36.349888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325137, -0.733852, -0.596446,
		0.911849, 0.410449, -0.007934,
		0.250633, -0.541289, 0.802614,
		29.300766, 37.291344, 36.590672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732254, 37.418316, 35.836742>,  <29.125322, 37.670246, 36.028843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732254, 37.418316, 35.836742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612955, 37.180714, 36.135597>,  <29.541376, 37.038155, 36.314911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612955, 37.180714, 36.135597>,  <29.732254, 37.418316, 35.836742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612955, 37.180714, 36.135597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261865, -0.803646, -0.534397,
		0.917865, 0.036266, 0.395233,
		-0.298247, -0.594002, 0.747135,
		29.523481, 37.002514, 36.359737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141962, 36.952965, 35.815231>,  <29.732254, 37.418316, 35.836742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141962, 36.952965, 35.815231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854084, 36.764935, 36.019611>,  <29.681356, 36.652115, 36.142239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854084, 36.764935, 36.019611>,  <30.141962, 36.952965, 35.815231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854084, 36.764935, 36.019611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229370, -0.855586, -0.464071,
		0.655308, -0.216794, 0.723583,
		-0.719696, -0.470077, 0.510946,
		29.638176, 36.623913, 36.172894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492744, 36.407616, 36.258362>,  <30.141962, 36.952965, 35.815231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492744, 36.407616, 36.258362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114553, 36.282360, 36.222538>,  <29.887640, 36.207207, 36.201042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114553, 36.282360, 36.222538>,  <30.492744, 36.407616, 36.258362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114553, 36.282360, 36.222538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325589, -0.915618, -0.235870,
		-0.008145, -0.252169, 0.967649,
		-0.945476, -0.313135, -0.089561,
		29.830910, 36.188419, 36.195671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566669, 35.901623, 35.797920>,  <30.492744, 36.407616, 36.258362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566669, 35.901623, 35.797920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802694, 35.861206, 35.477516>,  <30.944309, 35.836956, 35.285275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802694, 35.861206, 35.477516>,  <30.566669, 35.901623, 35.797920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802694, 35.861206, 35.477516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618832, -0.580604, 0.529100,
		-0.518528, -0.807893, -0.280067,
		0.590064, -0.101039, -0.801009,
		30.979713, 35.830894, 35.237213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644972, 35.151367, 35.484821>,  <30.566669, 35.901623, 35.797920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644972, 35.151367, 35.484821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959946, 35.395233, 35.448483>,  <31.148930, 35.541553, 35.426678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959946, 35.395233, 35.448483>,  <30.644972, 35.151367, 35.484821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959946, 35.395233, 35.448483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491798, -0.532548, 0.688860,
		0.371591, -0.587113, -0.719179,
		0.787436, 0.609664, -0.090851,
		31.196177, 35.578133, 35.421227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311172, 34.784451, 35.471786>,  <30.644972, 35.151367, 35.484821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311172, 34.784451, 35.471786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350067, 35.147152, 35.635902>,  <31.373404, 35.364773, 35.734371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350067, 35.147152, 35.635902>,  <31.311172, 34.784451, 35.471786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350067, 35.147152, 35.635902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522076, -0.397442, 0.754637,
		0.847338, 0.140825, -0.512041,
		0.097235, 0.906757, 0.410289,
		31.379238, 35.419178, 35.758987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961956, 34.894978, 35.677433>,  <31.311172, 34.784451, 35.471786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961956, 34.894978, 35.677433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778795, 35.175220, 35.896332>,  <31.668898, 35.343365, 36.027672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778795, 35.175220, 35.896332>,  <31.961956, 34.894978, 35.677433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778795, 35.175220, 35.896332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605006, -0.205447, 0.769259,
		0.651377, 0.683332, -0.329796,
		-0.457903, 0.700607, 0.547243,
		31.641424, 35.385403, 36.060505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526905, 35.274601, 35.886826>,  <31.961956, 34.894978, 35.677433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526905, 35.274601, 35.886826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221325, 35.282490, 36.144814>,  <32.037975, 35.287224, 36.299606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221325, 35.282490, 36.144814>,  <32.526905, 35.274601, 35.886826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221325, 35.282490, 36.144814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615592, -0.277373, 0.737638,
		0.193442, 0.960560, 0.199761,
		-0.763954, 0.019719, 0.644969,
		31.992138, 35.288406, 36.338303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696163, 35.815582, 36.397057>,  <32.526905, 35.274601, 35.886826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696163, 35.815582, 36.397057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451527, 35.540409, 36.553371>,  <32.304745, 35.375305, 36.647160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451527, 35.540409, 36.553371>,  <32.696163, 35.815582, 36.397057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451527, 35.540409, 36.553371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635536, -0.132981, 0.760533,
		-0.471226, 0.713491, 0.518533,
		-0.611588, -0.687930, 0.390784,
		32.268051, 35.334030, 36.670609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520832, 36.035995, 37.049294>,  <32.696163, 35.815582, 36.397057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520832, 36.035995, 37.049294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475639, 35.638557, 37.050354>,  <32.448524, 35.400093, 37.050991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475639, 35.638557, 37.050354>,  <32.520832, 36.035995, 37.049294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475639, 35.638557, 37.050354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626126, -0.069123, 0.776653,
		-0.771494, 0.089403, 0.629924,
		-0.112977, -0.993594, 0.002650,
		32.441746, 35.340481, 37.051147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294239, 35.889404, 37.815773>,  <32.520832, 36.035995, 37.049294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294239, 35.889404, 37.815773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403896, 35.537174, 37.661144>,  <32.469688, 35.325836, 37.568367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403896, 35.537174, 37.661144>,  <32.294239, 35.889404, 37.815773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403896, 35.537174, 37.661144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403558, -0.259528, 0.877375,
		-0.872919, -0.396527, 0.284216,
		0.274140, -0.880575, -0.386569,
		32.486137, 35.273003, 37.545174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073437, 35.435097, 38.302010>,  <32.294239, 35.889404, 37.815773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073437, 35.435097, 38.302010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361862, 35.248432, 38.097149>,  <32.534916, 35.136433, 37.974232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361862, 35.248432, 38.097149>,  <32.073437, 35.435097, 38.302010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361862, 35.248432, 38.097149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357149, -0.383079, 0.851877,
		-0.593732, -0.797170, -0.109556,
		0.721059, -0.466659, -0.512155,
		32.578178, 35.108437, 37.943504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141243, 34.776344, 38.548958>,  <32.073437, 35.435097, 38.302010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141243, 34.776344, 38.548958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486916, 34.866135, 38.368824>,  <32.694321, 34.920010, 38.260742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486916, 34.866135, 38.368824>,  <32.141243, 34.776344, 38.548958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486916, 34.866135, 38.368824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502151, -0.327549, 0.800347,
		0.032151, -0.917782, -0.395782,
		0.864182, 0.224474, -0.450334,
		32.746170, 34.933475, 38.233723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537647, 34.164566, 38.512287>,  <32.141243, 34.776344, 38.548958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537647, 34.164566, 38.512287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821205, 34.444176, 38.474701>,  <32.991341, 34.611942, 38.452148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821205, 34.444176, 38.474701>,  <32.537647, 34.164566, 38.512287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821205, 34.444176, 38.474701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468714, -0.367342, 0.803348,
		0.527043, -0.613533, -0.588050,
		0.708896, 0.699026, -0.093966,
		33.033875, 34.653885, 38.446510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167320, 33.794086, 38.665794>,  <32.537647, 34.164566, 38.512287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167320, 33.794086, 38.665794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289062, 34.173847, 38.696781>,  <33.362110, 34.401703, 38.715374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289062, 34.173847, 38.696781>,  <33.167320, 33.794086, 38.665794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289062, 34.173847, 38.696781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531656, -0.236789, 0.813187,
		0.790384, -0.206316, -0.576825,
		0.304359, 0.949402, 0.077465,
		33.380371, 34.458668, 38.720020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902248, 33.748096, 38.698528>,  <33.167320, 33.794086, 38.665794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902248, 33.748096, 38.698528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825260, 34.105640, 38.860497>,  <33.779068, 34.320168, 38.957680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825260, 34.105640, 38.860497>,  <33.902248, 33.748096, 38.698528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825260, 34.105640, 38.860497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498894, -0.266199, 0.824768,
		0.845020, 0.360761, -0.394706,
		-0.192474, 0.893862, 0.404925,
		33.767517, 34.373798, 38.981976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548977, 34.029472, 38.901108>,  <33.902248, 33.748096, 38.698528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548977, 34.029472, 38.901108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271706, 34.235771, 39.102509>,  <34.105343, 34.359550, 39.223347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271706, 34.235771, 39.102509>,  <34.548977, 34.029472, 38.901108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271706, 34.235771, 39.102509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498574, -0.161371, 0.851694,
		0.520507, 0.841408, -0.145278,
		-0.693178, 0.515745, 0.503499,
		34.063751, 34.390495, 39.253559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898724, 34.572906, 39.301407>,  <34.548977, 34.029472, 38.901108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898724, 34.572906, 39.301407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546535, 34.491356, 39.472618>,  <34.335224, 34.442425, 39.575344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546535, 34.491356, 39.472618>,  <34.898724, 34.572906, 39.301407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546535, 34.491356, 39.472618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446987, -0.056016, 0.892785,
		-0.158039, 0.977393, 0.140449,
		-0.880469, -0.203874, 0.428030,
		34.282394, 34.430195, 39.601028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815281, 34.989700, 39.879578>,  <34.898724, 34.572906, 39.301407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815281, 34.989700, 39.879578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577137, 34.683647, 39.977657>,  <34.434250, 34.500015, 40.036503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577137, 34.683647, 39.977657>,  <34.815281, 34.989700, 39.879578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577137, 34.683647, 39.977657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266973, 0.099446, 0.958559,
		-0.757810, 0.636144, 0.145065,
		-0.595356, -0.765135, 0.245194,
		34.398529, 34.454105, 40.051216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551685, 35.089298, 40.535622>,  <34.815281, 34.989700, 39.879578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551685, 35.089298, 40.535622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460003, 34.702133, 40.494423>,  <34.404991, 34.469833, 40.469704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460003, 34.702133, 40.494423>,  <34.551685, 35.089298, 40.535622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460003, 34.702133, 40.494423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087238, -0.125818, 0.988210,
		-0.969460, 0.217520, 0.113277,
		-0.229208, -0.967913, -0.102999,
		34.391239, 34.411758, 40.463524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267555, 34.943752, 41.187580>,  <34.551685, 35.089298, 40.535622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267555, 34.943752, 41.187580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327950, 34.585018, 41.021259>,  <34.364185, 34.369778, 40.921467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327950, 34.585018, 41.021259>,  <34.267555, 34.943752, 41.187580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327950, 34.585018, 41.021259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036956, -0.425453, 0.904225,
		-0.987845, -0.121160, -0.097382,
		0.150987, -0.896833, -0.415804,
		34.373245, 34.315968, 40.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963371, 34.538799, 41.671360>,  <34.267555, 34.943752, 41.187580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963371, 34.538799, 41.671360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180790, 34.283985, 41.452728>,  <34.311241, 34.131096, 41.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180790, 34.283985, 41.452728>,  <33.963371, 34.538799, 41.671360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180790, 34.283985, 41.452728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077780, -0.610143, 0.788465,
		-0.835770, -0.471077, -0.282091,
		0.543544, -0.637034, -0.546579,
		34.343853, 34.092876, 41.288754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751438, 33.907909, 41.800629>,  <33.963371, 34.538799, 41.671360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751438, 33.907909, 41.800629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120155, 33.844471, 41.659126>,  <34.341385, 33.806408, 41.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120155, 33.844471, 41.659126>,  <33.751438, 33.907909, 41.800629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120155, 33.844471, 41.659126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083999, -0.809116, 0.581614,
		-0.378472, -0.565843, -0.732517,
		0.921794, -0.158594, -0.353758,
		34.396694, 33.796894, 41.552998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824017, 33.197304, 41.550232>,  <33.751438, 33.907909, 41.800629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824017, 33.197304, 41.550232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174721, 33.348293, 41.669434>,  <34.385143, 33.438889, 41.740955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174721, 33.348293, 41.669434>,  <33.824017, 33.197304, 41.550232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174721, 33.348293, 41.669434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091833, -0.739638, 0.666710,
		0.472080, -0.557178, -0.683149,
		0.876759, 0.377476, 0.298001,
		34.437748, 33.461536, 41.758835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222935, 32.556549, 41.606167>,  <33.824017, 33.197304, 41.550232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222935, 32.556549, 41.606167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407650, 32.858494, 41.792469>,  <34.518478, 33.039661, 41.904251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407650, 32.858494, 41.792469>,  <34.222935, 32.556549, 41.606167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407650, 32.858494, 41.792469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098962, -0.565670, 0.818672,
		0.881450, -0.331964, -0.335925,
		0.461792, 0.754862, 0.465758,
		34.546188, 33.084953, 41.932198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736858, 32.162045, 41.901592>,  <34.222935, 32.556549, 41.606167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736858, 32.162045, 41.901592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713108, 32.508263, 42.100510>,  <34.698856, 32.715996, 42.219860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713108, 32.508263, 42.100510>,  <34.736858, 32.162045, 41.901592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713108, 32.508263, 42.100510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153855, -0.484284, 0.861277,
		0.986308, 0.127653, -0.104412,
		-0.059380, 0.865548, 0.497293,
		34.695293, 32.767929, 42.249699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358109, 32.250721, 42.232609>,  <34.736858, 32.162045, 41.901592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358109, 32.250721, 42.232609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097633, 32.494217, 42.413887>,  <34.941349, 32.640316, 42.522655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097633, 32.494217, 42.413887>,  <35.358109, 32.250721, 42.232609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097633, 32.494217, 42.413887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327762, -0.313016, 0.891399,
		0.684492, 0.729008, 0.004309,
		-0.651186, 0.608743, 0.453198,
		34.902279, 32.676842, 42.549847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685879, 32.587036, 42.769730>,  <35.358109, 32.250721, 42.232609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685879, 32.587036, 42.769730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300949, 32.601067, 42.877586>,  <35.069992, 32.609486, 42.942299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300949, 32.601067, 42.877586>,  <35.685879, 32.587036, 42.769730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300949, 32.601067, 42.877586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266247, -0.079835, 0.960593,
		0.055217, 0.996191, 0.067490,
		-0.962322, 0.035072, 0.269642,
		35.012253, 32.611588, 42.958477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731525, 32.771748, 43.506081>,  <35.685879, 32.587036, 42.769730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731525, 32.771748, 43.506081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349632, 32.663616, 43.456436>,  <35.120495, 32.598740, 43.426651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349632, 32.663616, 43.456436>,  <35.731525, 32.771748, 43.506081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349632, 32.663616, 43.456436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021839, -0.352409, 0.935591,
		-0.296650, 0.895954, 0.330554,
		-0.954737, -0.270324, -0.124109,
		35.063210, 32.582520, 43.419205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438908, 33.176506, 43.953506>,  <35.731525, 32.771748, 43.506081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438908, 33.176506, 43.953506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211048, 32.853531, 43.892120>,  <35.074333, 32.659748, 43.855289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211048, 32.853531, 43.892120>,  <35.438908, 33.176506, 43.953506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211048, 32.853531, 43.892120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063252, -0.229237, 0.971313,
		-0.819451, 0.543599, 0.181656,
		-0.569648, -0.807434, -0.153465,
		35.040154, 32.611301, 43.846081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922279, 33.197605, 44.504025>,  <35.438908, 33.176506, 43.953506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922279, 33.197605, 44.504025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941628, 32.819046, 44.376278>,  <34.953236, 32.591911, 44.299629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941628, 32.819046, 44.376278>,  <34.922279, 33.197605, 44.504025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941628, 32.819046, 44.376278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063883, -0.322020, 0.944575,
		-0.996785, -0.025288, -0.076035,
		0.048371, -0.946395, -0.319369,
		34.956139, 32.535126, 44.280468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546585, 32.774422, 44.993469>,  <34.922279, 33.197605, 44.504025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546585, 32.774422, 44.993469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763924, 32.498577, 44.801968>,  <34.894329, 32.333069, 44.687065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763924, 32.498577, 44.801968>,  <34.546585, 32.774422, 44.993469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763924, 32.498577, 44.801968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143718, -0.485456, 0.862367,
		-0.827114, -0.537372, -0.164662,
		0.543348, -0.689611, -0.478758,
		34.926929, 32.291695, 44.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272442, 32.078789, 45.252411>,  <34.546585, 32.774422, 44.993469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272442, 32.078789, 45.252411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634777, 32.030991, 45.089840>,  <34.852177, 32.002312, 44.992298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634777, 32.030991, 45.089840>,  <34.272442, 32.078789, 45.252411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634777, 32.030991, 45.089840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251955, -0.619298, 0.743632,
		-0.340557, -0.776010, -0.530876,
		0.905836, -0.119492, -0.406426,
		34.906528, 31.995142, 44.967911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330261, 31.417408, 45.090317>,  <34.272442, 32.078789, 45.252411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330261, 31.417408, 45.090317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698475, 31.567226, 45.134724>,  <34.919403, 31.657118, 45.161369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698475, 31.567226, 45.134724>,  <34.330261, 31.417408, 45.090317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698475, 31.567226, 45.134724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172165, -0.644068, 0.745343,
		0.350668, -0.667003, -0.657373,
		0.920538, 0.374544, 0.111019,
		34.974636, 31.679590, 45.168030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674248, 30.878326, 45.289085>,  <34.330261, 31.417408, 45.090317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674248, 30.878326, 45.289085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943130, 31.161003, 45.377373>,  <35.104462, 31.330610, 45.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943130, 31.161003, 45.377373>,  <34.674248, 30.878326, 45.289085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943130, 31.161003, 45.377373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238797, -0.489150, 0.838873,
		0.700792, -0.511192, -0.497568,
		0.672210, 0.706693, 0.220721,
		35.144794, 31.373011, 45.443588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207638, 30.508671, 45.601067>,  <34.674248, 30.878326, 45.289085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207638, 30.508671, 45.601067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306801, 30.885601, 45.691017>,  <35.366299, 31.111759, 45.744987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306801, 30.885601, 45.691017>,  <35.207638, 30.508671, 45.601067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306801, 30.885601, 45.691017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537033, -0.326861, 0.777661,
		0.806312, -0.072021, -0.587089,
		0.247905, 0.942324, 0.224874,
		35.381172, 31.168299, 45.758480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957409, 30.557522, 45.646748>,  <35.207638, 30.508671, 45.601067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957409, 30.557522, 45.646748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785545, 30.854992, 45.851624>,  <35.682426, 31.033474, 45.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785545, 30.854992, 45.851624>,  <35.957409, 30.557522, 45.646748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785545, 30.854992, 45.851624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481809, -0.290924, 0.826573,
		0.763710, 0.601924, -0.233311,
		-0.429659, 0.743674, 0.512194,
		35.656647, 31.078094, 46.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474560, 30.879223, 46.079990>,  <35.957409, 30.557522, 45.646748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474560, 30.879223, 46.079990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124058, 30.965197, 46.252495>,  <35.913757, 31.016781, 46.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124058, 30.965197, 46.252495>,  <36.474560, 30.879223, 46.079990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124058, 30.965197, 46.252495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379556, -0.243505, 0.892548,
		0.296853, 0.945785, 0.131793,
		-0.876251, 0.214933, 0.431264,
		35.861183, 31.029676, 46.381874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642319, 31.193251, 46.793175>,  <36.474560, 30.879223, 46.079990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642319, 31.193251, 46.793175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260799, 31.073076, 46.792858>,  <36.031887, 31.000973, 46.792667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260799, 31.073076, 46.792858>,  <36.642319, 31.193251, 46.793175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260799, 31.073076, 46.792858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116260, -0.371525, 0.921115,
		-0.277028, 0.878470, 0.389290,
		-0.953802, -0.300434, -0.000792,
		35.974659, 30.982946, 46.792622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238827, 31.422056, 47.474392>,  <36.642319, 31.193251, 46.793175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238827, 31.422056, 47.474392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046158, 31.120678, 47.295368>,  <35.930557, 30.939850, 47.187954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046158, 31.120678, 47.295368>,  <36.238827, 31.422056, 47.474392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046158, 31.120678, 47.295368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183795, -0.412497, 0.892225,
		-0.856861, 0.512020, 0.060209,
		-0.481673, -0.753447, -0.447559,
		35.901657, 30.894644, 47.161102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647659, 31.394253, 47.884144>,  <36.238827, 31.422056, 47.474392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647659, 31.394253, 47.884144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666840, 31.050989, 47.679688>,  <35.678349, 30.845032, 47.557014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666840, 31.050989, 47.679688>,  <35.647659, 31.394253, 47.884144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666840, 31.050989, 47.679688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164677, -0.511520, 0.843344,
		-0.985181, 0.043735, -0.165846,
		0.047950, -0.858157, -0.511142,
		35.681225, 30.793541, 47.526344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179718, 31.035803, 48.172585>,  <35.647659, 31.394253, 47.884144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179718, 31.035803, 48.172585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417042, 30.762836, 48.001804>,  <35.559437, 30.599056, 47.899334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417042, 30.762836, 48.001804>,  <35.179718, 31.035803, 48.172585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417042, 30.762836, 48.001804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134341, -0.606901, 0.783342,
		-0.793683, -0.407410, -0.451758,
		0.593313, -0.682414, -0.426955,
		35.595036, 30.558113, 47.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851822, 30.386385, 48.353981>,  <35.179718, 31.035803, 48.172585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851822, 30.386385, 48.353981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213821, 30.279333, 48.221710>,  <35.431023, 30.215101, 48.142349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213821, 30.279333, 48.221710>,  <34.851822, 30.386385, 48.353981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213821, 30.279333, 48.221710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068295, -0.675825, 0.733891,
		-0.419890, -0.686757, -0.593345,
		0.905002, -0.267631, -0.330674,
		35.485321, 30.199043, 48.122509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842617, 29.608387, 48.331459>,  <34.851822, 30.386385, 48.353981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842617, 29.608387, 48.331459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227364, 29.710005, 48.371998>,  <35.458214, 29.770975, 48.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227364, 29.710005, 48.371998>,  <34.842617, 29.608387, 48.331459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227364, 29.710005, 48.371998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061894, -0.563095, 0.824071,
		0.266416, -0.786376, -0.557347,
		0.961869, 0.254042, 0.101346,
		35.515923, 29.786217, 48.402401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225327, 29.005861, 48.404762>,  <34.842617, 29.608387, 48.331459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225327, 29.005861, 48.404762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468052, 29.281359, 48.563461>,  <35.613689, 29.446657, 48.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468052, 29.281359, 48.563461>,  <35.225327, 29.005861, 48.404762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468052, 29.281359, 48.563461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158449, -0.593950, 0.788744,
		0.778889, -0.415758, -0.469550,
		0.606816, 0.688744, 0.396745,
		35.650097, 29.487982, 48.682484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764191, 28.605387, 48.571438>,  <35.225327, 29.005861, 48.404762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764191, 28.605387, 48.571438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742054, 28.917179, 48.821026>,  <35.728771, 29.104256, 48.970779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742054, 28.917179, 48.821026>,  <35.764191, 28.605387, 48.571438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742054, 28.917179, 48.821026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073611, -0.620046, 0.781104,
		0.995750, 0.089160, -0.023064,
		-0.055343, 0.779482, 0.623975,
		35.725452, 29.151024, 49.008217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208736, 28.360600, 48.965538>,  <35.764191, 28.605387, 48.571438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208736, 28.360600, 48.965538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983643, 28.623343, 49.166283>,  <35.848587, 28.780989, 49.286728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983643, 28.623343, 49.166283>,  <36.208736, 28.360600, 48.965538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983643, 28.623343, 49.166283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227360, -0.706686, 0.670002,
		0.794755, 0.262931, 0.547021,
		-0.562737, 0.656858, 0.501862,
		35.814823, 28.820400, 49.316841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378479, 28.281866, 49.684696>,  <36.208736, 28.360600, 48.965538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378479, 28.281866, 49.684696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008125, 28.431326, 49.707020>,  <35.785912, 28.521002, 49.720413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008125, 28.431326, 49.707020>,  <36.378479, 28.281866, 49.684696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008125, 28.431326, 49.707020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230341, -0.675415, 0.700541,
		0.299454, 0.635768, 0.711426,
		-0.925889, 0.373650, 0.055812,
		35.730358, 28.543421, 49.723763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102192, 28.149487, 50.462620>,  <36.378479, 28.281866, 49.684696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102192, 28.149487, 50.462620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786201, 28.218510, 50.227276>,  <35.596607, 28.259924, 50.086071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786201, 28.218510, 50.227276>,  <36.102192, 28.149487, 50.462620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786201, 28.218510, 50.227276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530809, -0.672771, 0.515384,
		-0.306897, 0.719446, 0.623067,
		-0.789972, 0.172560, -0.588360,
		35.549210, 28.270277, 50.050766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558884, 28.260988, 50.976162>,  <36.102192, 28.149487, 50.462620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558884, 28.260988, 50.976162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385578, 28.165499, 50.628532>,  <35.281593, 28.108204, 50.419956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385578, 28.165499, 50.628532>,  <35.558884, 28.260988, 50.976162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385578, 28.165499, 50.628532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637015, -0.601032, 0.482673,
		-0.637567, 0.762739, 0.108336,
		-0.433267, -0.238725, -0.869074,
		35.255596, 28.093882, 50.367809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879257, 28.175207, 51.108673>,  <35.558884, 28.260988, 50.976162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879257, 28.175207, 51.108673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895107, 27.985298, 50.756989>,  <34.904617, 27.871353, 50.545979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895107, 27.985298, 50.756989>,  <34.879257, 28.175207, 51.108673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895107, 27.985298, 50.756989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607058, -0.710343, 0.356220,
		-0.793669, 0.519618, -0.316364,
		0.039629, -0.474773, -0.879216,
		34.906998, 27.842867, 50.493225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243198, 28.053333, 51.006882>,  <34.879257, 28.175207, 51.108673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243198, 28.053333, 51.006882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470097, 27.768986, 50.840557>,  <34.606236, 27.598377, 50.740761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470097, 27.768986, 50.840557>,  <34.243198, 28.053333, 51.006882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470097, 27.768986, 50.840557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665397, -0.693112, 0.277207,
		-0.485263, 0.119437, -0.866173,
		0.567245, -0.710867, -0.415814,
		34.640270, 27.555725, 50.715813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804878, 27.440294, 50.587467>,  <34.243198, 28.053333, 51.006882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804878, 27.440294, 50.587467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162167, 27.295809, 50.694561>,  <34.376541, 27.209118, 50.758816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162167, 27.295809, 50.694561>,  <33.804878, 27.440294, 50.587467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162167, 27.295809, 50.694561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440906, -0.587022, 0.678975,
		-0.088091, -0.724519, -0.683602,
		0.893220, -0.361216, 0.267734,
		34.430134, 27.187445, 50.774879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839596, 26.661030, 50.630184>,  <33.804878, 27.440294, 50.587467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839596, 26.661030, 50.630184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063484, 26.835604, 50.911961>,  <34.197815, 26.940348, 51.081028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063484, 26.835604, 50.911961>,  <33.839596, 26.661030, 50.630184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063484, 26.835604, 50.911961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420878, -0.582559, 0.695332,
		0.713848, -0.685674, -0.142382,
		0.559716, 0.436436, 0.704444,
		34.231400, 26.966534, 51.123295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412666, 26.120884, 50.911499>,  <33.839596, 26.661030, 50.630184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412666, 26.120884, 50.911499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217773, 26.405306, 51.114285>,  <34.100838, 26.575958, 51.235954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217773, 26.405306, 51.114285>,  <34.412666, 26.120884, 50.911499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217773, 26.405306, 51.114285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495367, -0.703134, 0.510112,
		0.719180, -0.002591, 0.694819,
		-0.487229, 0.711053, 0.506963,
		34.071606, 26.618622, 51.266373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539490, 25.952110, 51.549252>,  <34.412666, 26.120884, 50.911499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539490, 25.952110, 51.549252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197376, 26.127771, 51.439243>,  <33.992107, 26.233168, 51.373238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197376, 26.127771, 51.439243>,  <34.539490, 25.952110, 51.549252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197376, 26.127771, 51.439243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480998, -0.870266, 0.106199,
		-0.192705, 0.223116, 0.955554,
		-0.855281, 0.439155, -0.275023,
		33.940792, 26.259518, 51.356735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240131, 26.103849, 52.347073>,  <34.539490, 25.952110, 51.549252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240131, 26.103849, 52.347073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530975, 25.834244, 52.399261>,  <34.705482, 25.672482, 52.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530975, 25.834244, 52.399261>,  <34.240131, 26.103849, 52.347073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530975, 25.834244, 52.399261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214853, 0.042901, -0.975704,
		0.652038, 0.737474, 0.176008,
		0.727107, -0.674012, 0.130476,
		34.749107, 25.632040, 52.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952938, 26.201376, 52.139904>,  <34.240131, 26.103849, 52.347073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952938, 26.201376, 52.139904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883022, 25.813208, 52.073296>,  <34.841072, 25.580307, 52.033329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883022, 25.813208, 52.073296>,  <34.952938, 26.201376, 52.139904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883022, 25.813208, 52.073296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168311, 0.137190, -0.976141,
		0.970113, -0.198650, 0.139353,
		-0.174793, -0.970421, -0.166525,
		34.830585, 25.522081, 52.023338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514652, 25.877510, 51.740566>,  <34.952938, 26.201376, 52.139904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514652, 25.877510, 51.740566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177948, 25.672634, 51.672333>,  <34.975925, 25.549709, 51.631393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177948, 25.672634, 51.672333>,  <35.514652, 25.877510, 51.740566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177948, 25.672634, 51.672333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187047, 0.019701, -0.982153,
		0.506408, -0.858647, 0.079220,
		-0.841763, -0.512188, -0.170584,
		34.925419, 25.518978, 51.621159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929550, 25.402077, 51.305946>,  <35.514652, 25.877510, 51.740566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929550, 25.402077, 51.305946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619991, 25.162920, 51.389477>,  <35.434258, 25.019426, 51.439594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619991, 25.162920, 51.389477>,  <35.929550, 25.402077, 51.305946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619991, 25.162920, 51.389477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279912, 0.027132, -0.959642,
		0.568099, -0.801116, -0.188356,
		-0.773895, -0.597895, 0.208828,
		35.387821, 24.983551, 51.452126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817921, 24.801102, 50.936859>,  <35.929550, 25.402077, 51.305946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817921, 24.801102, 50.936859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435814, 24.874561, 51.029587>,  <35.206551, 24.918636, 51.085224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435814, 24.874561, 51.029587>,  <35.817921, 24.801102, 50.936859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435814, 24.874561, 51.029587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189451, 0.221917, -0.956484,
		-0.227102, -0.957615, -0.177197,
		-0.955266, 0.183649, 0.231819,
		35.149235, 24.929655, 51.099133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431873, 24.491371, 50.381252>,  <35.817921, 24.801102, 50.936859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431873, 24.491371, 50.381252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214359, 24.780949, 50.551056>,  <35.083851, 24.954695, 50.652939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214359, 24.780949, 50.551056>,  <35.431873, 24.491371, 50.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214359, 24.780949, 50.551056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324429, 0.285164, -0.901902,
		-0.773982, -0.628159, 0.079801,
		-0.543782, 0.723946, 0.424505,
		35.051224, 24.998133, 50.678406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721382, 24.367641, 50.188644>,  <35.431873, 24.491371, 50.381252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721382, 24.367641, 50.188644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822865, 24.749443, 50.251324>,  <34.883755, 24.978525, 50.288929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822865, 24.749443, 50.251324>,  <34.721382, 24.367641, 50.188644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822865, 24.749443, 50.251324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264322, 0.224242, -0.938003,
		-0.930466, 0.196559, 0.309189,
		0.253706, 0.954505, 0.156695,
		34.898975, 25.035795, 50.298332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191975, 24.821232, 49.910927>,  <34.721382, 24.367641, 50.188644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191975, 24.821232, 49.910927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534283, 25.028040, 49.918411>,  <34.739666, 25.152124, 49.922901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534283, 25.028040, 49.918411>,  <34.191975, 24.821232, 49.910927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534283, 25.028040, 49.918411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157473, 0.294756, -0.942508,
		-0.492809, 0.803623, 0.333660,
		0.855769, 0.517019, 0.018709,
		34.791012, 25.183146, 49.924023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084679, 25.437780, 49.551762>,  <34.191975, 24.821232, 49.910927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084679, 25.437780, 49.551762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481945, 25.391588, 49.545063>,  <34.720306, 25.363873, 49.541046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481945, 25.391588, 49.545063>,  <34.084679, 25.437780, 49.551762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481945, 25.391588, 49.545063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000704, 0.137563, -0.990493,
		0.116684, 0.983738, 0.136542,
		0.993169, -0.115478, -0.016744,
		34.779896, 25.356945, 49.540039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269684, 25.881601, 49.038437>,  <34.084679, 25.437780, 49.551762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269684, 25.881601, 49.038437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618057, 25.690071, 49.082623>,  <34.827080, 25.575153, 49.109135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618057, 25.690071, 49.082623>,  <34.269684, 25.881601, 49.038437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618057, 25.690071, 49.082623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124746, -0.001985, -0.992187,
		0.475303, 0.877908, 0.058003,
		0.870934, -0.478825, 0.110459,
		34.879337, 25.546423, 49.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870495, 26.304598, 48.787395>,  <34.269684, 25.881601, 49.038437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870495, 26.304598, 48.787395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987068, 25.923819, 48.749744>,  <35.057011, 25.695351, 48.727154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987068, 25.923819, 48.749744>,  <34.870495, 26.304598, 48.787395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987068, 25.923819, 48.749744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129212, 0.136667, -0.982154,
		0.947825, 0.274067, 0.162832,
		0.291430, -0.951950, -0.094123,
		35.074497, 25.638233, 48.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445904, 26.451128, 48.348270>,  <34.870495, 26.304598, 48.787395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445904, 26.451128, 48.348270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372864, 26.058125, 48.362873>,  <35.329041, 25.822323, 48.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372864, 26.058125, 48.362873>,  <35.445904, 26.451128, 48.348270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372864, 26.058125, 48.362873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234091, -0.079509, -0.968958,
		0.954913, -0.168387, 0.244515,
		-0.182601, -0.982509, 0.036506,
		35.318085, 25.763372, 48.373825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988831, 26.211870, 48.094784>,  <35.445904, 26.451128, 48.348270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988831, 26.211870, 48.094784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692837, 25.948610, 48.039265>,  <35.515240, 25.790653, 48.005951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692837, 25.948610, 48.039265>,  <35.988831, 26.211870, 48.094784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692837, 25.948610, 48.039265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121201, 0.072508, -0.989976,
		0.661618, -0.749386, 0.026114,
		-0.739982, -0.658151, -0.138799,
		35.470844, 25.751165, 47.997623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271896, 25.689358, 47.652424>,  <35.988831, 26.211870, 48.094784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271896, 25.689358, 47.652424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872879, 25.697891, 47.625751>,  <35.633469, 25.703011, 47.609749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872879, 25.697891, 47.625751>,  <36.271896, 25.689358, 47.652424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872879, 25.697891, 47.625751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067952, 0.065531, -0.995534,
		-0.016867, -0.997622, -0.066820,
		-0.997546, 0.021332, -0.066685,
		35.573616, 25.704290, 47.605747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111073, 25.278593, 47.088009>,  <36.271896, 25.689358, 47.652424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111073, 25.278593, 47.088009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794468, 25.519991, 47.126583>,  <35.604504, 25.664829, 47.149727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794468, 25.519991, 47.126583>,  <36.111073, 25.278593, 47.088009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794468, 25.519991, 47.126583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044221, 0.213936, -0.975846,
		-0.609548, -0.768132, -0.196021,
		-0.791515, 0.603493, 0.096436,
		35.557014, 25.701038, 47.155514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784172, 25.185951, 46.383984>,  <36.111073, 25.278593, 47.088009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784172, 25.185951, 46.383984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587406, 25.501785, 46.530724>,  <35.469349, 25.691286, 46.618767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587406, 25.501785, 46.530724>,  <35.784172, 25.185951, 46.383984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587406, 25.501785, 46.530724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078251, 0.379557, -0.921853,
		-0.867121, -0.482177, -0.124923,
		-0.491912, 0.789583, 0.366853,
		35.439831, 25.738661, 46.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137360, 25.235134, 46.025944>,  <35.784172, 25.185951, 46.383984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137360, 25.235134, 46.025944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202511, 25.599129, 46.178467>,  <35.241600, 25.817526, 46.269981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202511, 25.599129, 46.178467>,  <35.137360, 25.235134, 46.025944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202511, 25.599129, 46.178467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316770, 0.414240, -0.853266,
		-0.934413, 0.018191, 0.355727,
		0.162878, 0.909986, 0.381308,
		35.251373, 25.872124, 46.292858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531231, 25.636494, 45.767620>,  <35.137360, 25.235134, 46.025944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531231, 25.636494, 45.767620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829388, 25.893356, 45.839211>,  <35.008282, 26.047474, 45.882164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829388, 25.893356, 45.839211>,  <34.531231, 25.636494, 45.767620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829388, 25.893356, 45.839211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280285, 0.545484, -0.789865,
		-0.604845, 0.538592, 0.586584,
		0.745387, 0.642157, 0.178974,
		35.053005, 26.086004, 45.892902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189743, 26.268511, 45.825153>,  <34.531231, 25.636494, 45.767620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189743, 26.268511, 45.825153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566998, 26.367174, 45.736012>,  <34.793350, 26.426373, 45.682526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566998, 26.367174, 45.736012>,  <34.189743, 26.268511, 45.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566998, 26.367174, 45.736012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331195, 0.639729, -0.693583,
		-0.028511, 0.727947, 0.685040,
		0.943132, 0.246656, -0.222853,
		34.849937, 26.441172, 45.669155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215717, 26.931484, 45.694695>,  <34.189743, 26.268511, 45.825153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215717, 26.931484, 45.694695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568008, 26.830864, 45.534176>,  <34.779385, 26.770493, 45.437862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568008, 26.830864, 45.534176>,  <34.215717, 26.931484, 45.694695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568008, 26.830864, 45.534176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180614, 0.604886, -0.775559,
		0.437833, 0.755536, 0.487306,
		0.880728, -0.251550, -0.401300,
		34.832226, 26.755400, 45.413788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388123, 27.580545, 45.331745>,  <34.215717, 26.931484, 45.694695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388123, 27.580545, 45.331745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639263, 27.307991, 45.181271>,  <34.789948, 27.144459, 45.090988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639263, 27.307991, 45.181271>,  <34.388123, 27.580545, 45.331745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639263, 27.307991, 45.181271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028792, 0.462656, -0.886070,
		0.777800, 0.567152, 0.270861,
		0.627852, -0.681386, -0.376184,
		34.827618, 27.103575, 45.068417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074772, 27.886972, 45.107368>,  <34.388123, 27.580545, 45.331745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074772, 27.886972, 45.107368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984974, 27.562998, 44.890629>,  <34.931095, 27.368612, 44.760586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984974, 27.562998, 44.890629>,  <35.074772, 27.886972, 45.107368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984974, 27.562998, 44.890629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031693, 0.561820, -0.826652,
		0.973960, -0.168405, -0.151794,
		-0.224494, -0.809937, -0.541853,
		34.917625, 27.320017, 44.728073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381847, 28.050810, 44.472832>,  <35.074772, 27.886972, 45.107368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381847, 28.050810, 44.472832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154156, 27.740637, 44.363518>,  <35.017540, 27.554533, 44.297932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154156, 27.740637, 44.363518>,  <35.381847, 28.050810, 44.472832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154156, 27.740637, 44.363518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152997, 0.426486, -0.891460,
		0.807818, -0.465633, -0.361407,
		-0.569229, -0.775432, -0.273283,
		34.983387, 27.508007, 44.281532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664104, 27.890772, 43.815258>,  <35.381847, 28.050810, 44.472832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664104, 27.890772, 43.815258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315998, 27.695917, 43.844456>,  <35.107132, 27.579004, 43.861973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315998, 27.695917, 43.844456>,  <35.664104, 27.890772, 43.815258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315998, 27.695917, 43.844456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216009, 0.244250, -0.945348,
		0.442688, -0.838473, -0.317789,
		-0.870269, -0.487139, 0.072992,
		35.054916, 27.549776, 43.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623383, 27.516182, 43.234573>,  <35.664104, 27.890772, 43.815258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623383, 27.516182, 43.234573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249084, 27.603861, 43.345089>,  <35.024506, 27.656467, 43.411400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249084, 27.603861, 43.345089>,  <35.623383, 27.516182, 43.234573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249084, 27.603861, 43.345089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178474, 0.381383, -0.907025,
		-0.304189, -0.898054, -0.317756,
		-0.935744, 0.219196, 0.276292,
		34.968361, 27.669619, 43.427975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176735, 27.299517, 42.702168>,  <35.623383, 27.516182, 43.234573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176735, 27.299517, 42.702168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970490, 27.574226, 42.907101>,  <34.846741, 27.739052, 43.030060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970490, 27.574226, 42.907101>,  <35.176735, 27.299517, 42.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970490, 27.574226, 42.907101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353300, 0.374334, -0.857353,
		-0.780590, -0.623070, 0.049625,
		-0.515615, 0.686774, 0.512332,
		34.815804, 27.780258, 43.060799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505634, 27.345573, 42.323326>,  <35.176735, 27.299517, 42.702168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505634, 27.345573, 42.323326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519585, 27.677713, 42.545788>,  <34.527954, 27.876997, 42.679264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519585, 27.677713, 42.545788>,  <34.505634, 27.345573, 42.323326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519585, 27.677713, 42.545788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460855, 0.507152, -0.728292,
		-0.886790, -0.230903, 0.400359,
		0.034878, 0.830349, 0.556150,
		34.530048, 27.926819, 42.712631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748871, 27.633877, 42.386559>,  <34.505634, 27.345573, 42.323326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748871, 27.633877, 42.386559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015915, 27.924711, 42.450611>,  <34.176140, 28.099213, 42.489044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015915, 27.924711, 42.450611>,  <33.748871, 27.633877, 42.386559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015915, 27.924711, 42.450611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454209, 0.568179, -0.686198,
		-0.589908, 0.385379, 0.709571,
		0.667610, 0.727087, 0.160131,
		34.216198, 28.142838, 42.498650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365509, 28.261667, 42.477455>,  <33.748871, 27.633877, 42.386559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365509, 28.261667, 42.477455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717567, 28.442122, 42.418358>,  <33.928802, 28.550394, 42.382900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717567, 28.442122, 42.418358>,  <33.365509, 28.261667, 42.477455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717567, 28.442122, 42.418358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465814, 0.760779, -0.451920,
		-0.091475, 0.466576, 0.879738,
		0.880142, 0.451134, -0.147745,
		33.981609, 28.577461, 42.374035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283127, 28.942049, 42.586452>,  <33.365509, 28.261667, 42.477455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283127, 28.942049, 42.586452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606705, 28.942993, 42.351299>,  <33.800850, 28.943560, 42.210205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606705, 28.942993, 42.351299>,  <33.283127, 28.942049, 42.586452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606705, 28.942993, 42.351299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308122, 0.853342, -0.420557,
		0.500676, 0.521346, 0.691030,
		0.808941, 0.002359, -0.587886,
		33.849388, 28.943701, 42.174934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466434, 29.705437, 42.473171>,  <33.283127, 28.942049, 42.586452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466434, 29.705437, 42.473171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662266, 29.507460, 42.186020>,  <33.779766, 29.388674, 42.013729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662266, 29.507460, 42.186020>,  <33.466434, 29.705437, 42.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662266, 29.507460, 42.186020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158748, 0.758938, -0.631515,
		0.857386, 0.423138, 0.292990,
		0.489580, -0.494941, -0.717876,
		33.809139, 29.358978, 41.970657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826542, 30.180197, 42.080467>,  <33.466434, 29.705437, 42.473171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826542, 30.180197, 42.080467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862457, 29.894459, 41.802864>,  <33.884007, 29.723015, 41.636303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862457, 29.894459, 41.802864>,  <33.826542, 30.180197, 42.080467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862457, 29.894459, 41.802864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049285, 0.699155, -0.713269,
		0.994741, 0.029838, 0.097981,
		0.089786, -0.714347, -0.694008,
		33.889393, 29.680155, 41.594662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235039, 30.459187, 41.531902>,  <33.826542, 30.180197, 42.080467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235039, 30.459187, 41.531902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998371, 30.180132, 41.370296>,  <33.856369, 30.012699, 41.273335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998371, 30.180132, 41.370296>,  <34.235039, 30.459187, 41.531902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998371, 30.180132, 41.370296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039972, 0.525920, -0.849594,
		0.805186, -0.486533, -0.339059,
		-0.591673, -0.697634, -0.404016,
		33.820869, 29.970842, 41.249092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514412, 30.285767, 40.866760>,  <34.235039, 30.459187, 41.531902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514412, 30.285767, 40.866760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131252, 30.171587, 40.854420>,  <33.901356, 30.103079, 40.847015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131252, 30.171587, 40.854420>,  <34.514412, 30.285767, 40.866760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131252, 30.171587, 40.854420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097448, 0.424314, -0.900257,
		0.270065, -0.859348, -0.434265,
		-0.957898, -0.285447, -0.030851,
		33.843884, 30.085953, 40.845165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431278, 30.064909, 40.193275>,  <34.514412, 30.285767, 40.866760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431278, 30.064909, 40.193275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052155, 30.109350, 40.312820>,  <33.824680, 30.136015, 40.384548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052155, 30.109350, 40.312820>,  <34.431278, 30.064909, 40.193275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052155, 30.109350, 40.312820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230034, 0.410776, -0.882240,
		-0.220784, -0.904942, -0.363779,
		-0.947808, 0.111102, 0.298860,
		33.767811, 30.142681, 40.402477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015694, 29.739012, 39.715809>,  <34.431278, 30.064909, 40.193275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015694, 29.739012, 39.715809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786934, 30.005461, 39.907310>,  <33.649677, 30.165331, 40.022213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786934, 30.005461, 39.907310>,  <34.015694, 29.739012, 39.715809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786934, 30.005461, 39.907310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437139, 0.246378, -0.864990,
		-0.694144, -0.703974, 0.150283,
		-0.571904, 0.666122, 0.478756,
		33.615364, 30.205297, 40.050938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296711, 29.608782, 39.423000>,  <34.015694, 29.739012, 39.715809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296711, 29.608782, 39.423000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296707, 29.975937, 39.581738>,  <33.296703, 30.196230, 39.676979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296707, 29.975937, 39.581738>,  <33.296711, 29.608782, 39.423000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296707, 29.975937, 39.581738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515800, 0.339976, -0.786363,
		-0.856709, -0.204699, 0.473443,
		-0.000009, 0.917886, 0.396844,
		33.296703, 30.251303, 39.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765244, 29.949156, 39.049511>,  <33.296711, 29.608782, 39.423000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765244, 29.949156, 39.049511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918728, 30.288473, 39.195477>,  <33.010818, 30.492064, 39.283054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918728, 30.288473, 39.195477>,  <32.765244, 29.949156, 39.049511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918728, 30.288473, 39.195477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425814, 0.513175, -0.745207,
		-0.819419, 0.130560, 0.558127,
		0.383712, 0.848296, 0.364911,
		33.033840, 30.542961, 39.304951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205700, 30.445402, 39.106655>,  <32.765244, 29.949156, 39.049511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205700, 30.445402, 39.106655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547012, 30.650818, 39.142864>,  <32.751801, 30.774067, 39.164589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547012, 30.650818, 39.142864>,  <32.205700, 30.445402, 39.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547012, 30.650818, 39.142864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349962, 0.692656, -0.630677,
		-0.386578, 0.506464, 0.770747,
		0.853278, 0.513538, 0.090523,
		32.802998, 30.804880, 39.170021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950365, 31.112724, 39.222862>,  <32.205700, 30.445402, 39.106655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950365, 31.112724, 39.222862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334713, 31.161430, 39.123341>,  <32.565323, 31.190655, 39.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334713, 31.161430, 39.123341>,  <31.950365, 31.112724, 39.222862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334713, 31.161430, 39.123341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244681, 0.794149, -0.556290,
		0.129851, 0.595400, 0.792867,
		0.960869, 0.121765, -0.248804,
		32.622974, 31.197960, 39.048698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161503, 31.833326, 39.215408>,  <31.950365, 31.112724, 39.222862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161503, 31.833326, 39.215408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454472, 31.712307, 38.971432>,  <32.630253, 31.639696, 38.825047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454472, 31.712307, 38.971432>,  <32.161503, 31.833326, 39.215408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454472, 31.712307, 38.971432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160624, 0.793777, -0.586615,
		0.661636, 0.527619, 0.532780,
		0.732418, -0.302549, -0.609941,
		32.674198, 31.621542, 38.788448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549919, 32.448036, 38.941265>,  <32.161503, 31.833326, 39.215408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549919, 32.448036, 38.941265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640625, 32.156178, 38.683212>,  <32.695049, 31.981062, 38.528381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640625, 32.156178, 38.683212>,  <32.549919, 32.448036, 38.941265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640625, 32.156178, 38.683212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125952, 0.678792, -0.723448,
		0.965771, 0.082797, 0.245828,
		0.226765, -0.729648, -0.645129,
		32.708656, 31.937283, 38.489674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930756, 32.795921, 38.432205>,  <32.549919, 32.448036, 38.941265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930756, 32.795921, 38.432205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823784, 32.454155, 38.254017>,  <32.759602, 32.249096, 38.147102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823784, 32.454155, 38.254017>,  <32.930756, 32.795921, 38.432205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823784, 32.454155, 38.254017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086399, 0.439189, -0.894230,
		0.959696, -0.277632, -0.043631,
		-0.267429, -0.854420, -0.445475,
		32.743557, 32.197830, 38.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389118, 32.744526, 37.865250>,  <32.930756, 32.795921, 38.432205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389118, 32.744526, 37.865250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060543, 32.528854, 37.790936>,  <32.863396, 32.399452, 37.746346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060543, 32.528854, 37.790936>,  <33.389118, 32.744526, 37.865250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060543, 32.528854, 37.790936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128376, 0.492235, -0.860944,
		0.555657, -0.683364, -0.473560,
		-0.821441, -0.539183, -0.185786,
		32.814110, 32.367100, 37.735199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464020, 32.343315, 37.095116>,  <33.389118, 32.744526, 37.865250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464020, 32.343315, 37.095116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107067, 32.415230, 37.260681>,  <32.892895, 32.458378, 37.360020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107067, 32.415230, 37.260681>,  <33.464020, 32.343315, 37.095116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107067, 32.415230, 37.260681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257289, 0.550836, -0.793966,
		-0.370748, -0.815018, -0.445298,
		-0.892383, 0.179791, 0.413917,
		32.839352, 32.469166, 37.384857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963482, 31.988785, 37.302128>,  <33.464020, 32.343315, 37.095116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963482, 31.988785, 37.302128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352795, 31.949543, 37.219082>,  <34.586380, 31.925997, 37.169254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352795, 31.949543, 37.219082>,  <33.963482, 31.988785, 37.302128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352795, 31.949543, 37.219082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068625, -0.738546, 0.670701,
		-0.219132, -0.667027, -0.712079,
		0.973279, -0.098105, -0.207613,
		34.644779, 31.920111, 37.156799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191444, 31.308567, 37.228241>,  <33.963482, 31.988785, 37.302128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191444, 31.308567, 37.228241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566902, 31.436537, 37.279778>,  <34.792175, 31.513319, 37.310699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566902, 31.436537, 37.279778>,  <34.191444, 31.308567, 37.228241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566902, 31.436537, 37.279778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258886, -0.900390, 0.349679,
		0.227878, -0.294869, -0.927968,
		0.938642, 0.319922, 0.128842,
		34.848495, 31.532513, 37.318432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519451, 30.682316, 36.997803>,  <34.191444, 31.308567, 37.228241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519451, 30.682316, 36.997803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755417, 30.906683, 37.230137>,  <34.896996, 31.041304, 37.369537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755417, 30.906683, 37.230137>,  <34.519451, 30.682316, 36.997803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755417, 30.906683, 37.230137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302240, -0.820430, 0.485330,
		0.748768, -0.110750, -0.653515,
		0.589913, 0.560918, 0.580838,
		34.932392, 31.074959, 37.404388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090015, 30.261177, 37.054977>,  <34.519451, 30.682316, 36.997803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090015, 30.261177, 37.054977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143436, 30.489769, 37.378849>,  <35.175491, 30.626925, 37.573170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143436, 30.489769, 37.378849>,  <35.090015, 30.261177, 37.054977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143436, 30.489769, 37.378849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530784, -0.731185, 0.428529,
		0.836918, 0.372530, -0.400986,
		0.133555, 0.571481, 0.809675,
		35.183502, 30.661213, 37.621750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740032, 30.254786, 37.145523>,  <35.090015, 30.261177, 37.054977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740032, 30.254786, 37.145523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579071, 30.367933, 37.493790>,  <35.482494, 30.435822, 37.702751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579071, 30.367933, 37.493790>,  <35.740032, 30.254786, 37.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579071, 30.367933, 37.493790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506715, -0.723269, 0.469171,
		0.762440, 0.629974, 0.147710,
		-0.402400, 0.282868, 0.870667,
		35.458351, 30.452793, 37.754990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263149, 30.105574, 37.668575>,  <35.740032, 30.254786, 37.145523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263149, 30.105574, 37.668575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927769, 30.141996, 37.883503>,  <35.726540, 30.163851, 38.012459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927769, 30.141996, 37.883503>,  <36.263149, 30.105574, 37.668575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927769, 30.141996, 37.883503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283987, -0.768494, 0.573383,
		0.465134, 0.633345, 0.618486,
		-0.838452, 0.091058, 0.537315,
		35.676231, 30.169313, 38.044697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594078, 30.139860, 38.343311>,  <36.263149, 30.105574, 37.668575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594078, 30.139860, 38.343311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209991, 30.029453, 38.360313>,  <35.979542, 29.963209, 38.370514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209991, 30.029453, 38.360313>,  <36.594078, 30.139860, 38.343311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209991, 30.029453, 38.360313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243831, -0.754385, 0.609466,
		-0.136156, 0.595582, 0.791672,
		-0.960212, -0.276017, 0.042507,
		35.921928, 29.946648, 38.373066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412895, 29.997702, 39.088631>,  <36.594078, 30.139860, 38.343311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412895, 29.997702, 39.088631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112213, 29.826029, 38.888336>,  <35.931805, 29.723024, 38.768158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112213, 29.826029, 38.888336>,  <36.412895, 29.997702, 39.088631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112213, 29.826029, 38.888336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021381, -0.774735, 0.631925,
		-0.659151, 0.464316, 0.591550,
		-0.751707, -0.429182, -0.500739,
		35.886700, 29.697273, 38.738113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922684, 29.821144, 39.592052>,  <36.412895, 29.997702, 39.088631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922684, 29.821144, 39.592052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851303, 29.584139, 39.277836>,  <35.808475, 29.441936, 39.089306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851303, 29.584139, 39.277836>,  <35.922684, 29.821144, 39.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851303, 29.584139, 39.277836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068723, -0.803917, 0.590758,
		-0.981545, 0.051438, 0.184182,
		-0.178454, -0.592513, -0.785546,
		35.797768, 29.406385, 39.042171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343735, 29.425854, 39.790504>,  <35.922684, 29.821144, 39.592052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343735, 29.425854, 39.790504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541416, 29.231274, 39.502300>,  <35.660023, 29.114527, 39.329376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541416, 29.231274, 39.502300>,  <35.343735, 29.425854, 39.790504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541416, 29.231274, 39.502300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141964, -0.772511, 0.618929,
		-0.857679, -0.408161, -0.312716,
		0.494199, -0.486448, -0.720510,
		35.689674, 29.085339, 39.286148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006683, 28.727190, 39.754101>,  <35.343735, 29.425854, 39.790504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006683, 28.727190, 39.754101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366894, 28.694748, 39.583233>,  <35.583019, 28.675283, 39.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366894, 28.694748, 39.583233>,  <35.006683, 28.727190, 39.754101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366894, 28.694748, 39.583233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209839, -0.779399, 0.590343,
		-0.380818, -0.621256, -0.684849,
		0.900525, -0.081105, -0.427173,
		35.637051, 28.670416, 39.455082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080269, 28.013285, 39.608467>,  <35.006683, 28.727190, 39.754101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080269, 28.013285, 39.608467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465500, 28.114807, 39.572536>,  <35.696636, 28.175720, 39.550976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465500, 28.114807, 39.572536>,  <35.080269, 28.013285, 39.608467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465500, 28.114807, 39.572536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262142, -0.807882, 0.527833,
		0.061395, -0.531891, -0.844584,
		0.963074, 0.253807, -0.089831,
		35.754421, 28.190948, 39.545586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541428, 27.371578, 39.330162>,  <35.080269, 28.013285, 39.608467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541428, 27.371578, 39.330162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772102, 27.628836, 39.531673>,  <35.910507, 27.783190, 39.652580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772102, 27.628836, 39.531673>,  <35.541428, 27.371578, 39.330162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772102, 27.628836, 39.531673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346890, -0.751068, 0.561751,
		0.739660, -0.149200, -0.656234,
		0.576689, 0.643146, 0.503779,
		35.945110, 27.821779, 39.682808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079086, 26.930065, 39.408360>,  <35.541428, 27.371578, 39.330162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079086, 26.930065, 39.408360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125576, 27.246506, 39.648575>,  <36.153469, 27.436371, 39.792706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125576, 27.246506, 39.648575>,  <36.079086, 26.930065, 39.408360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125576, 27.246506, 39.648575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241649, -0.608991, 0.755470,
		0.963378, 0.057314, -0.261950,
		0.116226, 0.791104, 0.600539,
		36.160442, 27.483837, 39.828735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702484, 26.747519, 39.790096>,  <36.079086, 26.930065, 39.408360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702484, 26.747519, 39.790096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567806, 27.063435, 39.995182>,  <36.487000, 27.252983, 40.118233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567806, 27.063435, 39.995182>,  <36.702484, 26.747519, 39.790096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567806, 27.063435, 39.995182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297749, -0.427263, 0.853693,
		0.893299, 0.440091, -0.091303,
		-0.336692, 0.789789, 0.512710,
		36.466797, 27.300371, 40.148994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243298, 26.870422, 40.287502>,  <36.702484, 26.747519, 39.790096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243298, 26.870422, 40.287502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916767, 27.055305, 40.426056>,  <36.720848, 27.166235, 40.509190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916767, 27.055305, 40.426056>,  <37.243298, 26.870422, 40.287502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916767, 27.055305, 40.426056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203614, -0.330917, 0.921431,
		0.540518, 0.822713, 0.176022,
		-0.816322, 0.462210, 0.346382,
		36.671871, 27.193968, 40.529972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502296, 27.316538, 40.792831>,  <37.243298, 26.870422, 40.287502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502296, 27.316538, 40.792831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125206, 27.217041, 40.881737>,  <36.898952, 27.157343, 40.935078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125206, 27.217041, 40.881737>,  <37.502296, 27.316538, 40.792831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125206, 27.217041, 40.881737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286683, -0.263506, 0.921074,
		-0.170545, 0.932036, 0.319724,
		-0.942723, -0.248744, 0.222259,
		36.842388, 27.142418, 40.948414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457684, 27.533400, 41.431320>,  <37.502296, 27.316538, 40.792831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457684, 27.533400, 41.431320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137287, 27.296181, 41.398548>,  <36.945049, 27.153851, 41.378887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137287, 27.296181, 41.398548>,  <37.457684, 27.533400, 41.431320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137287, 27.296181, 41.398548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118362, -0.291015, 0.949369,
		-0.586861, 0.750738, 0.303294,
		-0.800990, -0.593046, -0.081927,
		36.896992, 27.118267, 41.373970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947212, 27.680691, 41.964161>,  <37.457684, 27.533400, 41.431320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947212, 27.680691, 41.964161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922062, 27.299212, 41.846516>,  <36.906971, 27.070324, 41.775928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922062, 27.299212, 41.846516>,  <36.947212, 27.680691, 41.964161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922062, 27.299212, 41.846516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022625, -0.293261, 0.955764,
		-0.997765, 0.066752, -0.003138,
		-0.062879, -0.953699, -0.294116,
		36.903198, 27.013102, 41.758282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336914, 27.478508, 42.331978>,  <36.947212, 27.680691, 41.964161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336914, 27.478508, 42.331978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531502, 27.140694, 42.242435>,  <36.648254, 26.938005, 42.188709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531502, 27.140694, 42.242435>,  <36.336914, 27.478508, 42.331978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531502, 27.140694, 42.242435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031607, -0.239041, 0.970495,
		-0.873128, -0.479188, -0.089592,
		0.486466, -0.844534, -0.223859,
		36.677441, 26.887333, 42.175278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035965, 27.054626, 42.727551>,  <36.336914, 27.478508, 42.331978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035965, 27.054626, 42.727551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369835, 26.858150, 42.627907>,  <36.570156, 26.740265, 42.568119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369835, 26.858150, 42.627907>,  <36.035965, 27.054626, 42.727551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369835, 26.858150, 42.627907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049236, -0.383952, 0.922039,
		-0.548546, -0.781863, -0.296289,
		0.834670, -0.491193, -0.249111,
		36.620235, 26.710793, 42.553173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990612, 26.333300, 42.804176>,  <36.035965, 27.054626, 42.727551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990612, 26.333300, 42.804176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377090, 26.426300, 42.848728>,  <36.608978, 26.482100, 42.875462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377090, 26.426300, 42.848728>,  <35.990612, 26.333300, 42.804176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377090, 26.426300, 42.848728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011631, -0.392296, 0.919766,
		0.257541, -0.889971, -0.376331,
		0.966197, 0.232501, 0.111383,
		36.666950, 26.496050, 42.882145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176304, 25.800304, 43.147221>,  <35.990612, 26.333300, 42.804176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176304, 25.800304, 43.147221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473919, 26.063370, 43.194355>,  <36.652489, 26.221209, 43.222637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473919, 26.063370, 43.194355>,  <36.176304, 25.800304, 43.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473919, 26.063370, 43.194355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054235, -0.235232, 0.970425,
		0.665933, -0.715642, -0.210690,
		0.744037, 0.657665, 0.117836,
		36.697128, 26.260670, 43.229706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681522, 25.441729, 43.564522>,  <36.176304, 25.800304, 43.147221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681522, 25.441729, 43.564522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873585, 25.791872, 43.587139>,  <36.988823, 26.001957, 43.600712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873585, 25.791872, 43.587139>,  <36.681522, 25.441729, 43.564522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873585, 25.791872, 43.587139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181639, -0.162286, 0.969882,
		0.858170, -0.455426, -0.236922,
		0.480159, 0.875357, 0.056546,
		37.017632, 26.054480, 43.604103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321690, 25.295086, 43.723724>,  <36.681522, 25.441729, 43.564522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321690, 25.295086, 43.723724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226242, 25.661121, 43.853752>,  <37.168972, 25.880743, 43.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226242, 25.661121, 43.853752>,  <37.321690, 25.295086, 43.723724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226242, 25.661121, 43.853752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351016, -0.230833, 0.907471,
		0.905454, 0.330648, -0.266129,
		-0.238622, 0.915089, 0.325071,
		37.154655, 25.935648, 43.951275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845692, 25.440386, 44.029984>,  <37.321690, 25.295086, 43.723724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845692, 25.440386, 44.029984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589397, 25.699535, 44.194771>,  <37.435623, 25.855026, 44.293644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589397, 25.699535, 44.194771>,  <37.845692, 25.440386, 44.029984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589397, 25.699535, 44.194771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453161, -0.114017, 0.884107,
		0.619763, 0.753165, -0.220538,
		-0.640733, 0.647876, 0.411969,
		37.397179, 25.893898, 44.318363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236412, 25.759716, 44.516071>,  <37.845692, 25.440386, 44.029984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236412, 25.759716, 44.516071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857994, 25.815401, 44.633110>,  <37.630943, 25.848812, 44.703335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857994, 25.815401, 44.633110>,  <38.236412, 25.759716, 44.516071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857994, 25.815401, 44.633110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278562, -0.111850, 0.953883,
		0.165519, 0.983926, 0.067036,
		-0.946048, 0.139212, 0.292598,
		37.574181, 25.857164, 44.720890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262985, 26.323973, 45.015160>,  <38.236412, 25.759716, 44.516071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262985, 26.323973, 45.015160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946693, 26.086365, 45.074341>,  <37.756920, 25.943800, 45.109852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946693, 26.086365, 45.074341>,  <38.262985, 26.323973, 45.015160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946693, 26.086365, 45.074341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359292, -0.254646, 0.897811,
		-0.495640, 0.763084, 0.414782,
		-0.790727, -0.594019, 0.147957,
		37.709476, 25.908159, 45.118729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972500, 26.461704, 45.590111>,  <38.262985, 26.323973, 45.015160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972500, 26.461704, 45.590111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824371, 26.091385, 45.559750>,  <37.735493, 25.869194, 45.541534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824371, 26.091385, 45.559750>,  <37.972500, 26.461704, 45.590111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824371, 26.091385, 45.559750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433399, -0.244477, 0.867408,
		-0.821600, 0.288325, 0.491775,
		-0.370323, -0.925797, -0.075902,
		37.713276, 25.813646, 45.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470913, 26.430828, 46.114120>,  <37.972500, 26.461704, 45.590111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470913, 26.430828, 46.114120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582275, 26.063875, 46.000351>,  <37.649094, 25.843702, 45.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582275, 26.063875, 46.000351>,  <37.470913, 26.430828, 46.114120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582275, 26.063875, 46.000351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277268, -0.206754, 0.938283,
		-0.919572, -0.340086, 0.196799,
		0.278408, -0.917385, -0.284420,
		37.665798, 25.788660, 45.915024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227394, 25.998886, 46.630009>,  <37.470913, 26.430828, 46.114120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227394, 25.998886, 46.630009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486042, 25.757902, 46.442852>,  <37.641232, 25.613312, 46.330559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.486042, 25.757902, 46.442852>,  <37.227394, 25.998886, 46.630009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486042, 25.757902, 46.442852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264630, -0.398121, 0.878334,
		-0.715438, -0.691769, -0.098005,
		0.646622, -0.602459, -0.467893,
		37.680027, 25.577166, 46.302483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167351, 25.427320, 46.969913>,  <37.227394, 25.998886, 46.630009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167351, 25.427320, 46.969913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527370, 25.423819, 46.795631>,  <37.743382, 25.421719, 46.691063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527370, 25.423819, 46.795631>,  <37.167351, 25.427320, 46.969913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527370, 25.423819, 46.795631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413571, -0.298037, 0.860310,
		-0.137385, -0.954515, -0.264628,
		0.900047, -0.008751, -0.435705,
		37.797386, 25.421192, 46.664921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416546, 24.888582, 47.234386>,  <37.167351, 25.427320, 46.969913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416546, 24.888582, 47.234386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744350, 25.070560, 47.095001>,  <37.941032, 25.179747, 47.011368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744350, 25.070560, 47.095001>,  <37.416546, 24.888582, 47.234386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744350, 25.070560, 47.095001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440132, -0.110261, 0.891138,
		0.366998, -0.883667, -0.290596,
		0.819510, 0.454946, -0.348465,
		37.990204, 25.207045, 46.990463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982571, 24.495499, 47.489849>,  <37.416546, 24.888582, 47.234386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982571, 24.495499, 47.489849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167736, 24.828983, 47.369427>,  <38.278835, 25.029074, 47.297173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167736, 24.828983, 47.369427>,  <37.982571, 24.495499, 47.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167736, 24.828983, 47.369427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619557, -0.061428, 0.782544,
		0.633923, -0.548773, -0.544968,
		0.462915, 0.833711, -0.301055,
		38.306610, 25.079096, 47.279110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620609, 24.335939, 47.573956>,  <37.982571, 24.495499, 47.489849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620609, 24.335939, 47.573956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616722, 24.735762, 47.562691>,  <38.614391, 24.975655, 47.555931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616722, 24.735762, 47.562691>,  <38.620609, 24.335939, 47.573956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616722, 24.735762, 47.562691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540125, 0.028948, 0.841087,
		0.841529, -0.007035, -0.540166,
		-0.009719, 0.999556, -0.028160,
		38.613808, 25.035629, 47.554241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274864, 24.491312, 47.705830>,  <38.620609, 24.335939, 47.573956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274864, 24.491312, 47.705830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082653, 24.832951, 47.785446>,  <38.967327, 25.037933, 47.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082653, 24.832951, 47.785446>,  <39.274864, 24.491312, 47.705830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082653, 24.832951, 47.785446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579198, 0.138659, 0.803308,
		0.658502, 0.501294, -0.561319,
		-0.480525, 0.854095, 0.199041,
		38.938496, 25.089180, 47.845158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827621, 24.915302, 47.826260>,  <39.274864, 24.491312, 47.705830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827621, 24.915302, 47.826260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499840, 25.063272, 48.001369>,  <39.303169, 25.152054, 48.106434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499840, 25.063272, 48.001369>,  <39.827621, 24.915302, 47.826260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499840, 25.063272, 48.001369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500677, 0.090290, 0.860912,
		0.278947, 0.924664, -0.259202,
		-0.819458, 0.369925, 0.437772,
		39.254002, 25.174250, 48.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116863, 25.311636, 48.294632>,  <39.827621, 24.915302, 47.826260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116863, 25.311636, 48.294632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731449, 25.316172, 48.401573>,  <39.500202, 25.318893, 48.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731449, 25.316172, 48.401573>,  <40.116863, 25.311636, 48.294632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731449, 25.316172, 48.401573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267366, 0.082083, 0.960092,
		-0.011059, 0.996561, -0.082122,
		-0.963531, 0.011339, 0.267355,
		39.442390, 25.319572, 48.481781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078648, 25.925854, 48.785305>,  <40.116863, 25.311636, 48.294632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078648, 25.925854, 48.785305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444118, 26.083200, 48.826195>,  <40.663403, 26.177608, 48.850731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444118, 26.083200, 48.826195>,  <40.078648, 25.925854, 48.785305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444118, 26.083200, 48.826195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049715, 0.141465, -0.988694,
		-0.403383, 0.908432, 0.109697,
		0.913680, 0.393369, 0.102227,
		40.718224, 26.201212, 48.856861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019535, 26.624775, 48.696438>,  <40.078648, 25.925854, 48.785305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019535, 26.624775, 48.696438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385319, 26.496668, 48.597492>,  <40.604790, 26.419804, 48.538124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385319, 26.496668, 48.597492>,  <40.019535, 26.624775, 48.696438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385319, 26.496668, 48.597492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168696, 0.253932, -0.952397,
		0.367835, 0.912660, 0.178183,
		0.914461, -0.320266, -0.247367,
		40.659657, 26.400587, 48.523281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277313, 27.155075, 48.215466>,  <40.019535, 26.624775, 48.696438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277313, 27.155075, 48.215466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494747, 26.822542, 48.169155>,  <40.625206, 26.623022, 48.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494747, 26.822542, 48.169155>,  <40.277313, 27.155075, 48.215466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494747, 26.822542, 48.169155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068031, 0.181120, -0.981105,
		0.836595, 0.525433, 0.155010,
		0.543580, -0.831334, -0.115779,
		40.657822, 26.573143, 48.134422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778355, 27.368906, 47.777599>,  <40.277313, 27.155075, 48.215466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778355, 27.368906, 47.777599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831497, 26.973825, 47.744629>,  <40.863384, 26.736776, 47.724846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831497, 26.973825, 47.744629>,  <40.778355, 27.368906, 47.777599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831497, 26.973825, 47.744629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124414, 0.099129, -0.987266,
		0.983295, 0.120910, 0.136054,
		0.132857, -0.987701, -0.082430,
		40.871353, 26.677515, 47.719898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453487, 27.252380, 47.427994>,  <40.778355, 27.368906, 47.777599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453487, 27.252380, 47.427994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224518, 26.925709, 47.398693>,  <41.087135, 26.729706, 47.381115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224518, 26.925709, 47.398693>,  <41.453487, 27.252380, 47.427994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224518, 26.925709, 47.398693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185111, -0.041687, -0.981833,
		0.798789, -0.575585, 0.175039,
		-0.572425, -0.816679, -0.073248,
		41.052792, 26.680704, 47.376720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834866, 26.816391, 47.006233>,  <41.453487, 27.252380, 47.427994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834866, 26.816391, 47.006233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448158, 26.722668, 46.965305>,  <41.216133, 26.666433, 46.940750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448158, 26.722668, 46.965305>,  <41.834866, 26.816391, 47.006233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448158, 26.722668, 46.965305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125425, -0.085905, -0.988377,
		0.222794, -0.968360, 0.112438,
		-0.966763, -0.234307, -0.102318,
		41.158131, 26.652376, 46.934608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833599, 26.333519, 46.405277>,  <41.834866, 26.816391, 47.006233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833599, 26.333519, 46.405277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457932, 26.467319, 46.436443>,  <41.232533, 26.547600, 46.455143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457932, 26.467319, 46.436443>,  <41.833599, 26.333519, 46.405277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457932, 26.467319, 46.436443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077860, 0.013594, -0.996872,
		-0.334515, -0.942297, 0.013277,
		-0.939169, 0.334502, 0.077914,
		41.176182, 26.567669, 46.459816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309898, 25.978462, 45.896935>,  <41.833599, 26.333519, 46.405277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309898, 25.978462, 45.896935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146751, 26.329964, 45.996075>,  <41.048862, 26.540865, 46.055561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146751, 26.329964, 45.996075>,  <41.309898, 25.978462, 45.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146751, 26.329964, 45.996075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201436, 0.178164, -0.963162,
		-0.890542, -0.442773, 0.104345,
		-0.407872, 0.878755, 0.247853,
		41.024391, 26.593590, 46.070431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762104, 25.987099, 45.507042>,  <41.309898, 25.978462, 45.896935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762104, 25.987099, 45.507042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787437, 26.367266, 45.628826>,  <40.802635, 26.595366, 45.701897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787437, 26.367266, 45.628826>,  <40.762104, 25.987099, 45.507042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787437, 26.367266, 45.628826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314792, 0.308523, -0.897618,
		-0.947045, -0.038995, 0.318723,
		0.063331, 0.950417, 0.304461,
		40.806438, 26.652391, 45.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140171, 26.263540, 45.154610>,  <40.762104, 25.987099, 45.507042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140171, 26.263540, 45.154610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355461, 26.580690, 45.268913>,  <40.484634, 26.770981, 45.337498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355461, 26.580690, 45.268913>,  <40.140171, 26.263540, 45.154610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355461, 26.580690, 45.268913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162664, 0.430413, -0.887854,
		-0.826953, 0.431385, 0.360633,
		0.538228, 0.792875, 0.285761,
		40.516930, 26.818552, 45.354641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733208, 26.799248, 45.000153>,  <40.140171, 26.263540, 45.154610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733208, 26.799248, 45.000153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097008, 26.962008, 45.034187>,  <40.315289, 27.059664, 45.054607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097008, 26.962008, 45.034187>,  <39.733208, 26.799248, 45.000153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097008, 26.962008, 45.034187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264324, 0.724047, -0.637094,
		-0.320841, 0.556947, 0.766075,
		0.909502, 0.406898, 0.085090,
		40.369858, 27.084078, 45.059715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643856, 27.558186, 45.104099>,  <39.733208, 26.799248, 45.000153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643856, 27.558186, 45.104099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008621, 27.475420, 44.962337>,  <40.227482, 27.425760, 44.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008621, 27.475420, 44.962337>,  <39.643856, 27.558186, 45.104099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008621, 27.475420, 44.962337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168712, 0.598218, -0.783372,
		0.374102, 0.774159, 0.510613,
		0.911912, -0.206914, -0.354405,
		40.282196, 27.413345, 44.856014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861607, 28.174128, 44.831734>,  <39.643856, 27.558186, 45.104099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861607, 28.174128, 44.831734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055534, 27.874752, 44.650723>,  <40.171890, 27.695126, 44.542114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055534, 27.874752, 44.650723>,  <39.861607, 28.174128, 44.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055534, 27.874752, 44.650723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260280, 0.370499, -0.891619,
		0.834987, 0.550061, -0.015179,
		0.484821, -0.748441, -0.452531,
		40.200981, 27.650219, 44.514961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121716, 28.593889, 44.311474>,  <39.861607, 28.174128, 44.831734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121716, 28.593889, 44.311474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173382, 28.208261, 44.218620>,  <40.204380, 27.976885, 44.162907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173382, 28.208261, 44.218620>,  <40.121716, 28.593889, 44.311474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173382, 28.208261, 44.218620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194209, 0.204969, -0.959307,
		0.972420, 0.168989, -0.160757,
		0.129162, -0.964070, -0.232135,
		40.212132, 27.919041, 44.148979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595158, 28.524771, 43.728352>,  <40.121716, 28.593889, 44.311474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595158, 28.524771, 43.728352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395863, 28.178316, 43.744209>,  <40.276287, 27.970444, 43.753723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395863, 28.178316, 43.744209>,  <40.595158, 28.524771, 43.728352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395863, 28.178316, 43.744209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249693, 0.099542, -0.963195,
		0.830311, -0.489796, -0.265863,
		-0.498234, -0.866136, 0.039648,
		40.246391, 27.918476, 43.756104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815105, 28.202858, 43.221729>,  <40.595158, 28.524771, 43.728352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815105, 28.202858, 43.221729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464035, 28.017872, 43.272030>,  <40.253391, 27.906881, 43.302212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464035, 28.017872, 43.272030>,  <40.815105, 28.202858, 43.221729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464035, 28.017872, 43.272030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243702, 0.204723, -0.947997,
		0.412671, -0.862679, -0.292384,
		-0.877675, -0.462465, 0.125753,
		40.200733, 27.879133, 43.309757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668068, 27.706909, 42.580952>,  <40.815105, 28.202858, 43.221729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668068, 27.706909, 42.580952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315380, 27.765533, 42.760326>,  <40.103767, 27.800709, 42.867950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315380, 27.765533, 42.760326>,  <40.668068, 27.706909, 42.580952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315380, 27.765533, 42.760326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409992, 0.232233, -0.882029,
		-0.233414, -0.961555, -0.144675,
		-0.881717, 0.146562, 0.448436,
		40.050865, 27.809502, 42.894855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285202, 27.259836, 42.280006>,  <40.668068, 27.706909, 42.580952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285202, 27.259836, 42.280006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025410, 27.518795, 42.439529>,  <39.869534, 27.674170, 42.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025410, 27.518795, 42.439529>,  <40.285202, 27.259836, 42.280006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025410, 27.518795, 42.439529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415148, 0.137498, -0.899303,
		-0.637042, -0.749647, 0.179462,
		-0.649485, 0.647397, 0.398807,
		39.830563, 27.713015, 42.559170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544609, 27.130440, 41.981014>,  <40.285202, 27.259836, 42.280006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544609, 27.130440, 41.981014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543812, 27.504232, 42.123417>,  <39.543331, 27.728508, 42.208858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543812, 27.504232, 42.123417>,  <39.544609, 27.130440, 41.981014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543812, 27.504232, 42.123417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525506, 0.301907, -0.795422,
		-0.850788, -0.188670, 0.490473,
		-0.001995, 0.934482, 0.356006,
		39.543213, 27.784576, 42.230217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887108, 27.359924, 41.855492>,  <39.544609, 27.130440, 41.981014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887108, 27.359924, 41.855492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038826, 27.719410, 41.943531>,  <39.129856, 27.935102, 41.996357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038826, 27.719410, 41.943531>,  <38.887108, 27.359924, 41.855492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038826, 27.719410, 41.943531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618009, 0.423103, -0.662608,
		-0.688622, 0.115299, 0.715895,
		0.379296, 0.898716, 0.220102,
		39.152615, 27.989025, 42.009563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281483, 27.864498, 41.992069>,  <38.887108, 27.359924, 41.855492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281483, 27.864498, 41.992069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597557, 28.067881, 41.855198>,  <38.787201, 28.189909, 41.773075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597557, 28.067881, 41.855198>,  <38.281483, 27.864498, 41.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597557, 28.067881, 41.855198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566603, 0.393245, -0.724099,
		-0.233611, 0.766049, 0.598827,
		0.790181, 0.508455, -0.342180,
		38.834610, 28.220417, 41.752544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933777, 28.370884, 41.475723>,  <38.281483, 27.864498, 41.992069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933777, 28.370884, 41.475723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322407, 28.435177, 41.406193>,  <38.555584, 28.473753, 41.364475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322407, 28.435177, 41.406193>,  <37.933777, 28.370884, 41.475723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322407, 28.435177, 41.406193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218384, 0.324933, -0.920178,
		-0.091422, 0.931978, 0.350797,
		0.971571, 0.160733, -0.173823,
		38.613876, 28.483397, 41.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084320, 29.114389, 41.375599>,  <37.933777, 28.370884, 41.475723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084320, 29.114389, 41.375599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360069, 28.901842, 41.178658>,  <38.525520, 28.774315, 41.060493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360069, 28.901842, 41.178658>,  <38.084320, 29.114389, 41.375599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360069, 28.901842, 41.178658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369902, 0.326173, -0.869933,
		0.622847, 0.781832, 0.028301,
		0.689373, -0.531366, -0.492357,
		38.566879, 28.742432, 41.030949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142853, 29.470800, 40.825523>,  <38.084320, 29.114389, 41.375599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142853, 29.470800, 40.825523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341526, 29.141573, 40.715351>,  <38.460732, 28.944036, 40.649250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341526, 29.141573, 40.715351>,  <38.142853, 29.470800, 40.825523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341526, 29.141573, 40.715351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056735, 0.347451, -0.935980,
		0.866073, 0.449263, 0.219271,
		0.496688, -0.823068, -0.275429,
		38.490532, 28.894653, 40.632721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711872, 29.726280, 40.352306>,  <38.142853, 29.470800, 40.825523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711872, 29.726280, 40.352306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594517, 29.346325, 40.309155>,  <38.524105, 29.118351, 40.283264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594517, 29.346325, 40.309155>,  <38.711872, 29.726280, 40.352306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594517, 29.346325, 40.309155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009746, 0.115808, -0.993224,
		0.955945, -0.290346, -0.043234,
		-0.293385, -0.949888, -0.107876,
		38.506500, 29.061357, 40.276791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139606, 29.467041, 39.980431>,  <38.711872, 29.726280, 40.352306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139606, 29.467041, 39.980431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802574, 29.256443, 39.935059>,  <38.600357, 29.130085, 39.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802574, 29.256443, 39.935059>,  <39.139606, 29.467041, 39.980431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802574, 29.256443, 39.935059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015999, 0.234980, -0.971868,
		0.538337, -0.817060, -0.206412,
		-0.842578, -0.526495, -0.113427,
		38.549801, 29.098495, 39.901031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172447, 29.120491, 39.393269>,  <39.139606, 29.467041, 39.980431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172447, 29.120491, 39.393269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776585, 29.143478, 39.445843>,  <38.539066, 29.157270, 39.477386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776585, 29.143478, 39.445843>,  <39.172447, 29.120491, 39.393269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776585, 29.143478, 39.445843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093155, 0.439308, -0.893493,
		-0.109090, -0.896496, -0.429411,
		-0.989657, 0.057469, 0.131437,
		38.479687, 29.160719, 39.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802723, 28.783995, 38.729347>,  <39.172447, 29.120491, 39.393269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802723, 28.783995, 38.729347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560516, 29.035385, 38.924641>,  <38.415192, 29.186220, 39.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560516, 29.035385, 38.924641>,  <38.802723, 28.783995, 38.729347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560516, 29.035385, 38.924641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088325, 0.556621, -0.826058,
		-0.790918, -0.543313, -0.281532,
		-0.605515, 0.628478, 0.488229,
		38.378860, 29.223928, 39.071110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252937, 28.866440, 38.273109>,  <38.802723, 28.783995, 38.729347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252937, 28.866440, 38.273109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274258, 29.169640, 38.533138>,  <38.287048, 29.351561, 38.689156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274258, 29.169640, 38.533138>,  <38.252937, 28.866440, 38.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274258, 29.169640, 38.533138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133775, 0.650549, -0.747590,
		-0.989578, -0.047117, 0.136076,
		0.053300, 0.758001, 0.650072,
		38.290249, 29.397039, 38.728161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884045, 29.295774, 37.980564>,  <38.252937, 28.866440, 38.273109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884045, 29.295774, 37.980564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107220, 29.532576, 38.213196>,  <38.241127, 29.674656, 38.352776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107220, 29.532576, 38.213196>,  <37.884045, 29.295774, 37.980564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107220, 29.532576, 38.213196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228889, 0.563839, -0.793533,
		-0.797691, 0.575862, 0.179086,
		0.557941, 0.592004, 0.581578,
		38.274601, 29.710176, 38.387669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924038, 29.909414, 37.694946>,  <37.884045, 29.295774, 37.980564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924038, 29.909414, 37.694946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235355, 29.950684, 37.942696>,  <38.422146, 29.975445, 38.091343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235355, 29.950684, 37.942696>,  <37.924038, 29.909414, 37.694946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235355, 29.950684, 37.942696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384351, 0.701741, -0.599862,
		-0.496529, 0.704922, 0.506502,
		0.778289, 0.103174, 0.619372,
		38.468842, 29.981636, 38.128506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955795, 30.673189, 37.752361>,  <37.924038, 29.909414, 37.694946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955795, 30.673189, 37.752361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311916, 30.527245, 37.861347>,  <38.525589, 30.439678, 37.926739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311916, 30.527245, 37.861347>,  <37.955795, 30.673189, 37.752361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311916, 30.527245, 37.861347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447070, 0.586645, -0.675260,
		0.086539, 0.722996, 0.685411,
		0.890303, -0.364863, 0.272462,
		38.579006, 30.417786, 37.943085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387852, 31.239067, 37.671322>,  <37.955795, 30.673189, 37.752361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387852, 31.239067, 37.671322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641251, 30.931356, 37.704552>,  <38.793289, 30.746731, 37.724491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641251, 30.931356, 37.704552>,  <38.387852, 31.239067, 37.671322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641251, 30.931356, 37.704552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629469, 0.449950, -0.633493,
		0.449950, 0.453607, 0.769276,
		0.633493, -0.769276, 0.083076,
		38.831299, 30.700573, 37.729473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967865, 31.643536, 37.685467>,  <38.387852, 31.239067, 37.671322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967865, 31.643536, 37.685467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085934, 31.275215, 37.583488>,  <39.156776, 31.054224, 37.522301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085934, 31.275215, 37.583488>,  <38.967865, 31.643536, 37.685467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085934, 31.275215, 37.583488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685172, 0.389973, -0.615191,
		0.665891, 0.006906, 0.746017,
		0.295176, -0.920800, -0.254948,
		39.174488, 30.998976, 37.507004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632446, 31.641895, 37.526394>,  <38.967865, 31.643536, 37.685467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632446, 31.641895, 37.526394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573124, 31.286673, 37.352333>,  <39.537529, 31.073538, 37.247898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573124, 31.286673, 37.352333>,  <39.632446, 31.641895, 37.526394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573124, 31.286673, 37.352333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623594, 0.257538, -0.738109,
		0.767552, -0.380823, 0.515594,
		-0.148304, -0.888059, -0.435153,
		39.528633, 31.020254, 37.221786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280918, 31.340673, 37.299980>,  <39.632446, 31.641895, 37.526394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280918, 31.340673, 37.299980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972755, 31.196098, 37.089901>,  <39.787857, 31.109352, 36.963856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972755, 31.196098, 37.089901>,  <40.280918, 31.340673, 37.299980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972755, 31.196098, 37.089901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451379, 0.272545, -0.849692,
		0.450253, -0.891672, -0.046824,
		-0.770409, -0.361441, -0.525196,
		39.741634, 31.087666, 36.932343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677769, 31.105812, 36.791855>,  <40.280918, 31.340673, 37.299980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677769, 31.105812, 36.791855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303978, 31.129862, 36.651489>,  <40.079704, 31.144291, 36.567268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303978, 31.129862, 36.651489>,  <40.677769, 31.105812, 36.791855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303978, 31.129862, 36.651489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349256, 0.346165, -0.870741,
		0.069124, -0.936245, -0.344481,
		-0.934474, 0.060123, -0.350917,
		40.023636, 31.147898, 36.546215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725727, 30.783476, 36.166679>,  <40.677769, 31.105812, 36.791855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725727, 30.783476, 36.166679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377731, 30.977753, 36.132690>,  <40.168934, 31.094318, 36.112297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377731, 30.977753, 36.132690>,  <40.725727, 30.783476, 36.166679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377731, 30.977753, 36.132690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254371, 0.294474, -0.921184,
		-0.422386, -0.823037, -0.379735,
		-0.869991, 0.485689, -0.084975,
		40.116734, 31.123459, 36.107197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518711, 30.715101, 35.462414>,  <40.725727, 30.783476, 36.166679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518711, 30.715101, 35.462414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287601, 31.020159, 35.578728>,  <40.148937, 31.203194, 35.648518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287601, 31.020159, 35.578728>,  <40.518711, 30.715101, 35.462414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287601, 31.020159, 35.578728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210355, 0.483368, -0.849769,
		-0.788624, -0.429807, -0.439703,
		-0.577774, 0.762642, 0.290784,
		40.114269, 31.248951, 35.665962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986660, 30.801622, 34.936924>,  <40.518711, 30.715101, 35.462414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986660, 30.801622, 34.936924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036224, 31.138357, 35.147049>,  <40.065964, 31.340399, 35.273125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036224, 31.138357, 35.147049>,  <39.986660, 30.801622, 34.936924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036224, 31.138357, 35.147049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323024, 0.466340, -0.823519,
		-0.938244, 0.271732, -0.214149,
		0.123910, 0.841837, 0.525317,
		40.073399, 31.390907, 35.304646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738865, 31.475729, 34.695061>,  <39.986660, 30.801622, 34.936924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738865, 31.475729, 34.695061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051025, 31.589790, 34.917652>,  <40.238319, 31.658228, 35.051205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051025, 31.589790, 34.917652>,  <39.738865, 31.475729, 34.695061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051025, 31.589790, 34.917652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407961, 0.442246, -0.798741,
		-0.473865, 0.850356, 0.228795,
		0.780397, 0.285156, 0.556477,
		40.285145, 31.675337, 35.084595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845943, 32.102345, 34.545948>,  <39.738865, 31.475729, 34.695061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845943, 32.102345, 34.545948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199860, 31.945780, 34.647099>,  <40.412209, 31.851841, 34.707787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199860, 31.945780, 34.647099>,  <39.845943, 32.102345, 34.545948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199860, 31.945780, 34.647099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388648, 0.320430, -0.863873,
		0.257104, 0.862624, 0.435635,
		0.884788, -0.391414, 0.252873,
		40.465298, 31.828356, 34.722961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350731, 31.846409, 34.139809>,  <39.845943, 32.102345, 34.545948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350731, 31.846409, 34.139809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379818, 32.211868, 34.299786>,  <40.397270, 32.431145, 34.395771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379818, 32.211868, 34.299786>,  <40.350731, 31.846409, 34.139809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379818, 32.211868, 34.299786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989765, -0.115475, 0.083848,
		0.122791, 0.389755, -0.912696,
		0.072713, 0.913650, 0.399945,
		40.401630, 32.485962, 34.419769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892197, 32.291439, 33.703995>,  <40.350731, 31.846409, 34.139809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892197, 32.291439, 33.703995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869667, 32.316467, 34.102573>,  <40.856148, 32.331486, 34.341721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869667, 32.316467, 34.102573>,  <40.892197, 32.291439, 33.703995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869667, 32.316467, 34.102573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972226, -0.223643, 0.069001,
		0.227167, 0.972660, -0.048237,
		-0.056326, 0.062571, 0.996450,
		40.852768, 32.335239, 34.401508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365379, 32.783173, 33.980530>,  <40.892197, 32.291439, 33.703995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365379, 32.783173, 33.980530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307194, 32.490856, 34.247299>,  <41.272282, 32.315468, 34.407360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307194, 32.490856, 34.247299>,  <41.365379, 32.783173, 33.980530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307194, 32.490856, 34.247299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969957, -0.238198, -0.049457,
		0.195002, 0.639691, 0.743484,
		-0.145459, -0.730792, 0.666922,
		41.263557, 32.271618, 34.447376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937794, 32.745861, 34.609402>,  <41.365379, 32.783173, 33.980530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937794, 32.745861, 34.609402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853672, 32.365398, 34.518997>,  <41.803200, 32.137123, 34.464756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853672, 32.365398, 34.518997>,  <41.937794, 32.745861, 34.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853672, 32.365398, 34.518997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959154, -0.155998, -0.235984,
		0.189200, -0.266404, 0.945109,
		-0.210302, -0.951154, -0.226008,
		41.790581, 32.080051, 34.451195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155838, 33.013187, 35.315884>,  <41.937794, 32.745861, 34.609402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155838, 33.013187, 35.315884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500809, 33.123062, 35.145821>,  <42.707790, 33.188988, 35.043781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500809, 33.123062, 35.145821>,  <42.155838, 33.013187, 35.315884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500809, 33.123062, 35.145821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484194, 0.202848, -0.851122,
		-0.147551, 0.939893, 0.307945,
		0.862429, 0.274689, -0.425160,
		42.759537, 33.205467, 35.018272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961140, 33.529182, 34.817154>,  <42.155838, 33.013187, 35.315884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961140, 33.529182, 34.817154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334900, 33.420677, 34.724792>,  <42.559155, 33.355576, 34.669376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334900, 33.420677, 34.724792>,  <41.961140, 33.529182, 34.817154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334900, 33.420677, 34.724792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243089, -0.011741, -0.969933,
		0.260394, 0.962434, -0.076911,
		0.934400, -0.271261, -0.230899,
		42.615219, 33.339298, 34.655521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076584, 33.862724, 34.244553>,  <41.961140, 33.529182, 34.817154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076584, 33.862724, 34.244553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377403, 33.599094, 34.247139>,  <42.557896, 33.440918, 34.248692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377403, 33.599094, 34.247139>,  <42.076584, 33.862724, 34.244553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377403, 33.599094, 34.247139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012045, 0.003929, -0.999920,
		0.658995, 0.752068, 0.010893,
		0.752051, -0.659074, 0.006470,
		42.603020, 33.401371, 34.249081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548550, 34.086979, 33.720985>,  <42.076584, 33.862724, 34.244553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548550, 34.086979, 33.720985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660267, 33.708477, 33.786232>,  <42.727295, 33.481377, 33.825378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660267, 33.708477, 33.786232>,  <42.548550, 34.086979, 33.720985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660267, 33.708477, 33.786232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190282, -0.111964, -0.975324,
		0.941164, 0.303435, 0.148785,
		0.279289, -0.946251, 0.163115,
		42.744053, 33.424603, 33.835167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320820, 33.945484, 33.440277>,  <42.548550, 34.086979, 33.720985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320820, 33.945484, 33.440277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096279, 33.614460, 33.438084>,  <42.961555, 33.415848, 33.436768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096279, 33.614460, 33.438084>,  <43.320820, 33.945484, 33.440277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096279, 33.614460, 33.438084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370116, -0.245126, -0.896062,
		0.740201, -0.505034, 0.443895,
		-0.561352, -0.827559, -0.005479,
		42.927872, 33.366192, 33.436440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727776, 33.389801, 33.219517>,  <43.320820, 33.945484, 33.440277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727776, 33.389801, 33.219517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362095, 33.248909, 33.139347>,  <43.142689, 33.164371, 33.091244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362095, 33.248909, 33.139347>,  <43.727776, 33.389801, 33.219517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362095, 33.248909, 33.139347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327952, -0.352451, -0.876485,
		0.238089, -0.867012, 0.437727,
		-0.914200, -0.352234, -0.200424,
		43.087833, 33.143238, 33.079220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917679, 32.915958, 32.870125>,  <43.727776, 33.389801, 33.219517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917679, 32.915958, 32.870125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526237, 32.920837, 32.787964>,  <43.291374, 32.923763, 32.738667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526237, 32.920837, 32.787964>,  <43.917679, 32.915958, 32.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526237, 32.920837, 32.787964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182971, -0.405100, -0.895777,
		-0.094137, -0.914191, 0.394199,
		-0.978601, 0.012198, -0.205405,
		43.232658, 32.924496, 32.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684910, 32.258842, 32.595715>,  <43.917679, 32.915958, 32.870125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684910, 32.258842, 32.595715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456142, 32.564476, 32.476330>,  <43.318882, 32.747856, 32.404697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.456142, 32.564476, 32.476330>,  <43.684910, 32.258842, 32.595715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.456142, 32.564476, 32.476330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171492, -0.244433, -0.954381,
		-0.802183, -0.597014, 0.008761,
		-0.571920, 0.764086, -0.298463,
		43.284565, 32.793701, 32.386791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451153, 31.913784, 32.007435>,  <43.684910, 32.258842, 32.595715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451153, 31.913784, 32.007435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344082, 32.298897, 31.992498>,  <43.279839, 32.529964, 31.983538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344082, 32.298897, 31.992498>,  <43.451153, 31.913784, 32.007435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344082, 32.298897, 31.992498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128022, -0.073947, -0.989011,
		-0.954965, -0.259959, 0.143052,
		-0.267681, 0.962784, -0.037336,
		43.263779, 32.587730, 31.981297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775032, 31.968153, 31.643625>,  <43.451153, 31.913784, 32.007435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775032, 31.968153, 31.643625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974487, 32.312141, 31.600155>,  <43.094158, 32.518536, 31.574072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974487, 32.312141, 31.600155>,  <42.775032, 31.968153, 31.643625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974487, 32.312141, 31.600155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141086, -0.043184, -0.989055,
		-0.855253, 0.508510, 0.099797,
		0.498635, 0.859972, -0.108677,
		43.124077, 32.570133, 31.567553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350769, 32.414585, 31.220833>,  <42.775032, 31.968153, 31.643625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350769, 32.414585, 31.220833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722240, 32.555534, 31.174551>,  <42.945122, 32.640102, 31.146782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722240, 32.555534, 31.174551>,  <42.350769, 32.414585, 31.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722240, 32.555534, 31.174551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101270, -0.059188, -0.993097,
		-0.356790, 0.933985, -0.019282,
		0.928679, 0.352375, -0.115703,
		43.000843, 32.661247, 31.139841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347450, 32.754242, 30.592722>,  <42.350769, 32.414585, 31.220833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347450, 32.754242, 30.592722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745037, 32.751171, 30.636496>,  <42.983589, 32.749329, 30.662760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745037, 32.751171, 30.636496>,  <42.347450, 32.754242, 30.592722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745037, 32.751171, 30.636496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108417, -0.083581, -0.990586,
		0.016752, 0.996471, -0.082244,
		0.993964, -0.007677, 0.109434,
		43.043228, 32.748867, 30.669327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588341, 33.320244, 30.090223>,  <42.347450, 32.754242, 30.592722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588341, 33.320244, 30.090223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883919, 33.059536, 30.158524>,  <43.061268, 32.903111, 30.199503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883919, 33.059536, 30.158524>,  <42.588341, 33.320244, 30.090223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883919, 33.059536, 30.158524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203767, -0.025376, -0.978691,
		0.642211, 0.757994, 0.114057,
		0.738948, -0.651767, 0.170751,
		43.105602, 32.864006, 30.209749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250572, 33.543266, 29.622766>,  <42.588341, 33.320244, 30.090223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250572, 33.543266, 29.622766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290237, 33.161575, 29.735638>,  <43.314037, 32.932560, 29.803360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290237, 33.161575, 29.735638>,  <43.250572, 33.543266, 29.622766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290237, 33.161575, 29.735638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338464, -0.234320, -0.911338,
		0.935740, 0.185880, 0.299734,
		0.099165, -0.954224, 0.282176,
		43.319988, 32.875309, 29.820290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935974, 33.300388, 29.490734>,  <43.250572, 33.543266, 29.622766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935974, 33.300388, 29.490734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776138, 32.936008, 29.531713>,  <43.680237, 32.717381, 29.556301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776138, 32.936008, 29.531713>,  <43.935974, 33.300388, 29.490734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776138, 32.936008, 29.531713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464051, -0.297395, -0.834394,
		0.790559, -0.285876, 0.541564,
		-0.399591, -0.910951, 0.102447,
		43.656261, 32.662724, 29.562449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481228, 32.899796, 29.460730>,  <43.935974, 33.300388, 29.490734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481228, 32.899796, 29.460730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174526, 32.666302, 29.353886>,  <43.990505, 32.526207, 29.289780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174526, 32.666302, 29.353886>,  <44.481228, 32.899796, 29.460730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174526, 32.666302, 29.353886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391706, -0.095787, -0.915091,
		0.508582, -0.806277, 0.302097,
		-0.766754, -0.583731, -0.267108,
		43.944500, 32.491184, 29.273754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766720, 32.398552, 28.933289>,  <44.481228, 32.899796, 29.460730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766720, 32.398552, 28.933289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368904, 32.394661, 28.891727>,  <44.130215, 32.392326, 28.866791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368904, 32.394661, 28.891727>,  <44.766720, 32.398552, 28.933289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368904, 32.394661, 28.891727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103529, 0.033068, -0.994077,
		0.013092, -0.999406, -0.031881,
		-0.994540, -0.009714, -0.103900,
		44.070541, 32.391743, 28.860558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609100, 31.943851, 28.465502>,  <44.766720, 32.398552, 28.933289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609100, 31.943851, 28.465502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281990, 32.173878, 28.456125>,  <44.085724, 32.311893, 28.450499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281990, 32.173878, 28.456125>,  <44.609100, 31.943851, 28.465502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281990, 32.173878, 28.456125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084057, 0.079041, -0.993321,
		-0.569372, -0.814280, -0.112976,
		-0.817772, 0.575066, -0.023442,
		44.036659, 32.346397, 28.449093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416210, 31.835119, 27.875208>,  <44.609100, 31.943851, 28.465502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416210, 31.835119, 27.875208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183868, 32.150200, 27.957312>,  <44.044464, 32.339249, 28.006573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183868, 32.150200, 27.957312>,  <44.416210, 31.835119, 27.875208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183868, 32.150200, 27.957312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038140, 0.278217, -0.959761,
		-0.813111, -0.549656, -0.191648,
		-0.580858, 0.787701, 0.205257,
		44.009609, 32.386509, 28.018888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021484, 31.839258, 27.226784>,  <44.416210, 31.835119, 27.875208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021484, 31.839258, 27.226784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986649, 32.196602, 27.403112>,  <43.965748, 32.411007, 27.508909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986649, 32.196602, 27.403112>,  <44.021484, 31.839258, 27.226784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986649, 32.196602, 27.403112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164348, 0.423555, -0.890837,
		-0.982550, -0.150033, 0.109934,
		-0.087092, 0.893360, 0.440821,
		43.960522, 32.464611, 27.535358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455486, 32.196651, 26.971407>,  <44.021484, 31.839258, 27.226784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455486, 32.196651, 26.971407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673409, 32.498913, 27.116833>,  <43.804161, 32.680271, 27.204088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673409, 32.498913, 27.116833>,  <43.455486, 32.196651, 26.971407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673409, 32.498913, 27.116833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141841, 0.510350, -0.848189,
		-0.826482, 0.410526, 0.385222,
		0.544802, 0.755653, 0.363566,
		43.836849, 32.725609, 27.225903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071064, 32.764874, 26.777035>,  <43.455486, 32.196651, 26.971407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071064, 32.764874, 26.777035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434361, 32.907829, 26.864090>,  <43.652340, 32.993603, 26.916323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434361, 32.907829, 26.864090>,  <43.071064, 32.764874, 26.777035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434361, 32.907829, 26.864090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071173, 0.644481, -0.761301,
		-0.412344, 0.675957, 0.610782,
		0.908243, 0.357389, 0.217639,
		43.706833, 33.015045, 26.929382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127125, 33.578285, 26.667126>,  <43.071064, 32.764874, 26.777035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127125, 33.578285, 26.667126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490795, 33.414394, 26.637398>,  <43.708996, 33.316059, 26.619560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490795, 33.414394, 26.637398>,  <43.127125, 33.578285, 26.667126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490795, 33.414394, 26.637398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165109, 0.518553, -0.838953,
		0.382282, 0.750484, 0.539105,
		0.909175, -0.409727, -0.074322,
		43.763546, 33.291477, 26.615101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660824, 34.171455, 26.656469>,  <43.127125, 33.578285, 26.667126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660824, 34.171455, 26.656469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746323, 33.830086, 26.466322>,  <43.797623, 33.625263, 26.352234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746323, 33.830086, 26.466322>,  <43.660824, 34.171455, 26.656469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746323, 33.830086, 26.466322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122343, 0.506168, -0.853714,
		0.969198, 0.124320, 0.212601,
		0.213745, -0.853428, -0.475367,
		43.810448, 33.574059, 26.323711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235416, 34.370934, 26.247252>,  <43.660824, 34.171455, 26.656469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235416, 34.370934, 26.247252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026875, 34.055359, 26.117165>,  <43.901749, 33.866013, 26.039112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.026875, 34.055359, 26.117165>,  <44.235416, 34.370934, 26.247252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026875, 34.055359, 26.117165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127307, 0.448752, -0.884542,
		0.843791, -0.419756, -0.334396,
		-0.521354, -0.788940, -0.325216,
		43.870468, 33.818676, 26.019600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765827, 34.860676, 25.848217>,  <44.235416, 34.370934, 26.247252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765827, 34.860676, 25.848217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697380, 35.203815, 25.654390>,  <43.656311, 35.409698, 25.538094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.697380, 35.203815, 25.654390>,  <43.765827, 34.860676, 25.848217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697380, 35.203815, 25.654390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729343, 0.440956, 0.523085,
		0.662403, -0.263907, -0.701125,
		-0.171119, 0.857853, -0.484569,
		43.646046, 35.461170, 25.509020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426033, 35.067322, 25.506626>,  <43.765827, 34.860676, 25.848217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426033, 35.067322, 25.506626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206528, 35.395775, 25.569378>,  <44.074825, 35.592846, 25.607029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206528, 35.395775, 25.569378>,  <44.426033, 35.067322, 25.506626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206528, 35.395775, 25.569378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783582, 0.439833, 0.438801,
		0.291310, 0.363724, -0.884784,
		-0.548760, 0.821128, 0.156880,
		44.041901, 35.642113, 25.616442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033779, 35.609280, 25.514406>,  <44.426033, 35.067322, 25.506626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033779, 35.609280, 25.514406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699192, 35.723362, 25.701586>,  <44.498440, 35.791813, 25.813894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699192, 35.723362, 25.701586>,  <45.033779, 35.609280, 25.514406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699192, 35.723362, 25.701586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532975, 0.622048, 0.573579,
		-0.127498, 0.729187, -0.672332,
		-0.836470, 0.285206, 0.467949,
		44.448250, 35.808922, 25.841970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.086159, 36.422634, 25.608425>,  <45.033779, 35.609280, 25.514406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.086159, 36.422634, 25.608425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842743, 36.252495, 25.876381>,  <44.696693, 36.150410, 26.037155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.842743, 36.252495, 25.876381>,  <45.086159, 36.422634, 25.608425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842743, 36.252495, 25.876381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471474, 0.485221, 0.736392,
		-0.638269, 0.763962, -0.094737,
		-0.608544, -0.425350, 0.669889,
		44.660179, 36.124889, 26.077347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775620, 36.980591, 25.961777>,  <45.086159, 36.422634, 25.608425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775620, 36.980591, 25.961777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799557, 36.650211, 26.185999>,  <44.813919, 36.451984, 26.320532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799557, 36.650211, 26.185999>,  <44.775620, 36.980591, 25.961777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799557, 36.650211, 26.185999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424673, 0.529276, 0.734520,
		-0.903367, 0.194095, 0.382434,
		0.059847, -0.825950, 0.560557,
		44.817513, 36.402428, 26.354166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999050, 36.805923, 26.680931>,  <44.775620, 36.980591, 25.961777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999050, 36.805923, 26.680931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633831, 36.922390, 26.795176>,  <44.414700, 36.992268, 26.863722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633831, 36.922390, 26.795176>,  <44.999050, 36.805923, 26.680931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633831, 36.922390, 26.795176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214296, -0.253355, 0.943339,
		0.347027, 0.922516, 0.168929,
		-0.913044, 0.291163, 0.285612,
		44.359917, 37.009739, 26.880859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045788, 37.424328, 27.233957>,  <44.999050, 36.805923, 26.680931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045788, 37.424328, 27.233957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746853, 37.158550, 27.232660>,  <44.567493, 36.999084, 27.231882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746853, 37.158550, 27.232660>,  <45.045788, 37.424328, 27.233957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746853, 37.158550, 27.232660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284088, -0.323935, 0.902419,
		-0.600654, 0.673488, 0.430847,
		-0.747334, -0.664440, -0.003243,
		44.522652, 36.959217, 27.231688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511971, 37.526760, 27.784298>,  <45.045788, 37.424328, 27.233957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511971, 37.526760, 27.784298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555702, 37.141369, 27.686512>,  <44.581940, 36.910133, 27.627840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555702, 37.141369, 27.686512>,  <44.511971, 37.526760, 27.784298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555702, 37.141369, 27.686512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035983, -0.241942, 0.969623,
		-0.993354, -0.114801, 0.008218,
		0.109326, -0.963475, -0.244465,
		44.588501, 36.852325, 27.613173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066368, 37.167816, 28.217983>,  <44.511971, 37.526760, 27.784298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066368, 37.167816, 28.217983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309742, 36.867538, 28.115019>,  <44.455765, 36.687370, 28.053240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309742, 36.867538, 28.115019>,  <44.066368, 37.167816, 28.217983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309742, 36.867538, 28.115019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120939, -0.232860, 0.964961,
		-0.784336, -0.618246, -0.050891,
		0.608434, -0.750699, -0.257410,
		44.492271, 36.642330, 28.037796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904823, 36.544876, 28.667231>,  <44.066368, 37.167816, 28.217983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904823, 36.544876, 28.667231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270985, 36.460182, 28.530296>,  <44.490681, 36.409367, 28.448135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270985, 36.460182, 28.530296>,  <43.904823, 36.544876, 28.667231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270985, 36.460182, 28.530296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242776, -0.387951, 0.889131,
		-0.321072, -0.897029, -0.303729,
		0.915408, -0.211737, -0.342337,
		44.545609, 36.396660, 28.427595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986599, 35.882713, 28.870613>,  <43.904823, 36.544876, 28.667231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986599, 35.882713, 28.870613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353241, 36.024529, 28.796700>,  <44.573227, 36.109619, 28.752352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353241, 36.024529, 28.796700>,  <43.986599, 35.882713, 28.870613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353241, 36.024529, 28.796700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291857, -0.277483, 0.915327,
		0.273244, -0.892920, -0.357816,
		0.916601, 0.354539, -0.184784,
		44.628220, 36.130890, 28.741264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297909, 35.433434, 29.211506>,  <43.986599, 35.882713, 28.870613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297909, 35.433434, 29.211506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543133, 35.747578, 29.177162>,  <44.690266, 35.936062, 29.156557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543133, 35.747578, 29.177162>,  <44.297909, 35.433434, 29.211506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543133, 35.747578, 29.177162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354089, -0.175991, 0.918503,
		0.706244, -0.593498, -0.385979,
		0.613059, 0.785358, -0.085858,
		44.727051, 35.983185, 29.151405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937786, 35.138985, 29.360493>,  <44.297909, 35.433434, 29.211506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937786, 35.138985, 29.360493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963814, 35.535221, 29.408649>,  <44.979431, 35.772964, 29.437544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963814, 35.535221, 29.408649>,  <44.937786, 35.138985, 29.360493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963814, 35.535221, 29.408649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320726, -0.135005, 0.937501,
		0.944934, -0.022390, -0.326493,
		0.065069, 0.990592, 0.120390,
		44.983334, 35.832397, 29.444767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569118, 35.223061, 29.704752>,  <44.937786, 35.138985, 29.360493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569118, 35.223061, 29.704752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385967, 35.574512, 29.758942>,  <45.276077, 35.785385, 29.791456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385967, 35.574512, 29.758942>,  <45.569118, 35.223061, 29.704752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385967, 35.574512, 29.758942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258491, -0.014225, 0.965909,
		0.850605, 0.477289, -0.220605,
		-0.457880, 0.878631, 0.135475,
		45.248604, 35.838100, 29.799583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110680, 35.623310, 29.987932>,  <45.569118, 35.223061, 29.704752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110680, 35.623310, 29.987932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764263, 35.794399, 30.091486>,  <45.556412, 35.897053, 30.153618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.764263, 35.794399, 30.091486>,  <46.110680, 35.623310, 29.987932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764263, 35.794399, 30.091486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238692, -0.101262, 0.965801,
		0.439315, 0.898218, -0.014398,
		-0.866042, 0.427728, 0.258883,
		45.504452, 35.922718, 30.169151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316975, 36.268753, 30.452082>,  <46.110680, 35.623310, 29.987932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316975, 36.268753, 30.452082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942265, 36.139179, 30.505032>,  <45.717438, 36.061436, 30.536802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942265, 36.139179, 30.505032>,  <46.316975, 36.268753, 30.452082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942265, 36.139179, 30.505032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162347, -0.067189, 0.984443,
		-0.310003, 0.943690, 0.115531,
		-0.936772, -0.323936, 0.132376,
		45.661232, 36.042000, 30.544744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209717, 36.425293, 31.099733>,  <46.316975, 36.268753, 30.452082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209717, 36.425293, 31.099733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900097, 36.178654, 31.042253>,  <45.714325, 36.030670, 31.007765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.900097, 36.178654, 31.042253>,  <46.209717, 36.425293, 31.099733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900097, 36.178654, 31.042253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038492, -0.272384, 0.961418,
		-0.631953, 0.738654, 0.234573,
		-0.774050, -0.616601, -0.143701,
		45.667881, 35.993675, 30.999144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643368, 36.650043, 31.571325>,  <46.209717, 36.425293, 31.099733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643368, 36.650043, 31.571325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595142, 36.264809, 31.475048>,  <45.566208, 36.033669, 31.417282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595142, 36.264809, 31.475048>,  <45.643368, 36.650043, 31.571325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595142, 36.264809, 31.475048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207991, -0.212573, 0.954752,
		-0.970672, 0.165168, -0.174685,
		-0.120561, -0.963085, -0.240692,
		45.558975, 35.975883, 31.402840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237709, 36.345104, 32.137863>,  <45.643368, 36.650043, 31.571325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237709, 36.345104, 32.137863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316921, 35.997726, 31.956057>,  <45.364449, 35.789299, 31.846972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316921, 35.997726, 31.956057>,  <45.237709, 36.345104, 32.137863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316921, 35.997726, 31.956057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143926, -0.484439, 0.862905,
		-0.969572, -0.105464, -0.220925,
		0.198030, -0.868445, -0.454519,
		45.376331, 35.737194, 31.819700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833027, 35.950291, 32.385750>,  <45.237709, 36.345104, 32.137863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833027, 35.950291, 32.385750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120445, 35.701408, 32.261459>,  <45.292896, 35.552078, 32.186886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120445, 35.701408, 32.261459>,  <44.833027, 35.950291, 32.385750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120445, 35.701408, 32.261459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171902, -0.591804, 0.787539,
		-0.673903, -0.512467, -0.532196,
		0.718543, -0.622210, -0.310724,
		45.336010, 35.514744, 32.168243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519371, 35.249504, 32.381088>,  <44.833027, 35.950291, 32.385750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519371, 35.249504, 32.381088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916061, 35.203636, 32.404194>,  <45.154076, 35.176117, 32.418056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916061, 35.203636, 32.404194>,  <44.519371, 35.249504, 32.381088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916061, 35.203636, 32.404194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115369, -0.598433, 0.792823,
		-0.056343, -0.792925, -0.606709,
		0.991723, -0.114665, 0.057762,
		45.213577, 35.169235, 32.421524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646671, 34.532486, 32.610504>,  <44.519371, 35.249504, 32.381088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646671, 34.532486, 32.610504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998646, 34.691467, 32.714615>,  <45.209831, 34.786858, 32.777081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998646, 34.691467, 32.714615>,  <44.646671, 34.532486, 32.610504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998646, 34.691467, 32.714615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012184, -0.566537, 0.823946,
		0.474938, -0.721847, -0.503359,
		0.879935, 0.397457, 0.260275,
		45.262627, 34.810703, 32.792698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924858, 33.972862, 32.994484>,  <44.646671, 34.532486, 32.610504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924858, 33.972862, 32.994484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152493, 34.289608, 33.083115>,  <45.289074, 34.479656, 33.136292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152493, 34.289608, 33.083115>,  <44.924858, 33.972862, 32.994484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152493, 34.289608, 33.083115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074027, -0.317712, 0.945293,
		0.818939, -0.521550, -0.239424,
		0.569085, 0.791862, 0.221578,
		45.323219, 34.527168, 33.149590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350147, 33.641342, 33.389946>,  <44.924858, 33.972862, 32.994484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350147, 33.641342, 33.389946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388474, 34.032990, 33.461655>,  <45.411469, 34.267979, 33.504681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388474, 34.032990, 33.461655>,  <45.350147, 33.641342, 33.389946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388474, 34.032990, 33.461655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115747, -0.167919, 0.978982,
		0.988647, -0.114550, 0.097242,
		0.095814, 0.979123, 0.179272,
		45.417217, 34.326725, 33.515438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772930, 33.652554, 33.962059>,  <45.350147, 33.641342, 33.389946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772930, 33.652554, 33.962059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594406, 34.009888, 33.941021>,  <45.487293, 34.224289, 33.928398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594406, 34.009888, 33.941021>,  <45.772930, 33.652554, 33.962059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594406, 34.009888, 33.941021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213522, -0.049229, 0.975697,
		0.869031, 0.446695, 0.212718,
		-0.446311, 0.893331, -0.052597,
		45.460514, 34.277885, 33.925243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114204, 34.051289, 34.413891>,  <45.772930, 33.652554, 33.962059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114204, 34.051289, 34.413891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750114, 34.206726, 34.356647>,  <45.531658, 34.299988, 34.322304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750114, 34.206726, 34.356647>,  <46.114204, 34.051289, 34.413891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750114, 34.206726, 34.356647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159391, -0.009811, 0.987167,
		0.382204, 0.921357, 0.070868,
		-0.910228, 0.388595, -0.143106,
		45.477047, 34.323303, 34.313717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985561, 34.554192, 35.014206>,  <46.114204, 34.051289, 34.413891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985561, 34.554192, 35.014206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632587, 34.463413, 34.849373>,  <45.420803, 34.408947, 34.750473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632587, 34.463413, 34.849373>,  <45.985561, 34.554192, 35.014206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632587, 34.463413, 34.849373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386505, -0.149642, 0.910067,
		-0.268199, 0.962343, 0.044334,
		-0.882430, -0.226944, -0.412084,
		45.367859, 34.395329, 34.725746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496994, 34.988388, 35.249783>,  <45.985561, 34.554192, 35.014206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496994, 34.988388, 35.249783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324749, 34.649250, 35.126022>,  <45.221401, 34.445766, 35.051765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324749, 34.649250, 35.126022>,  <45.496994, 34.988388, 35.249783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324749, 34.649250, 35.126022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351376, -0.158281, 0.922758,
		-0.831327, 0.506071, -0.229754,
		-0.430615, -0.847844, -0.309405,
		45.195564, 34.394897, 35.033199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886223, 35.699120, 35.367935>,  <45.496994, 34.988388, 35.249783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886223, 35.699120, 35.367935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014797, 35.320744, 35.385269>,  <46.091942, 35.093719, 35.395668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014797, 35.320744, 35.385269>,  <45.886223, 35.699120, 35.367935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014797, 35.320744, 35.385269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900968, 0.291432, -0.321440,
		0.291432, 0.142368, 0.945938,
		0.321440, -0.945938, 0.043336,
		46.111229, 35.036961, 35.398270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543518, 35.728878, 35.694031>,  <45.886223, 35.699120, 35.367935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543518, 35.728878, 35.694031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520176, 35.402939, 35.463337>,  <46.506168, 35.207375, 35.324921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520176, 35.402939, 35.463337>,  <46.543518, 35.728878, 35.694031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520176, 35.402939, 35.463337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959232, 0.114259, -0.258494,
		0.276530, -0.568305, 0.774959,
		-0.058357, -0.814846, -0.576732,
		46.502670, 35.158485, 35.290318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144245, 35.218102, 35.944138>,  <46.543518, 35.728878, 35.694031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144245, 35.218102, 35.944138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049232, 35.231087, 35.555801>,  <46.992226, 35.238876, 35.322800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049232, 35.231087, 35.555801>,  <47.144245, 35.218102, 35.944138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049232, 35.231087, 35.555801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922049, 0.321984, -0.214830,
		0.305621, -0.946188, -0.106411,
		-0.237532, 0.032459, -0.970837,
		46.977974, 35.240826, 35.264549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.606731, 34.684364, 35.557125>,  <47.144245, 35.218102, 35.944138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.606731, 34.684364, 35.557125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506756, 35.006500, 35.342106>,  <47.446770, 35.199780, 35.213093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506756, 35.006500, 35.342106>,  <47.606731, 34.684364, 35.557125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506756, 35.006500, 35.342106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964818, 0.160358, -0.208354,
		-0.081595, -0.570716, -0.817083,
		-0.249937, 0.805338, -0.537553,
		47.431774, 35.248100, 35.180840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.873100, 31.593847, 44.245686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704784, 31.857946, 44.494526>,  <38.603794, 32.016407, 44.643829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704784, 31.857946, 44.494526>,  <38.873100, 31.593847, 44.245686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704784, 31.857946, 44.494526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813860, 0.028155, -0.580378,
		-0.400710, -0.750518, 0.525504,
		-0.420789, 0.660250, 0.622099,
		38.578548, 32.056023, 44.681156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264389, 31.520622, 44.011242>,  <38.873100, 31.593847, 44.245686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264389, 31.520622, 44.011242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224960, 31.850714, 44.233692>,  <38.201302, 32.048767, 44.367165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.224960, 31.850714, 44.233692>,  <38.264389, 31.520622, 44.011242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224960, 31.850714, 44.233692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738095, 0.314207, -0.597068,
		-0.667458, -0.469330, 0.578126,
		-0.098571, 0.825229, 0.556130,
		38.195389, 32.098282, 44.400532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532349, 31.694981, 44.205196>,  <38.264389, 31.520622, 44.011242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532349, 31.694981, 44.205196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755077, 32.027233, 44.204067>,  <37.888714, 32.226585, 44.203388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755077, 32.027233, 44.204067>,  <37.532349, 31.694981, 44.205196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755077, 32.027233, 44.204067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627739, 0.418577, -0.656306,
		-0.543964, 0.367217, 0.754490,
		0.556819, 0.830629, -0.002826,
		37.922123, 32.276421, 44.203220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043003, 32.156857, 44.191315>,  <37.532349, 31.694981, 44.205196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043003, 32.156857, 44.191315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375565, 32.344769, 44.072613>,  <37.575104, 32.457516, 44.001392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375565, 32.344769, 44.072613>,  <37.043003, 32.156857, 44.191315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375565, 32.344769, 44.072613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524123, 0.485645, -0.699602,
		-0.184542, 0.737193, 0.649994,
		0.831408, 0.469783, -0.296758,
		37.624989, 32.485703, 43.983585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955433, 32.836811, 44.064445>,  <37.043003, 32.156857, 44.191315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955433, 32.836811, 44.064445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272713, 32.813236, 43.822002>,  <37.463081, 32.799091, 43.676537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272713, 32.813236, 43.822002>,  <36.955433, 32.836811, 44.064445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272713, 32.813236, 43.822002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484692, 0.541457, -0.686948,
		0.368666, 0.838660, 0.400917,
		0.793195, -0.058933, -0.606109,
		37.510670, 32.795555, 43.640171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949177, 33.487099, 43.644840>,  <36.955433, 32.836811, 44.064445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949177, 33.487099, 43.644840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.207859, 33.260071, 43.441021>,  <37.363068, 33.123852, 43.318729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.207859, 33.260071, 43.441021>,  <36.949177, 33.487099, 43.644840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207859, 33.260071, 43.441021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265407, 0.458851, -0.847948,
		0.715079, 0.683606, 0.146101,
		0.646701, -0.567573, -0.509548,
		37.401871, 33.089798, 43.288158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324287, 33.908421, 43.242077>,  <36.949177, 33.487099, 43.644840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324287, 33.908421, 43.242077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363823, 33.567429, 43.036743>,  <37.387543, 33.362835, 42.913544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363823, 33.567429, 43.036743>,  <37.324287, 33.908421, 43.242077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363823, 33.567429, 43.036743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218478, 0.484680, -0.846967,
		0.970824, 0.195861, -0.138345,
		0.098835, -0.852481, -0.513330,
		37.393475, 33.311684, 42.882744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773449, 34.070072, 42.650780>,  <37.324287, 33.908421, 43.242077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773449, 34.070072, 42.650780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607742, 33.724293, 42.536865>,  <37.508316, 33.516823, 42.468517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607742, 33.724293, 42.536865>,  <37.773449, 34.070072, 42.650780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607742, 33.724293, 42.536865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010716, 0.308249, -0.951245,
		0.910092, -0.397123, -0.118434,
		-0.414268, -0.864451, -0.284791,
		37.483463, 33.464958, 42.451427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051968, 33.931065, 42.028053>,  <37.773449, 34.070072, 42.650780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051968, 33.931065, 42.028053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758495, 33.660347, 42.003838>,  <37.582413, 33.497917, 41.989307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758495, 33.660347, 42.003838>,  <38.051968, 33.931065, 42.028053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758495, 33.660347, 42.003838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031516, 0.055098, -0.997983,
		0.678765, -0.734107, -0.019094,
		-0.733679, -0.676794, -0.060535,
		37.538391, 33.457310, 41.985676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256779, 33.431290, 41.567295>,  <38.051968, 33.931065, 42.028053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256779, 33.431290, 41.567295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858627, 33.396767, 41.584099>,  <37.619736, 33.376053, 41.594181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858627, 33.396767, 41.584099>,  <38.256779, 33.431290, 41.567295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858627, 33.396767, 41.584099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022764, -0.212949, -0.976798,
		0.093251, -0.973244, 0.210001,
		-0.995383, -0.086307, 0.042012,
		37.560013, 33.370876, 41.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122936, 32.766987, 41.360630>,  <38.256779, 33.431290, 41.567295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122936, 32.766987, 41.360630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794968, 32.977665, 41.270905>,  <37.598186, 33.104073, 41.217068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794968, 32.977665, 41.270905>,  <38.122936, 32.766987, 41.360630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794968, 32.977665, 41.270905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196343, -0.109348, -0.974419,
		-0.537755, -0.842989, -0.013757,
		-0.819920, 0.526700, -0.224318,
		37.548992, 33.135674, 41.203609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872711, 32.469505, 40.675968>,  <38.122936, 32.766987, 41.360630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872711, 32.469505, 40.675968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703712, 32.828457, 40.726883>,  <37.602314, 33.043831, 40.757431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.703712, 32.828457, 40.726883>,  <37.872711, 32.469505, 40.675968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703712, 32.828457, 40.726883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130630, 0.199260, -0.971201,
		-0.896904, -0.393698, -0.201411,
		-0.422493, 0.897384, 0.127288,
		37.576965, 33.097672, 40.765068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490227, 32.495430, 40.176064>,  <37.872711, 32.469505, 40.675968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490227, 32.495430, 40.176064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485771, 32.879436, 40.287956>,  <37.483097, 33.109840, 40.355091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485771, 32.879436, 40.287956>,  <37.490227, 32.495430, 40.176064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485771, 32.879436, 40.287956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235170, 0.274423, -0.932410,
		-0.971891, 0.055396, -0.228824,
		-0.011143, 0.960012, 0.279736,
		37.482430, 33.167439, 40.371876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992455, 32.852333, 39.701447>,  <37.490227, 32.495430, 40.176064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992455, 32.852333, 39.701447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222687, 33.144653, 39.848221>,  <37.360825, 33.320045, 39.936287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222687, 33.144653, 39.848221>,  <36.992455, 32.852333, 39.701447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222687, 33.144653, 39.848221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089570, 0.389675, -0.916586,
		-0.812827, 0.560432, 0.158831,
		0.575577, 0.730800, 0.366936,
		37.395359, 33.363892, 39.958302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812408, 33.528851, 39.371361>,  <36.992455, 32.852333, 39.701447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812408, 33.528851, 39.371361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163521, 33.608746, 39.545540>,  <37.374187, 33.656685, 39.650047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.163521, 33.608746, 39.545540>,  <36.812408, 33.528851, 39.371361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163521, 33.608746, 39.545540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256839, 0.571068, -0.779689,
		-0.404404, 0.796232, 0.449969,
		0.877776, 0.199740, 0.435446,
		37.426853, 33.668667, 39.676174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902588, 34.197060, 39.268616>,  <36.812408, 33.528851, 39.371361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902588, 34.197060, 39.268616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261799, 34.025547, 39.308010>,  <37.477325, 33.922638, 39.331646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261799, 34.025547, 39.308010>,  <36.902588, 34.197060, 39.268616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261799, 34.025547, 39.308010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304273, 0.443638, -0.842973,
		0.317758, 0.786977, 0.528864,
		0.898024, -0.428780, 0.098486,
		37.531208, 33.896912, 39.337555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336742, 34.620182, 38.969242>,  <36.902588, 34.197060, 39.268616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336742, 34.620182, 38.969242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553612, 34.284924, 38.993095>,  <37.683731, 34.083767, 39.007408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553612, 34.284924, 38.993095>,  <37.336742, 34.620182, 38.969242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553612, 34.284924, 38.993095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544137, 0.296135, -0.784996,
		0.640287, 0.458048, 0.616624,
		0.542170, -0.838151, 0.059630,
		37.716263, 34.033478, 39.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015316, 34.835167, 38.758133>,  <37.336742, 34.620182, 38.969242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015316, 34.835167, 38.758133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016800, 34.436413, 38.726627>,  <38.017689, 34.197159, 38.707726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016800, 34.436413, 38.726627>,  <38.015316, 34.835167, 38.758133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016800, 34.436413, 38.726627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362483, 0.074743, -0.928988,
		0.931983, -0.025105, 0.361632,
		0.003707, -0.996887, -0.078760,
		38.017914, 34.137348, 38.702999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652988, 34.622696, 38.542492>,  <38.015316, 34.835167, 38.758133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652988, 34.622696, 38.542492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444153, 34.291653, 38.460041>,  <38.318851, 34.093025, 38.410572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444153, 34.291653, 38.460041>,  <38.652988, 34.622696, 38.542492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444153, 34.291653, 38.460041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487334, -0.091133, -0.868447,
		0.699950, -0.553859, 0.450901,
		-0.522089, -0.827608, -0.206126,
		38.287525, 34.043369, 38.398205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136635, 34.147507, 38.371445>,  <38.652988, 34.622696, 38.542492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136635, 34.147507, 38.371445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792667, 34.034019, 38.201714>,  <38.586288, 33.965927, 38.099876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792667, 34.034019, 38.201714>,  <39.136635, 34.147507, 38.371445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792667, 34.034019, 38.201714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432762, 0.035579, -0.900806,
		0.270674, -0.958247, 0.092188,
		-0.859914, -0.283720, -0.424324,
		38.534695, 33.948902, 38.074417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263836, 33.657990, 37.893925>,  <39.136635, 34.147507, 38.371445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263836, 33.657990, 37.893925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.908798, 33.787052, 37.762428>,  <38.695774, 33.864491, 37.683529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.908798, 33.787052, 37.762428>,  <39.263836, 33.657990, 37.893925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908798, 33.787052, 37.762428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312764, -0.101789, -0.944361,
		-0.338168, -0.941027, -0.010568,
		-0.887593, 0.322658, -0.328741,
		38.642521, 33.883850, 37.663807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969265, 33.185356, 37.534328>,  <39.263836, 33.657990, 37.893925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969265, 33.185356, 37.534328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813042, 33.521774, 37.384609>,  <38.719307, 33.723625, 37.294777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.813042, 33.521774, 37.384609>,  <38.969265, 33.185356, 37.534328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813042, 33.521774, 37.384609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396751, -0.213109, -0.892846,
		-0.830692, -0.497215, -0.250454,
		-0.390563, 0.841048, -0.374298,
		38.695873, 33.774090, 37.272320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727055, 33.488579, 37.358032>,  <38.969265, 33.185356, 37.534328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727055, 33.488579, 37.358032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081036, 33.431595, 37.180687>,  <40.293423, 33.397404, 37.074280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081036, 33.431595, 37.180687>,  <39.727055, 33.488579, 37.358032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081036, 33.431595, 37.180687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385414, -0.310327, 0.868995,
		-0.261387, -0.939894, -0.219717,
		0.884948, -0.142462, -0.443364,
		40.346519, 33.388855, 37.047676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883873, 32.874187, 37.520885>,  <39.727055, 33.488579, 37.358032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883873, 32.874187, 37.520885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223660, 33.074242, 37.453617>,  <40.427532, 33.194275, 37.413254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.223660, 33.074242, 37.453617>,  <39.883873, 32.874187, 37.520885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223660, 33.074242, 37.453617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328337, -0.251524, 0.910456,
		0.413049, -0.828615, -0.377872,
		0.849462, 0.500132, -0.168173,
		40.478497, 33.224281, 37.403164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401375, 32.508812, 37.845242>,  <39.883873, 32.874187, 37.520885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401375, 32.508812, 37.845242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.618637, 32.836205, 37.770329>,  <40.748993, 33.032639, 37.725380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.618637, 32.836205, 37.770329>,  <40.401375, 32.508812, 37.845242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618637, 32.836205, 37.770329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445582, -0.091927, 0.890509,
		0.711645, -0.567137, -0.414629,
		0.543156, 0.818477, -0.187287,
		40.781586, 33.081749, 37.714142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968304, 32.357777, 38.163422>,  <40.401375, 32.508812, 37.845242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968304, 32.357777, 38.163422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997768, 32.754852, 38.125191>,  <41.015446, 32.993099, 38.102253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997768, 32.754852, 38.125191>,  <40.968304, 32.357777, 38.163422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997768, 32.754852, 38.125191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321916, 0.067037, 0.944392,
		0.943899, -0.100332, -0.314625,
		0.073661, 0.992693, -0.095575,
		41.019867, 33.052662, 38.096519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698738, 32.695530, 38.282047>,  <40.968304, 32.357777, 38.163422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698738, 32.695530, 38.282047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.407402, 32.961571, 38.347965>,  <41.232601, 33.121193, 38.387516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.407402, 32.961571, 38.347965>,  <41.698738, 32.695530, 38.282047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407402, 32.961571, 38.347965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355458, 0.161125, 0.920700,
		0.585805, 0.729164, -0.353769,
		-0.728343, 0.665100, 0.164799,
		41.188900, 33.161102, 38.397404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965702, 33.042248, 38.792103>,  <41.698738, 32.695530, 38.282047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965702, 33.042248, 38.792103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586967, 33.170872, 38.796238>,  <41.359726, 33.248047, 38.798717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586967, 33.170872, 38.796238>,  <41.965702, 33.042248, 38.792103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586967, 33.170872, 38.796238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051355, 0.119352, 0.991523,
		0.317599, 0.939338, -0.129520,
		-0.946834, 0.321558, 0.010334,
		41.302917, 33.267338, 38.799339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996674, 33.636585, 39.197430>,  <41.965702, 33.042248, 38.792103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996674, 33.636585, 39.197430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.625900, 33.486694, 39.205173>,  <41.403439, 33.396759, 39.209820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.625900, 33.486694, 39.205173>,  <41.996674, 33.636585, 39.197430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625900, 33.486694, 39.205173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029700, -0.021839, 0.999320,
		-0.374053, 0.926876, 0.031372,
		-0.926932, -0.374731, 0.019359,
		41.347820, 33.374275, 39.210979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627556, 34.055923, 39.668301>,  <41.996674, 33.636585, 39.197430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627556, 34.055923, 39.668301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.466415, 33.691036, 39.638462>,  <41.369732, 33.472103, 39.620560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.466415, 33.691036, 39.638462>,  <41.627556, 34.055923, 39.668301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466415, 33.691036, 39.638462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053942, -0.105025, 0.993006,
		-0.913676, 0.396006, 0.091517,
		-0.402848, -0.912222, -0.074597,
		41.345562, 33.417370, 39.616081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954639, 34.117184, 40.167706>,  <41.627556, 34.055923, 39.668301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954639, 34.117184, 40.167706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.061203, 33.736362, 40.107536>,  <41.125141, 33.507870, 40.071434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.061203, 33.736362, 40.107536>,  <40.954639, 34.117184, 40.167706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061203, 33.736362, 40.107536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043150, -0.167691, 0.984895,
		-0.962894, -0.255893, -0.085755,
		0.266408, -0.952050, -0.150427,
		41.141125, 33.450748, 40.062408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669476, 33.724442, 40.712631>,  <40.954639, 34.117184, 40.167706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669476, 33.724442, 40.712631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.913559, 33.453739, 40.547878>,  <41.060009, 33.291317, 40.449028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.913559, 33.453739, 40.547878>,  <40.669476, 33.724442, 40.712631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913559, 33.453739, 40.547878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117164, -0.437086, 0.891756,
		-0.783531, -0.592413, -0.187421,
		0.610207, -0.676759, -0.411880,
		41.096622, 33.250713, 40.424313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342678, 32.993572, 40.803143>,  <40.669476, 33.724442, 40.712631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342678, 32.993572, 40.803143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.729973, 32.909386, 40.749138>,  <40.962349, 32.858871, 40.716736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.729973, 32.909386, 40.749138>,  <40.342678, 32.993572, 40.803143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729973, 32.909386, 40.749138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048864, -0.370271, 0.927638,
		-0.245230, -0.904766, -0.348224,
		0.968233, -0.210469, -0.135012,
		41.020443, 32.846245, 40.708633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542580, 32.240498, 40.816463>,  <40.342678, 32.993572, 40.803143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542580, 32.240498, 40.816463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.861027, 32.442120, 40.950409>,  <41.052094, 32.563091, 41.030777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.861027, 32.442120, 40.950409>,  <40.542580, 32.240498, 40.816463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861027, 32.442120, 40.950409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063670, -0.480524, 0.874667,
		0.601788, -0.717655, -0.350459,
		0.796114, 0.504051, 0.334867,
		41.099861, 32.593334, 41.050869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826950, 31.636833, 41.189201>,  <40.542580, 32.240498, 40.816463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826950, 31.636833, 41.189201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021885, 31.968636, 41.298321>,  <41.138847, 32.167717, 41.363792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021885, 31.968636, 41.298321>,  <40.826950, 31.636833, 41.189201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021885, 31.968636, 41.298321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119593, -0.372863, 0.920147,
		0.864984, -0.415800, -0.280915,
		0.487340, 0.829508, 0.272794,
		41.168087, 32.217487, 41.380157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306465, 31.396902, 41.510902>,  <40.826950, 31.636833, 41.189201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306465, 31.396902, 41.510902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.314610, 31.769295, 41.656700>,  <41.319496, 31.992731, 41.744179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.314610, 31.769295, 41.656700>,  <41.306465, 31.396902, 41.510902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314610, 31.769295, 41.656700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245103, -0.358092, 0.900941,
		0.969283, 0.070992, -0.235479,
		0.020364, 0.930984, 0.364493,
		41.320717, 32.048592, 41.766048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977886, 31.422592, 41.886406>,  <41.306465, 31.396902, 41.510902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977886, 31.422592, 41.886406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.716660, 31.696144, 42.016518>,  <41.559921, 31.860275, 42.094585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.716660, 31.696144, 42.016518>,  <41.977886, 31.422592, 41.886406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716660, 31.696144, 42.016518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109400, -0.339819, 0.934106,
		0.749353, 0.645622, 0.147109,
		-0.653070, 0.683882, 0.325276,
		41.520737, 31.901308, 42.114101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234909, 31.623945, 42.532715>,  <41.977886, 31.422592, 41.886406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234909, 31.623945, 42.532715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.851925, 31.739283, 42.537239>,  <41.622135, 31.808485, 42.539955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.851925, 31.739283, 42.537239>,  <42.234909, 31.623945, 42.532715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851925, 31.739283, 42.537239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059953, -0.237114, 0.969630,
		0.282270, 0.927704, 0.244314,
		-0.957460, 0.288345, 0.011312,
		41.564686, 31.825787, 42.540634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174385, 32.122444, 43.161293>,  <42.234909, 31.623945, 42.532715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174385, 32.122444, 43.161293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810360, 31.994959, 43.055313>,  <41.591946, 31.918467, 42.991726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810360, 31.994959, 43.055313>,  <42.174385, 32.122444, 43.161293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810360, 31.994959, 43.055313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207332, -0.203440, 0.956883,
		-0.358875, 0.925760, 0.119064,
		-0.910067, -0.318716, -0.264949,
		41.537338, 31.899343, 42.975830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597149, 32.417953, 43.675659>,  <42.174385, 32.122444, 43.161293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597149, 32.417953, 43.675659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.411076, 32.107807, 43.504818>,  <41.299431, 31.921721, 43.402313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.411076, 32.107807, 43.504818>,  <41.597149, 32.417953, 43.675659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411076, 32.107807, 43.504818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405935, -0.241917, 0.881302,
		-0.786653, 0.583342, -0.202212,
		-0.465181, -0.775364, -0.427104,
		41.271523, 31.875198, 43.376686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.949959, 32.384312, 43.981197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975471, 32.022358, 43.812855>,  <40.990780, 31.805187, 43.711849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975471, 32.022358, 43.812855>,  <40.949959, 32.384312, 43.981197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975471, 32.022358, 43.812855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444966, -0.403262, 0.799615,
		-0.893273, 0.136268, -0.428362,
		0.063780, -0.904881, -0.420858,
		40.994606, 31.750893, 43.686596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295303, 32.143028, 44.118877>,  <40.949959, 32.384312, 43.981197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295303, 32.143028, 44.118877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519714, 31.819860, 44.046753>,  <40.654362, 31.625959, 44.003479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.519714, 31.819860, 44.046753>,  <40.295303, 32.143028, 44.118877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519714, 31.819860, 44.046753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443505, -0.477277, 0.758624,
		-0.698969, -0.345637, -0.626081,
		0.561023, -0.807924, -0.180310,
		40.688023, 31.577482, 43.992661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801208, 31.594576, 44.078468>,  <40.295303, 32.143028, 44.118877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801208, 31.594576, 44.078468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158161, 31.437737, 44.167835>,  <40.372334, 31.343634, 44.221455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158161, 31.437737, 44.167835>,  <39.801208, 31.594576, 44.078468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158161, 31.437737, 44.167835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391755, -0.427305, 0.814824,
		-0.224020, -0.814660, -0.534925,
		0.892381, -0.392096, 0.223422,
		40.425877, 31.320107, 44.234863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663937, 30.965343, 44.145771>,  <39.801208, 31.594576, 44.078468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663937, 30.965343, 44.145771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014679, 31.010969, 44.332584>,  <40.225124, 31.038345, 44.444672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.014679, 31.010969, 44.332584>,  <39.663937, 30.965343, 44.145771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014679, 31.010969, 44.332584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343435, -0.531175, 0.774536,
		0.336424, -0.839548, -0.426588,
		0.876853, 0.114067, 0.467030,
		40.277737, 31.045189, 44.472694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911709, 30.325697, 44.390572>,  <39.663937, 30.965343, 44.145771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911709, 30.325697, 44.390572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116573, 30.573082, 44.628963>,  <40.239491, 30.721514, 44.771999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116573, 30.573082, 44.628963>,  <39.911709, 30.325697, 44.390572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116573, 30.573082, 44.628963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437511, -0.409266, 0.800678,
		0.739105, -0.670825, 0.060974,
		0.512160, 0.618462, 0.595984,
		40.270222, 30.758621, 44.807758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236702, 29.951324, 44.901386>,  <39.911709, 30.325697, 44.390572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236702, 29.951324, 44.901386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281303, 30.315506, 45.060707>,  <40.308064, 30.534016, 45.156300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281303, 30.315506, 45.060707>,  <40.236702, 29.951324, 44.901386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281303, 30.315506, 45.060707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304424, -0.350236, 0.885811,
		0.945988, -0.220020, 0.238112,
		0.111501, 0.910454, 0.398298,
		40.314754, 30.588642, 45.180195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729206, 29.804949, 45.472759>,  <40.236702, 29.951324, 44.901386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729206, 29.804949, 45.472759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576916, 30.171560, 45.521786>,  <40.485542, 30.391527, 45.551201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576916, 30.171560, 45.521786>,  <40.729206, 29.804949, 45.472759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576916, 30.171560, 45.521786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099732, -0.172476, 0.979952,
		0.919296, 0.360865, 0.157073,
		-0.380721, 0.916531, 0.122567,
		40.462700, 30.446520, 45.558556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092041, 30.056181, 46.012112>,  <40.729206, 29.804949, 45.472759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092041, 30.056181, 46.012112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753967, 30.269449, 45.997211>,  <40.551121, 30.397409, 45.988274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753967, 30.269449, 45.997211>,  <41.092041, 30.056181, 46.012112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753967, 30.269449, 45.997211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198524, -0.248472, 0.948077,
		0.496232, 0.808697, 0.315852,
		-0.845188, 0.533170, -0.037246,
		40.500412, 30.429399, 45.986038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123051, 30.717825, 46.422855>,  <41.092041, 30.056181, 46.012112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123051, 30.717825, 46.422855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735470, 30.624979, 46.388790>,  <40.502922, 30.569271, 46.368351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.735470, 30.624979, 46.388790>,  <41.123051, 30.717825, 46.422855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735470, 30.624979, 46.388790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031852, -0.224381, 0.973981,
		-0.245183, 0.946455, 0.210021,
		-0.968953, -0.232114, -0.085161,
		40.444782, 30.555346, 46.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821819, 30.911278, 47.064014>,  <41.123051, 30.717825, 46.422855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821819, 30.911278, 47.064014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553478, 30.648170, 46.927021>,  <40.392475, 30.490305, 46.844826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553478, 30.648170, 46.927021>,  <40.821819, 30.911278, 47.064014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553478, 30.648170, 46.927021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163815, -0.318981, 0.933496,
		-0.723273, 0.682342, 0.106236,
		-0.670851, -0.657769, -0.342488,
		40.352222, 30.450840, 46.824276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523277, 30.793848, 47.680481>,  <40.821819, 30.911278, 47.064014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523277, 30.793848, 47.680481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358421, 30.514795, 47.446064>,  <40.259506, 30.347364, 47.305412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358421, 30.514795, 47.446064>,  <40.523277, 30.793848, 47.680481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358421, 30.514795, 47.446064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134162, -0.589733, 0.796377,
		-0.901187, 0.406847, 0.149459,
		-0.412145, -0.697632, -0.586042,
		40.234779, 30.305506, 47.270252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016823, 30.571074, 48.086124>,  <40.523277, 30.793848, 47.680481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016823, 30.571074, 48.086124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075226, 30.281643, 47.816273>,  <40.110268, 30.107985, 47.654362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.075226, 30.281643, 47.816273>,  <40.016823, 30.571074, 48.086124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075226, 30.281643, 47.816273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030032, -0.684862, 0.728053,
		-0.988828, -0.086039, -0.121724,
		0.146005, -0.723575, -0.674627,
		40.119026, 30.064569, 47.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444317, 30.052576, 48.135925>,  <40.016823, 30.571074, 48.086124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444317, 30.052576, 48.135925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783695, 29.884396, 48.007332>,  <39.987324, 29.783487, 47.930176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783695, 29.884396, 48.007332>,  <39.444317, 30.052576, 48.135925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783695, 29.884396, 48.007332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069266, -0.690388, 0.720116,
		-0.524722, -0.588715, -0.614883,
		0.848451, -0.420451, -0.321484,
		40.038231, 29.758261, 47.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237846, 29.332291, 48.242096>,  <39.444317, 30.052576, 48.135925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237846, 29.332291, 48.242096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634773, 29.341885, 48.193542>,  <39.872929, 29.347641, 48.164410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.634773, 29.341885, 48.193542>,  <39.237846, 29.332291, 48.242096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634773, 29.341885, 48.193542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092939, -0.792114, 0.603256,
		-0.081680, -0.609902, -0.788257,
		0.992316, 0.023985, -0.121384,
		39.932468, 29.349081, 48.157127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342648, 28.643486, 48.279896>,  <39.237846, 29.332291, 48.242096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342648, 28.643486, 48.279896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712563, 28.795036, 48.293884>,  <39.934509, 28.885967, 48.302277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712563, 28.795036, 48.293884>,  <39.342648, 28.643486, 48.279896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712563, 28.795036, 48.293884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238061, -0.647865, 0.723601,
		0.296814, -0.660850, -0.689332,
		0.924786, 0.378878, 0.034973,
		39.989998, 28.908699, 48.304375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839870, 28.004831, 48.362652>,  <39.342648, 28.643486, 48.279896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839870, 28.004831, 48.362652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.997971, 28.354639, 48.475071>,  <40.092831, 28.564524, 48.542522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.997971, 28.354639, 48.475071>,  <39.839870, 28.004831, 48.362652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997971, 28.354639, 48.475071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359038, -0.428705, 0.829038,
		0.845498, -0.226774, -0.483433,
		0.395254, 0.874520, 0.281048,
		40.116547, 28.616995, 48.559387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550076, 27.797180, 48.485867>,  <39.839870, 28.004831, 48.362652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550076, 27.797180, 48.485867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.459896, 28.125656, 48.695560>,  <40.405788, 28.322742, 48.821377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.459896, 28.125656, 48.695560>,  <40.550076, 27.797180, 48.485867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459896, 28.125656, 48.695560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340746, -0.437637, 0.832085,
		0.912724, 0.366222, -0.181153,
		-0.225448, 0.821191, 0.524231,
		40.392262, 28.372013, 48.852829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106510, 27.911104, 48.911499>,  <40.550076, 27.797180, 48.485867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106510, 27.911104, 48.911499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.821728, 28.133619, 49.082920>,  <40.650856, 28.267128, 49.185772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.821728, 28.133619, 49.082920>,  <41.106510, 27.911104, 48.911499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821728, 28.133619, 49.082920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307293, -0.301934, 0.902445,
		0.631414, 0.774196, 0.044022,
		-0.711961, 0.556289, 0.428550,
		40.608139, 28.300507, 49.211487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452236, 28.294596, 49.503273>,  <41.106510, 27.911104, 48.911499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452236, 28.294596, 49.503273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.057011, 28.287529, 49.564484>,  <40.819874, 28.283289, 49.601212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.057011, 28.287529, 49.564484>,  <41.452236, 28.294596, 49.503273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057011, 28.287529, 49.564484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143877, -0.460740, 0.875796,
		0.055032, 0.887359, 0.457783,
		-0.988064, -0.017668, 0.153026,
		40.760590, 28.282228, 49.610390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435028, 28.381124, 50.259899>,  <41.452236, 28.294596, 49.503273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435028, 28.381124, 50.259899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.079960, 28.240185, 50.141315>,  <40.866917, 28.155621, 50.070164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.079960, 28.240185, 50.141315>,  <41.435028, 28.381124, 50.259899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079960, 28.240185, 50.141315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075097, -0.524417, 0.848143,
		-0.454310, 0.775137, 0.439051,
		-0.887673, -0.352349, -0.296458,
		40.813660, 28.134480, 50.052380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936356, 28.549002, 50.770695>,  <41.435028, 28.381124, 50.259899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936356, 28.549002, 50.770695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.780495, 28.227242, 50.591312>,  <40.686977, 28.034185, 50.483681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.780495, 28.227242, 50.591312>,  <40.936356, 28.549002, 50.770695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780495, 28.227242, 50.591312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123626, -0.436854, 0.890996,
		-0.912628, 0.402617, 0.070774,
		-0.389648, -0.804399, -0.448460,
		40.663601, 27.985922, 50.456776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332237, 28.495085, 51.192757>,  <40.936356, 28.549002, 50.770695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332237, 28.495085, 51.192757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.393749, 28.153095, 50.994617>,  <40.430656, 27.947901, 50.875732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.393749, 28.153095, 50.994617>,  <40.332237, 28.495085, 51.192757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393749, 28.153095, 50.994617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297802, -0.518102, 0.801801,
		-0.942161, 0.024218, -0.334285,
		0.153775, -0.854976, -0.495347,
		40.439880, 27.896603, 50.846012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837490, 27.988297, 51.419609>,  <40.332237, 28.495085, 51.192757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837490, 27.988297, 51.419609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.113373, 27.758694, 51.243057>,  <40.278904, 27.620932, 51.137127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.113373, 27.758694, 51.243057>,  <39.837490, 27.988297, 51.419609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113373, 27.758694, 51.243057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159472, -0.715021, 0.680671,
		-0.706315, -0.399071, -0.584690,
		0.689702, -0.574010, -0.441390,
		40.320286, 27.586493, 51.110641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059364, 27.945108, 51.415295>,  <39.837490, 27.988297, 51.419609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059364, 27.945108, 51.415295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742577, 27.984325, 51.656353>,  <38.552505, 28.007856, 51.800987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742577, 27.984325, 51.656353>,  <39.059364, 27.945108, 51.415295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742577, 27.984325, 51.656353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470675, 0.530675, -0.704875,
		-0.388917, -0.841886, -0.374129,
		-0.791965, 0.098044, 0.602643,
		38.504986, 28.013739, 51.837147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456215, 27.755697, 50.973991>,  <39.059364, 27.945108, 51.415295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456215, 27.755697, 50.973991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.354332, 27.975855, 51.292030>,  <38.293201, 28.107950, 51.482853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.354332, 27.975855, 51.292030>,  <38.456215, 27.755697, 50.973991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354332, 27.975855, 51.292030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404083, 0.686415, -0.604608,
		-0.878543, -0.475288, 0.047568,
		-0.254712, 0.550395, 0.795102,
		38.277920, 28.140974, 51.530560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832249, 28.056013, 50.696205>,  <38.456215, 27.755697, 50.973991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832249, 28.056013, 50.696205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964458, 28.272108, 51.005760>,  <38.043785, 28.401766, 51.191494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964458, 28.272108, 51.005760>,  <37.832249, 28.056013, 50.696205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964458, 28.272108, 51.005760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336402, 0.833549, -0.438211,
		-0.881808, -0.115495, 0.457248,
		0.330528, 0.540237, 0.773883,
		38.063618, 28.434179, 51.237926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229160, 28.387001, 50.938812>,  <37.832249, 28.056013, 50.696205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229160, 28.387001, 50.938812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546051, 28.599993, 51.058041>,  <37.736183, 28.727787, 51.129578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.546051, 28.599993, 51.058041>,  <37.229160, 28.387001, 50.938812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546051, 28.599993, 51.058041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325851, 0.782125, -0.531133,
		-0.515948, 0.323649, 0.793126,
		0.792224, 0.532478, 0.298075,
		37.783718, 28.759735, 51.147465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962387, 29.012365, 51.012417>,  <37.229160, 28.387001, 50.938812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962387, 29.012365, 51.012417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356781, 29.072090, 50.982635>,  <37.593418, 29.107925, 50.964767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356781, 29.072090, 50.982635>,  <36.962387, 29.012365, 51.012417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356781, 29.072090, 50.982635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161838, 0.747383, -0.644381,
		-0.040566, 0.647398, 0.761072,
		0.985983, 0.149311, -0.074455,
		37.652576, 29.116884, 50.960300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040264, 29.728441, 50.929783>,  <36.962387, 29.012365, 51.012417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040264, 29.728441, 50.929783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372005, 29.575287, 50.767017>,  <37.571049, 29.483395, 50.669357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372005, 29.575287, 50.767017>,  <37.040264, 29.728441, 50.929783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372005, 29.575287, 50.767017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039208, 0.766369, -0.641203,
		0.557351, 0.515828, 0.650601,
		0.829351, -0.382884, -0.406911,
		37.620811, 29.460423, 50.644943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532635, 30.290972, 50.929012>,  <37.040264, 29.728441, 50.929783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532635, 30.290972, 50.929012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640270, 30.023674, 50.651585>,  <37.704853, 29.863295, 50.485126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640270, 30.023674, 50.651585>,  <37.532635, 30.290972, 50.929012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640270, 30.023674, 50.651585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191491, 0.742875, -0.641458,
		0.943886, 0.039798, 0.327864,
		0.269090, -0.668247, -0.693568,
		37.720997, 29.823200, 50.443516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973976, 30.708591, 50.451588>,  <37.532635, 30.290972, 50.929012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973976, 30.708591, 50.451588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901711, 30.394131, 50.215172>,  <37.858353, 30.205454, 50.073322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901711, 30.394131, 50.215172>,  <37.973976, 30.708591, 50.451588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901711, 30.394131, 50.215172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380240, 0.498373, -0.779129,
		0.907072, -0.365495, 0.208890,
		-0.180662, -0.786154, -0.591036,
		37.847511, 30.158285, 50.037861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472176, 30.684443, 49.943085>,  <37.973976, 30.708591, 50.451588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472176, 30.684443, 49.943085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183998, 30.443666, 49.805309>,  <38.011093, 30.299200, 49.722645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.183998, 30.443666, 49.805309>,  <38.472176, 30.684443, 49.943085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183998, 30.443666, 49.805309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081878, 0.419351, -0.904124,
		0.688668, -0.679568, -0.252831,
		-0.720439, -0.601941, -0.344435,
		37.967865, 30.263084, 49.701981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772045, 30.525087, 49.229645>,  <38.472176, 30.684443, 49.943085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772045, 30.525087, 49.229645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391582, 30.402927, 49.211651>,  <38.163303, 30.329632, 49.200855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391582, 30.402927, 49.211651>,  <38.772045, 30.525087, 49.229645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391582, 30.402927, 49.211651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002926, 0.136805, -0.990594,
		0.308685, -0.942345, -0.129230,
		-0.951160, -0.305403, -0.044987,
		38.106236, 30.311306, 49.198154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673233, 29.944193, 48.841503>,  <38.772045, 30.525087, 49.229645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673233, 29.944193, 48.841503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310547, 30.112783, 48.835464>,  <38.092937, 30.213938, 48.831841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310547, 30.112783, 48.835464>,  <38.673233, 29.944193, 48.841503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310547, 30.112783, 48.835464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059057, 0.091444, -0.994057,
		-0.417593, -0.902216, -0.107805,
		-0.906713, 0.421478, -0.015095,
		38.038532, 30.239227, 48.830936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231121, 29.572233, 48.369598>,  <38.673233, 29.944193, 48.841503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231121, 29.572233, 48.369598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052895, 29.929508, 48.393894>,  <37.945961, 30.143873, 48.408470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052895, 29.929508, 48.393894>,  <38.231121, 29.572233, 48.369598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052895, 29.929508, 48.393894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208790, 0.169650, -0.963133,
		-0.870563, -0.416455, -0.262078,
		-0.445564, 0.893187, 0.060740,
		37.919224, 30.197464, 48.412117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002861, 29.676666, 47.683201>,  <38.231121, 29.572233, 48.369598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002861, 29.676666, 47.683201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955185, 30.034458, 47.855576>,  <37.926579, 30.249132, 47.959000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955185, 30.034458, 47.855576>,  <38.002861, 29.676666, 47.683201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955185, 30.034458, 47.855576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131249, 0.444413, -0.886155,
		-0.984158, -0.049061, -0.170368,
		-0.119189, 0.894478, 0.430933,
		37.919430, 30.302801, 47.984856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743778, 30.022543, 47.133518>,  <38.002861, 29.676666, 47.683201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743778, 30.022543, 47.133518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858913, 30.319550, 47.375450>,  <37.927994, 30.497753, 47.520607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858913, 30.319550, 47.375450>,  <37.743778, 30.022543, 47.133518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858913, 30.319550, 47.375450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118065, 0.599224, -0.791828,
		-0.950373, 0.299330, 0.084816,
		0.287841, 0.742518, 0.604826,
		37.945267, 30.542305, 47.556896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340092, 30.623287, 47.009365>,  <37.743778, 30.022543, 47.133518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340092, 30.623287, 47.009365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689243, 30.745335, 47.161674>,  <37.898735, 30.818563, 47.253059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689243, 30.745335, 47.161674>,  <37.340092, 30.623287, 47.009365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689243, 30.745335, 47.161674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151156, 0.572893, -0.805571,
		-0.463939, 0.760721, 0.453944,
		0.872876, 0.305119, 0.380775,
		37.951107, 30.836870, 47.275906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332932, 31.310011, 46.888535>,  <37.340092, 30.623287, 47.009365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332932, 31.310011, 46.888535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720264, 31.243864, 46.963348>,  <37.952663, 31.204176, 47.008236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720264, 31.243864, 46.963348>,  <37.332932, 31.310011, 46.888535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720264, 31.243864, 46.963348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249350, 0.677789, -0.691684,
		-0.012388, 0.716418, 0.697561,
		0.968334, -0.165368, 0.187035,
		38.010765, 31.194254, 47.019459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653179, 31.934471, 46.906704>,  <37.332932, 31.310011, 46.888535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653179, 31.934471, 46.906704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975857, 31.708206, 46.838268>,  <38.169464, 31.572447, 46.797207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975857, 31.708206, 46.838268>,  <37.653179, 31.934471, 46.906704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975857, 31.708206, 46.838268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284091, 0.625048, -0.727054,
		0.518206, 0.537905, 0.664922,
		0.806693, -0.565662, -0.171090,
		38.217865, 31.538507, 46.786942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224037, 32.455582, 46.750996>,  <37.653179, 31.934471, 46.906704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224037, 32.455582, 46.750996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348122, 32.105984, 46.601387>,  <38.422573, 31.896223, 46.511623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348122, 32.105984, 46.601387>,  <38.224037, 32.455582, 46.750996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348122, 32.105984, 46.601387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359619, 0.472080, -0.804869,
		0.880024, 0.115176, 0.460752,
		0.310214, -0.873999, -0.374023,
		38.441185, 31.843784, 46.489182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920216, 32.573330, 46.511028>,  <38.224037, 32.455582, 46.750996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920216, 32.573330, 46.511028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778931, 32.244862, 46.331730>,  <38.694160, 32.047779, 46.224152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778931, 32.244862, 46.331730>,  <38.920216, 32.573330, 46.511028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778931, 32.244862, 46.331730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328533, 0.339737, -0.881274,
		0.875961, -0.458539, 0.149783,
		-0.353212, -0.821170, -0.448242,
		38.672966, 31.998510, 46.197258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429863, 32.406403, 45.904434>,  <38.920216, 32.573330, 46.511028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429863, 32.406403, 45.904434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.074417, 32.233974, 45.841763>,  <38.861149, 32.130516, 45.804157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.074417, 32.233974, 45.841763>,  <39.429863, 32.406403, 45.904434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074417, 32.233974, 45.841763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066056, 0.217769, -0.973763,
		0.453881, -0.875646, -0.165037,
		-0.888610, -0.431071, -0.156683,
		38.807835, 32.104652, 45.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402298, 32.041649, 45.254189>,  <39.429863, 32.406403, 45.904434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402298, 32.041649, 45.254189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.034359, 32.160786, 45.356304>,  <38.813595, 32.232269, 45.417572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.034359, 32.160786, 45.356304>,  <39.402298, 32.041649, 45.254189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034359, 32.160786, 45.356304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098151, 0.455336, -0.884893,
		-0.379802, -0.839022, -0.389605,
		-0.919846, 0.297844, 0.255289,
		38.758404, 32.250137, 45.432892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.909344, 33.455719, 27.016054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535744, 33.315754, 26.987207>,  <44.311584, 33.231773, 26.969900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535744, 33.315754, 26.987207>,  <44.909344, 33.455719, 27.016054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535744, 33.315754, 26.987207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074467, -0.388088, 0.918609,
		-0.349423, 0.852612, 0.388531,
		-0.934001, -0.349916, -0.072116,
		44.255543, 33.210781, 26.965572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616283, 33.689445, 27.616043>,  <44.909344, 33.455719, 27.016054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616283, 33.689445, 27.616043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393196, 33.380795, 27.493700>,  <44.259346, 33.195606, 27.420294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393196, 33.380795, 27.493700>,  <44.616283, 33.689445, 27.616043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393196, 33.380795, 27.493700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052438, -0.334998, 0.940758,
		-0.828375, 0.540714, 0.146371,
		-0.557715, -0.771625, -0.305858,
		44.225883, 33.149307, 27.401943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071281, 33.648197, 28.078913>,  <44.616283, 33.689445, 27.616043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071281, 33.648197, 28.078913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007481, 33.286255, 27.921028>,  <43.969200, 33.069092, 27.826298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007481, 33.286255, 27.921028>,  <44.071281, 33.648197, 28.078913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007481, 33.286255, 27.921028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294069, -0.338129, 0.893976,
		-0.942381, 0.258665, -0.212157,
		-0.159504, -0.904854, -0.394712,
		43.959629, 33.014797, 27.802614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362621, 33.426731, 28.254595>,  <44.071281, 33.648197, 28.078913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362621, 33.426731, 28.254595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546265, 33.080505, 28.174574>,  <43.656452, 32.872772, 28.126560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.546265, 33.080505, 28.174574>,  <43.362621, 33.426731, 28.254595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546265, 33.080505, 28.174574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186902, -0.314260, 0.930757,
		-0.868496, -0.389930, -0.306055,
		0.459111, -0.865561, -0.200054,
		43.683998, 32.820839, 28.114557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926071, 33.079681, 28.515224>,  <43.362621, 33.426731, 28.254595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926071, 33.079681, 28.515224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255428, 32.854019, 28.490704>,  <43.453041, 32.718624, 28.475990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255428, 32.854019, 28.490704>,  <42.926071, 33.079681, 28.515224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255428, 32.854019, 28.490704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119516, -0.278007, 0.953115,
		-0.554745, -0.777461, -0.296333,
		0.823392, -0.564152, -0.061304,
		43.502445, 32.684772, 28.472313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741474, 32.420727, 28.687883>,  <42.926071, 33.079681, 28.515224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741474, 32.420727, 28.687883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136047, 32.408981, 28.752487>,  <43.372791, 32.401936, 28.791250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136047, 32.408981, 28.752487>,  <42.741474, 32.420727, 28.687883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136047, 32.408981, 28.752487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163853, -0.236068, 0.957822,
		0.010002, -0.971293, -0.237677,
		0.986434, -0.029364, 0.161511,
		43.431976, 32.400173, 28.800940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859211, 31.890617, 29.152262>,  <42.741474, 32.420727, 28.687883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859211, 31.890617, 29.152262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.193672, 32.109161, 29.171583>,  <43.394348, 32.240288, 29.183176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.193672, 32.109161, 29.171583>,  <42.859211, 31.890617, 29.152262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193672, 32.109161, 29.171583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058034, -0.175702, 0.982731,
		0.545414, -0.818913, -0.178622,
		0.836155, 0.546361, 0.048306,
		43.444519, 32.273071, 29.186075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033428, 31.595345, 29.792011>,  <42.859211, 31.890617, 29.152262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033428, 31.595345, 29.792011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244034, 31.928156, 29.722143>,  <43.370396, 32.127842, 29.680223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244034, 31.928156, 29.722143>,  <43.033428, 31.595345, 29.792011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244034, 31.928156, 29.722143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031151, 0.224194, 0.974047,
		0.849595, -0.507409, 0.143960,
		0.526515, 0.832030, -0.174668,
		43.401989, 32.177765, 29.669743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546619, 31.644537, 30.268354>,  <43.033428, 31.595345, 29.792011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546619, 31.644537, 30.268354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.459927, 32.013355, 30.140066>,  <43.407909, 32.234646, 30.063093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.459927, 32.013355, 30.140066>,  <43.546619, 31.644537, 30.268354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459927, 32.013355, 30.140066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177504, 0.360273, 0.915803,
		0.959958, 0.141554, -0.241749,
		-0.216732, 0.922044, -0.320721,
		43.394909, 32.289970, 30.043850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040524, 32.019356, 30.618279>,  <43.546619, 31.644537, 30.268354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040524, 32.019356, 30.618279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779202, 32.293156, 30.488876>,  <43.622406, 32.457436, 30.411236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779202, 32.293156, 30.488876>,  <44.040524, 32.019356, 30.618279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779202, 32.293156, 30.488876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068578, 0.479045, 0.875107,
		0.753980, 0.549529, -0.359905,
		-0.653308, 0.684495, -0.323505,
		43.583210, 32.498505, 30.391825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322968, 32.675243, 30.720083>,  <44.040524, 32.019356, 30.618279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322968, 32.675243, 30.720083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923965, 32.703377, 30.722715>,  <43.684566, 32.720257, 30.724295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923965, 32.703377, 30.722715>,  <44.322968, 32.675243, 30.720083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923965, 32.703377, 30.722715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030890, 0.350501, 0.936053,
		0.063525, 0.933918, -0.351798,
		-0.997502, 0.070330, 0.006583,
		43.624714, 32.724476, 30.724689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151188, 33.287117, 31.139133>,  <44.322968, 32.675243, 30.720083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151188, 33.287117, 31.139133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791035, 33.114174, 31.119678>,  <43.574944, 33.010406, 31.108006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791035, 33.114174, 31.119678>,  <44.151188, 33.287117, 31.139133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791035, 33.114174, 31.119678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173531, 0.254347, 0.951417,
		-0.398985, 0.865084, -0.304039,
		-0.900387, -0.432362, -0.048638,
		43.520920, 32.984467, 31.105087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690182, 33.740673, 31.510019>,  <44.151188, 33.287117, 31.139133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690182, 33.740673, 31.510019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515953, 33.380749, 31.500046>,  <43.411415, 33.164795, 31.494061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515953, 33.380749, 31.500046>,  <43.690182, 33.740673, 31.510019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515953, 33.380749, 31.500046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259009, 0.098753, 0.960813,
		-0.862084, 0.424963, -0.276073,
		-0.435574, -0.899808, -0.024936,
		43.385281, 33.110806, 31.492565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979622, 33.841091, 31.840872>,  <43.690182, 33.740673, 31.510019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979622, 33.841091, 31.840872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059471, 33.450493, 31.873404>,  <43.107380, 33.216133, 31.892923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059471, 33.450493, 31.873404>,  <42.979622, 33.841091, 31.840872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059471, 33.450493, 31.873404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336295, 0.009684, 0.941707,
		-0.920357, -0.215335, -0.326456,
		0.199622, -0.976492, 0.081329,
		43.119358, 33.157547, 31.897802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307186, 33.517548, 32.032715>,  <42.979622, 33.841091, 31.840872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307186, 33.517548, 32.032715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609493, 33.279934, 32.142941>,  <42.790878, 33.137367, 32.209076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609493, 33.279934, 32.142941>,  <42.307186, 33.517548, 32.032715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609493, 33.279934, 32.142941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328898, 0.019541, 0.944163,
		-0.566247, -0.804205, -0.180607,
		0.755771, -0.594031, 0.275566,
		42.836224, 33.101727, 32.225609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959633, 33.049515, 32.539410>,  <42.307186, 33.517548, 32.032715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959633, 33.049515, 32.539410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352596, 32.993641, 32.588985>,  <42.588375, 32.960117, 32.618729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352596, 32.993641, 32.588985>,  <41.959633, 33.049515, 32.539410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352596, 32.993641, 32.588985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125918, -0.005394, 0.992026,
		-0.137905, -0.990181, -0.022888,
		0.982408, -0.139688, 0.123937,
		42.647320, 32.951736, 32.626167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985416, 32.497112, 32.982906>,  <41.959633, 33.049515, 32.539410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985416, 32.497112, 32.982906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.331753, 32.695271, 33.010895>,  <42.539555, 32.814167, 33.027687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.331753, 32.695271, 33.010895>,  <41.985416, 32.497112, 32.982906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331753, 32.695271, 33.010895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069764, -0.018947, 0.997384,
		0.495430, -0.868458, 0.018156,
		0.865842, 0.495401, 0.069974,
		42.591507, 32.843891, 33.031887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303772, 32.185921, 33.553268>,  <41.985416, 32.497112, 32.982906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303772, 32.185921, 33.553268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.503380, 32.530750, 33.517933>,  <42.623146, 32.737648, 33.496731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.503380, 32.530750, 33.517933>,  <42.303772, 32.185921, 33.553268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503380, 32.530750, 33.517933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084220, 0.053213, 0.995025,
		0.862488, -0.503978, -0.046049,
		0.499021, 0.862076, -0.088341,
		42.653088, 32.789371, 33.491432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879742, 32.168430, 33.985451>,  <42.303772, 32.185921, 33.553268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879742, 32.168430, 33.985451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852917, 32.562912, 33.924908>,  <42.836823, 32.799599, 33.888584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852917, 32.562912, 33.924908>,  <42.879742, 32.168430, 33.985451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852917, 32.562912, 33.924908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230842, 0.162915, 0.959255,
		0.970678, 0.029388, -0.238581,
		-0.067059, 0.986202, -0.151354,
		42.832798, 32.858772, 33.879501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448612, 32.382759, 34.341869>,  <42.879742, 32.168430, 33.985451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448612, 32.382759, 34.341869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188694, 32.684299, 34.302925>,  <43.032745, 32.865223, 34.279556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188694, 32.684299, 34.302925>,  <43.448612, 32.382759, 34.341869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188694, 32.684299, 34.302925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044242, 0.165386, 0.985236,
		0.758822, 0.635893, -0.140818,
		-0.649794, 0.753849, -0.097365,
		42.993755, 32.910454, 34.273716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848701, 33.040451, 34.461014>,  <43.448612, 32.382759, 34.341869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848701, 33.040451, 34.461014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463936, 33.128391, 34.525993>,  <43.233078, 33.181156, 34.564983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463936, 33.128391, 34.525993>,  <43.848701, 33.040451, 34.461014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463936, 33.128391, 34.525993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222266, 0.283078, 0.932987,
		0.159129, 0.933560, -0.321161,
		-0.961912, 0.219849, 0.162453,
		43.175362, 33.194347, 34.574730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555714, 33.434319, 34.486561>,  <43.848701, 33.040451, 34.461014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555714, 33.434319, 34.486561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711578, 33.755302, 34.667320>,  <44.805096, 33.947895, 34.775776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711578, 33.755302, 34.667320>,  <44.555714, 33.434319, 34.486561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711578, 33.755302, 34.667320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280942, 0.363723, -0.888131,
		-0.877060, 0.473030, -0.083716,
		0.389663, 0.802464, 0.451901,
		44.828476, 33.996040, 34.802891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262817, 34.083687, 34.209248>,  <44.555714, 33.434319, 34.486561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262817, 34.083687, 34.209248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611256, 34.184273, 34.377987>,  <44.820320, 34.244625, 34.479229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611256, 34.184273, 34.377987>,  <44.262817, 34.083687, 34.209248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611256, 34.184273, 34.377987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287723, 0.434810, -0.853321,
		-0.398002, 0.864701, 0.306410,
		0.871097, 0.251462, 0.421849,
		44.872585, 34.259712, 34.504543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286892, 34.778072, 34.167206>,  <44.262817, 34.083687, 34.209248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286892, 34.778072, 34.167206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664307, 34.652874, 34.210602>,  <44.890755, 34.577755, 34.236637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664307, 34.652874, 34.210602>,  <44.286892, 34.778072, 34.167206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664307, 34.652874, 34.210602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249850, 0.457377, -0.853453,
		0.217506, 0.832371, 0.509754,
		0.943539, -0.312993, 0.108486,
		44.947369, 34.558975, 34.243149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743858, 35.335323, 33.907997>,  <44.286892, 34.778072, 34.167206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743858, 35.335323, 33.907997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978535, 35.011421, 33.911564>,  <45.119343, 34.817078, 33.913704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978535, 35.011421, 33.911564>,  <44.743858, 35.335323, 33.907997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978535, 35.011421, 33.911564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374774, 0.261737, -0.889403,
		0.717867, 0.525152, 0.457037,
		0.586696, -0.809758, 0.008921,
		45.154545, 34.768494, 33.914242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328953, 35.603691, 33.819443>,  <44.743858, 35.335323, 33.907997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328953, 35.603691, 33.819443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360107, 35.217724, 33.719147>,  <45.378799, 34.986145, 33.658970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360107, 35.217724, 33.719147>,  <45.328953, 35.603691, 33.819443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360107, 35.217724, 33.719147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220090, 0.261941, -0.939653,
		0.972365, 0.018001, 0.232769,
		0.077886, -0.964916, -0.250741,
		45.383472, 34.928249, 33.643925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911442, 35.579292, 33.441147>,  <45.328953, 35.603691, 33.819443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911442, 35.579292, 33.441147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709251, 35.248295, 33.343372>,  <45.587936, 35.049698, 33.284706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709251, 35.248295, 33.343372>,  <45.911442, 35.579292, 33.441147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709251, 35.248295, 33.343372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294933, 0.100533, -0.950215,
		0.810871, -0.552402, 0.193238,
		-0.505473, -0.827494, -0.244441,
		45.557610, 35.000046, 33.270039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451046, 35.200378, 33.047600>,  <45.911442, 35.579292, 33.441147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451046, 35.200378, 33.047600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.074059, 35.097908, 32.961697>,  <45.847866, 35.036427, 32.910156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.074059, 35.097908, 32.961697>,  <46.451046, 35.200378, 33.047600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074059, 35.097908, 32.961697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128602, 0.315137, -0.940293,
		0.308550, -0.913820, -0.264065,
		-0.942475, -0.256168, -0.214754,
		45.791317, 35.021053, 32.897270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489601, 35.185097, 32.358936>,  <46.451046, 35.200378, 33.047600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489601, 35.185097, 32.358936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095280, 35.150871, 32.416729>,  <45.858688, 35.130337, 32.451405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095280, 35.150871, 32.416729>,  <46.489601, 35.185097, 32.358936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095280, 35.150871, 32.416729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163629, 0.296251, -0.940989,
		0.037707, -0.951270, -0.306045,
		-0.985801, -0.085560, 0.144485,
		45.799538, 35.125202, 32.460075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355858, 34.762688, 31.773540>,  <46.489601, 35.185097, 32.358936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355858, 34.762688, 31.773540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018688, 34.952194, 31.875540>,  <45.816387, 35.065899, 31.936739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018688, 34.952194, 31.875540>,  <46.355858, 34.762688, 31.773540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018688, 34.952194, 31.875540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085012, 0.350713, -0.932616,
		-0.531275, -0.807802, -0.255348,
		-0.842923, 0.473768, 0.254998,
		45.765812, 35.094326, 31.952040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812473, 34.624222, 31.355974>,  <46.355858, 34.762688, 31.773540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812473, 34.624222, 31.355974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702728, 34.983074, 31.494469>,  <45.636879, 35.198387, 31.577566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702728, 34.983074, 31.494469>,  <45.812473, 34.624222, 31.355974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702728, 34.983074, 31.494469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250560, 0.280921, -0.926446,
		-0.928409, -0.340939, 0.147710,
		-0.274367, 0.897131, 0.346236,
		45.620419, 35.252213, 31.598339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201233, 34.781185, 31.018326>,  <45.812473, 34.624222, 31.355974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201233, 34.781185, 31.018326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333748, 35.140724, 31.133091>,  <45.413258, 35.356449, 31.201950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333748, 35.140724, 31.133091>,  <45.201233, 34.781185, 31.018326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333748, 35.140724, 31.133091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161832, 0.353710, -0.921249,
		-0.929548, 0.258766, 0.262642,
		0.331287, 0.898849, 0.286913,
		45.433132, 35.410378, 31.219166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672535, 35.149448, 30.778851>,  <45.201233, 34.781185, 31.018326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672535, 35.149448, 30.778851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976410, 35.398438, 30.854107>,  <45.158733, 35.547832, 30.899261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976410, 35.398438, 30.854107>,  <44.672535, 35.149448, 30.778851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976410, 35.398438, 30.854107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306379, 0.597813, -0.740778,
		-0.573591, 0.505117, 0.644864,
		0.759688, 0.622476, 0.188143,
		45.204315, 35.585182, 30.910549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364426, 35.777924, 30.676237>,  <44.672535, 35.149448, 30.778851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364426, 35.777924, 30.676237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757957, 35.849049, 30.667561>,  <44.994076, 35.891724, 30.662355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757957, 35.849049, 30.667561>,  <44.364426, 35.777924, 30.676237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757957, 35.849049, 30.667561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103145, 0.463335, -0.880160,
		-0.146451, 0.868161, 0.474182,
		0.983826, 0.177810, -0.021691,
		45.053104, 35.902393, 30.661053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378716, 36.484131, 30.478287>,  <44.364426, 35.777924, 30.676237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378716, 36.484131, 30.478287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732975, 36.324303, 30.383652>,  <44.945530, 36.228405, 30.326872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732975, 36.324303, 30.383652>,  <44.378716, 36.484131, 30.478287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732975, 36.324303, 30.383652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113960, 0.306886, -0.944899,
		0.450159, 0.863808, 0.226258,
		0.885647, -0.399570, -0.236587,
		44.998669, 36.204433, 30.312675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604233, 36.921329, 30.120693>,  <44.378716, 36.484131, 30.478287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604233, 36.921329, 30.120693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789322, 36.582218, 30.017035>,  <44.900375, 36.378750, 29.954840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789322, 36.582218, 30.017035>,  <44.604233, 36.921329, 30.120693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789322, 36.582218, 30.017035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055280, 0.319351, -0.946022,
		0.884779, 0.423418, 0.194636,
		0.462720, -0.847781, -0.259149,
		44.928139, 36.327885, 29.939289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197056, 37.124077, 29.639980>,  <44.604233, 36.921329, 30.120693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197056, 37.124077, 29.639980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121349, 36.739040, 29.562418>,  <45.075924, 36.508018, 29.515881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.121349, 36.739040, 29.562418>,  <45.197056, 37.124077, 29.639980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121349, 36.739040, 29.562418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026034, 0.192484, -0.980955,
		0.981581, -0.190708, -0.011370,
		-0.189265, -0.962590, -0.193904,
		45.064571, 36.450264, 29.504248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570110, 36.994606, 29.071529>,  <45.197056, 37.124077, 29.639980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570110, 36.994606, 29.071529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.309128, 36.691475, 29.072262>,  <45.152538, 36.509598, 29.072702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.309128, 36.691475, 29.072262>,  <45.570110, 36.994606, 29.071529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309128, 36.691475, 29.072262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214799, 0.182612, -0.959434,
		0.726749, -0.626381, -0.281927,
		-0.652455, -0.757826, 0.001833,
		45.113392, 36.464127, 29.072811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822964, 36.638653, 28.516380>,  <45.570110, 36.994606, 29.071529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822964, 36.638653, 28.516380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461445, 36.483810, 28.589376>,  <45.244534, 36.390903, 28.633173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461445, 36.483810, 28.589376>,  <45.822964, 36.638653, 28.516380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461445, 36.483810, 28.589376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193079, -0.011725, -0.981113,
		0.381939, -0.921959, -0.064146,
		-0.903794, -0.387111, 0.182489,
		45.190308, 36.367676, 28.644123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714714, 36.167969, 27.962675>,  <45.822964, 36.638653, 28.516380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714714, 36.167969, 27.962675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350697, 36.240147, 28.111946>,  <45.132286, 36.283451, 28.201509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.350697, 36.240147, 28.111946>,  <45.714714, 36.167969, 27.962675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350697, 36.240147, 28.111946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344819, 0.170095, -0.923129,
		-0.230046, -0.968767, -0.092574,
		-0.910043, 0.180441, 0.373179,
		45.077682, 36.294281, 28.223900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257214, 35.666924, 27.686998>,  <45.714714, 36.167969, 27.962675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257214, 35.666924, 27.686998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.007698, 35.962147, 27.789879>,  <44.857990, 36.139282, 27.851606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.007698, 35.962147, 27.789879>,  <45.257214, 35.666924, 27.686998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007698, 35.962147, 27.789879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322152, 0.057031, -0.944968,
		-0.712112, -0.672320, 0.202192,
		-0.623790, 0.738060, 0.257202,
		44.820560, 36.183563, 27.867039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723129, 35.589050, 27.215816>,  <45.257214, 35.666924, 27.686998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723129, 35.589050, 27.215816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690403, 35.970249, 27.332502>,  <44.670765, 36.198971, 27.402514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690403, 35.970249, 27.332502>,  <44.723129, 35.589050, 27.215816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690403, 35.970249, 27.332502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173624, 0.274593, -0.945756,
		-0.981407, -0.128031, 0.142996,
		-0.081820, 0.952999, 0.291717,
		44.665855, 36.256149, 27.420017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.255745, 33.030888, 41.226330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876431, 32.913452, 41.178059>,  <41.648842, 32.842991, 41.149097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876431, 32.913452, 41.178059>,  <42.255745, 33.030888, 41.226330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876431, 32.913452, 41.178059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059872, 0.207930, -0.976310,
		0.311725, -0.933044, -0.179599,
		-0.948285, -0.293587, -0.120680,
		41.591946, 32.825378, 41.141853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327225, 32.748314, 40.585747>,  <42.255745, 33.030888, 41.226330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327225, 32.748314, 40.585747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930595, 32.780060, 40.626713>,  <41.692619, 32.799107, 40.651291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930595, 32.780060, 40.626713>,  <42.327225, 32.748314, 40.585747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930595, 32.780060, 40.626713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079223, 0.254084, -0.963932,
		-0.102521, -0.963921, -0.245655,
		-0.991571, 0.079362, 0.102414,
		41.633125, 32.803867, 40.657436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967167, 32.351307, 40.038067>,  <42.327225, 32.748314, 40.585747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967167, 32.351307, 40.038067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703213, 32.624256, 40.163868>,  <41.544838, 32.788025, 40.239349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703213, 32.624256, 40.163868>,  <41.967167, 32.351307, 40.038067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703213, 32.624256, 40.163868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295020, 0.149644, -0.943700,
		-0.691021, -0.715521, 0.102566,
		-0.659889, 0.682375, 0.314500,
		41.505245, 32.828968, 40.258217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318752, 32.201870, 39.620510>,  <41.967167, 32.351307, 40.038067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318752, 32.201870, 39.620510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241768, 32.563869, 39.772266>,  <41.195580, 32.781071, 39.863319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241768, 32.563869, 39.772266>,  <41.318752, 32.201870, 39.620510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241768, 32.563869, 39.772266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382343, 0.286909, -0.878349,
		-0.903755, -0.314104, 0.290802,
		-0.192459, 0.904999, 0.379391,
		41.184029, 32.835369, 39.886082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512699, 32.438515, 39.526318>,  <41.318752, 32.201870, 39.620510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512699, 32.438515, 39.526318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771049, 32.743095, 39.548309>,  <40.926060, 32.925846, 39.561504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771049, 32.743095, 39.548309>,  <40.512699, 32.438515, 39.526318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771049, 32.743095, 39.548309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323445, 0.338163, -0.883759,
		-0.691536, 0.553019, 0.464702,
		0.645880, 0.761456, 0.054981,
		40.964813, 32.971531, 39.564804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163017, 32.873646, 39.153816>,  <40.512699, 32.438515, 39.526318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163017, 32.873646, 39.153816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527962, 33.037148, 39.162846>,  <40.746929, 33.135250, 39.168262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527962, 33.037148, 39.162846>,  <40.163017, 32.873646, 39.153816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527962, 33.037148, 39.162846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121704, 0.323478, -0.938376,
		-0.390869, 0.853394, 0.344877,
		0.912365, 0.408755, 0.022576,
		40.801670, 33.159775, 39.169617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072193, 33.563423, 38.939510>,  <40.163017, 32.873646, 39.153816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072193, 33.563423, 38.939510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453697, 33.461910, 38.875088>,  <40.682598, 33.401001, 38.836433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453697, 33.461910, 38.875088>,  <40.072193, 33.563423, 38.939510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453697, 33.461910, 38.875088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084289, 0.288514, -0.953759,
		0.288514, 0.923231, 0.253781,
		0.953759, -0.253781, -0.161059,
		40.739826, 33.385777, 38.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304501, 34.061634, 38.421768>,  <40.072193, 33.563423, 38.939510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304501, 34.061634, 38.421768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597443, 33.789364, 38.429134>,  <40.773209, 33.626003, 38.433552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597443, 33.789364, 38.429134>,  <40.304501, 34.061634, 38.421768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597443, 33.789364, 38.429134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132696, 0.116146, -0.984328,
		0.667866, 0.723323, 0.175383,
		0.732357, -0.680672, 0.018412,
		40.817150, 33.585163, 38.434658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812271, 34.385559, 37.967842>,  <40.304501, 34.061634, 38.421768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812271, 34.385559, 37.967842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869495, 33.993179, 38.020424>,  <40.903831, 33.757751, 38.051971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869495, 33.993179, 38.020424>,  <40.812271, 34.385559, 37.967842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869495, 33.993179, 38.020424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094821, -0.118621, -0.988402,
		0.985161, 0.153867, 0.076044,
		0.143062, -0.980945, 0.131450,
		40.912415, 33.698895, 38.059860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508263, 34.209705, 37.574181>,  <40.812271, 34.385559, 37.967842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508263, 34.209705, 37.574181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276966, 33.887123, 37.623604>,  <41.138187, 33.693573, 37.653259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276966, 33.887123, 37.623604>,  <41.508263, 34.209705, 37.574181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276966, 33.887123, 37.623604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003771, -0.154086, -0.988050,
		0.815858, -0.570864, 0.092140,
		-0.578240, -0.806456, 0.123560,
		41.103493, 33.645187, 37.660671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594032, 33.811523, 36.966839>,  <41.508263, 34.209705, 37.574181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594032, 33.811523, 36.966839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245628, 33.676682, 37.109776>,  <41.036587, 33.595776, 37.195538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245628, 33.676682, 37.109776>,  <41.594032, 33.811523, 36.966839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245628, 33.676682, 37.109776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321723, -0.158276, -0.933511,
		0.371254, -0.928066, 0.029404,
		-0.871014, -0.337110, 0.357341,
		40.984325, 33.575550, 37.216976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491306, 33.294861, 36.535076>,  <41.594032, 33.811523, 36.966839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491306, 33.294861, 36.535076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131001, 33.343773, 36.701771>,  <40.914818, 33.373119, 36.801788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131001, 33.343773, 36.701771>,  <41.491306, 33.294861, 36.535076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131001, 33.343773, 36.701771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429422, -0.107242, -0.896714,
		-0.064961, -0.986684, 0.149111,
		-0.900764, 0.122283, 0.416737,
		40.860771, 33.380455, 36.826794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921906, 32.801311, 36.307678>,  <41.491306, 33.294861, 36.535076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921906, 32.801311, 36.307678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756359, 33.154942, 36.394520>,  <40.657032, 33.367119, 36.446625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756359, 33.154942, 36.394520>,  <40.921906, 32.801311, 36.307678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756359, 33.154942, 36.394520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453589, 0.006513, -0.891187,
		-0.789287, -0.467307, 0.398309,
		-0.413864, 0.884071, 0.217106,
		40.632198, 33.420162, 36.459652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773697, 32.449459, 35.690826>,  <40.921906, 32.801311, 36.307678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773697, 32.449459, 35.690826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489994, 32.247147, 35.494400>,  <40.319771, 32.125759, 35.376545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489994, 32.247147, 35.494400>,  <40.773697, 32.449459, 35.690826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489994, 32.247147, 35.494400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344134, -0.359535, 0.867356,
		-0.615246, 0.784169, 0.080946,
		-0.709256, -0.505781, -0.491061,
		40.277218, 32.095413, 35.347080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151054, 32.547852, 36.061253>,  <40.773697, 32.449459, 35.690826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151054, 32.547852, 36.061253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115170, 32.212261, 35.846565>,  <40.093639, 32.010906, 35.717754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115170, 32.212261, 35.846565>,  <40.151054, 32.547852, 36.061253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115170, 32.212261, 35.846565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445776, -0.448076, 0.774927,
		-0.890638, 0.308774, -0.333800,
		-0.089710, -0.838980, -0.536717,
		40.088257, 31.960567, 35.685551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435181, 32.335659, 36.030018>,  <40.151054, 32.547852, 36.061253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435181, 32.335659, 36.030018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627975, 32.000275, 35.928295>,  <39.743652, 31.799044, 35.867264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627975, 32.000275, 35.928295>,  <39.435181, 32.335659, 36.030018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627975, 32.000275, 35.928295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512122, -0.505092, 0.694703,
		-0.710930, -0.204602, -0.672842,
		0.481985, -0.838463, -0.254304,
		39.772572, 31.748735, 35.852005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982594, 31.864235, 35.958134>,  <39.435181, 32.335659, 36.030018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982594, 31.864235, 35.958134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315872, 31.649710, 36.012035>,  <39.515839, 31.520994, 36.044376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315872, 31.649710, 36.012035>,  <38.982594, 31.864235, 35.958134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315872, 31.649710, 36.012035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424784, -0.464724, 0.776911,
		-0.354046, -0.704556, -0.615022,
		0.833193, -0.536314, 0.134750,
		39.565830, 31.488815, 36.052460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757061, 31.165421, 36.157127>,  <38.982594, 31.864235, 35.958134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757061, 31.165421, 36.157127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142578, 31.157543, 36.263496>,  <39.373890, 31.152817, 36.327316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142578, 31.157543, 36.263496>,  <38.757061, 31.165421, 36.157127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142578, 31.157543, 36.263496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208919, -0.675460, 0.707182,
		0.165691, -0.737133, -0.655119,
		0.963794, -0.019693, 0.265919,
		39.431717, 31.151634, 36.343273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924488, 30.466261, 36.213692>,  <38.757061, 31.165421, 36.157127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924488, 30.466261, 36.213692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179642, 30.662580, 36.451084>,  <39.332733, 30.780373, 36.593521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179642, 30.662580, 36.451084>,  <38.924488, 30.466261, 36.213692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179642, 30.662580, 36.451084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313302, -0.538592, 0.782151,
		0.703523, -0.684861, -0.189792,
		0.637886, 0.490799, 0.593480,
		39.371006, 30.809820, 36.629128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076355, 29.933592, 36.703510>,  <38.924488, 30.466261, 36.213692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076355, 29.933592, 36.703510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210552, 30.273928, 36.865257>,  <39.291069, 30.478130, 36.962307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210552, 30.273928, 36.865257>,  <39.076355, 29.933592, 36.703510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210552, 30.273928, 36.865257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136762, -0.380711, 0.914525,
		0.932063, -0.362118, -0.011362,
		0.335492, 0.850841, 0.404370,
		39.311199, 30.529181, 36.986568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710278, 29.875504, 37.136089>,  <39.076355, 29.933592, 36.703510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710278, 29.875504, 37.136089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514034, 30.201332, 37.259876>,  <39.396286, 30.396830, 37.334148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514034, 30.201332, 37.259876>,  <39.710278, 29.875504, 37.136089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514034, 30.201332, 37.259876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273137, -0.481011, 0.833081,
		0.827465, 0.324190, 0.458479,
		-0.490610, 0.814573, 0.309471,
		39.366852, 30.445704, 37.352718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628117, 29.682648, 37.717766>,  <39.710278, 29.875504, 37.136089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628117, 29.682648, 37.717766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403347, 30.012901, 37.738075>,  <39.268486, 30.211054, 37.750259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403347, 30.012901, 37.738075>,  <39.628117, 29.682648, 37.717766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403347, 30.012901, 37.738075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577348, -0.435414, 0.690713,
		0.592381, 0.358812, 0.721344,
		-0.561920, 0.825632, 0.050771,
		39.234772, 30.260592, 37.753307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744972, 29.863615, 38.386765>,  <39.628117, 29.682648, 37.717766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744972, 29.863615, 38.386765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409824, 30.023180, 38.237717>,  <39.208736, 30.118919, 38.148289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409824, 30.023180, 38.237717>,  <39.744972, 29.863615, 38.386765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409824, 30.023180, 38.237717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515139, -0.352004, 0.781490,
		0.180582, 0.846736, 0.500427,
		-0.837868, 0.398913, -0.372621,
		39.158463, 30.142855, 38.125931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459141, 30.095200, 38.987396>,  <39.744972, 29.863615, 38.386765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459141, 30.095200, 38.987396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168606, 30.080795, 38.712837>,  <38.994286, 30.072153, 38.548103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168606, 30.080795, 38.712837>,  <39.459141, 30.095200, 38.987396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168606, 30.080795, 38.712837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644918, -0.309703, 0.698688,
		-0.237740, 0.950151, 0.201724,
		-0.726334, -0.036011, -0.686398,
		38.950706, 30.069992, 38.506916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885590, 30.487495, 39.212055>,  <39.459141, 30.095200, 38.987396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885590, 30.487495, 39.212055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745125, 30.197897, 38.974564>,  <38.660847, 30.024137, 38.832069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745125, 30.197897, 38.974564>,  <38.885590, 30.487495, 39.212055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745125, 30.197897, 38.974564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755242, -0.155799, 0.636660,
		-0.553442, 0.671980, -0.492082,
		-0.351157, -0.723996, -0.593733,
		38.639778, 29.980698, 38.796444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175526, 30.400352, 39.497635>,  <38.885590, 30.487495, 39.212055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175526, 30.400352, 39.497635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216484, 30.087925, 39.251236>,  <38.241058, 29.900469, 39.103397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216484, 30.087925, 39.251236>,  <38.175526, 30.400352, 39.497635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216484, 30.087925, 39.251236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338218, -0.609692, 0.716857,
		-0.935481, 0.134939, -0.326600,
		0.102393, -0.781068, -0.615994,
		38.247204, 29.853605, 39.066437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524891, 29.971647, 39.714256>,  <38.175526, 30.400352, 39.497635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524891, 29.971647, 39.714256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795658, 29.758760, 39.510876>,  <37.958118, 29.631029, 39.388847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795658, 29.758760, 39.510876>,  <37.524891, 29.971647, 39.714256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795658, 29.758760, 39.510876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104587, -0.753319, 0.649286,
		-0.728589, -0.386337, -0.565599,
		0.676919, -0.532216, -0.508454,
		37.998734, 29.599094, 39.358337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204449, 29.259024, 39.686962>,  <37.524891, 29.971647, 39.714256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204449, 29.259024, 39.686962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602280, 29.242950, 39.648586>,  <37.840977, 29.233307, 39.625561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602280, 29.242950, 39.648586>,  <37.204449, 29.259024, 39.686962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602280, 29.242950, 39.648586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035261, -0.737512, 0.674412,
		-0.097857, -0.674137, -0.732095,
		0.994576, -0.040181, -0.095942,
		37.900654, 29.230896, 39.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990898, 28.588575, 39.405426>,  <37.204449, 29.259024, 39.686962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990898, 28.588575, 39.405426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611900, 28.470024, 39.453457>,  <36.384502, 28.398893, 39.482277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611900, 28.470024, 39.453457>,  <36.990898, 28.588575, 39.405426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611900, 28.470024, 39.453457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285972, 0.617276, -0.732933,
		0.143105, -0.728787, -0.669620,
		-0.947492, -0.296379, 0.120077,
		36.327652, 28.381111, 39.489479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704742, 28.449026, 38.750828>,  <36.990898, 28.588575, 39.405426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704742, 28.449026, 38.750828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391228, 28.535669, 38.983639>,  <36.203117, 28.587656, 39.123325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391228, 28.535669, 38.983639>,  <36.704742, 28.449026, 38.750828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391228, 28.535669, 38.983639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354008, 0.614188, -0.705303,
		-0.510248, -0.758851, -0.404712,
		-0.783789, 0.216608, 0.582027,
		36.156090, 28.600653, 39.158245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156094, 28.461079, 38.269585>,  <36.704742, 28.449026, 38.750828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156094, 28.461079, 38.269585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027298, 28.658369, 38.592831>,  <35.950020, 28.776743, 38.786777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027298, 28.658369, 38.592831>,  <36.156094, 28.461079, 38.269585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027298, 28.658369, 38.592831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468152, 0.658965, -0.588726,
		-0.822896, -0.567883, 0.018727,
		-0.321987, 0.493227, 0.808116,
		35.930702, 28.806337, 38.835266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627544, 28.770596, 37.938889>,  <36.156094, 28.461079, 38.269585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627544, 28.770596, 37.938889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670513, 28.954788, 38.291348>,  <35.696293, 29.065304, 38.502823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670513, 28.954788, 38.291348>,  <35.627544, 28.770596, 37.938889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670513, 28.954788, 38.291348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320117, 0.855096, -0.407843,
		-0.941268, -0.238258, 0.239265,
		0.107422, 0.460482, 0.881145,
		35.702740, 29.092934, 38.555691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999031, 29.085388, 38.039711>,  <35.627544, 28.770596, 37.938889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999031, 29.085388, 38.039711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266247, 29.273996, 38.269974>,  <35.426579, 29.387161, 38.408131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266247, 29.273996, 38.269974>,  <34.999031, 29.085388, 38.039711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266247, 29.273996, 38.269974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315911, 0.880147, -0.354318,
		-0.673735, 0.054842, 0.736935,
		0.668043, 0.471523, 0.575661,
		35.466660, 29.415453, 38.442673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667683, 29.651257, 38.330765>,  <34.999031, 29.085388, 38.039711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667683, 29.651257, 38.330765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055870, 29.746569, 38.345848>,  <35.288780, 29.803755, 38.354897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055870, 29.746569, 38.345848>,  <34.667683, 29.651257, 38.330765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055870, 29.746569, 38.345848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202758, 0.890315, -0.407710,
		-0.130722, 0.388022, 0.912332,
		0.970464, 0.238279, 0.037710,
		35.347008, 29.818052, 38.357162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622295, 30.257307, 38.781845>,  <34.667683, 29.651257, 38.330765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622295, 30.257307, 38.781845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930992, 30.243357, 38.527855>,  <35.116211, 30.234987, 38.375462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930992, 30.243357, 38.527855>,  <34.622295, 30.257307, 38.781845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930992, 30.243357, 38.527855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235863, 0.911581, -0.336734,
		0.590577, 0.409640, 0.695281,
		0.771744, -0.034876, -0.634977,
		35.162514, 30.232893, 38.337360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984184, 30.791941, 38.907658>,  <34.622295, 30.257307, 38.781845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984184, 30.791941, 38.907658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099594, 30.703775, 38.534954>,  <35.168842, 30.650875, 38.311333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099594, 30.703775, 38.534954>,  <34.984184, 30.791941, 38.907658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099594, 30.703775, 38.534954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157196, 0.949032, -0.273180,
		0.944479, 0.225289, 0.239174,
		0.288528, -0.220416, -0.931756,
		35.186153, 30.637651, 38.255428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311199, 31.369385, 38.706795>,  <34.984184, 30.791941, 38.907658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311199, 31.369385, 38.706795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282425, 31.176765, 38.357410>,  <35.265160, 31.061193, 38.147781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282425, 31.176765, 38.357410>,  <35.311199, 31.369385, 38.706795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282425, 31.176765, 38.357410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148345, 0.871156, -0.468060,
		0.986316, 0.095902, -0.134106,
		-0.071939, -0.481549, -0.873461,
		35.260841, 31.032301, 38.095371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757160, 31.685312, 38.239201>,  <35.311199, 31.369385, 38.706795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757160, 31.685312, 38.239201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508923, 31.513012, 37.977112>,  <35.359978, 31.409632, 37.819859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508923, 31.513012, 37.977112>,  <35.757160, 31.685312, 38.239201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508923, 31.513012, 37.977112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010920, 0.840266, -0.542064,
		0.784052, -0.329249, -0.526172,
		-0.620599, -0.430752, -0.655217,
		35.322742, 31.383785, 37.780548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990711, 31.928925, 37.560707>,  <35.757160, 31.685312, 38.239201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990711, 31.928925, 37.560707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611286, 31.827383, 37.485035>,  <35.383633, 31.766459, 37.439632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611286, 31.827383, 37.485035>,  <35.990711, 31.928925, 37.560707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611286, 31.827383, 37.485035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075857, 0.762385, -0.642662,
		0.307371, -0.595254, -0.742426,
		-0.948561, -0.253854, -0.189181,
		35.326717, 31.751226, 37.428280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926704, 32.082066, 36.798801>,  <35.990711, 31.928925, 37.560707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926704, 32.082066, 36.798801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554710, 32.057281, 36.943741>,  <35.331516, 32.042412, 37.030704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554710, 32.057281, 36.943741>,  <35.926704, 32.082066, 36.798801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554710, 32.057281, 36.943741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301936, 0.691003, -0.656772,
		-0.209686, -0.720191, -0.661329,
		-0.929982, -0.061963, 0.362346,
		35.275715, 32.038692, 37.052444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.735165, 26.083958, 42.246319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391811, 26.268360, 42.336338>,  <37.185799, 26.379002, 42.390350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391811, 26.268360, 42.336338>,  <37.735165, 26.083958, 42.246319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391811, 26.268360, 42.336338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212850, 0.079100, -0.973878,
		-0.466768, -0.883863, 0.030228,
		-0.858384, 0.461009, 0.225051,
		37.134296, 26.406662, 42.403854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272198, 25.742155, 41.836502>,  <37.735165, 26.083958, 42.246319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272198, 25.742155, 41.836502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114235, 26.094412, 41.941204>,  <37.019455, 26.305765, 42.004025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114235, 26.094412, 41.941204>,  <37.272198, 25.742155, 41.836502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114235, 26.094412, 41.941204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200908, 0.195239, -0.959957,
		-0.896483, -0.431687, 0.099826,
		-0.394912, 0.880641, 0.261758,
		36.995762, 26.358604, 42.019730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619263, 25.821484, 41.459217>,  <37.272198, 25.742155, 41.836502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619263, 25.821484, 41.459217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.704296, 26.200621, 41.554207>,  <36.755318, 26.428102, 41.611202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.704296, 26.200621, 41.554207>,  <36.619263, 25.821484, 41.459217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704296, 26.200621, 41.554207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228175, 0.284469, -0.931136,
		-0.950128, 0.143762, 0.276749,
		0.212588, 0.947845, 0.237479,
		36.768074, 26.484974, 41.625450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963535, 26.182127, 41.300816>,  <36.619263, 25.821484, 41.459217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963535, 26.182127, 41.300816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251202, 26.460028, 41.305241>,  <36.423801, 26.626768, 41.307896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251202, 26.460028, 41.305241>,  <35.963535, 26.182127, 41.300816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251202, 26.460028, 41.305241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415314, 0.442566, -0.794764,
		-0.557063, 0.566968, 0.606818,
		0.719163, 0.694754, 0.011067,
		36.466949, 26.668453, 41.308559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611736, 26.873865, 41.093987>,  <35.963535, 26.182127, 41.300816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611736, 26.873865, 41.093987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001152, 26.960056, 41.063564>,  <36.234802, 27.011772, 41.045311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001152, 26.960056, 41.063564>,  <35.611736, 26.873865, 41.093987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001152, 26.960056, 41.063564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187310, 0.561859, -0.805747,
		-0.130887, 0.798676, 0.587355,
		0.973542, 0.215479, -0.076060,
		36.293213, 27.024700, 41.040745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628723, 27.621185, 41.102333>,  <35.611736, 26.873865, 41.093987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628723, 27.621185, 41.102333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962158, 27.501049, 40.916893>,  <36.162220, 27.428967, 40.805630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962158, 27.501049, 40.916893>,  <35.628723, 27.621185, 41.102333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962158, 27.501049, 40.916893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143990, 0.692110, -0.707284,
		0.533291, 0.656337, 0.533688,
		0.833587, -0.300342, -0.463602,
		36.212234, 27.410946, 40.777813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810249, 28.178928, 40.859589>,  <35.628723, 27.621185, 41.102333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810249, 28.178928, 40.859589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046761, 27.934891, 40.648621>,  <36.188667, 27.788467, 40.522038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046761, 27.934891, 40.648621>,  <35.810249, 28.178928, 40.859589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046761, 27.934891, 40.648621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067096, 0.614510, -0.786051,
		0.803672, 0.500162, 0.322411,
		0.591278, -0.610094, -0.527423,
		36.224144, 27.751862, 40.490395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462646, 28.438467, 40.608166>,  <35.810249, 28.178928, 40.859589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462646, 28.438467, 40.608166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374844, 28.143454, 40.352711>,  <36.322163, 27.966446, 40.199436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374844, 28.143454, 40.352711>,  <36.462646, 28.438467, 40.608166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374844, 28.143454, 40.352711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023728, 0.650374, -0.759244,
		0.975321, -0.181816, -0.125264,
		-0.219511, -0.737534, -0.638638,
		36.308990, 27.922194, 40.161118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780144, 28.707523, 40.105438>,  <36.462646, 28.438467, 40.608166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780144, 28.707523, 40.105438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527660, 28.432743, 39.961391>,  <36.376171, 28.267876, 39.874966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527660, 28.432743, 39.961391>,  <36.780144, 28.707523, 40.105438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527660, 28.432743, 39.961391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183569, 0.583415, -0.791156,
		0.753580, -0.433275, -0.494357,
		-0.631204, -0.686949, -0.360114,
		36.338299, 28.226658, 39.853359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432049, 28.391653, 39.943130>,  <36.780144, 28.707523, 40.105438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432049, 28.391653, 39.943130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778423, 28.588091, 39.905239>,  <37.986248, 28.705954, 39.882504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778423, 28.588091, 39.905239>,  <37.432049, 28.391653, 39.943130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778423, 28.588091, 39.905239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268621, -0.296899, 0.916348,
		0.421888, -0.818949, -0.389015,
		0.865941, 0.491094, -0.094728,
		38.038204, 28.735418, 39.876820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936913, 27.944798, 40.086853>,  <37.432049, 28.391653, 39.943130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936913, 27.944798, 40.086853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121246, 28.294828, 40.146008>,  <38.231846, 28.504847, 40.181499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121246, 28.294828, 40.146008>,  <37.936913, 27.944798, 40.086853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121246, 28.294828, 40.146008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468396, -0.381352, 0.796979,
		0.753816, -0.298006, -0.585623,
		0.460833, 0.875079, 0.147885,
		38.259495, 28.557352, 40.190372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713223, 27.728218, 40.222786>,  <37.936913, 27.944798, 40.086853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713223, 27.728218, 40.222786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679161, 28.105824, 40.350273>,  <38.658722, 28.332388, 40.426765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679161, 28.105824, 40.350273>,  <38.713223, 27.728218, 40.222786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679161, 28.105824, 40.350273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566348, -0.217320, 0.794998,
		0.819755, 0.248206, -0.516135,
		-0.085157, 0.944016, 0.318720,
		38.653614, 28.389029, 40.445889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343849, 27.837376, 40.554592>,  <38.713223, 27.728218, 40.222786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343849, 27.837376, 40.554592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107250, 28.129862, 40.690510>,  <38.965290, 28.305353, 40.772060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107250, 28.129862, 40.690510>,  <39.343849, 27.837376, 40.554592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107250, 28.129862, 40.690510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460907, -0.039151, 0.886584,
		0.661587, 0.681022, -0.313865,
		-0.591495, 0.731216, 0.339790,
		38.929802, 28.349226, 40.792446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734921, 28.435658, 40.803471>,  <39.343849, 27.837376, 40.554592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734921, 28.435658, 40.803471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384647, 28.459703, 40.995125>,  <39.174484, 28.474131, 41.110119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.384647, 28.459703, 40.995125>,  <39.734921, 28.435658, 40.803471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384647, 28.459703, 40.995125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479091, -0.016091, 0.877618,
		0.060467, 0.998062, -0.014709,
		-0.875680, 0.060114, 0.479135,
		39.121944, 28.477737, 41.138866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788074, 28.965403, 41.275494>,  <39.734921, 28.435658, 40.803471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788074, 28.965403, 41.275494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496788, 28.746359, 41.440331>,  <39.322014, 28.614933, 41.539234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496788, 28.746359, 41.440331>,  <39.788074, 28.965403, 41.275494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496788, 28.746359, 41.440331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542096, -0.092354, 0.835226,
		-0.419318, 0.831622, 0.364110,
		-0.728220, -0.547608, 0.412093,
		39.278320, 28.582077, 41.563957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809238, 29.099911, 42.054405>,  <39.788074, 28.965403, 41.275494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809238, 29.099911, 42.054405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591515, 28.764591, 42.041862>,  <39.460880, 28.563400, 42.034336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591515, 28.764591, 42.041862>,  <39.809238, 29.099911, 42.054405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591515, 28.764591, 42.041862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352619, -0.262552, 0.898180,
		-0.761173, 0.477834, 0.438509,
		-0.544312, -0.838297, -0.031354,
		39.428223, 28.513102, 42.032455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501598, 29.036648, 42.647610>,  <39.809238, 29.099911, 42.054405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501598, 29.036648, 42.647610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511070, 28.655510, 42.526596>,  <39.516754, 28.426826, 42.453987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511070, 28.655510, 42.526596>,  <39.501598, 29.036648, 42.647610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511070, 28.655510, 42.526596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211493, -0.290996, 0.933055,
		-0.977093, -0.086078, 0.194629,
		0.023679, -0.952844, -0.302535,
		39.518173, 28.369658, 42.435837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066444, 28.621487, 43.109955>,  <39.501598, 29.036648, 42.647610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066444, 28.621487, 43.109955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.310032, 28.356533, 42.935413>,  <39.456184, 28.197561, 42.830688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.310032, 28.356533, 42.935413>,  <39.066444, 28.621487, 43.109955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310032, 28.356533, 42.935413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251341, -0.360634, 0.898204,
		-0.752322, -0.656650, -0.053129,
		0.608966, -0.662385, -0.436356,
		39.492722, 28.157818, 42.804508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888664, 28.039906, 43.447514>,  <39.066444, 28.621487, 43.109955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888664, 28.039906, 43.447514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246292, 27.988911, 43.275757>,  <39.460869, 27.958313, 43.172703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246292, 27.988911, 43.275757>,  <38.888664, 28.039906, 43.447514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246292, 27.988911, 43.275757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361518, -0.360605, 0.859807,
		-0.264457, -0.923965, -0.276319,
		0.894074, -0.127488, -0.429394,
		39.514515, 27.950665, 43.146938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117855, 27.285660, 43.666737>,  <38.888664, 28.039906, 43.447514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117855, 27.285660, 43.666737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456875, 27.456879, 43.541241>,  <39.660286, 27.559610, 43.465942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456875, 27.456879, 43.541241>,  <39.117855, 27.285660, 43.666737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456875, 27.456879, 43.541241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520507, -0.555058, 0.648833,
		0.103586, -0.713223, -0.693240,
		0.847551, 0.428046, -0.313741,
		39.711140, 27.585293, 43.447117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640766, 26.762514, 43.838997>,  <39.117855, 27.285660, 43.666737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640766, 26.762514, 43.838997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.837715, 27.105345, 43.778351>,  <39.955883, 27.311043, 43.741962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.837715, 27.105345, 43.778351>,  <39.640766, 26.762514, 43.838997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837715, 27.105345, 43.778351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701823, -0.287922, 0.651572,
		0.514795, -0.427222, -0.743282,
		0.492373, 0.857077, -0.151613,
		39.985428, 27.362469, 43.732868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397789, 26.623241, 43.853977>,  <39.640766, 26.762514, 43.838997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397789, 26.623241, 43.853977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333923, 27.004328, 43.957390>,  <40.295605, 27.232979, 44.019440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333923, 27.004328, 43.957390>,  <40.397789, 26.623241, 43.853977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333923, 27.004328, 43.957390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694988, -0.077506, 0.714832,
		0.701069, 0.293813, -0.649751,
		-0.159667, 0.952716, 0.258533,
		40.286022, 27.290142, 44.034950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055332, 26.841406, 43.891712>,  <40.397789, 26.623241, 43.853977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055332, 26.841406, 43.891712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811184, 27.082598, 44.097183>,  <40.664696, 27.227312, 44.220467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.811184, 27.082598, 44.097183>,  <41.055332, 26.841406, 43.891712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811184, 27.082598, 44.097183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600590, -0.070527, 0.796441,
		0.516464, 0.794634, -0.319094,
		-0.610375, 0.602978, 0.513674,
		40.628071, 27.263491, 44.251286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.122810, 32.063526, 46.661636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.303993, 31.764954, 46.466629>,  <35.412701, 31.585810, 46.349625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.303993, 31.764954, 46.466629>,  <35.122810, 32.063526, 46.661636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303993, 31.764954, 46.466629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098464, 0.501600, -0.859478,
		0.886080, 0.437307, 0.153705,
		0.452954, -0.746432, -0.487516,
		35.439880, 31.541023, 46.320374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456509, 32.355221, 46.227047>,  <35.122810, 32.063526, 46.661636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456509, 32.355221, 46.227047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440559, 31.984951, 46.076565>,  <35.430992, 31.762789, 45.986275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.440559, 31.984951, 46.076565>,  <35.456509, 32.355221, 46.227047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440559, 31.984951, 46.076565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090472, 0.378302, -0.921251,
		0.995101, -0.002695, -0.098831,
		-0.039871, -0.925679, -0.376204,
		35.428596, 31.707247, 45.963703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036968, 32.289463, 45.690147>,  <35.456509, 32.355221, 46.227047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036968, 32.289463, 45.690147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768124, 32.003532, 45.612907>,  <35.606819, 31.831972, 45.566563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768124, 32.003532, 45.612907>,  <36.036968, 32.289463, 45.690147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768124, 32.003532, 45.612907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044889, 0.299646, -0.952994,
		0.739092, -0.631846, -0.233482,
		-0.672107, -0.714831, -0.193103,
		35.566490, 31.789083, 45.554977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222176, 31.955000, 45.107723>,  <36.036968, 32.289463, 45.690147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222176, 31.955000, 45.107723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830021, 31.877502, 45.122169>,  <35.594727, 31.831005, 45.130836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.830021, 31.877502, 45.122169>,  <36.222176, 31.955000, 45.107723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830021, 31.877502, 45.122169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082715, 0.238157, -0.967698,
		0.178880, -0.951707, -0.249511,
		-0.980388, -0.193740, 0.036119,
		35.535904, 31.819380, 45.133003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038471, 31.456045, 44.617897>,  <36.222176, 31.955000, 45.107723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038471, 31.456045, 44.617897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691730, 31.642286, 44.689205>,  <35.483685, 31.754030, 44.731991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691730, 31.642286, 44.689205>,  <36.038471, 31.456045, 44.617897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691730, 31.642286, 44.689205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001985, 0.360786, -0.932647,
		-0.498558, -0.808115, -0.313673,
		-0.866854, 0.465601, 0.178268,
		35.431675, 31.781967, 44.742687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632931, 31.373713, 44.064354>,  <36.038471, 31.456045, 44.617897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632931, 31.373713, 44.064354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439663, 31.678308, 44.237179>,  <35.323700, 31.861067, 44.340874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.439663, 31.678308, 44.237179>,  <35.632931, 31.373713, 44.064354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439663, 31.678308, 44.237179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234676, 0.362790, -0.901838,
		-0.843487, -0.537138, 0.003413,
		-0.483173, 0.761489, 0.432062,
		35.294712, 31.906755, 44.366798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988892, 31.302952, 43.836090>,  <35.632931, 31.373713, 44.064354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988892, 31.302952, 43.836090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012653, 31.678860, 43.970730>,  <35.026909, 31.904406, 44.051514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012653, 31.678860, 43.970730>,  <34.988892, 31.302952, 43.836090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012653, 31.678860, 43.970730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424332, 0.328989, -0.843628,
		-0.903556, -0.092720, 0.418317,
		0.059401, 0.939771, 0.336604,
		35.030472, 31.960791, 44.071712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328705, 31.572784, 43.538715>,  <34.988892, 31.302952, 43.836090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328705, 31.572784, 43.538715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542484, 31.892603, 43.648323>,  <34.670753, 32.084496, 43.714088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.542484, 31.892603, 43.648323>,  <34.328705, 31.572784, 43.538715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542484, 31.892603, 43.648323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373521, 0.514260, -0.772022,
		-0.758185, 0.310256, 0.573495,
		0.534450, 0.799548, 0.274017,
		34.702820, 32.132469, 43.730530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862396, 32.110294, 43.401695>,  <34.328705, 31.572784, 43.538715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862396, 32.110294, 43.401695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235359, 32.254715, 43.395157>,  <34.459137, 32.341366, 43.391235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.235359, 32.254715, 43.395157>,  <33.862396, 32.110294, 43.401695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235359, 32.254715, 43.395157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213553, 0.513882, -0.830855,
		-0.291581, 0.778182, 0.556249,
		0.932403, 0.361050, -0.016345,
		34.515079, 32.363029, 43.390255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771122, 32.872971, 43.208282>,  <33.862396, 32.110294, 43.401695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771122, 32.872971, 43.208282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154797, 32.793427, 43.127872>,  <34.385002, 32.745701, 43.079628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154797, 32.793427, 43.127872>,  <33.771122, 32.872971, 43.208282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154797, 32.793427, 43.127872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045246, 0.593821, -0.803324,
		0.279118, 0.779636, 0.560590,
		0.959190, -0.198857, -0.201022,
		34.442554, 32.733768, 43.067566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060619, 33.531483, 43.088455>,  <33.771122, 32.872971, 43.208282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060619, 33.531483, 43.088455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312534, 33.262329, 42.933228>,  <34.463684, 33.100838, 42.840092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.312534, 33.262329, 42.933228>,  <34.060619, 33.531483, 43.088455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312534, 33.262329, 42.933228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084397, 0.555908, -0.826948,
		0.772172, 0.488047, 0.406892,
		0.629784, -0.672886, -0.388066,
		34.501469, 33.060463, 42.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617928, 33.906796, 42.870651>,  <34.060619, 33.531483, 43.088455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617928, 33.906796, 42.870651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656227, 33.567223, 42.662750>,  <34.679207, 33.363480, 42.538010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656227, 33.567223, 42.662750>,  <34.617928, 33.906796, 42.870651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656227, 33.567223, 42.662750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242289, 0.526324, -0.815034,
		0.965468, -0.047888, 0.256084,
		0.095753, -0.848935, -0.519751,
		34.684952, 33.312542, 42.506824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223869, 33.948311, 42.599220>,  <34.617928, 33.906796, 42.870651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223869, 33.948311, 42.599220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004555, 33.690712, 42.385811>,  <34.872967, 33.536152, 42.257767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004555, 33.690712, 42.385811>,  <35.223869, 33.948311, 42.599220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004555, 33.690712, 42.385811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269457, 0.467900, -0.841702,
		0.791691, -0.605255, -0.083013,
		-0.548286, -0.644000, -0.533522,
		34.840069, 33.497513, 42.225754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661552, 33.736649, 42.046444>,  <35.223869, 33.948311, 42.599220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661552, 33.736649, 42.046444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278660, 33.675198, 41.948376>,  <35.048923, 33.638325, 41.889534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278660, 33.675198, 41.948376>,  <35.661552, 33.736649, 42.046444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278660, 33.675198, 41.948376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127840, 0.535588, -0.834747,
		0.259551, -0.830388, -0.493041,
		-0.957230, -0.153629, -0.245170,
		34.991489, 33.629108, 41.874825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243912, 33.321423, 41.631500>,  <35.661552, 33.736649, 42.046444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243912, 33.321423, 41.631500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643246, 33.324917, 41.608700>,  <36.882847, 33.327015, 41.595020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643246, 33.324917, 41.608700>,  <36.243912, 33.321423, 41.631500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643246, 33.324917, 41.608700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057520, -0.222194, 0.973304,
		-0.004163, -0.974963, -0.222327,
		0.998336, 0.008737, -0.057005,
		36.942745, 33.327538, 41.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381378, 32.856064, 42.081497>,  <36.243912, 33.321423, 41.631500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381378, 32.856064, 42.081497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739861, 33.030983, 42.051571>,  <36.954948, 33.135933, 42.033615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739861, 33.030983, 42.051571>,  <36.381378, 32.856064, 42.081497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739861, 33.030983, 42.051571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230271, -0.314367, 0.920950,
		0.379208, -0.842584, -0.382432,
		0.896201, 0.437294, -0.074812,
		37.008720, 33.162170, 42.029129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935219, 32.390846, 42.073505>,  <36.381378, 32.856064, 42.081497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935219, 32.390846, 42.073505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086834, 32.738407, 42.200840>,  <37.177803, 32.946945, 42.277241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.086834, 32.738407, 42.200840>,  <36.935219, 32.390846, 42.073505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086834, 32.738407, 42.200840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322181, -0.446398, 0.834822,
		0.867486, -0.213864, -0.449144,
		0.379035, 0.868902, 0.318341,
		37.200546, 32.999077, 42.296341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540928, 32.187801, 42.339676>,  <36.935219, 32.390846, 42.073505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540928, 32.187801, 42.339676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504715, 32.557011, 42.489254>,  <37.482986, 32.778534, 42.579002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504715, 32.557011, 42.489254>,  <37.540928, 32.187801, 42.339676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504715, 32.557011, 42.489254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485968, -0.286804, 0.825578,
		0.869275, 0.256469, -0.422592,
		-0.090534, 0.923021, 0.373948,
		37.477554, 32.833916, 42.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230991, 32.354874, 42.582851>,  <37.540928, 32.187801, 42.339676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230991, 32.354874, 42.582851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967579, 32.586258, 42.775398>,  <37.809532, 32.725090, 42.890926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967579, 32.586258, 42.775398>,  <38.230991, 32.354874, 42.582851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967579, 32.586258, 42.775398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522132, -0.109439, 0.845814,
		0.541949, 0.808337, -0.229963,
		-0.658536, 0.578459, 0.481369,
		37.770020, 32.759796, 42.919807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633636, 32.712597, 43.035355>,  <38.230991, 32.354874, 42.582851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633636, 32.712597, 43.035355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.271259, 32.735584, 43.203148>,  <38.053833, 32.749374, 43.303822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.271259, 32.735584, 43.203148>,  <38.633636, 32.712597, 43.035355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271259, 32.735584, 43.203148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418452, -0.029472, 0.907761,
		0.064529, 0.997912, 0.002653,
		-0.905944, 0.057467, 0.419480,
		37.999477, 32.752823, 43.328991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697304, 33.122971, 43.625507>,  <38.633636, 32.712597, 43.035355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697304, 33.122971, 43.625507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.364712, 32.931255, 43.737877>,  <38.165157, 32.816227, 43.805298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.364712, 32.931255, 43.737877>,  <38.697304, 33.122971, 43.625507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364712, 32.931255, 43.737877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355470, -0.070399, 0.932033,
		-0.426937, 0.874829, 0.228909,
		-0.831484, -0.479289, 0.280919,
		38.115265, 32.787468, 43.822151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588192, 33.358688, 44.334732>,  <38.697304, 33.122971, 43.625507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588192, 33.358688, 44.334732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379139, 33.020023, 44.294720>,  <38.253708, 32.816822, 44.270710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379139, 33.020023, 44.294720>,  <38.588192, 33.358688, 44.334732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379139, 33.020023, 44.294720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358162, -0.324522, 0.875446,
		-0.773674, 0.421713, 0.472850,
		-0.522637, -0.846667, -0.100033,
		38.222347, 32.766022, 44.264709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142738, 33.362736, 44.886349>,  <38.588192, 33.358688, 44.334732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142738, 33.362736, 44.886349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178436, 32.988792, 44.748898>,  <38.199856, 32.764427, 44.666428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.178436, 32.988792, 44.748898>,  <38.142738, 33.362736, 44.886349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178436, 32.988792, 44.748898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267523, -0.309831, 0.912379,
		-0.959409, -0.173359, 0.222442,
		0.089249, -0.934854, -0.343632,
		38.205212, 32.708336, 44.645809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002769, 32.896477, 45.465984>,  <38.142738, 33.362736, 44.886349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002769, 32.896477, 45.465984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186352, 32.632542, 45.228001>,  <38.296501, 32.474182, 45.085209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.186352, 32.632542, 45.228001>,  <38.002769, 32.896477, 45.465984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186352, 32.632542, 45.228001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350244, -0.481057, 0.803687,
		-0.816512, -0.577236, 0.010321,
		0.458952, -0.659835, -0.594962,
		38.324036, 32.434589, 45.049511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615040, 32.246868, 45.457355>,  <38.002769, 32.896477, 45.465984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615040, 32.246868, 45.457355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001747, 32.164864, 45.396259>,  <38.233772, 32.115662, 45.359600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001747, 32.164864, 45.396259>,  <37.615040, 32.246868, 45.457355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001747, 32.164864, 45.396259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014824, -0.641409, 0.767056,
		-0.255224, -0.739301, -0.623133,
		0.966768, -0.205008, -0.152744,
		38.291779, 32.103359, 45.350437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737858, 31.528570, 45.502083>,  <37.615040, 32.246868, 45.457355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737858, 31.528570, 45.502083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090679, 31.703638, 45.571865>,  <38.302372, 31.808680, 45.613735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090679, 31.703638, 45.571865>,  <37.737858, 31.528570, 45.502083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090679, 31.703638, 45.571865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184916, -0.662132, 0.726214,
		0.433354, -0.608297, -0.664965,
		0.882049, 0.437670, 0.174454,
		38.355293, 31.834940, 45.624203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163818, 30.969690, 45.535435>,  <37.737858, 31.528570, 45.502083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163818, 30.969690, 45.535435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327473, 31.265123, 45.749763>,  <38.425667, 31.442383, 45.878361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327473, 31.265123, 45.749763>,  <38.163818, 30.969690, 45.535435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327473, 31.265123, 45.749763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032457, -0.575065, 0.817464,
		0.911896, -0.351845, -0.211308,
		0.409136, 0.738584, 0.535819,
		38.450214, 31.486698, 45.910507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645294, 30.648727, 45.998413>,  <38.163818, 30.969690, 45.535435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645294, 30.648727, 45.998413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599270, 31.012115, 46.159134>,  <38.571655, 31.230148, 46.255566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.599270, 31.012115, 46.159134>,  <38.645294, 30.648727, 45.998413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599270, 31.012115, 46.159134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126373, -0.414587, 0.901192,
		0.985287, 0.052914, 0.162508,
		-0.115060, 0.908470, 0.401801,
		38.564751, 31.284657, 46.279675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330418, 30.984596, 45.939320>,  <38.645294, 30.648727, 45.998413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330418, 30.984596, 45.939320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693447, 30.817938, 45.960190>,  <39.911263, 30.717943, 45.972713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693447, 30.817938, 45.960190>,  <39.330418, 30.984596, 45.939320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693447, 30.817938, 45.960190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278441, 0.504148, -0.817500,
		0.314302, 0.756467, 0.573561,
		0.907571, -0.416645, 0.052176,
		39.965717, 30.692944, 45.975842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783199, 31.513134, 45.773407>,  <39.330418, 30.984596, 45.939320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783199, 31.513134, 45.773407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.992592, 31.177237, 45.715725>,  <40.118229, 30.975698, 45.681118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.992592, 31.177237, 45.715725>,  <39.783199, 31.513134, 45.773407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992592, 31.177237, 45.715725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539852, 0.457830, -0.706365,
		0.659186, 0.291922, 0.693005,
		0.523482, -0.839745, -0.144200,
		40.149635, 30.925312, 45.672466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397949, 31.816353, 45.571354>,  <39.783199, 31.513134, 45.773407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397949, 31.816353, 45.571354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384838, 31.430363, 45.467236>,  <40.376972, 31.198769, 45.404766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.384838, 31.430363, 45.467236>,  <40.397949, 31.816353, 45.571354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384838, 31.430363, 45.467236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631084, 0.181966, -0.754070,
		0.775022, -0.188985, 0.603014,
		-0.032780, -0.964973, -0.260293,
		40.375004, 31.140871, 45.389149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077126, 31.616087, 45.433998>,  <40.397949, 31.816353, 45.571354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077126, 31.616087, 45.433998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838619, 31.353519, 45.249134>,  <40.695515, 31.195980, 45.138218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838619, 31.353519, 45.249134>,  <41.077126, 31.616087, 45.433998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838619, 31.353519, 45.249134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518674, 0.124404, -0.845873,
		0.612740, -0.744070, 0.266289,
		-0.596261, -0.656417, -0.462157,
		40.659740, 31.156595, 45.110485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506004, 31.089954, 45.005692>,  <41.077126, 31.616087, 45.433998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506004, 31.089954, 45.005692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.134731, 31.083851, 44.856968>,  <40.911968, 31.080189, 44.767735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.134731, 31.083851, 44.856968>,  <41.506004, 31.089954, 45.005692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134731, 31.083851, 44.856968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370134, 0.065287, -0.926681,
		0.038416, -0.997750, -0.054950,
		-0.928184, -0.015260, -0.371810,
		40.856277, 31.079273, 44.745426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485355, 30.615612, 44.492825>,  <41.506004, 31.089954, 45.005692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485355, 30.615612, 44.492825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156670, 30.827133, 44.407829>,  <40.959457, 30.954046, 44.356834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.156670, 30.827133, 44.407829>,  <41.485355, 30.615612, 44.492825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156670, 30.827133, 44.407829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417120, 0.304010, -0.856498,
		-0.388321, -0.792430, -0.470384,
		-0.821716, 0.528803, -0.212485,
		40.910156, 30.985773, 44.344082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418072, 30.574789, 43.793316>,  <41.485355, 30.615612, 44.492825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418072, 30.574789, 43.793316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.172184, 30.884254, 43.854713>,  <41.024651, 31.069935, 43.891552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.172184, 30.884254, 43.854713>,  <41.418072, 30.574789, 43.793316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172184, 30.884254, 43.854713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089391, 0.261691, -0.961003,
		-0.783664, -0.577027, -0.230025,
		-0.614720, 0.773666, 0.153496,
		40.987766, 31.116354, 43.900761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047298, 30.572754, 43.236481>,  <41.418072, 30.574789, 43.793316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047298, 30.572754, 43.236481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.023739, 30.944870, 43.381306>,  <41.009605, 31.168140, 43.468201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.023739, 30.944870, 43.381306>,  <41.047298, 30.572754, 43.236481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023739, 30.944870, 43.381306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161078, 0.366794, -0.916251,
		-0.985183, 0.004356, -0.171452,
		-0.058896, 0.930292, 0.362061,
		41.006069, 31.223957, 43.489925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654484, 30.926741, 42.746880>,  <41.047298, 30.572754, 43.236481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654484, 30.926741, 42.746880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.858601, 31.202696, 42.952271>,  <40.981071, 31.368269, 43.075504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.858601, 31.202696, 42.952271>,  <40.654484, 30.926741, 42.746880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858601, 31.202696, 42.952271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123182, 0.532271, -0.837564,
		-0.851133, 0.490654, 0.186631,
		0.510292, 0.689889, 0.513473,
		41.011688, 31.409662, 43.106312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271526, 31.539463, 42.643776>,  <40.654484, 30.926741, 42.746880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271526, 31.539463, 42.643776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.647472, 31.633936, 42.742462>,  <40.873039, 31.690620, 42.801674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.647472, 31.633936, 42.742462>,  <40.271526, 31.539463, 42.643776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647472, 31.633936, 42.742462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008737, 0.705494, -0.708662,
		-0.341432, 0.668203, 0.661006,
		0.939866, 0.236184, 0.246716,
		40.929432, 31.704792, 42.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349041, 32.264133, 42.720341>,  <40.271526, 31.539463, 42.643776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349041, 32.264133, 42.720341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.723286, 32.136951, 42.658970>,  <40.947830, 32.060642, 42.622147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.723286, 32.136951, 42.658970>,  <40.349041, 32.264133, 42.720341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723286, 32.136951, 42.658970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036466, 0.519295, -0.853816,
		0.351147, 0.793244, 0.497452,
		0.935610, -0.317955, -0.153423,
		41.003967, 32.041565, 42.612942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651012, 32.831669, 42.473106>,  <40.349041, 32.264133, 42.720341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651012, 32.831669, 42.473106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914085, 32.551266, 42.362804>,  <41.071930, 32.383026, 42.296623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.914085, 32.551266, 42.362804>,  <40.651012, 32.831669, 42.473106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914085, 32.551266, 42.362804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166495, 0.492291, -0.854359,
		0.734663, 0.515987, 0.440486,
		0.657686, -0.701004, -0.275758,
		41.111389, 32.340965, 42.280075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193336, 33.254303, 42.166084>,  <40.651012, 32.831669, 42.473106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193336, 33.254303, 42.166084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.235558, 32.878296, 42.036327>,  <41.260891, 32.652691, 41.958473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.235558, 32.878296, 42.036327>,  <41.193336, 33.254303, 42.166084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235558, 32.878296, 42.036327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187569, 0.339180, -0.921832,
		0.976563, 0.036459, 0.212120,
		0.105556, -0.940015, -0.324392,
		41.267223, 32.596291, 41.939011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882339, 33.278980, 41.814728>,  <41.193336, 33.254303, 42.166084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882339, 33.278980, 41.814728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664169, 32.967678, 41.690258>,  <41.533268, 32.780895, 41.615574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.664169, 32.967678, 41.690258>,  <41.882339, 33.278980, 41.814728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664169, 32.967678, 41.690258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150317, 0.274416, -0.949790,
		0.824570, -0.564815, -0.032689,
		-0.545426, -0.778255, -0.311177,
		41.500542, 32.734203, 41.596905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.213137, 43.755650, 36.492397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395308, 43.878281, 36.158070>,  <27.504610, 43.951859, 35.957474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395308, 43.878281, 36.158070>,  <27.213137, 43.755650, 36.492397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395308, 43.878281, 36.158070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142376, -0.901674, -0.408306,
		-0.878816, 0.304954, -0.366996,
		0.455425, 0.306574, -0.835823,
		27.531935, 43.970253, 35.907322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825726, 43.604229, 35.823895>,  <27.213137, 43.755650, 36.492397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825726, 43.604229, 35.823895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211279, 43.632912, 35.721302>,  <27.442612, 43.650120, 35.659744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211279, 43.632912, 35.721302>,  <26.825726, 43.604229, 35.823895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211279, 43.632912, 35.721302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055703, -0.887487, -0.457454,
		-0.260428, 0.455220, -0.851441,
		0.963885, 0.071706, -0.256484,
		27.500444, 43.654423, 35.644356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881161, 43.149818, 35.251007>,  <26.825726, 43.604229, 35.823895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881161, 43.149818, 35.251007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271692, 43.197636, 35.323112>,  <27.506010, 43.226326, 35.366375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271692, 43.197636, 35.323112>,  <26.881161, 43.149818, 35.251007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271692, 43.197636, 35.323112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164932, -0.950633, -0.262860,
		0.139942, 0.286368, -0.947845,
		0.976327, 0.119545, 0.180265,
		27.564590, 43.233498, 35.377193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225008, 42.848324, 34.629528>,  <26.881161, 43.149818, 35.251007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225008, 42.848324, 34.629528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.470709, 42.850304, 34.945168>,  <27.618130, 42.851490, 35.134552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.470709, 42.850304, 34.945168>,  <27.225008, 42.848324, 34.629528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470709, 42.850304, 34.945168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256152, -0.947080, -0.193457,
		0.746379, 0.320960, -0.583012,
		0.614251, 0.004948, 0.789095,
		27.654984, 42.851788, 35.181896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921494, 42.487617, 34.432491>,  <27.225008, 42.848324, 34.629528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921494, 42.487617, 34.432491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876387, 42.453896, 34.828506>,  <27.849321, 42.433662, 35.066116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876387, 42.453896, 34.828506>,  <27.921494, 42.487617, 34.432491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876387, 42.453896, 34.828506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145457, -0.987060, -0.067485,
		0.982917, 0.136398, 0.123573,
		-0.112769, -0.084307, 0.990038,
		27.842556, 42.428604, 35.125519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290901, 41.847919, 34.523109>,  <27.921494, 42.487617, 34.432491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290901, 41.847919, 34.523109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108593, 41.929123, 34.869762>,  <27.999208, 41.977844, 35.077755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108593, 41.929123, 34.869762>,  <28.290901, 41.847919, 34.523109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108593, 41.929123, 34.869762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046826, -0.966826, 0.251109,
		0.888864, 0.155030, 0.431146,
		-0.455772, 0.203012, 0.866636,
		27.971861, 41.990028, 35.129753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723019, 41.493690, 35.050507>,  <28.290901, 41.847919, 34.523109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723019, 41.493690, 35.050507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350290, 41.561417, 35.178909>,  <28.126654, 41.602051, 35.255951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350290, 41.561417, 35.178909>,  <28.723019, 41.493690, 35.050507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350290, 41.561417, 35.178909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120037, -0.978509, 0.167665,
		0.342493, 0.117701, 0.932119,
		-0.931821, 0.169313, 0.321004,
		28.070744, 41.612209, 35.275211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716482, 41.131100, 35.786343>,  <28.723019, 41.493690, 35.050507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716482, 41.131100, 35.786343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352325, 41.181934, 35.628845>,  <28.133831, 41.212433, 35.534348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352325, 41.181934, 35.628845>,  <28.716482, 41.131100, 35.786343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352325, 41.181934, 35.628845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202485, -0.966756, 0.156148,
		-0.360808, 0.221883, 0.905862,
		-0.910394, 0.127084, -0.393742,
		28.079206, 41.220058, 35.510723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291134, 40.696316, 36.184704>,  <28.716482, 41.131100, 35.786343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291134, 40.696316, 36.184704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024736, 40.740955, 35.889679>,  <27.864899, 40.767738, 35.712666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.024736, 40.740955, 35.889679>,  <28.291134, 40.696316, 36.184704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024736, 40.740955, 35.889679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334444, -0.928474, 0.161505,
		-0.666782, 0.354235, 0.655682,
		-0.665994, 0.111601, -0.737562,
		27.824938, 40.774437, 35.668411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655025, 40.358829, 36.375740>,  <28.291134, 40.696316, 36.184704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655025, 40.358829, 36.375740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582727, 40.398113, 35.984295>,  <27.539349, 40.421684, 35.749428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.582727, 40.398113, 35.984295>,  <27.655025, 40.358829, 36.375740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582727, 40.398113, 35.984295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220023, -0.973822, -0.057093,
		-0.958604, 0.204998, 0.197622,
		-0.180745, 0.098211, -0.978614,
		27.528503, 40.427578, 35.690712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076736, 39.891453, 36.163990>,  <27.655025, 40.358829, 36.375740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076736, 39.891453, 36.163990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269285, 39.970284, 35.822361>,  <27.384815, 40.017582, 35.617382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.269285, 39.970284, 35.822361>,  <27.076736, 39.891453, 36.163990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269285, 39.970284, 35.822361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096904, -0.956457, -0.275315,
		-0.871142, 0.215292, -0.441316,
		0.481373, 0.197073, -0.854074,
		27.413696, 40.029404, 35.566139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656303, 39.594616, 35.664909>,  <27.076736, 39.891453, 36.163990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656303, 39.594616, 35.664909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037186, 39.608448, 35.543514>,  <27.265715, 39.616749, 35.470676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037186, 39.608448, 35.543514>,  <26.656303, 39.594616, 35.664909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037186, 39.608448, 35.543514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062010, -0.950995, -0.302923,
		-0.299090, 0.307265, -0.903401,
		0.952208, 0.034581, -0.303487,
		27.322847, 39.618824, 35.452469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600279, 39.185917, 35.074673>,  <26.656303, 39.594616, 35.664909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600279, 39.185917, 35.074673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992554, 39.196590, 35.152172>,  <27.227919, 39.202995, 35.198673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992554, 39.196590, 35.152172>,  <26.600279, 39.185917, 35.074673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992554, 39.196590, 35.152172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075221, -0.965909, -0.247712,
		0.180532, 0.257502, -0.949263,
		0.980689, 0.026685, 0.193747,
		27.286760, 39.204597, 35.210297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949635, 38.825542, 34.539787>,  <26.600279, 39.185917, 35.074673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949635, 38.825542, 34.539787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200409, 38.819565, 34.851360>,  <27.350874, 38.815979, 35.038303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200409, 38.819565, 34.851360>,  <26.949635, 38.825542, 34.539787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200409, 38.819565, 34.851360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163230, -0.975105, -0.150090,
		0.761779, 0.221241, -0.608888,
		0.626935, -0.014946, 0.778928,
		27.388489, 38.815083, 35.085037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544724, 38.364334, 34.331032>,  <26.949635, 38.825542, 34.539787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544724, 38.364334, 34.331032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568069, 38.393887, 34.729256>,  <27.582077, 38.411617, 34.968189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568069, 38.393887, 34.729256>,  <27.544724, 38.364334, 34.331032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568069, 38.393887, 34.729256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073298, -0.994883, 0.069530,
		0.995601, 0.068915, -0.063482,
		0.058365, 0.073877, 0.995558,
		27.585579, 38.416050, 35.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107998, 37.776619, 34.603580>,  <27.544724, 38.364334, 34.331032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107998, 37.776619, 34.603580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871008, 37.877861, 34.909496>,  <27.728813, 37.938606, 35.093048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871008, 37.877861, 34.909496>,  <28.107998, 37.776619, 34.603580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871008, 37.877861, 34.909496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058361, -0.960352, 0.272613,
		0.803471, 0.116883, 0.583758,
		-0.592477, 0.253105, 0.764793,
		27.693264, 37.953793, 35.138935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422001, 37.565937, 35.151958>,  <28.107998, 37.776619, 34.603580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422001, 37.565937, 35.151958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033537, 37.577518, 35.246628>,  <27.800459, 37.584469, 35.303429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033537, 37.577518, 35.246628>,  <28.422001, 37.565937, 35.151958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033537, 37.577518, 35.246628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046283, -0.950829, 0.306240,
		0.233900, 0.308361, 0.922065,
		-0.971158, 0.028954, 0.236671,
		27.742189, 37.586205, 35.317631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386971, 37.283783, 35.752136>,  <28.422001, 37.565937, 35.151958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386971, 37.283783, 35.752136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010860, 37.245716, 35.621399>,  <27.785194, 37.222878, 35.542957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010860, 37.245716, 35.621399>,  <28.386971, 37.283783, 35.752136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010860, 37.245716, 35.621399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040046, -0.984384, 0.171420,
		-0.338051, 0.148093, 0.929403,
		-0.940276, -0.095168, -0.326841,
		27.728777, 37.217167, 35.523346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266005, 36.630894, 35.691963>,  <28.386971, 37.283783, 35.752136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266005, 36.630894, 35.691963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876558, 36.721951, 35.685665>,  <27.642891, 36.776585, 35.681885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876558, 36.721951, 35.685665>,  <28.266005, 36.630894, 35.691963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876558, 36.721951, 35.685665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224936, -0.945861, 0.233990,
		0.038375, 0.231358, 0.972112,
		-0.973618, 0.227643, -0.015744,
		27.584473, 36.790245, 35.680943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066050, 36.481850, 36.313232>,  <28.266005, 36.630894, 35.691963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066050, 36.481850, 36.313232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797926, 36.430668, 36.020847>,  <27.637053, 36.399960, 35.845417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797926, 36.430668, 36.020847>,  <28.066050, 36.481850, 36.313232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797926, 36.430668, 36.020847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083572, -0.991772, 0.096976,
		-0.737360, 0.003915, 0.675488,
		-0.670310, -0.127959, -0.730966,
		27.596832, 36.392281, 35.801556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548756, 35.861401, 36.184929>,  <28.066050, 36.481850, 36.313232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548756, 35.861401, 36.184929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933222, 35.970444, 36.167713>,  <29.163900, 36.035870, 36.157383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933222, 35.970444, 36.167713>,  <28.548756, 35.861401, 36.184929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933222, 35.970444, 36.167713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180195, 0.738012, 0.650283,
		0.209034, -0.617273, 0.758472,
		0.961163, 0.272604, -0.043040,
		29.221571, 36.052223, 36.154800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696592, 36.147518, 36.852894>,  <28.548756, 35.861401, 36.184929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696592, 36.147518, 36.852894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027899, 36.272388, 36.666767>,  <29.226683, 36.347309, 36.555092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027899, 36.272388, 36.666767>,  <28.696592, 36.147518, 36.852894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027899, 36.272388, 36.666767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115955, 0.716961, 0.687401,
		0.548205, -0.623308, 0.557637,
		0.828267, 0.312176, -0.465318,
		29.276379, 36.366043, 36.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152847, 36.286705, 37.402821>,  <28.696592, 36.147518, 36.852894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152847, 36.286705, 37.402821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298710, 36.478161, 37.083340>,  <29.386227, 36.593037, 36.891651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298710, 36.478161, 37.083340>,  <29.152847, 36.286705, 37.402821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298710, 36.478161, 37.083340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152440, 0.815507, 0.558310,
		0.918579, -0.325345, 0.224416,
		0.364656, 0.478642, -0.798703,
		29.408106, 36.621754, 36.843727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769247, 36.554974, 37.637272>,  <29.152847, 36.286705, 37.402821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769247, 36.554974, 37.637272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654461, 36.773510, 37.322521>,  <29.585590, 36.904633, 37.133671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654461, 36.773510, 37.322521>,  <29.769247, 36.554974, 37.637272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654461, 36.773510, 37.322521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144686, 0.836716, 0.528178,
		0.946952, 0.037719, -0.319155,
		-0.286964, 0.546336, -0.786872,
		29.568371, 36.937412, 37.086460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188000, 37.129673, 37.650131>,  <29.769247, 36.554974, 37.637272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188000, 37.129673, 37.650131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879719, 37.258083, 37.429962>,  <29.694750, 37.335129, 37.297859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879719, 37.258083, 37.429962>,  <30.188000, 37.129673, 37.650131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879719, 37.258083, 37.429962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007659, 0.868422, 0.495767,
		0.637152, 0.377872, -0.671752,
		-0.770701, 0.321024, -0.550422,
		29.648508, 37.354389, 37.264835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299967, 37.862198, 37.276936>,  <30.188000, 37.129673, 37.650131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299967, 37.862198, 37.276936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900482, 37.841969, 37.278381>,  <29.660791, 37.829830, 37.279247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900482, 37.841969, 37.278381>,  <30.299967, 37.862198, 37.276936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900482, 37.841969, 37.278381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048883, 0.979305, 0.196395,
		-0.013472, 0.195966, -0.980518,
		-0.998714, -0.050577, 0.003614,
		29.600868, 37.826794, 37.279465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035727, 38.407097, 36.883018>,  <30.299967, 37.862198, 37.276936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035727, 38.407097, 36.883018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728296, 38.307236, 37.118633>,  <29.543839, 38.247318, 37.260002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728296, 38.307236, 37.118633>,  <30.035727, 38.407097, 36.883018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728296, 38.307236, 37.118633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166361, 0.967033, 0.192798,
		-0.617750, 0.050187, -0.784771,
		-0.768576, -0.249656, 0.589036,
		29.497723, 38.232338, 37.295345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465403, 38.905434, 36.737045>,  <30.035727, 38.407097, 36.883018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465403, 38.905434, 36.737045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.396214, 38.742500, 37.095745>,  <29.354700, 38.644741, 37.310966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.396214, 38.742500, 37.095745>,  <29.465403, 38.905434, 36.737045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396214, 38.742500, 37.095745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192153, 0.906937, 0.374891,
		-0.966001, -0.107467, -0.235145,
		-0.172973, -0.407329, 0.896752,
		29.344322, 38.620300, 37.364769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697132, 39.122547, 36.945641>,  <29.465403, 38.905434, 36.737045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697132, 39.122547, 36.945641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927847, 39.039059, 37.261555>,  <29.066275, 38.988964, 37.451103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.927847, 39.039059, 37.261555>,  <28.697132, 39.122547, 36.945641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927847, 39.039059, 37.261555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298735, 0.845947, 0.441736,
		-0.760314, -0.490721, 0.425577,
		0.576785, -0.208723, 0.789781,
		29.100882, 38.976440, 37.498489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357433, 39.423679, 37.560768>,  <28.697132, 39.122547, 36.945641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357433, 39.423679, 37.560768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721493, 39.372131, 37.718258>,  <28.939928, 39.341202, 37.812752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721493, 39.372131, 37.718258>,  <28.357433, 39.423679, 37.560768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721493, 39.372131, 37.718258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177693, 0.737083, 0.652022,
		-0.374237, -0.663400, 0.647956,
		0.910149, -0.128874, 0.393726,
		28.994537, 39.333469, 37.836376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203022, 39.558201, 38.162205>,  <28.357433, 39.423679, 37.560768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203022, 39.558201, 38.162205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600304, 39.594868, 38.133514>,  <28.838673, 39.616867, 38.116299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.600304, 39.594868, 38.133514>,  <28.203022, 39.558201, 38.162205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600304, 39.594868, 38.133514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026182, 0.776416, 0.629677,
		0.113409, -0.623520, 0.773538,
		0.993203, 0.091663, -0.071727,
		28.898264, 39.622368, 38.111996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479832, 39.636593, 38.830826>,  <28.203022, 39.558201, 38.162205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479832, 39.636593, 38.830826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.746614, 39.795872, 38.578918>,  <28.906685, 39.891441, 38.427776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.746614, 39.795872, 38.578918>,  <28.479832, 39.636593, 38.830826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746614, 39.795872, 38.578918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082331, 0.800653, 0.593445,
		0.740530, -0.447653, 0.501220,
		0.666960, 0.398198, -0.629763,
		28.946703, 39.915333, 38.389988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856085, 39.985783, 39.291191>,  <28.479832, 39.636593, 38.830826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856085, 39.985783, 39.291191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992983, 40.146999, 38.951679>,  <29.075121, 40.243729, 38.747971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992983, 40.146999, 38.951679>,  <28.856085, 39.985783, 39.291191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992983, 40.146999, 38.951679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104457, 0.881412, 0.460653,
		0.933787, -0.246316, 0.259557,
		0.342244, 0.403039, -0.848781,
		29.095655, 40.267910, 38.697044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360109, 40.403992, 39.442150>,  <28.856085, 39.985783, 39.291191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360109, 40.403992, 39.442150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297831, 40.548103, 39.074245>,  <29.260464, 40.634571, 38.853504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297831, 40.548103, 39.074245>,  <29.360109, 40.403992, 39.442150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297831, 40.548103, 39.074245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275088, 0.910096, 0.309922,
		0.948728, -0.204761, -0.240807,
		-0.155698, 0.360275, -0.919761,
		29.251122, 40.656185, 38.798317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912560, 40.957432, 39.292755>,  <29.360109, 40.403992, 39.442150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912560, 40.957432, 39.292755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585672, 41.033363, 39.075089>,  <29.389540, 41.078922, 38.944489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585672, 41.033363, 39.075089>,  <29.912560, 40.957432, 39.292755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585672, 41.033363, 39.075089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026227, 0.955471, 0.293916,
		0.575733, 0.225921, -0.785806,
		-0.817217, 0.189826, -0.544171,
		29.340508, 41.090313, 38.911839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076454, 41.566628, 38.964008>,  <29.912560, 40.957432, 39.292755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076454, 41.566628, 38.964008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676756, 41.556168, 38.952518>,  <29.436937, 41.549892, 38.945625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676756, 41.556168, 38.952518>,  <30.076454, 41.566628, 38.964008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676756, 41.556168, 38.952518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032917, 0.962600, 0.268921,
		0.020619, 0.269663, -0.962734,
		-0.999245, -0.026145, -0.028725,
		29.376982, 41.548325, 38.943901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794086, 42.128365, 38.613998>,  <30.076454, 41.566628, 38.964008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794086, 42.128365, 38.613998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468807, 42.018616, 38.819302>,  <29.273640, 41.952766, 38.942482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468807, 42.018616, 38.819302>,  <29.794086, 42.128365, 38.613998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468807, 42.018616, 38.819302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290237, 0.955596, 0.050982,
		-0.504453, -0.107507, -0.856720,
		-0.813197, -0.274370, 0.513256,
		29.224848, 41.936306, 38.973278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360037, 42.554634, 38.348019>,  <29.794086, 42.128365, 38.613998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360037, 42.554634, 38.348019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156189, 42.436211, 38.671162>,  <29.033880, 42.365154, 38.865047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156189, 42.436211, 38.671162>,  <29.360037, 42.554634, 38.348019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156189, 42.436211, 38.671162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489599, 0.871882, 0.010673,
		-0.707518, -0.390088, -0.589279,
		-0.509618, -0.296062, 0.807859,
		29.003304, 42.347393, 38.913521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764000, 42.675659, 38.195782>,  <29.360037, 42.554634, 38.348019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764000, 42.675659, 38.195782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.723753, 42.649437, 38.592888>,  <28.699604, 42.633705, 38.831150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.723753, 42.649437, 38.592888>,  <28.764000, 42.675659, 38.195782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723753, 42.649437, 38.592888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681488, 0.731534, -0.020765,
		-0.724879, -0.678646, -0.118278,
		-0.100617, -0.065553, 0.992763,
		28.693567, 42.629772, 38.890717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038149, 42.667755, 38.347031>,  <28.764000, 42.675659, 38.195782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038149, 42.667755, 38.347031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210991, 42.802113, 38.681805>,  <28.314697, 42.882729, 38.882668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210991, 42.802113, 38.681805>,  <28.038149, 42.667755, 38.347031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210991, 42.802113, 38.681805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566312, 0.823312, -0.038041,
		-0.701837, -0.457529, 0.545978,
		0.432106, 0.335892, 0.836935,
		28.340622, 42.902882, 38.932884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552662, 42.962914, 38.874599>,  <28.038149, 42.667755, 38.347031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552662, 42.962914, 38.874599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886559, 43.163242, 38.966148>,  <28.086897, 43.283440, 39.021080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886559, 43.163242, 38.966148>,  <27.552662, 42.962914, 38.874599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886559, 43.163242, 38.966148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531516, 0.841446, 0.097261,
		-0.143875, -0.202839, 0.968585,
		0.834740, 0.500825, 0.228875,
		28.136980, 43.313488, 39.034809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447235, 43.239441, 39.530075>,  <27.552662, 42.962914, 38.874599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447235, 43.239441, 39.530075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738903, 43.448757, 39.353676>,  <27.913904, 43.574348, 39.247837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738903, 43.448757, 39.353676>,  <27.447235, 43.239441, 39.530075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738903, 43.448757, 39.353676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523112, 0.841693, 0.133814,
		0.441212, 0.133121, 0.887474,
		0.729168, 0.523289, -0.441002,
		27.957653, 43.605743, 39.221375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.475567, 27.018179, 44.460865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.130260, 27.179029, 44.582893>,  <40.923077, 27.275539, 44.656109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.130260, 27.179029, 44.582893>,  <41.475567, 27.018179, 44.460865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130260, 27.179029, 44.582893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190657, -0.299845, 0.934742,
		0.467359, 0.865093, 0.182177,
		-0.863264, 0.402127, 0.305072,
		40.871281, 27.299667, 44.674416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646183, 27.499210, 45.095230>,  <41.475567, 27.018179, 44.460865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646183, 27.499210, 45.095230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.263699, 27.383251, 45.079174>,  <41.034206, 27.313675, 45.069542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.263699, 27.383251, 45.079174>,  <41.646183, 27.499210, 45.095230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263699, 27.383251, 45.079174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000031, -0.137246, 0.990537,
		-0.292664, 0.947165, 0.131246,
		-0.956215, -0.289898, -0.040137,
		40.976833, 27.296282, 45.067131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275730, 27.852705, 45.656406>,  <41.646183, 27.499210, 45.095230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275730, 27.852705, 45.656406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.058254, 27.528954, 45.567589>,  <40.927769, 27.334703, 45.514297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.058254, 27.528954, 45.567589>,  <41.275730, 27.852705, 45.656406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058254, 27.528954, 45.567589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207917, -0.126429, 0.969941,
		-0.813123, 0.573517, -0.099545,
		-0.543692, -0.809379, -0.222046,
		40.895145, 27.286140, 45.500977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870914, 27.856983, 46.202591>,  <41.275730, 27.852705, 45.656406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870914, 27.856983, 46.202591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.831642, 27.494532, 46.038010>,  <40.808079, 27.277061, 45.939262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.831642, 27.494532, 46.038010>,  <40.870914, 27.856983, 46.202591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831642, 27.494532, 46.038010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208487, -0.385548, 0.898825,
		-0.973085, 0.174031, -0.151062,
		-0.098182, -0.906127, -0.411454,
		40.802189, 27.222694, 45.914574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300861, 27.552315, 46.490192>,  <40.870914, 27.856983, 46.202591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300861, 27.552315, 46.490192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.528866, 27.248131, 46.365746>,  <40.665668, 27.065620, 46.291077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.528866, 27.248131, 46.365746>,  <40.300861, 27.552315, 46.490192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528866, 27.248131, 46.365746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109526, -0.445598, 0.888508,
		-0.814307, -0.472381, -0.337284,
		0.570008, -0.760460, -0.311116,
		40.699867, 27.019993, 46.272411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974594, 26.970993, 46.751404>,  <40.300861, 27.552315, 46.490192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974594, 26.970993, 46.751404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.337040, 26.828766, 46.659729>,  <40.554508, 26.743429, 46.604725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.337040, 26.828766, 46.659729>,  <39.974594, 26.970993, 46.751404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337040, 26.828766, 46.659729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012182, -0.563482, 0.826038,
		-0.422857, -0.745694, -0.514911,
		0.906114, -0.355569, -0.229188,
		40.608875, 26.722095, 46.590973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991844, 26.166386, 46.765015>,  <39.974594, 26.970993, 46.751404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991844, 26.166386, 46.765015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346634, 26.337255, 46.835209>,  <40.559509, 26.439777, 46.877323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346634, 26.337255, 46.835209>,  <39.991844, 26.166386, 46.765015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346634, 26.337255, 46.835209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036739, -0.444051, 0.895248,
		0.460349, -0.787618, -0.409557,
		0.886977, 0.427173, 0.175482,
		40.612728, 26.465406, 46.887852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246204, 25.589563, 47.124020>,  <39.991844, 26.166386, 46.765015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246204, 25.589563, 47.124020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484955, 25.904207, 47.187252>,  <40.628204, 26.092993, 47.225189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.484955, 25.904207, 47.187252>,  <40.246204, 25.589563, 47.124020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484955, 25.904207, 47.187252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107602, -0.273721, 0.955771,
		0.795088, -0.553464, -0.248017,
		0.596872, 0.786609, 0.158078,
		40.664017, 26.140190, 47.234676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899311, 25.379854, 47.547749>,  <40.246204, 25.589563, 47.124020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899311, 25.379854, 47.547749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874378, 25.774536, 47.607792>,  <40.859417, 26.011345, 47.643818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874378, 25.774536, 47.607792>,  <40.899311, 25.379854, 47.547749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874378, 25.774536, 47.607792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225904, -0.132545, 0.965090,
		0.972153, 0.094069, -0.214638,
		-0.062336, 0.986703, 0.150105,
		40.855679, 26.070547, 47.652824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560654, 25.553501, 47.923050>,  <40.899311, 25.379854, 47.547749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560654, 25.553501, 47.923050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.307678, 25.861032, 47.960835>,  <41.155895, 26.045551, 47.983505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.307678, 25.861032, 47.960835>,  <41.560654, 25.553501, 47.923050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307678, 25.861032, 47.960835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259714, 0.095570, 0.960945,
		0.729776, 0.632270, -0.260118,
		-0.632436, 0.768831, 0.094465,
		41.117947, 26.091682, 47.989174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887749, 26.015713, 48.260925>,  <41.560654, 25.553501, 47.923050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887749, 26.015713, 48.260925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515728, 26.136976, 48.343960>,  <41.292515, 26.209734, 48.393780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515728, 26.136976, 48.343960>,  <41.887749, 26.015713, 48.260925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515728, 26.136976, 48.343960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195590, -0.069777, 0.978200,
		0.311035, 0.950382, 0.005602,
		-0.930055, 0.303159, 0.207588,
		41.236713, 26.227924, 48.406235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986168, 26.454399, 48.775490>,  <41.887749, 26.015713, 48.260925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986168, 26.454399, 48.775490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.600533, 26.355928, 48.815365>,  <41.369152, 26.296846, 48.839291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.600533, 26.355928, 48.815365>,  <41.986168, 26.454399, 48.775490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600533, 26.355928, 48.815365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103105, -0.001016, 0.994670,
		-0.244764, 0.969224, 0.026362,
		-0.964085, -0.246178, 0.099683,
		41.311306, 26.282076, 48.845268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723053, 26.909807, 49.340565>,  <41.986168, 26.454399, 48.775490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723053, 26.909807, 49.340565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.538471, 26.557005, 49.302349>,  <41.427723, 26.345324, 49.279419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.538471, 26.557005, 49.302349>,  <41.723053, 26.909807, 49.340565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538471, 26.557005, 49.302349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015843, -0.099483, 0.994913,
		-0.887022, 0.460621, 0.031933,
		-0.461454, -0.882005, -0.095541,
		41.400036, 26.292404, 49.273685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117393, 27.246550, 49.640285>,  <41.723053, 26.909807, 49.340565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117393, 27.246550, 49.640285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.369705, 27.206659, 49.948097>,  <41.521091, 27.182726, 50.132786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.369705, 27.206659, 49.948097>,  <41.117393, 27.246550, 49.640285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369705, 27.206659, 49.948097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766222, -0.076593, -0.637994,
		0.122565, 0.992063, 0.028099,
		0.630778, -0.099726, 0.769528,
		41.558937, 27.176741, 50.178955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630119, 26.827021, 49.940308>,  <41.117393, 27.246550, 49.640285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630119, 26.827021, 49.940308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.554058, 27.096746, 50.225723>,  <40.508423, 27.258581, 50.396973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.554058, 27.096746, 50.225723>,  <40.630119, 26.827021, 49.940308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554058, 27.096746, 50.225723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104110, 0.708855, -0.697629,
		-0.976219, -0.206942, -0.064587,
		-0.190151, 0.674314, 0.713543,
		40.497013, 27.299040, 50.439785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010113, 27.064062, 49.842083>,  <40.630119, 26.827021, 49.940308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010113, 27.064062, 49.842083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.206913, 27.358368, 50.028236>,  <40.324993, 27.534952, 50.139927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.206913, 27.358368, 50.028236>,  <40.010113, 27.064062, 49.842083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206913, 27.358368, 50.028236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268169, 0.636647, -0.723026,
		-0.828262, 0.230931, 0.510542,
		0.492004, 0.735766, 0.465381,
		40.354515, 27.579098, 50.167850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553497, 27.613775, 49.741451>,  <40.010113, 27.064062, 49.842083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553497, 27.613775, 49.741451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918236, 27.753641, 49.827496>,  <40.137077, 27.837561, 49.879120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918236, 27.753641, 49.827496>,  <39.553497, 27.613775, 49.741451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918236, 27.753641, 49.827496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089997, 0.681484, -0.726278,
		-0.400544, 0.642896, 0.652878,
		0.911847, 0.349663, 0.215106,
		40.191792, 27.858540, 49.892029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461620, 28.391575, 49.849213>,  <39.553497, 27.613775, 49.741451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461620, 28.391575, 49.849213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853409, 28.354687, 49.777519>,  <40.088482, 28.332554, 49.734505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853409, 28.354687, 49.777519>,  <39.461620, 28.391575, 49.849213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853409, 28.354687, 49.777519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073851, 0.663177, -0.744811,
		0.187546, 0.742760, 0.642755,
		0.979476, -0.092218, -0.179230,
		40.147251, 28.327021, 49.723751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778156, 29.056429, 49.855721>,  <39.461620, 28.391575, 49.849213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778156, 29.056429, 49.855721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.009933, 28.813772, 49.638012>,  <40.148998, 28.668179, 49.507385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.009933, 28.813772, 49.638012>,  <39.778156, 29.056429, 49.855721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009933, 28.813772, 49.638012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005874, 0.664683, -0.747102,
		0.814991, 0.436101, 0.381584,
		0.579444, -0.606640, -0.544272,
		40.183765, 28.631781, 49.474731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181690, 29.498215, 49.483730>,  <39.778156, 29.056429, 49.855721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181690, 29.498215, 49.483730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.266346, 29.165844, 49.277908>,  <40.317139, 28.966421, 49.154415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.266346, 29.165844, 49.277908>,  <40.181690, 29.498215, 49.483730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266346, 29.165844, 49.277908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052627, 0.516028, -0.854953,
		0.975929, 0.208024, 0.065484,
		0.211642, -0.830928, -0.514555,
		40.329838, 28.916565, 49.123543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650715, 29.688953, 49.023979>,  <40.181690, 29.498215, 49.483730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650715, 29.688953, 49.023979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509113, 29.339918, 48.889355>,  <40.424152, 29.130497, 48.808578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509113, 29.339918, 48.889355>,  <40.650715, 29.688953, 49.023979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509113, 29.339918, 48.889355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051836, 0.341004, -0.938631,
		0.933807, -0.349723, -0.075485,
		-0.354001, -0.872588, -0.336560,
		40.402912, 29.078142, 48.788387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173847, 29.417318, 48.511417>,  <40.650715, 29.688953, 49.023979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173847, 29.417318, 48.511417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.814400, 29.255600, 48.443264>,  <40.598732, 29.158569, 48.402370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.814400, 29.255600, 48.443264>,  <41.173847, 29.417318, 48.511417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814400, 29.255600, 48.443264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018762, 0.352584, -0.935592,
		0.438334, -0.843935, -0.309252,
		-0.898616, -0.404300, -0.170384,
		40.544815, 29.134310, 48.392151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211945, 29.169147, 47.891724>,  <41.173847, 29.417318, 48.511417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211945, 29.169147, 47.891724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.832249, 29.263874, 47.974541>,  <40.604431, 29.320709, 48.024231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.832249, 29.263874, 47.974541>,  <41.211945, 29.169147, 47.891724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832249, 29.263874, 47.974541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076846, 0.463683, -0.882662,
		-0.305033, -0.853766, -0.421947,
		-0.949236, 0.236816, 0.207047,
		40.547478, 29.334919, 48.036655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881672, 29.034866, 47.273930>,  <41.211945, 29.169147, 47.891724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881672, 29.034866, 47.273930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.629894, 29.265850, 47.481911>,  <40.478828, 29.404440, 47.606697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.629894, 29.265850, 47.481911>,  <40.881672, 29.034866, 47.273930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629894, 29.265850, 47.481911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079793, 0.617561, -0.782465,
		-0.772941, -0.534004, -0.342641,
		-0.629441, 0.577459, 0.519948,
		40.441063, 29.439087, 47.637894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270565, 28.995272, 46.881962>,  <40.881672, 29.034866, 47.273930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270565, 28.995272, 46.881962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.232193, 29.329201, 47.098801>,  <40.209171, 29.529558, 47.228905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.232193, 29.329201, 47.098801>,  <40.270565, 28.995272, 46.881962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232193, 29.329201, 47.098801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090081, 0.535095, -0.839975,
		-0.991304, -0.129412, 0.023869,
		-0.095931, 0.834821, 0.542099,
		40.203415, 29.579647, 47.261429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713127, 29.316235, 46.593960>,  <40.270565, 28.995272, 46.881962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713127, 29.316235, 46.593960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.880939, 29.620823, 46.791607>,  <39.981628, 29.803576, 46.910194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.880939, 29.620823, 46.791607>,  <39.713127, 29.316235, 46.593960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880939, 29.620823, 46.791607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297694, 0.629650, -0.717579,
		-0.857538, 0.153951, 0.490843,
		0.419531, 0.761472, 0.494119,
		40.006798, 29.849264, 46.939842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260544, 29.795258, 46.608902>,  <39.713127, 29.316235, 46.593960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260544, 29.795258, 46.608902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608162, 29.989389, 46.647285>,  <39.816734, 30.105869, 46.670315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608162, 29.989389, 46.647285>,  <39.260544, 29.795258, 46.608902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608162, 29.989389, 46.647285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256226, 0.607463, -0.751888,
		-0.423203, 0.628842, 0.652270,
		0.869050, 0.485330, 0.095955,
		39.868877, 30.134989, 46.676071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207645, 30.167332, 46.096027>,  <39.260544, 29.795258, 46.608902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207645, 30.167332, 46.096027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.569096, 30.301533, 46.202538>,  <39.785965, 30.382053, 46.266445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.569096, 30.301533, 46.202538>,  <39.207645, 30.167332, 46.096027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569096, 30.301533, 46.202538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037851, 0.556688, -0.829859,
		-0.426652, 0.759959, 0.490337,
		0.903624, 0.335501, 0.266277,
		39.840183, 30.402184, 46.282421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128777, 30.731796, 46.576797>,  <39.207645, 30.167332, 46.096027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128777, 30.731796, 46.576797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830269, 30.988607, 46.647087>,  <38.651165, 31.142694, 46.689262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830269, 30.988607, 46.647087>,  <39.128777, 30.731796, 46.576797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830269, 30.988607, 46.647087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109250, -0.378552, 0.919110,
		0.656613, 0.666709, 0.352645,
		-0.746274, 0.642026, 0.175724,
		38.606388, 31.181215, 46.699802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316982, 31.043268, 47.221436>,  <39.128777, 30.731796, 46.576797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316982, 31.043268, 47.221436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924244, 31.075006, 47.152531>,  <38.688599, 31.094049, 47.111187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924244, 31.075006, 47.152531>,  <39.316982, 31.043268, 47.221436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924244, 31.075006, 47.152531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189651, -0.403987, 0.894889,
		0.001414, 0.911317, 0.411703,
		-0.981851, 0.079346, -0.172261,
		38.629688, 31.098810, 47.100853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020123, 31.375343, 47.768898>,  <39.316982, 31.043268, 47.221436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020123, 31.375343, 47.768898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700432, 31.189339, 47.616577>,  <38.508617, 31.077736, 47.525185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.700432, 31.189339, 47.616577>,  <39.020123, 31.375343, 47.768898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700432, 31.189339, 47.616577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189653, -0.406087, 0.893938,
		-0.570329, 0.786675, 0.236362,
		-0.799222, -0.465012, -0.380799,
		38.460667, 31.049835, 47.502338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505161, 31.479786, 48.260979>,  <39.020123, 31.375343, 47.768898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505161, 31.479786, 48.260979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.338017, 31.175714, 48.061974>,  <38.237732, 30.993271, 47.942570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.338017, 31.175714, 48.061974>,  <38.505161, 31.479786, 48.260979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338017, 31.175714, 48.061974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506254, -0.259887, 0.822293,
		-0.754388, 0.595471, -0.276248,
		-0.417858, -0.760180, -0.497515,
		38.212658, 30.947660, 47.912720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806416, 31.513372, 48.427319>,  <38.505161, 31.479786, 48.260979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806416, 31.513372, 48.427319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859840, 31.134459, 48.310825>,  <37.891895, 30.907110, 48.240929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859840, 31.134459, 48.310825>,  <37.806416, 31.513372, 48.427319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859840, 31.134459, 48.310825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444246, -0.319909, 0.836841,
		-0.885894, 0.017611, -0.463554,
		0.133557, -0.947284, -0.291229,
		37.899906, 30.850273, 48.223457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168262, 31.176008, 48.350597>,  <37.806416, 31.513372, 48.427319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168262, 31.176008, 48.350597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454548, 30.911602, 48.440769>,  <37.626320, 30.752958, 48.494873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.454548, 30.911602, 48.440769>,  <37.168262, 31.176008, 48.350597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454548, 30.911602, 48.440769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533877, -0.309732, 0.786792,
		-0.450259, -0.683466, -0.574579,
		0.715711, -0.661015, 0.225427,
		37.669262, 30.713297, 48.508396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835110, 30.747322, 48.839462>,  <37.168262, 31.176008, 48.350597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835110, 30.747322, 48.839462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209560, 30.607107, 48.828270>,  <37.434231, 30.522978, 48.821556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209560, 30.607107, 48.828270>,  <36.835110, 30.747322, 48.839462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209560, 30.607107, 48.828270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137475, -0.438046, 0.888379,
		-0.323665, -0.827792, -0.458258,
		0.936131, -0.350536, -0.027979,
		37.490398, 30.501945, 48.819878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701660, 30.273512, 48.297825>,  <36.835110, 30.747322, 48.839462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701660, 30.273512, 48.297825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357143, 30.073530, 48.334080>,  <36.150433, 29.953541, 48.355835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357143, 30.073530, 48.334080>,  <36.701660, 30.273512, 48.297825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357143, 30.073530, 48.334080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248880, 0.259591, -0.933098,
		0.442980, -0.826230, -0.348014,
		-0.861294, -0.499957, 0.090639,
		36.098755, 29.923544, 48.361271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651073, 29.811609, 47.813118>,  <36.701660, 30.273512, 48.297825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651073, 29.811609, 47.813118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295227, 29.954355, 47.927120>,  <36.081718, 30.040003, 47.995522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295227, 29.954355, 47.927120>,  <36.651073, 29.811609, 47.813118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295227, 29.954355, 47.927120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191939, 0.274122, -0.942346,
		-0.414416, -0.893032, -0.175367,
		-0.889617, 0.356864, 0.285008,
		36.028343, 30.061415, 48.012623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300060, 29.550297, 47.319439>,  <36.651073, 29.811609, 47.813118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300060, 29.550297, 47.319439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091583, 29.856897, 47.469551>,  <35.966496, 30.040857, 47.559620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091583, 29.856897, 47.469551>,  <36.300060, 29.550297, 47.319439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091583, 29.856897, 47.469551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251959, 0.281931, -0.925760,
		-0.815398, -0.577056, 0.046186,
		-0.521194, 0.766500, 0.375280,
		35.935226, 30.086847, 47.582134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776840, 29.656538, 46.872116>,  <36.300060, 29.550297, 47.319439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776840, 29.656538, 46.872116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735729, 29.994053, 47.082813>,  <35.711063, 30.196562, 47.209232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735729, 29.994053, 47.082813>,  <35.776840, 29.656538, 46.872116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735729, 29.994053, 47.082813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063119, 0.522949, -0.850024,
		-0.992700, -0.120607, -0.000486,
		-0.102773, 0.843788, 0.526744,
		35.704899, 30.247189, 47.240837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067657, 29.976931, 46.776928>,  <35.776840, 29.656538, 46.872116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067657, 29.976931, 46.776928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335781, 30.248055, 46.897770>,  <35.496655, 30.410728, 46.970276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335781, 30.248055, 46.897770>,  <35.067657, 29.976931, 46.776928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335781, 30.248055, 46.897770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134460, 0.511297, -0.848820,
		-0.729802, 0.528347, 0.433863,
		0.670305, 0.677808, 0.302104,
		35.536873, 30.451397, 46.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713371, 30.610043, 46.740154>,  <35.067657, 29.976931, 46.776928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713371, 30.610043, 46.740154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092323, 30.733847, 46.772850>,  <35.319695, 30.808128, 46.792465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092323, 30.733847, 46.772850>,  <34.713371, 30.610043, 46.740154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092323, 30.733847, 46.772850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131374, 0.608740, -0.782417,
		-0.291922, 0.730505, 0.617368,
		0.947377, 0.309511, 0.081735,
		35.376537, 30.826700, 46.797371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698883, 31.320967, 46.866051>,  <34.713371, 30.610043, 46.740154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698883, 31.320967, 46.866051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055820, 31.223419, 46.714130>,  <35.269981, 31.164890, 46.622978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.055820, 31.223419, 46.714130>,  <34.698883, 31.320967, 46.866051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055820, 31.223419, 46.714130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251739, 0.429532, -0.867254,
		0.374632, 0.869501, 0.321899,
		0.892344, -0.243867, -0.379804,
		35.323524, 31.150259, 46.600189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.161743, 25.285896, 49.006786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.533913, 25.288124, 48.860207>,  <38.757214, 25.289461, 48.772259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.533913, 25.288124, 48.860207>,  <38.161743, 25.285896, 49.006786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533913, 25.288124, 48.860207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345485, 0.347012, -0.871907,
		0.122306, 0.937844, 0.324792,
		0.930420, 0.005571, -0.366453,
		38.813038, 25.289795, 48.750271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221462, 25.866686, 48.636490>,  <38.161743, 25.285896, 49.006786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221462, 25.866686, 48.636490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522179, 25.648949, 48.487625>,  <38.702606, 25.518307, 48.398308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.522179, 25.648949, 48.487625>,  <38.221462, 25.866686, 48.636490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522179, 25.648949, 48.487625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336459, 0.168730, -0.926459,
		0.567106, 0.821718, -0.056300,
		0.751789, -0.544343, -0.372162,
		38.747715, 25.485645, 48.375977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394249, 26.267384, 48.141838>,  <38.221462, 25.866686, 48.636490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394249, 26.267384, 48.141838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545387, 25.909971, 48.044819>,  <38.636070, 25.695524, 47.986607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.545387, 25.909971, 48.044819>,  <38.394249, 26.267384, 48.141838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545387, 25.909971, 48.044819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253858, 0.151952, -0.955231,
		0.890387, 0.422505, -0.169415,
		0.377847, -0.893533, -0.242552,
		38.658741, 25.641911, 47.972054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523254, 26.351046, 47.482685>,  <38.394249, 26.267384, 48.141838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523254, 26.351046, 47.482685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585297, 25.956047, 47.493980>,  <38.622520, 25.719048, 47.500755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585297, 25.956047, 47.493980>,  <38.523254, 26.351046, 47.482685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585297, 25.956047, 47.493980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496596, -0.102645, -0.861891,
		0.854011, 0.119663, -0.506306,
		0.155106, -0.987494, 0.028236,
		38.631828, 25.659800, 47.502453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997845, 26.129345, 46.939304>,  <38.523254, 26.351046, 47.482685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997845, 26.129345, 46.939304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.780922, 25.805664, 47.029728>,  <38.650768, 25.611456, 47.083981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.780922, 25.805664, 47.029728>,  <38.997845, 26.129345, 46.939304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780922, 25.805664, 47.029728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286340, -0.074945, -0.955192,
		0.789885, -0.582732, -0.191064,
		-0.542302, -0.809201, 0.226057,
		38.618233, 25.562904, 47.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092815, 25.665403, 46.458557>,  <38.997845, 26.129345, 46.939304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092815, 25.665403, 46.458557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.766239, 25.509396, 46.628876>,  <38.570293, 25.415791, 46.731068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.766239, 25.509396, 46.628876>,  <39.092815, 25.665403, 46.458557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766239, 25.509396, 46.628876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425083, -0.093095, -0.900354,
		0.390797, -0.916087, -0.089785,
		-0.816445, -0.390022, 0.425795,
		38.521305, 25.392389, 46.756615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904858, 25.222073, 46.017628>,  <39.092815, 25.665403, 46.458557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904858, 25.222073, 46.017628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.559319, 25.270544, 46.213211>,  <38.351994, 25.299627, 46.330563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.559319, 25.270544, 46.213211>,  <38.904858, 25.222073, 46.017628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559319, 25.270544, 46.213211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491358, 0.011288, -0.870885,
		-0.111052, -0.992567, 0.049791,
		-0.863849, 0.121178, 0.488959,
		38.300163, 25.306896, 46.359898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493065, 24.695177, 45.777370>,  <38.904858, 25.222073, 46.017628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493065, 24.695177, 45.777370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257744, 24.981556, 45.927738>,  <38.116550, 25.153383, 46.017960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257744, 24.981556, 45.927738>,  <38.493065, 24.695177, 45.777370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257744, 24.981556, 45.927738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568788, -0.035928, -0.821699,
		-0.574789, -0.697227, 0.428359,
		-0.588301, 0.715950, 0.375923,
		38.081253, 25.196341, 46.040516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777588, 24.583851, 45.466583>,  <38.493065, 24.695177, 45.777370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777588, 24.583851, 45.466583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733791, 24.947233, 45.627937>,  <37.707512, 25.165262, 45.724751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733791, 24.947233, 45.627937>,  <37.777588, 24.583851, 45.466583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733791, 24.947233, 45.627937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733932, 0.199795, -0.649173,
		-0.670340, -0.367134, 0.644869,
		-0.109492, 0.908457, 0.403382,
		37.700943, 25.219770, 45.748951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096695, 24.703115, 45.472588>,  <37.777588, 24.583851, 45.466583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096695, 24.703115, 45.472588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.275124, 25.060959, 45.483105>,  <37.382183, 25.275665, 45.489414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.275124, 25.060959, 45.483105>,  <37.096695, 24.703115, 45.472588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275124, 25.060959, 45.483105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525082, 0.285382, -0.801777,
		-0.724780, 0.343847, 0.597045,
		0.446075, 0.894610, 0.026291,
		37.408947, 25.329342, 45.490993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610500, 25.263605, 45.396191>,  <37.096695, 24.703115, 45.472588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610500, 25.263605, 45.396191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.956039, 25.435936, 45.291759>,  <37.163361, 25.539335, 45.229099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.956039, 25.435936, 45.291759>,  <36.610500, 25.263605, 45.396191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956039, 25.435936, 45.291759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467522, 0.492625, -0.733992,
		-0.187611, 0.756113, 0.626973,
		0.863843, 0.430829, -0.261078,
		37.215191, 25.565186, 45.213436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398045, 25.987349, 45.266689>,  <36.610500, 25.263605, 45.396191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398045, 25.987349, 45.266689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746666, 25.947397, 45.074684>,  <36.955841, 25.923426, 44.959480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.746666, 25.947397, 45.074684>,  <36.398045, 25.987349, 45.266689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746666, 25.947397, 45.074684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387494, 0.459516, -0.799183,
		0.300395, 0.882536, 0.361792,
		0.871557, -0.099879, -0.480014,
		37.008133, 25.917433, 44.930679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115337, 26.645384, 45.573349>,  <36.398045, 25.987349, 45.266689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115337, 26.645384, 45.573349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721661, 26.578800, 45.597542>,  <35.485455, 26.538849, 45.612057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721661, 26.578800, 45.597542>,  <36.115337, 26.645384, 45.573349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721661, 26.578800, 45.597542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105548, -0.277028, 0.955047,
		-0.142222, 0.946333, 0.290218,
		-0.984191, -0.166461, 0.060484,
		35.426403, 26.528862, 45.615688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935745, 26.924654, 46.265350>,  <36.115337, 26.645384, 45.573349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935745, 26.924654, 46.265350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635223, 26.684359, 46.156059>,  <35.454910, 26.540182, 46.090485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.635223, 26.684359, 46.156059>,  <35.935745, 26.924654, 46.265350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635223, 26.684359, 46.156059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018566, -0.394611, 0.918661,
		-0.659695, 0.695266, 0.285320,
		-0.751304, -0.600739, -0.273232,
		35.409832, 26.504137, 46.074089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431404, 27.024668, 46.752384>,  <35.935745, 26.924654, 46.265350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431404, 27.024668, 46.752384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409218, 26.656368, 46.597908>,  <35.395905, 26.435389, 46.505222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409218, 26.656368, 46.597908>,  <35.431404, 27.024668, 46.752384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409218, 26.656368, 46.597908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095834, -0.380088, 0.919972,
		-0.993851, 0.088041, -0.067156,
		-0.055470, -0.920751, -0.386188,
		35.392578, 26.380142, 46.482052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848728, 26.759809, 47.180096>,  <35.431404, 27.024668, 46.752384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848728, 26.759809, 47.180096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073658, 26.475267, 47.011448>,  <35.208618, 26.304543, 46.910259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073658, 26.475267, 47.011448>,  <34.848728, 26.759809, 47.180096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073658, 26.475267, 47.011448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137017, -0.582977, 0.800852,
		-0.815483, -0.392573, -0.425292,
		0.562329, -0.711354, -0.421619,
		35.242355, 26.261862, 46.884964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408741, 26.252729, 47.428513>,  <34.848728, 26.759809, 47.180096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408741, 26.252729, 47.428513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.751194, 26.079245, 47.316132>,  <34.956665, 25.975155, 47.248703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.751194, 26.079245, 47.316132>,  <34.408741, 26.252729, 47.428513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751194, 26.079245, 47.316132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045810, -0.605237, 0.794726,
		-0.514719, -0.667522, -0.538032,
		0.856134, -0.433709, -0.280948,
		35.008034, 25.949131, 47.231846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300278, 25.555958, 47.358292>,  <34.408741, 26.252729, 47.428513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300278, 25.555958, 47.358292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688915, 25.616669, 47.430912>,  <34.922100, 25.653095, 47.474483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.688915, 25.616669, 47.430912>,  <34.300278, 25.555958, 47.358292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688915, 25.616669, 47.430912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080781, -0.508380, 0.857336,
		0.222421, -0.847652, -0.481680,
		0.971598, 0.151779, 0.181548,
		34.980396, 25.662203, 47.485378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473660, 24.926115, 47.792522>,  <34.300278, 25.555958, 47.358292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473660, 24.926115, 47.792522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.786167, 25.164745, 47.865974>,  <34.973671, 25.307922, 47.910046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.786167, 25.164745, 47.865974>,  <34.473660, 24.926115, 47.792522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786167, 25.164745, 47.865974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083496, -0.191662, 0.977903,
		0.618587, -0.779336, -0.099928,
		0.781267, 0.596575, 0.183632,
		35.020546, 25.343718, 47.921062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888565, 24.518139, 48.285900>,  <34.473660, 24.926115, 47.792522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888565, 24.518139, 48.285900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022678, 24.894285, 48.308865>,  <35.103146, 25.119974, 48.322643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022678, 24.894285, 48.308865>,  <34.888565, 24.518139, 48.285900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022678, 24.894285, 48.308865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036112, -0.073717, 0.996625,
		0.941426, -0.332077, -0.058675,
		0.335281, 0.940367, 0.057407,
		35.123264, 25.176395, 48.326088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503204, 24.426872, 48.754101>,  <34.888565, 24.518139, 48.285900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503204, 24.426872, 48.754101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358505, 24.799782, 48.754959>,  <35.271687, 25.023527, 48.755474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358505, 24.799782, 48.754959>,  <35.503204, 24.426872, 48.754101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358505, 24.799782, 48.754959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002746, -0.001231, 0.999996,
		0.932272, 0.361751, -0.002115,
		-0.361747, 0.932274, 0.002141,
		35.249981, 25.079464, 48.755600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896038, 24.731085, 49.242748>,  <35.503204, 24.426872, 48.754101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896038, 24.731085, 49.242748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604465, 25.000389, 49.193138>,  <35.429523, 25.161972, 49.163372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604465, 25.000389, 49.193138>,  <35.896038, 24.731085, 49.242748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604465, 25.000389, 49.193138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003372, 0.177635, 0.984091,
		0.684579, 0.717752, -0.127213,
		-0.728930, 0.673259, -0.124026,
		35.385788, 25.202368, 49.155930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113285, 25.341145, 49.544899>,  <35.896038, 24.731085, 49.242748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113285, 25.341145, 49.544899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.713531, 25.341087, 49.558975>,  <35.473679, 25.341053, 49.567421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.713531, 25.341087, 49.558975>,  <36.113285, 25.341145, 49.544899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713531, 25.341087, 49.558975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034847, 0.136307, 0.990054,
		-0.004937, 0.990667, -0.136218,
		-0.999380, -0.000141, 0.035195,
		35.413719, 25.341045, 49.569534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892956, 25.929508, 49.945896>,  <36.113285, 25.341145, 49.544899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892956, 25.929508, 49.945896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.557709, 25.711704, 49.932850>,  <35.356560, 25.581022, 49.925022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.557709, 25.711704, 49.932850>,  <35.892956, 25.929508, 49.945896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557709, 25.711704, 49.932850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023977, -0.096511, 0.995043,
		-0.544958, 0.833184, 0.093944,
		-0.838120, -0.544509, -0.032617,
		35.306274, 25.548351, 49.923065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430302, 26.240515, 50.490891>,  <35.892956, 25.929508, 49.945896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430302, 26.240515, 50.490891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.296394, 25.870180, 50.420738>,  <35.216049, 25.647980, 50.378647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.296394, 25.870180, 50.420738>,  <35.430302, 26.240515, 50.490891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296394, 25.870180, 50.420738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107677, -0.222482, 0.968972,
		-0.936130, 0.305493, 0.174171,
		-0.334764, -0.925838, -0.175378,
		35.195965, 25.592428, 50.368126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290401, 26.937506, 50.058815>,  <35.430302, 26.240515, 50.490891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290401, 26.937506, 50.058815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.952415, 27.132790, 50.146156>,  <34.749622, 27.249960, 50.198563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.952415, 27.132790, 50.146156>,  <35.290401, 26.937506, 50.058815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952415, 27.132790, 50.146156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465166, 0.872353, -0.150400,
		-0.263908, -0.025513, -0.964210,
		-0.844969, 0.488210, 0.218354,
		34.698925, 27.279253, 50.211662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957169, 27.195017, 49.416786>,  <35.290401, 26.937506, 50.058815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957169, 27.195017, 49.416786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907639, 27.414869, 49.747257>,  <34.877922, 27.546780, 49.945541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.907639, 27.414869, 49.747257>,  <34.957169, 27.195017, 49.416786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907639, 27.414869, 49.747257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316333, 0.811014, -0.492128,
		-0.940532, 0.200411, -0.274289,
		-0.123824, 0.549629, 0.826181,
		34.870491, 27.579758, 49.995113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564606, 27.835411, 49.257790>,  <34.957169, 27.195017, 49.416786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564606, 27.835411, 49.257790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797321, 27.913816, 49.573536>,  <34.936951, 27.960859, 49.762985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797321, 27.913816, 49.573536>,  <34.564606, 27.835411, 49.257790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797321, 27.913816, 49.573536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329341, 0.830624, -0.448997,
		-0.743675, 0.521193, 0.418694,
		0.581792, 0.196015, 0.789365,
		34.971859, 27.972622, 49.810345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442055, 28.539158, 49.432159>,  <34.564606, 27.835411, 49.257790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442055, 28.539158, 49.432159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.787201, 28.458500, 49.617550>,  <34.994289, 28.410105, 49.728783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.787201, 28.458500, 49.617550>,  <34.442055, 28.539158, 49.432159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787201, 28.458500, 49.617550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333156, 0.916483, -0.221508,
		-0.380098, 0.345539, 0.857979,
		0.862863, -0.201647, 0.463472,
		35.046059, 28.398006, 49.756592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560703, 29.149252, 49.751991>,  <34.442055, 28.539158, 49.432159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560703, 29.149252, 49.751991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921951, 28.978790, 49.730942>,  <35.138699, 28.876513, 49.718311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.921951, 28.978790, 49.730942>,  <34.560703, 29.149252, 49.751991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921951, 28.978790, 49.730942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377402, 0.846243, -0.376086,
		0.204803, 0.319790, 0.925089,
		0.903119, -0.426154, -0.052624,
		35.192886, 28.850945, 49.715153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979744, 29.585541, 50.006229>,  <34.560703, 29.149252, 49.751991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979744, 29.585541, 50.006229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226513, 29.352169, 49.794941>,  <35.374573, 29.212145, 49.668167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.226513, 29.352169, 49.794941>,  <34.979744, 29.585541, 50.006229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226513, 29.352169, 49.794941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483801, 0.810506, -0.330178,
		0.620763, -0.051862, 0.782281,
		0.616919, -0.583431, -0.528223,
		35.411591, 29.177139, 49.636475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553024, 29.984697, 50.011692>,  <34.979744, 29.585541, 50.006229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553024, 29.984697, 50.011692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603012, 29.758934, 49.685299>,  <35.633003, 29.623476, 49.489464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603012, 29.758934, 49.685299>,  <35.553024, 29.984697, 50.011692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603012, 29.758934, 49.685299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166931, 0.822666, -0.543465,
		0.978017, -0.068296, 0.197025,
		0.124969, -0.564407, -0.815982,
		35.640503, 29.589611, 49.440506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180092, 30.136890, 49.608280>,  <35.553024, 29.984697, 50.011692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180092, 30.136890, 49.608280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.951405, 29.968039, 49.326870>,  <35.814194, 29.866728, 49.158024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.951405, 29.968039, 49.326870>,  <36.180092, 30.136890, 49.608280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951405, 29.968039, 49.326870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191303, 0.765262, -0.614636,
		0.797838, -0.485983, -0.356756,
		-0.571715, -0.422131, -0.703525,
		35.779888, 29.841400, 49.115814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848209, 30.073847, 49.192101>,  <36.180092, 30.136890, 49.608280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848209, 30.073847, 49.192101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.236439, 30.169891, 49.199413>,  <37.469376, 30.227518, 49.203800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.236439, 30.169891, 49.199413>,  <36.848209, 30.073847, 49.192101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236439, 30.169891, 49.199413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137109, -0.613423, 0.777762,
		0.197962, -0.752369, -0.628293,
		0.970573, 0.240111, 0.018278,
		37.527611, 30.241924, 49.204895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113232, 29.500948, 49.207687>,  <36.848209, 30.073847, 49.192101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113232, 29.500948, 49.207687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399025, 29.743250, 49.347733>,  <37.570499, 29.888632, 49.431759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.399025, 29.743250, 49.347733>,  <37.113232, 29.500948, 49.207687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399025, 29.743250, 49.347733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119593, -0.598780, 0.791935,
		0.689360, -0.523949, -0.500259,
		0.714478, 0.605756, 0.350114,
		37.613369, 29.924976, 49.452766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647816, 29.026421, 49.397415>,  <37.113232, 29.500948, 49.207687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647816, 29.026421, 49.397415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.719852, 29.361385, 49.603836>,  <37.763073, 29.562365, 49.727688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.719852, 29.361385, 49.603836>,  <37.647816, 29.026421, 49.397415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719852, 29.361385, 49.603836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236283, -0.546098, 0.803708,
		0.954850, -0.022805, -0.296213,
		0.180090, 0.837411, 0.516053,
		37.773880, 29.612608, 49.758652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236103, 28.849051, 49.808125>,  <37.647816, 29.026421, 49.397415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236103, 28.849051, 49.808125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.092243, 29.170189, 49.998322>,  <38.005928, 29.362873, 50.112438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.092243, 29.170189, 49.998322>,  <38.236103, 28.849051, 49.808125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092243, 29.170189, 49.998322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129919, -0.461538, 0.877556,
		0.924000, 0.377384, 0.061685,
		-0.359646, 0.802848, 0.475490,
		37.984348, 29.411043, 50.140968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752415, 29.013914, 50.194939>,  <38.236103, 28.849051, 49.808125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752415, 29.013914, 50.194939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.409256, 29.158419, 50.341087>,  <38.203362, 29.245121, 50.428776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.409256, 29.158419, 50.341087>,  <38.752415, 29.013914, 50.194939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409256, 29.158419, 50.341087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177571, -0.458832, 0.870599,
		0.482158, 0.811767, 0.329483,
		-0.857900, 0.361259, 0.365375,
		38.151886, 29.266796, 50.450699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912411, 29.410467, 50.790607>,  <38.752415, 29.013914, 50.194939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912411, 29.410467, 50.790607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.528606, 29.309803, 50.841206>,  <38.298325, 29.249405, 50.871567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.528606, 29.309803, 50.841206>,  <38.912411, 29.410467, 50.790607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528606, 29.309803, 50.841206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253004, -0.572688, 0.779755,
		-0.123791, 0.780189, 0.613173,
		-0.959513, -0.251662, 0.126498,
		38.240753, 29.234304, 50.879154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956558, 29.391209, 51.416611>,  <38.912411, 29.410467, 50.790607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956558, 29.391209, 51.416611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.598568, 29.233847, 51.332474>,  <38.383774, 29.139429, 51.281990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.598568, 29.233847, 51.332474>,  <38.956558, 29.391209, 51.416611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598568, 29.233847, 51.332474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040246, -0.540789, 0.840195,
		-0.444290, 0.743491, 0.499828,
		-0.894979, -0.393406, -0.210345,
		38.330074, 29.115826, 51.269371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541149, 29.255398, 52.109581>,  <38.956558, 29.391209, 51.416611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541149, 29.255398, 52.109581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.374310, 29.012564, 51.839031>,  <38.274208, 28.866863, 51.676701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.374310, 29.012564, 51.839031>,  <38.541149, 29.255398, 52.109581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374310, 29.012564, 51.839031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109498, -0.705209, 0.700493,
		-0.902243, 0.366234, 0.227664,
		-0.417095, -0.607086, -0.676372,
		38.249180, 28.830439, 51.636120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825493, 29.115738, 52.342297>,  <38.541149, 29.255398, 52.109581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825493, 29.115738, 52.342297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.996387, 28.826370, 52.125359>,  <38.098923, 28.652750, 51.995197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.996387, 28.826370, 52.125359>,  <37.825493, 29.115738, 52.342297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996387, 28.826370, 52.125359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089893, -0.630856, 0.770675,
		-0.899662, -0.280505, -0.334552,
		0.427232, -0.723421, -0.542342,
		38.124557, 28.609344, 51.962654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.036896, 34.742878, 37.054493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163185, 34.364483, 37.083946>,  <38.238960, 34.137447, 37.101620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163185, 34.364483, 37.083946>,  <38.036896, 34.742878, 37.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163185, 34.364483, 37.083946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377592, -0.054066, 0.924392,
		-0.870484, -0.319659, -0.374268,
		0.315726, -0.945989, 0.073637,
		38.257904, 34.080685, 37.106037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466961, 34.288052, 37.316807>,  <38.036896, 34.742878, 37.054493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466961, 34.288052, 37.316807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817272, 34.120213, 37.412273>,  <38.027458, 34.019508, 37.469551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817272, 34.120213, 37.412273>,  <37.466961, 34.288052, 37.316807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817272, 34.120213, 37.412273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331877, -0.164341, 0.928897,
		-0.350539, -0.892710, -0.283180,
		0.875774, -0.419595, 0.238662,
		38.080006, 33.994335, 37.483871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355366, 33.597137, 37.490047>,  <37.466961, 34.288052, 37.316807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355366, 33.597137, 37.490047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697899, 33.710133, 37.662975>,  <37.903419, 33.777927, 37.766731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697899, 33.710133, 37.662975>,  <37.355366, 33.597137, 37.490047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697899, 33.710133, 37.662975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347795, -0.303378, 0.887130,
		0.381757, -0.910036, -0.161545,
		0.856329, 0.282483, 0.432323,
		37.954796, 33.794876, 37.792671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445473, 33.085579, 37.971851>,  <37.355366, 33.597137, 37.490047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445473, 33.085579, 37.971851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687485, 33.384243, 38.082443>,  <37.832691, 33.563442, 38.148796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687485, 33.384243, 38.082443>,  <37.445473, 33.085579, 37.971851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687485, 33.384243, 38.082443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247108, -0.154006, 0.956671,
		0.756887, -0.647133, 0.091327,
		0.605029, 0.746660, 0.276477,
		37.868992, 33.608242, 38.165386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838249, 32.858536, 38.509796>,  <37.445473, 33.085579, 37.971851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838249, 32.858536, 38.509796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889103, 33.251499, 38.564514>,  <37.919617, 33.487278, 38.597347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889103, 33.251499, 38.564514>,  <37.838249, 32.858536, 38.509796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889103, 33.251499, 38.564514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129795, -0.153211, 0.979632,
		0.983356, -0.106791, -0.146990,
		0.127136, 0.982406, 0.136800,
		37.927242, 33.546223, 38.605553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339432, 32.893581, 39.028149>,  <37.838249, 32.858536, 38.509796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339432, 32.893581, 39.028149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148525, 33.245079, 39.026089>,  <38.033981, 33.455978, 39.024853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148525, 33.245079, 39.026089>,  <38.339432, 32.893581, 39.028149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148525, 33.245079, 39.026089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143865, -0.072353, 0.986949,
		0.866904, 0.471776, 0.160952,
		-0.477264, 0.878745, -0.005149,
		38.005344, 33.508701, 39.024544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652664, 33.316727, 39.473408>,  <38.339432, 32.893581, 39.028149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652664, 33.316727, 39.473408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303577, 33.508030, 39.434155>,  <38.094124, 33.622810, 39.410603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303577, 33.508030, 39.434155>,  <38.652664, 33.316727, 39.473408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303577, 33.508030, 39.434155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111389, 0.000651, 0.993777,
		0.475344, 0.878220, 0.052704,
		-0.872720, 0.478257, -0.098133,
		38.041763, 33.651508, 39.404713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641991, 33.783367, 40.052963>,  <38.652664, 33.316727, 39.473408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641991, 33.783367, 40.052963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261330, 33.754868, 39.933441>,  <38.032932, 33.737770, 39.861729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261330, 33.754868, 39.933441>,  <38.641991, 33.783367, 40.052963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261330, 33.754868, 39.933441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300851, 0.019691, 0.953468,
		-0.062046, 0.997265, -0.040173,
		-0.951651, -0.071244, -0.298807,
		37.975834, 33.733494, 39.843800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247566, 34.211224, 40.489960>,  <38.641991, 33.783367, 40.052963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247566, 34.211224, 40.489960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978256, 33.964272, 40.327217>,  <37.816669, 33.816101, 40.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978256, 33.964272, 40.327217>,  <38.247566, 34.211224, 40.489960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978256, 33.964272, 40.327217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510514, -0.009887, 0.859812,
		-0.534857, 0.786600, -0.308526,
		-0.673278, -0.617384, -0.406859,
		37.776272, 33.779057, 40.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598930, 34.451664, 40.757160>,  <38.247566, 34.211224, 40.489960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598930, 34.451664, 40.757160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561382, 34.071304, 40.639187>,  <37.538853, 33.843090, 40.568401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561382, 34.071304, 40.639187>,  <37.598930, 34.451664, 40.757160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561382, 34.071304, 40.639187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436603, -0.226919, 0.870566,
		-0.894743, 0.210491, -0.393863,
		-0.093872, -0.950895, -0.294935,
		37.533222, 33.786037, 40.550705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882080, 34.265770, 40.791862>,  <37.598930, 34.451664, 40.757160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882080, 34.265770, 40.791862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090824, 33.925041, 40.810047>,  <37.216072, 33.720604, 40.820957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090824, 33.925041, 40.810047>,  <36.882080, 34.265770, 40.791862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090824, 33.925041, 40.810047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527426, -0.280315, 0.802025,
		-0.670436, -0.442524, -0.595557,
		0.521860, -0.851819, 0.045466,
		37.247383, 33.669495, 40.823689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409851, 33.778870, 41.056896>,  <36.882080, 34.265770, 40.791862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409851, 33.778870, 41.056896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755665, 33.581680, 41.096016>,  <36.963154, 33.463367, 41.119488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755665, 33.581680, 41.096016>,  <36.409851, 33.778870, 41.056896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755665, 33.581680, 41.096016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314972, -0.379819, 0.869788,
		-0.391644, -0.782757, -0.483639,
		0.864527, -0.492979, 0.097792,
		37.015022, 33.433788, 41.125355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642544, 33.698318, 41.223557>,  <36.409851, 33.778870, 41.056896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642544, 33.698318, 41.223557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258259, 33.708771, 41.334087>,  <35.027687, 33.715042, 41.400406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258259, 33.708771, 41.334087>,  <35.642544, 33.698318, 41.223557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258259, 33.708771, 41.334087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245967, 0.381122, -0.891205,
		-0.128602, -0.924155, -0.359720,
		-0.960709, 0.026131, 0.276325,
		34.970047, 33.716610, 41.416985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251266, 33.292702, 40.814102>,  <35.642544, 33.698318, 41.223557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251266, 33.292702, 40.814102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975983, 33.551510, 40.945396>,  <34.810814, 33.706795, 41.024174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975983, 33.551510, 40.945396>,  <35.251266, 33.292702, 40.814102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975983, 33.551510, 40.945396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394297, 0.046211, -0.917820,
		-0.609014, -0.761073, 0.223314,
		-0.688209, 0.647018, 0.328232,
		34.769520, 33.745617, 41.043865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664825, 33.239693, 40.316124>,  <35.251266, 33.292702, 40.814102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664825, 33.239693, 40.316124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573128, 33.570477, 40.521484>,  <34.518108, 33.768948, 40.644699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573128, 33.570477, 40.521484>,  <34.664825, 33.239693, 40.316124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573128, 33.570477, 40.521484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529698, 0.336521, -0.778572,
		-0.816620, -0.450430, 0.360895,
		-0.229243, 0.826962, 0.513401,
		34.504356, 33.818565, 40.675507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897148, 33.307343, 40.207542>,  <34.664825, 33.239693, 40.316124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897148, 33.307343, 40.207542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043060, 33.660721, 40.325153>,  <34.130608, 33.872749, 40.395721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043060, 33.660721, 40.325153>,  <33.897148, 33.307343, 40.207542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043060, 33.660721, 40.325153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528093, 0.456390, -0.716119,
		-0.766847, 0.105951, 0.633025,
		0.364779, 0.883450, 0.294029,
		34.152493, 33.925755, 40.413361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363747, 33.680271, 40.175354>,  <33.897148, 33.307343, 40.207542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363747, 33.680271, 40.175354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656048, 33.953293, 40.170841>,  <33.831429, 34.117104, 40.168133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656048, 33.953293, 40.170841>,  <33.363747, 33.680271, 40.175354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656048, 33.953293, 40.170841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521608, 0.547627, -0.654240,
		-0.440371, 0.483974, 0.756203,
		0.730752, 0.682550, -0.011286,
		33.875275, 34.158058, 40.167454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117599, 34.376694, 40.191753>,  <33.363747, 33.680271, 40.175354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117599, 34.376694, 40.191753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479187, 34.403065, 40.022762>,  <33.696140, 34.418888, 39.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479187, 34.403065, 40.022762>,  <33.117599, 34.376694, 40.191753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479187, 34.403065, 40.022762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395636, 0.503726, -0.767940,
		0.162186, 0.861344, 0.481438,
		0.903973, 0.065925, -0.422476,
		33.750378, 34.422844, 39.896019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202515, 35.086185, 39.976124>,  <33.117599, 34.376694, 40.191753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202515, 35.086185, 39.976124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451897, 34.860149, 39.759983>,  <33.601524, 34.724529, 39.630299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451897, 34.860149, 39.759983>,  <33.202515, 35.086185, 39.976124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451897, 34.860149, 39.759983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380553, 0.384405, -0.841078,
		0.682997, 0.730006, 0.024613,
		0.623453, -0.565087, -0.540354,
		33.638931, 34.690624, 39.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320686, 35.518932, 39.396259>,  <33.202515, 35.086185, 39.976124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320686, 35.518932, 39.396259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467987, 35.167213, 39.275440>,  <33.556366, 34.956184, 39.202950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467987, 35.167213, 39.275440>,  <33.320686, 35.518932, 39.396259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467987, 35.167213, 39.275440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320690, 0.184810, -0.928980,
		0.872668, 0.438960, -0.213925,
		0.368249, -0.879295, -0.302048,
		33.578461, 34.903423, 39.184826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732769, 35.704006, 38.756996>,  <33.320686, 35.518932, 39.396259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732769, 35.704006, 38.756996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643387, 35.314224, 38.748035>,  <33.589756, 35.080357, 38.742661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643387, 35.314224, 38.748035>,  <33.732769, 35.704006, 38.756996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643387, 35.314224, 38.748035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256691, 0.081003, -0.963093,
		0.940306, -0.209462, -0.268235,
		-0.223459, -0.974456, -0.022401,
		33.576347, 35.021889, 38.741314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937630, 35.543156, 38.118591>,  <33.732769, 35.704006, 38.756996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937630, 35.543156, 38.118591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654736, 35.279240, 38.220177>,  <33.485001, 35.120892, 38.281128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654736, 35.279240, 38.220177>,  <33.937630, 35.543156, 38.118591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654736, 35.279240, 38.220177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416409, 0.098454, -0.903831,
		0.571333, -0.744974, -0.344372,
		-0.707235, -0.659788, 0.253963,
		33.442566, 35.081303, 38.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857838, 35.104469, 37.546246>,  <33.937630, 35.543156, 38.118591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857838, 35.104469, 37.546246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523937, 35.031837, 37.754177>,  <33.323597, 34.988258, 37.878937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523937, 35.031837, 37.754177>,  <33.857838, 35.104469, 37.546246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523937, 35.031837, 37.754177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548579, 0.192806, -0.813565,
		0.047496, -0.964291, -0.260552,
		-0.834749, -0.181575, 0.519832,
		33.273514, 34.977364, 37.910126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498165, 34.449745, 37.380852>,  <33.857838, 35.104469, 37.546246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498165, 34.449745, 37.380852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203609, 34.678925, 37.524773>,  <33.026875, 34.816433, 37.611126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203609, 34.678925, 37.524773>,  <33.498165, 34.449745, 37.380852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203609, 34.678925, 37.524773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503603, -0.109075, -0.857022,
		-0.451785, -0.812301, 0.368861,
		-0.736393, 0.572949, 0.359798,
		32.982693, 34.850807, 37.632713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966667, 34.135284, 37.018608>,  <33.498165, 34.449745, 37.380852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966667, 34.135284, 37.018608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824245, 34.475842, 37.172672>,  <32.738792, 34.680176, 37.265110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824245, 34.475842, 37.172672>,  <32.966667, 34.135284, 37.018608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824245, 34.475842, 37.172672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666372, 0.057621, -0.743390,
		-0.655113, -0.521349, 0.546830,
		-0.356056, 0.851396, 0.385160,
		32.717430, 34.731262, 37.288219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289192, 34.047863, 37.110558>,  <32.966667, 34.135284, 37.018608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289192, 34.047863, 37.110558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343239, 34.442513, 37.074089>,  <32.375668, 34.679302, 37.052208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343239, 34.442513, 37.074089>,  <32.289192, 34.047863, 37.110558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343239, 34.442513, 37.074089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606161, 0.009523, -0.795285,
		-0.783781, 0.162715, 0.599342,
		0.135112, 0.986627, -0.091168,
		32.383774, 34.738503, 37.046738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533764, 33.334263, 37.301186>,  <32.289192, 34.047863, 37.110558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533764, 33.334263, 37.301186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259682, 33.123589, 37.099953>,  <32.095234, 32.997185, 36.979214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259682, 33.123589, 37.099953>,  <32.533764, 33.334263, 37.301186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259682, 33.123589, 37.099953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163067, -0.784119, 0.598805,
		-0.709860, 0.328268, 0.623168,
		-0.685207, -0.526686, -0.503084,
		32.054119, 32.965584, 36.949028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977358, 33.134567, 37.700577>,  <32.533764, 33.334263, 37.301186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977358, 33.134567, 37.700577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088593, 32.892719, 37.402020>,  <32.155334, 32.747608, 37.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088593, 32.892719, 37.402020>,  <31.977358, 33.134567, 37.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088593, 32.892719, 37.402020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443226, -0.608607, 0.658141,
		-0.852185, -0.513839, 0.098740,
		0.278085, -0.604622, -0.746392,
		32.172016, 32.711334, 37.178101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619963, 32.507378, 37.769264>,  <31.977358, 33.134567, 37.700577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619963, 32.507378, 37.769264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977476, 32.463985, 37.595192>,  <32.191982, 32.437950, 37.490749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977476, 32.463985, 37.595192>,  <31.619963, 32.507378, 37.769264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977476, 32.463985, 37.595192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244491, -0.695610, 0.675537,
		-0.376002, -0.710182, -0.595201,
		0.893782, -0.108482, -0.435184,
		32.245609, 32.431442, 37.464638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747009, 31.779518, 37.394859>,  <31.619963, 32.507378, 37.769264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747009, 31.779518, 37.394859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091671, 31.938614, 37.520939>,  <32.298470, 32.034073, 37.596588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091671, 31.938614, 37.520939>,  <31.747009, 31.779518, 37.394859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091671, 31.938614, 37.520939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199006, -0.836165, 0.511101,
		0.466847, -0.377666, -0.799639,
		0.861656, 0.397739, 0.315203,
		32.350166, 32.057934, 37.615501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166042, 31.214634, 37.578274>,  <31.747009, 31.779518, 37.394859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166042, 31.214634, 37.578274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373138, 31.513863, 37.744328>,  <32.497395, 31.693399, 37.843960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373138, 31.513863, 37.744328>,  <32.166042, 31.214634, 37.578274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373138, 31.513863, 37.744328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445411, -0.649970, 0.615749,
		0.730450, -0.133891, -0.669713,
		0.517737, 0.748072, 0.415135,
		32.528458, 31.738285, 37.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876190, 31.060312, 37.593338>,  <32.166042, 31.214634, 37.578274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876190, 31.060312, 37.593338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850964, 31.319590, 37.896881>,  <32.835827, 31.475157, 38.079006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850964, 31.319590, 37.896881>,  <32.876190, 31.060312, 37.593338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850964, 31.319590, 37.896881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397960, -0.680972, 0.614739,
		0.915232, 0.340768, -0.215006,
		-0.063070, 0.648193, 0.758860,
		32.832043, 31.514048, 38.124538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530514, 31.048933, 38.032631>,  <32.876190, 31.060312, 37.593338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530514, 31.048933, 38.032631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263412, 31.229771, 38.269180>,  <33.103153, 31.338274, 38.411110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263412, 31.229771, 38.269180>,  <33.530514, 31.048933, 38.032631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263412, 31.229771, 38.269180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268924, -0.594274, 0.757970,
		0.694112, 0.665168, 0.275247,
		-0.667749, 0.452096, 0.591372,
		33.063087, 31.365398, 38.446590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914753, 31.231384, 38.629219>,  <33.530514, 31.048933, 38.032631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914753, 31.231384, 38.629219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530098, 31.246122, 38.737957>,  <33.299305, 31.254965, 38.803200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530098, 31.246122, 38.737957>,  <33.914753, 31.231384, 38.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530098, 31.246122, 38.737957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244223, -0.336372, 0.909510,
		0.124950, 0.941008, 0.314470,
		-0.961635, 0.036843, 0.271845,
		33.241608, 31.257175, 38.819511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933681, 31.485683, 39.284985>,  <33.914753, 31.231384, 38.629219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933681, 31.485683, 39.284985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590355, 31.282320, 39.257210>,  <33.384361, 31.160303, 39.240543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590355, 31.282320, 39.257210>,  <33.933681, 31.485683, 39.284985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590355, 31.282320, 39.257210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165889, -0.402992, 0.900043,
		-0.485573, 0.760999, 0.430232,
		-0.858312, -0.508407, -0.069441,
		33.332863, 31.129797, 39.236378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780663, 31.396988, 40.000488>,  <33.933681, 31.485683, 39.284985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780663, 31.396988, 40.000488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514797, 31.162445, 39.815273>,  <33.355278, 31.021719, 39.704144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514797, 31.162445, 39.815273>,  <33.780663, 31.396988, 40.000488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514797, 31.162445, 39.815273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060227, -0.575682, 0.815453,
		-0.744708, 0.569892, 0.347322,
		-0.664667, -0.586356, -0.463038,
		33.315395, 30.986538, 39.676361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098160, 31.449909, 40.322563>,  <33.780663, 31.396988, 40.000488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098160, 31.449909, 40.322563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174099, 31.099840, 40.144562>,  <33.219662, 30.889799, 40.037762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174099, 31.099840, 40.144562>,  <33.098160, 31.449909, 40.322563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174099, 31.099840, 40.144562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087510, -0.436362, 0.895505,
		-0.977905, -0.208956, -0.006258,
		0.189852, -0.875172, -0.445006,
		33.231056, 30.837288, 40.011059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764378, 30.971453, 40.690922>,  <33.098160, 31.449909, 40.322563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764378, 30.971453, 40.690922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033234, 30.748278, 40.496220>,  <33.194546, 30.614372, 40.379398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033234, 30.748278, 40.496220>,  <32.764378, 30.971453, 40.690922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033234, 30.748278, 40.496220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185381, -0.509655, 0.840170,
		-0.716840, -0.654949, -0.239129,
		0.672141, -0.557938, -0.486756,
		33.234875, 30.580896, 40.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514584, 30.257084, 40.792236>,  <32.764378, 30.971453, 40.690922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514584, 30.257084, 40.792236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897617, 30.238094, 40.678543>,  <33.127438, 30.226700, 40.610329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897617, 30.238094, 40.678543>,  <32.514584, 30.257084, 40.792236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897617, 30.238094, 40.678543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180995, -0.668422, 0.721424,
		-0.224236, -0.742265, -0.631475,
		0.957580, -0.047475, -0.284230,
		33.184891, 30.223852, 40.593273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631500, 29.587921, 40.802238>,  <32.514584, 30.257084, 40.792236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631500, 29.587921, 40.802238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002708, 29.736349, 40.789009>,  <33.225433, 29.825405, 40.781071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002708, 29.736349, 40.789009>,  <32.631500, 29.587921, 40.802238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002708, 29.736349, 40.789009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348445, -0.833165, 0.429444,
		0.131801, -0.410054, -0.902488,
		0.928017, 0.371068, -0.033069,
		33.281113, 29.847670, 40.779087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202232, 29.045263, 40.665585>,  <32.631500, 29.587921, 40.802238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202232, 29.045263, 40.665585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421795, 29.328417, 40.843395>,  <33.553532, 29.498308, 40.950081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421795, 29.328417, 40.843395>,  <33.202232, 29.045263, 40.665585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421795, 29.328417, 40.843395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339268, -0.674701, 0.655497,
		0.763935, -0.208995, -0.610512,
		0.548908, 0.707884, 0.444522,
		33.586468, 29.540783, 40.976753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778652, 28.688953, 40.804405>,  <33.202232, 29.045263, 40.665585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778652, 28.688953, 40.804405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816677, 29.017237, 41.029758>,  <33.839493, 29.214207, 41.164970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816677, 29.017237, 41.029758>,  <33.778652, 28.688953, 40.804405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816677, 29.017237, 41.029758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517816, -0.524124, 0.676137,
		0.850194, 0.227452, -0.474801,
		0.095066, 0.820707, 0.563385,
		33.845196, 29.263449, 41.198772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512897, 28.774151, 41.018185>,  <33.778652, 28.688953, 40.804405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512897, 28.774151, 41.018185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290604, 28.939585, 41.306660>,  <34.157227, 29.038845, 41.479744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290604, 28.939585, 41.306660>,  <34.512897, 28.774151, 41.018185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290604, 28.939585, 41.306660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501299, -0.525322, 0.687558,
		0.663217, 0.743629, 0.084612,
		-0.555737, 0.413584, 0.721183,
		34.123882, 29.063660, 41.523014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953632, 28.971134, 41.561481>,  <34.512897, 28.774151, 41.018185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953632, 28.971134, 41.561481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601574, 28.952225, 41.750420>,  <34.390339, 28.940878, 41.863781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601574, 28.952225, 41.750420>,  <34.953632, 28.971134, 41.561481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601574, 28.952225, 41.750420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412951, -0.567003, 0.712726,
		0.234125, 0.822358, 0.518568,
		-0.880146, -0.047276, 0.472343,
		34.337532, 28.938042, 41.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155285, 29.056467, 42.199589>,  <34.953632, 28.971134, 41.561481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155285, 29.056467, 42.199589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791370, 28.897820, 42.248535>,  <34.573021, 28.802631, 42.277905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791370, 28.897820, 42.248535>,  <35.155285, 29.056467, 42.199589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791370, 28.897820, 42.248535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333779, -0.523856, 0.783688,
		-0.246722, 0.753836, 0.608983,
		-0.909791, -0.396619, 0.122368,
		34.518433, 28.778833, 42.285244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963715, 29.133749, 42.894463>,  <35.155285, 29.056467, 42.199589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963715, 29.133749, 42.894463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733192, 28.836315, 42.758846>,  <34.594879, 28.657854, 42.677475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733192, 28.836315, 42.758846>,  <34.963715, 29.133749, 42.894463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733192, 28.836315, 42.758846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220681, -0.541051, 0.811520,
		-0.786873, 0.392866, 0.475907,
		-0.576309, -0.743586, -0.339040,
		34.560299, 28.613239, 42.657135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578819, 28.932419, 43.537632>,  <34.963715, 29.133749, 42.894463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578819, 28.932419, 43.537632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549110, 28.625839, 43.282433>,  <34.531284, 28.441893, 43.129314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549110, 28.625839, 43.282433>,  <34.578819, 28.932419, 43.537632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549110, 28.625839, 43.282433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100862, -0.642259, 0.759823,
		-0.992124, -0.007915, 0.125009,
		-0.074274, -0.766447, -0.637998,
		34.526829, 28.395905, 43.091034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989357, 28.534298, 43.707127>,  <34.578819, 28.932419, 43.537632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989357, 28.534298, 43.707127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237850, 28.293800, 43.506100>,  <34.386944, 28.149502, 43.385483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237850, 28.293800, 43.506100>,  <33.989357, 28.534298, 43.707127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237850, 28.293800, 43.506100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017103, -0.630783, 0.775771,
		-0.783442, -0.490527, -0.381578,
		0.621230, -0.601245, -0.502571,
		34.424221, 28.113426, 43.355328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773659, 27.890627, 43.866405>,  <33.989357, 28.534298, 43.707127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773659, 27.890627, 43.866405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142761, 27.830729, 43.724361>,  <34.364223, 27.794790, 43.639137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142761, 27.830729, 43.724361>,  <33.773659, 27.890627, 43.866405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142761, 27.830729, 43.724361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195418, -0.612381, 0.766030,
		-0.332169, -0.776252, -0.535814,
		0.922754, -0.149743, -0.355107,
		34.419586, 27.785805, 43.617828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805996, 27.214380, 43.995510>,  <33.773659, 27.890627, 43.866405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805996, 27.214380, 43.995510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191082, 27.307274, 43.940025>,  <34.422134, 27.363010, 43.906734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191082, 27.307274, 43.940025>,  <33.805996, 27.214380, 43.995510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191082, 27.307274, 43.940025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242560, -0.514100, 0.822719,
		0.119750, -0.825692, -0.551264,
		0.962718, 0.232235, -0.138716,
		34.479897, 27.376944, 43.898411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169472, 26.566612, 44.003830>,  <33.805996, 27.214380, 43.995510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169472, 26.566612, 44.003830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441883, 26.848827, 44.082226>,  <34.605331, 27.018156, 44.129265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441883, 26.848827, 44.082226>,  <34.169472, 26.566612, 44.003830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441883, 26.848827, 44.082226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412838, -0.591008, 0.693019,
		0.604784, -0.391054, -0.693767,
		0.681030, 0.705540, 0.195990,
		34.646191, 27.060490, 44.141022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838791, 26.262442, 43.998314>,  <34.169472, 26.566612, 44.003830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838791, 26.262442, 43.998314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838383, 26.589241, 44.228970>,  <34.838139, 26.785320, 44.367363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838383, 26.589241, 44.228970>,  <34.838791, 26.262442, 43.998314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838383, 26.589241, 44.228970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427573, -0.520917, 0.738801,
		0.903980, 0.247310, -0.348795,
		-0.001019, 0.816997, 0.576642,
		34.838078, 26.834339, 44.401962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435215, 26.116508, 44.465591>,  <34.838791, 26.262442, 43.998314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435215, 26.116508, 44.465591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262398, 26.428520, 44.646652>,  <35.158707, 26.615726, 44.755291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262398, 26.428520, 44.646652>,  <35.435215, 26.116508, 44.465591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262398, 26.428520, 44.646652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436334, -0.258469, 0.861862,
		0.789274, 0.569869, -0.228684,
		-0.432040, 0.780028, 0.452656,
		35.132786, 26.662529, 44.782448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954826, 26.435080, 44.870941>,  <35.435215, 26.116508, 44.465591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954826, 26.435080, 44.870941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602589, 26.541628, 45.027706>,  <35.391247, 26.605556, 45.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602589, 26.541628, 45.027706>,  <35.954826, 26.435080, 44.870941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602589, 26.541628, 45.027706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287516, -0.357080, 0.888723,
		0.376673, 0.895288, 0.237859,
		-0.880598, 0.266370, 0.391912,
		35.338409, 26.621538, 45.145279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541309, 26.680017, 44.937176>,  <35.954826, 26.435080, 44.870941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541309, 26.680017, 44.937176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800995, 26.447376, 44.741112>,  <36.956806, 26.307793, 44.623474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800995, 26.447376, 44.741112>,  <36.541309, 26.680017, 44.937176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800995, 26.447376, 44.741112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207939, 0.484173, -0.849905,
		0.731630, 0.653694, 0.193395,
		0.649214, -0.581602, -0.490164,
		36.995758, 26.272896, 44.594063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832737, 27.090145, 44.422104>,  <36.541309, 26.680017, 44.937176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832737, 27.090145, 44.422104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918221, 26.728773, 44.273438>,  <36.969513, 26.511950, 44.184238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918221, 26.728773, 44.273438>,  <36.832737, 27.090145, 44.422104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918221, 26.728773, 44.273438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059983, 0.367607, -0.928045,
		0.975053, 0.220629, 0.024372,
		0.213713, -0.903431, -0.371670,
		36.982334, 26.457745, 44.161938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209778, 27.268150, 43.762127>,  <36.832737, 27.090145, 44.422104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209778, 27.268150, 43.762127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135296, 26.876516, 43.729328>,  <37.090607, 26.641537, 43.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135296, 26.876516, 43.729328>,  <37.209778, 27.268150, 43.762127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135296, 26.876516, 43.729328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100647, 0.102025, -0.989677,
		0.977342, -0.176034, -0.117539,
		-0.186209, -0.979083, -0.081996,
		37.079433, 26.582792, 43.704731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715034, 27.071608, 43.357189>,  <37.209778, 27.268150, 43.762127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715034, 27.071608, 43.357189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413578, 26.810921, 43.323036>,  <37.232704, 26.654509, 43.302544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413578, 26.810921, 43.323036>,  <37.715034, 27.071608, 43.357189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413578, 26.810921, 43.323036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053077, 0.069140, -0.996194,
		0.655140, -0.755304, -0.017516,
		-0.753640, -0.651717, -0.085386,
		37.187485, 26.615406, 43.297421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948616, 26.489050, 42.934711>,  <37.715034, 27.071608, 43.357189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948616, 26.489050, 42.934711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549374, 26.512665, 42.927723>,  <37.309830, 26.526834, 42.923531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549374, 26.512665, 42.927723>,  <37.948616, 26.489050, 42.934711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549374, 26.512665, 42.927723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014761, -0.045964, -0.998834,
		-0.059796, -0.997195, 0.045005,
		-0.998102, 0.059062, -0.017468,
		37.249943, 26.530376, 42.922482>
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
