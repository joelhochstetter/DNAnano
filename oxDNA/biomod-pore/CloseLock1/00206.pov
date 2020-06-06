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
	<24.338160, 34.871632, 34.433765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338751, 34.853882, 34.833370>,  <24.339106, 34.843231, 35.073135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338751, 34.853882, 34.833370>,  <24.338160, 34.871632, 34.433765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338751, 34.853882, 34.833370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788543, -0.614321, -0.028454,
		0.614978, 0.787807, 0.034086,
		0.001477, -0.044377, 0.999014,
		24.339193, 34.840569, 35.133076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038311, 35.225883, 34.387905>,  <24.338160, 34.871632, 34.433765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038311, 35.225883, 34.387905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325659, 35.292103, 34.117634>,  <25.498068, 35.331833, 33.955471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325659, 35.292103, 34.117634>,  <25.038311, 35.225883, 34.387905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325659, 35.292103, 34.117634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413900, -0.882366, 0.223868,
		-0.559133, -0.440483, -0.702385,
		0.718371, 0.165546, -0.675676,
		25.541170, 35.341766, 33.914932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112047, 34.718452, 33.788624>,  <25.038311, 35.225883, 34.387905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112047, 34.718452, 33.788624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490925, 34.844574, 33.811993>,  <25.718250, 34.920246, 33.826012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490925, 34.844574, 33.811993>,  <25.112047, 34.718452, 33.788624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490925, 34.844574, 33.811993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300546, -0.936417, 0.181094,
		0.111803, -0.153973, -0.981729,
		0.947192, 0.315301, 0.058418,
		25.775082, 34.939163, 33.829517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532713, 34.212749, 33.507664>,  <25.112047, 34.718452, 33.788624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532713, 34.212749, 33.507664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791462, 34.424259, 33.727467>,  <25.946711, 34.551167, 33.859348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791462, 34.424259, 33.727467>,  <25.532713, 34.212749, 33.507664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791462, 34.424259, 33.727467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492661, -0.839783, 0.228143,
		0.582101, 0.123141, -0.803738,
		0.646872, 0.528773, 0.549506,
		25.985523, 34.582890, 33.892319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187906, 33.905682, 33.519337>,  <25.532713, 34.212749, 33.507664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187906, 33.905682, 33.519337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245907, 34.145756, 33.833981>,  <26.280706, 34.289799, 34.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245907, 34.145756, 33.833981>,  <26.187906, 33.905682, 33.519337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245907, 34.145756, 33.833981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622313, -0.673393, 0.399085,
		0.769222, 0.431650, -0.471143,
		0.144999, 0.600183, 0.786610,
		26.289406, 34.325809, 34.069965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893642, 33.962177, 33.650269>,  <26.187906, 33.905682, 33.519337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893642, 33.962177, 33.650269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659153, 33.997250, 33.972424>,  <26.518459, 34.018291, 34.165718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659153, 33.997250, 33.972424>,  <26.893642, 33.962177, 33.650269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659153, 33.997250, 33.972424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672460, -0.501761, 0.544090,
		0.451817, 0.860552, 0.235185,
		-0.586224, 0.087676, 0.805391,
		26.483286, 34.023552, 34.214043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600481, 33.746284, 33.751453>,  <26.893642, 33.962177, 33.650269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600481, 33.746284, 33.751453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937893, 33.625599, 33.573723>,  <28.140341, 33.553188, 33.467083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937893, 33.625599, 33.573723>,  <27.600481, 33.746284, 33.751453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937893, 33.625599, 33.573723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269614, -0.953384, 0.135527,
		-0.464505, 0.005476, -0.885553,
		0.843530, -0.301711, -0.444328,
		28.190952, 33.535084, 33.440426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433922, 33.119198, 33.347240>,  <27.600481, 33.746284, 33.751453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433922, 33.119198, 33.347240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823034, 33.117325, 33.439907>,  <28.056503, 33.116199, 33.495506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823034, 33.117325, 33.439907>,  <27.433922, 33.119198, 33.347240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823034, 33.117325, 33.439907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063986, -0.966350, 0.249144,
		0.222706, -0.257187, -0.940349,
		0.972783, -0.004683, 0.231669,
		28.114870, 33.115921, 33.509407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838196, 32.518147, 33.034451>,  <27.433922, 33.119198, 33.347240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838196, 32.518147, 33.034451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014702, 32.635212, 33.373775>,  <28.120605, 32.705452, 33.577370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014702, 32.635212, 33.373775>,  <27.838196, 32.518147, 33.034451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014702, 32.635212, 33.373775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258983, -0.863566, 0.432646,
		0.859193, -0.410610, -0.305266,
		0.441266, 0.292668, 0.848310,
		28.147081, 32.723011, 33.628269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219467, 32.021141, 33.245171>,  <27.838196, 32.518147, 33.034451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219467, 32.021141, 33.245171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135515, 32.230183, 33.575706>,  <28.085144, 32.355610, 33.774029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135515, 32.230183, 33.575706>,  <28.219467, 32.021141, 33.245171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135515, 32.230183, 33.575706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188089, -0.850956, 0.490404,
		0.959465, -0.052499, 0.276895,
		-0.209880, 0.522606, 0.826337,
		28.072552, 32.386963, 33.823608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514574, 31.646339, 33.622772>,  <28.219467, 32.021141, 33.245171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514574, 31.646339, 33.622772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285429, 31.861948, 33.869766>,  <28.147942, 31.991314, 34.017963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285429, 31.861948, 33.869766>,  <28.514574, 31.646339, 33.622772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285429, 31.861948, 33.869766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100920, -0.794000, 0.599482,
		0.813414, 0.281105, 0.509252,
		-0.572864, 0.539021, 0.617482,
		28.113569, 32.023655, 34.055012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689821, 31.396357, 34.318497>,  <28.514574, 31.646339, 33.622772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689821, 31.396357, 34.318497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338772, 31.582602, 34.364067>,  <28.128141, 31.694349, 34.391407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338772, 31.582602, 34.364067>,  <28.689821, 31.396357, 34.318497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338772, 31.582602, 34.364067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346819, -0.780847, 0.519611,
		0.330895, 0.416512, 0.846774,
		-0.877625, 0.465614, 0.113924,
		28.075485, 31.722286, 34.398243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536057, 31.356689, 35.081627>,  <28.689821, 31.396357, 34.318497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536057, 31.356689, 35.081627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200607, 31.441504, 34.880928>,  <27.999338, 31.492392, 34.760509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200607, 31.441504, 34.880928>,  <28.536057, 31.356689, 35.081627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200607, 31.441504, 34.880928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506668, -0.641846, 0.575605,
		-0.200000, 0.736936, 0.645697,
		-0.838622, 0.212033, -0.501751,
		27.949020, 31.505114, 34.730404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065155, 31.224169, 35.572071>,  <28.536057, 31.356689, 35.081627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065155, 31.224169, 35.572071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870817, 31.205307, 35.222961>,  <27.754213, 31.193991, 35.013496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870817, 31.205307, 35.222961>,  <28.065155, 31.224169, 35.572071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870817, 31.205307, 35.222961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485973, -0.815395, 0.314581,
		-0.726487, 0.576981, 0.373242,
		-0.485847, -0.047153, -0.872771,
		27.725063, 31.191160, 34.961128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335342, 31.194309, 35.708752>,  <28.065155, 31.224169, 35.572071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335342, 31.194309, 35.708752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391752, 31.029028, 35.348892>,  <27.425598, 30.929859, 35.132977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391752, 31.029028, 35.348892>,  <27.335342, 31.194309, 35.708752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391752, 31.029028, 35.348892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403304, -0.853890, 0.328966,
		-0.904134, 0.316440, -0.287068,
		0.141026, -0.413204, -0.899652,
		27.434061, 30.905067, 35.078995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752337, 30.836445, 35.677769>,  <27.335342, 31.194309, 35.708752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752337, 30.836445, 35.677769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994461, 30.689161, 35.395485>,  <27.139736, 30.600792, 35.226116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994461, 30.689161, 35.395485>,  <26.752337, 30.836445, 35.677769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994461, 30.689161, 35.395485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341349, -0.920995, 0.187748,
		-0.719083, 0.127246, -0.683175,
		0.605311, -0.368208, -0.705707,
		27.176054, 30.578699, 35.183773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432608, 30.190554, 35.510555>,  <26.752337, 30.836445, 35.677769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432608, 30.190554, 35.510555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789576, 30.175856, 35.330673>,  <27.003756, 30.167036, 35.222744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789576, 30.175856, 35.330673>,  <26.432608, 30.190554, 35.510555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789576, 30.175856, 35.330673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089065, -0.991414, -0.095733,
		-0.442328, 0.125488, -0.888031,
		0.892420, -0.036747, -0.449707,
		27.057301, 30.164831, 35.195763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301218, 29.676102, 34.972904>,  <26.432608, 30.190554, 35.510555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301218, 29.676102, 34.972904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682201, 29.686317, 35.094345>,  <26.910791, 29.692448, 35.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682201, 29.686317, 35.094345>,  <26.301218, 29.676102, 34.972904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682201, 29.686317, 35.094345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015097, -0.991300, 0.130757,
		0.304300, -0.129123, -0.943784,
		0.952457, 0.025541, 0.303601,
		26.967937, 29.693979, 35.185425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548717, 29.056438, 34.685413>,  <26.301218, 29.676102, 34.972904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548717, 29.056438, 34.685413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820341, 29.169542, 34.956390>,  <26.983316, 29.237406, 35.118977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820341, 29.169542, 34.956390>,  <26.548717, 29.056438, 34.685413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820341, 29.169542, 34.956390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213648, -0.959015, 0.186131,
		0.702304, 0.018339, -0.711641,
		0.679061, 0.282761, 0.677438,
		27.024059, 29.254370, 35.159622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073009, 28.630075, 34.435181>,  <26.548717, 29.056438, 34.685413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073009, 28.630075, 34.435181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142277, 28.766077, 34.804916>,  <27.183838, 28.847677, 35.026760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142277, 28.766077, 34.804916>,  <27.073009, 28.630075, 34.435181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142277, 28.766077, 34.804916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202255, -0.930796, 0.304487,
		0.963902, 0.134225, -0.229952,
		0.173168, 0.340005, 0.924343,
		27.194227, 28.868078, 35.082218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679041, 28.279970, 34.773285>,  <27.073009, 28.630075, 34.435181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679041, 28.279970, 34.773285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408611, 28.395617, 35.044380>,  <27.246353, 28.465004, 35.207039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408611, 28.395617, 35.044380>,  <27.679041, 28.279970, 34.773285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408611, 28.395617, 35.044380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004693, -0.921475, 0.388410,
		0.736819, 0.259413, 0.624342,
		-0.676074, 0.289118, 0.677742,
		27.205790, 28.482351, 35.247704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854696, 27.921331, 35.502892>,  <27.679041, 28.279970, 34.773285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854696, 27.921331, 35.502892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479527, 28.059576, 35.514568>,  <27.254425, 28.142523, 35.521576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479527, 28.059576, 35.514568>,  <27.854696, 27.921331, 35.502892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479527, 28.059576, 35.514568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321243, -0.897358, 0.302574,
		0.130772, 0.274413, 0.952679,
		-0.937924, 0.345609, 0.029197,
		27.198149, 28.163260, 35.523327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704937, 27.659960, 36.148739>,  <27.854696, 27.921331, 35.502892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704937, 27.659960, 36.148739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369514, 27.752979, 35.951660>,  <27.168261, 27.808790, 35.833412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369514, 27.752979, 35.951660>,  <27.704937, 27.659960, 36.148739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369514, 27.752979, 35.951660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421316, -0.850153, 0.315806,
		-0.345425, 0.472401, 0.810875,
		-0.838555, 0.232547, -0.492694,
		27.117949, 27.822744, 35.803852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249609, 27.111200, 36.424713>,  <27.704937, 27.659960, 36.148739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249609, 27.111200, 36.424713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044622, 27.257677, 36.114029>,  <26.921631, 27.345562, 35.927616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044622, 27.257677, 36.114029>,  <27.249609, 27.111200, 36.424713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044622, 27.257677, 36.114029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634814, -0.770670, 0.055500,
		-0.578266, 0.521510, 0.627404,
		-0.512465, 0.366191, -0.776714,
		26.890882, 27.367535, 35.881016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512861, 27.043064, 36.590691>,  <27.249609, 27.111200, 36.424713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512861, 27.043064, 36.590691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574047, 27.043085, 36.195396>,  <26.610758, 27.043097, 35.958221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574047, 27.043085, 36.195396>,  <26.512861, 27.043064, 36.590691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574047, 27.043085, 36.195396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613960, -0.783591, -0.095073,
		-0.774374, 0.621277, -0.119831,
		0.152965, 0.000051, -0.988231,
		26.619936, 27.043100, 35.898926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913792, 27.202034, 36.165337>,  <26.512861, 27.043064, 36.590691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913792, 27.202034, 36.165337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182894, 26.977362, 35.972706>,  <26.344355, 26.842558, 35.857128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182894, 26.977362, 35.972706>,  <25.913792, 27.202034, 36.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182894, 26.977362, 35.972706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660880, -0.748834, -0.049845,
		-0.332626, 0.351800, -0.874984,
		0.672753, -0.561680, -0.481579,
		26.384720, 26.808857, 35.828232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529703, 26.589172, 35.924534>,  <25.913792, 27.202034, 36.165337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529703, 26.589172, 35.924534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906208, 26.514589, 35.811924>,  <26.132111, 26.469839, 35.744358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906208, 26.514589, 35.811924>,  <25.529703, 26.589172, 35.924534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906208, 26.514589, 35.811924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292066, -0.867981, -0.401630,
		-0.169469, 0.460263, -0.871457,
		0.941264, -0.186459, -0.281523,
		26.188587, 26.458652, 35.727467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679733, 26.527729, 35.210052>,  <25.529703, 26.589172, 35.924534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679733, 26.527729, 35.210052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931616, 26.288048, 35.407810>,  <26.082745, 26.144239, 35.526466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931616, 26.288048, 35.407810>,  <25.679733, 26.527729, 35.210052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931616, 26.288048, 35.407810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340589, -0.784949, -0.517546,
		0.698191, 0.157515, -0.698368,
		0.629704, -0.599203, 0.494397,
		26.120527, 26.108288, 35.556129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140541, 26.061186, 34.746975>,  <25.679733, 26.527729, 35.210052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140541, 26.061186, 34.746975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056839, 25.901207, 35.103909>,  <26.006618, 25.805220, 35.318069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056839, 25.901207, 35.103909>,  <26.140541, 26.061186, 34.746975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056839, 25.901207, 35.103909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433839, -0.779836, -0.451264,
		0.876354, -0.481557, -0.010329,
		-0.209255, -0.399948, 0.892330,
		25.994062, 25.781223, 35.371609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258608, 25.438730, 34.654823>,  <26.140541, 26.061186, 34.746975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258608, 25.438730, 34.654823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000135, 25.437950, 34.960098>,  <25.845053, 25.437483, 35.143261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000135, 25.437950, 34.960098>,  <26.258608, 25.438730, 34.654823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000135, 25.437950, 34.960098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510601, -0.742120, -0.434217,
		0.567221, -0.670264, 0.478546,
		-0.646179, -0.001951, 0.763184,
		25.806282, 25.437365, 35.189053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483191, 25.208914, 35.217972>,  <26.258608, 25.438730, 34.654823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483191, 25.208914, 35.217972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598045, 25.560457, 35.370373>,  <26.666958, 25.771383, 35.461811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598045, 25.560457, 35.370373>,  <26.483191, 25.208914, 35.217972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598045, 25.560457, 35.370373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082635, -0.373539, 0.923927,
		0.954319, -0.296775, -0.034632,
		0.287134, 0.878859, 0.380999,
		26.684185, 25.824116, 35.484673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953810, 25.149416, 35.910309>,  <26.483191, 25.208914, 35.217972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953810, 25.149416, 35.910309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796438, 25.512993, 35.965496>,  <26.702015, 25.731140, 35.998608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796438, 25.512993, 35.965496>,  <26.953810, 25.149416, 35.910309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796438, 25.512993, 35.965496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248214, -0.249511, 0.936020,
		0.885213, 0.334014, 0.323777,
		-0.393430, 0.908944, 0.137963,
		26.678410, 25.785677, 36.006886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132784, 25.449448, 36.597324>,  <26.953810, 25.149416, 35.910309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132784, 25.449448, 36.597324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805311, 25.651417, 36.487915>,  <26.608828, 25.772598, 36.422272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805311, 25.651417, 36.487915>,  <27.132784, 25.449448, 36.597324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805311, 25.651417, 36.487915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384269, -0.127751, 0.914340,
		0.426727, 0.853659, 0.298613,
		-0.818683, 0.504921, -0.273520,
		26.559706, 25.802893, 36.405861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167988, 26.106436, 37.029324>,  <27.132784, 25.449448, 36.597324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167988, 26.106436, 37.029324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817236, 25.948351, 36.919861>,  <26.606785, 25.853500, 36.854183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817236, 25.948351, 36.919861>,  <27.167988, 26.106436, 37.029324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817236, 25.948351, 36.919861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362094, 0.168595, 0.916768,
		-0.316180, 0.902986, -0.290941,
		-0.876880, -0.395212, -0.273659,
		26.554173, 25.829788, 36.837765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250031, 25.891098, 37.701790>,  <27.167988, 26.106436, 37.029324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250031, 25.891098, 37.701790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400913, 25.718613, 38.029636>,  <27.491444, 25.615122, 38.226345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400913, 25.718613, 38.029636>,  <27.250031, 25.891098, 37.701790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400913, 25.718613, 38.029636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598246, 0.789025, 0.139793,
		-0.706977, 0.437600, 0.555599,
		0.377208, -0.431215, 0.819614,
		27.514076, 25.589249, 38.275520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131084, 26.272341, 38.336864>,  <27.250031, 25.891098, 37.701790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131084, 26.272341, 38.336864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481771, 26.079969, 38.333309>,  <27.692183, 25.964546, 38.331177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481771, 26.079969, 38.333309>,  <27.131084, 26.272341, 38.336864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481771, 26.079969, 38.333309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477106, 0.867103, 0.143185,
		-0.061154, -0.129773, 0.989656,
		0.876715, -0.480927, -0.008889,
		27.744785, 25.935692, 38.330643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541500, 26.681549, 38.748024>,  <27.131084, 26.272341, 38.336864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541500, 26.681549, 38.748024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807570, 26.448643, 38.561047>,  <27.967211, 26.308899, 38.448860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807570, 26.448643, 38.561047>,  <27.541500, 26.681549, 38.748024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807570, 26.448643, 38.561047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655429, 0.755214, -0.008048,
		0.357709, -0.301025, 0.883984,
		0.665175, -0.582268, -0.467447,
		28.007122, 26.273962, 38.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140038, 26.769478, 39.020863>,  <27.541500, 26.681549, 38.748024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140038, 26.769478, 39.020863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249491, 26.608143, 38.671589>,  <28.315163, 26.511343, 38.462025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249491, 26.608143, 38.671589>,  <28.140038, 26.769478, 39.020863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249491, 26.608143, 38.671589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695857, 0.709741, -0.109776,
		0.664008, -0.577570, 0.474874,
		0.273635, -0.403336, -0.873180,
		28.331581, 26.487143, 38.409634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883057, 26.887516, 39.019547>,  <28.140038, 26.769478, 39.020863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883057, 26.887516, 39.019547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774494, 26.816711, 38.641129>,  <28.709356, 26.774229, 38.414078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774494, 26.816711, 38.641129>,  <28.883057, 26.887516, 39.019547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774494, 26.816711, 38.641129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623340, 0.716614, -0.312909,
		0.733339, -0.674635, -0.084153,
		-0.271405, -0.177013, -0.946048,
		28.693071, 26.763609, 38.357315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493017, 26.824278, 38.671558>,  <28.883057, 26.887516, 39.019547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493017, 26.824278, 38.671558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216537, 26.902615, 38.393311>,  <29.050650, 26.949615, 38.226360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216537, 26.902615, 38.393311>,  <29.493017, 26.824278, 38.671558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216537, 26.902615, 38.393311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581415, 0.722371, -0.374348,
		0.429185, -0.663194, -0.613167,
		-0.691199, 0.195840, -0.695622,
		29.009178, 26.961367, 38.184624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880125, 27.044083, 38.064377>,  <29.493017, 26.824278, 38.671558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880125, 27.044083, 38.064377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501083, 27.149500, 37.992168>,  <29.273659, 27.212751, 37.948845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501083, 27.149500, 37.992168>,  <29.880125, 27.044083, 38.064377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501083, 27.149500, 37.992168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318446, 0.823940, -0.468738,
		0.025203, -0.501665, -0.864695,
		-0.947606, 0.263545, -0.180518,
		29.216801, 27.228563, 37.938011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790380, 27.080435, 37.305431>,  <29.880125, 27.044083, 38.064377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790380, 27.080435, 37.305431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524960, 27.323521, 37.479961>,  <29.365707, 27.469372, 37.584679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524960, 27.323521, 37.479961>,  <29.790380, 27.080435, 37.305431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524960, 27.323521, 37.479961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368008, 0.772924, -0.516874,
		-0.651359, -0.182401, -0.736519,
		-0.663552, 0.607716, 0.436326,
		29.325893, 27.505835, 37.610859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572025, 27.543318, 36.781731>,  <29.790380, 27.080435, 37.305431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572025, 27.543318, 36.781731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489954, 27.729618, 37.126049>,  <29.440712, 27.841398, 37.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489954, 27.729618, 37.126049>,  <29.572025, 27.543318, 36.781731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489954, 27.729618, 37.126049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295063, 0.868027, -0.399333,
		-0.933188, 0.172057, -0.315525,
		-0.205176, 0.465752, 0.860801,
		29.428402, 27.869343, 37.384289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285305, 28.187231, 36.575123>,  <29.572025, 27.543318, 36.781731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285305, 28.187231, 36.575123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373440, 28.277773, 36.954643>,  <29.426321, 28.332098, 37.182354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373440, 28.277773, 36.954643>,  <29.285305, 28.187231, 36.575123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373440, 28.277773, 36.954643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107192, 0.961192, -0.254203,
		-0.969516, 0.157714, 0.187524,
		0.220338, 0.226352, 0.948797,
		29.439541, 28.345678, 37.239281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726191, 28.669140, 36.846737>,  <29.285305, 28.187231, 36.575123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726191, 28.669140, 36.846737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044022, 28.739540, 37.079174>,  <29.234720, 28.781780, 37.218636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044022, 28.739540, 37.079174>,  <28.726191, 28.669140, 36.846737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044022, 28.739540, 37.079174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031659, 0.943755, -0.329127,
		-0.606338, 0.279914, 0.744314,
		0.794577, 0.175998, 0.581096,
		29.282394, 28.792339, 37.253502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706781, 29.206179, 37.273560>,  <28.726191, 28.669140, 36.846737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706781, 29.206179, 37.273560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105919, 29.179914, 37.273426>,  <29.345402, 29.164156, 37.273346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105919, 29.179914, 37.273426>,  <28.706781, 29.206179, 37.273560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105919, 29.179914, 37.273426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060823, 0.926263, -0.371939,
		0.024733, 0.371116, 0.928257,
		0.997842, -0.065658, -0.000337,
		29.405272, 29.160217, 37.273323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054792, 29.755907, 37.771217>,  <28.706781, 29.206179, 37.273560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054792, 29.755907, 37.771217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307478, 29.661211, 37.475948>,  <29.459089, 29.604393, 37.298786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307478, 29.661211, 37.475948>,  <29.054792, 29.755907, 37.771217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307478, 29.661211, 37.475948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097164, 0.968898, -0.227587,
		0.769089, 0.072046, 0.635068,
		0.631713, -0.236741, -0.738169,
		29.496992, 29.590189, 37.254498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636992, 30.351130, 37.844452>,  <29.054792, 29.755907, 37.771217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636992, 30.351130, 37.844452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707443, 30.156118, 37.502388>,  <29.749714, 30.039112, 37.297150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707443, 30.156118, 37.502388>,  <29.636992, 30.351130, 37.844452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707443, 30.156118, 37.502388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281570, 0.857394, -0.430807,
		0.943237, -0.164908, 0.288287,
		0.176131, -0.487526, -0.855159,
		29.760283, 30.009861, 37.245842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171379, 30.765903, 37.611362>,  <29.636992, 30.351130, 37.844452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171379, 30.765903, 37.611362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031757, 30.559912, 37.298195>,  <29.947985, 30.436316, 37.110294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031757, 30.559912, 37.298195>,  <30.171379, 30.765903, 37.611362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031757, 30.559912, 37.298195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192796, 0.778126, -0.597787,
		0.917055, -0.359603, -0.172323,
		-0.349055, -0.514981, -0.782915,
		29.927040, 30.405418, 37.063320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714521, 30.840252, 37.156395>,  <30.171379, 30.765903, 37.611362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714521, 30.840252, 37.156395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387112, 30.762856, 36.940033>,  <30.190666, 30.716417, 36.810215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387112, 30.762856, 36.940033>,  <30.714521, 30.840252, 37.156395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387112, 30.762856, 36.940033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197936, 0.788925, -0.581738,
		0.539296, -0.583231, -0.607455,
		-0.818524, -0.193492, -0.540906,
		30.141554, 30.704807, 36.777760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853998, 31.085581, 36.503670>,  <30.714521, 30.840252, 37.156395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853998, 31.085581, 36.503670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457829, 31.045792, 36.465366>,  <30.220127, 31.021917, 36.442383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457829, 31.045792, 36.465366>,  <30.853998, 31.085581, 36.503670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457829, 31.045792, 36.465366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010809, 0.635540, -0.771992,
		0.137650, -0.765633, -0.628378,
		-0.990422, -0.099472, -0.095758,
		30.160702, 31.015949, 36.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748407, 31.116003, 35.723785>,  <30.853998, 31.085581, 36.503670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748407, 31.116003, 35.723785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408857, 31.205769, 35.915222>,  <30.205128, 31.259628, 36.030083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408857, 31.205769, 35.915222>,  <30.748407, 31.116003, 35.723785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408857, 31.205769, 35.915222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202496, 0.698277, -0.686589,
		-0.488270, -0.679741, -0.547306,
		-0.848874, 0.224414, 0.478592,
		30.154196, 31.273092, 36.058800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255653, 31.344265, 35.128113>,  <30.748407, 31.116003, 35.723785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255653, 31.344265, 35.128113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114426, 31.499334, 35.468712>,  <30.029690, 31.592375, 35.673073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114426, 31.499334, 35.468712>,  <30.255653, 31.344265, 35.128113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114426, 31.499334, 35.468712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060696, 0.898706, -0.434330,
		-0.933627, -0.205030, -0.293773,
		-0.353067, 0.387672, 0.851501,
		30.008505, 31.615635, 35.724163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644083, 31.679682, 35.000591>,  <30.255653, 31.344265, 35.128113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644083, 31.679682, 35.000591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722929, 31.843546, 35.356865>,  <29.770237, 31.941864, 35.570629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722929, 31.843546, 35.356865>,  <29.644083, 31.679682, 35.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722929, 31.843546, 35.356865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154958, 0.910111, -0.384300,
		-0.968056, -0.062267, 0.242878,
		0.197117, 0.409660, 0.890687,
		29.782064, 31.966444, 35.624069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086967, 32.260128, 35.195698>,  <29.644083, 31.679682, 35.000591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086967, 32.260128, 35.195698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434168, 32.318024, 35.385696>,  <29.642488, 32.352760, 35.499695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434168, 32.318024, 35.385696>,  <29.086967, 32.260128, 35.195698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434168, 32.318024, 35.385696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010276, 0.951136, -0.308601,
		-0.496454, 0.272748, 0.824101,
		0.868002, 0.144738, 0.474998,
		29.694569, 32.361446, 35.528194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993587, 32.913109, 35.522629>,  <29.086967, 32.260128, 35.195698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993587, 32.913109, 35.522629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390696, 32.865158, 35.525024>,  <29.628962, 32.836388, 35.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390696, 32.865158, 35.525024>,  <28.993587, 32.913109, 35.522629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390696, 32.865158, 35.525024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115971, 0.945211, -0.305168,
		0.030923, 0.303656, 0.952280,
		0.992771, -0.119874, 0.005986,
		29.688526, 32.829197, 35.526821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358583, 33.532143, 35.712940>,  <28.993587, 32.913109, 35.522629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358583, 33.532143, 35.712940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666681, 33.340221, 35.544888>,  <29.851540, 33.225067, 35.444057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666681, 33.340221, 35.544888>,  <29.358583, 33.532143, 35.712940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666681, 33.340221, 35.544888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265440, 0.840190, -0.472887,
		0.579882, 0.252720, 0.774512,
		0.770245, -0.479805, -0.420129,
		29.897755, 33.196281, 35.418850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978874, 34.007389, 35.806667>,  <29.358583, 33.532143, 35.712940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978874, 34.007389, 35.806667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033834, 33.756516, 35.500004>,  <30.066811, 33.605991, 35.316006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033834, 33.756516, 35.500004>,  <29.978874, 34.007389, 35.806667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033834, 33.756516, 35.500004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406010, 0.741647, -0.533963,
		0.903481, -0.237903, 0.356546,
		0.137400, -0.627186, -0.766654,
		30.075054, 33.568359, 35.270008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734747, 34.040821, 35.545074>,  <29.978874, 34.007389, 35.806667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734747, 34.040821, 35.545074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436731, 33.959778, 35.290874>,  <30.257921, 33.911152, 35.138355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436731, 33.959778, 35.290874>,  <30.734747, 34.040821, 35.545074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436731, 33.959778, 35.290874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254534, 0.794298, -0.551636,
		0.616544, -0.572749, -0.540214,
		-0.745041, -0.202605, -0.635505,
		30.213219, 33.898994, 35.100224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436512, 34.329811, 35.800117>,  <30.734747, 34.040821, 35.545074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436512, 34.329811, 35.800117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184685, 34.633137, 35.732456>,  <31.033588, 34.815132, 35.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184685, 34.633137, 35.732456>,  <31.436512, 34.329811, 35.800117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184685, 34.633137, 35.732456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499712, 0.561916, 0.659195,
		0.594923, 0.330480, -0.732700,
		-0.629567, 0.758309, -0.169152,
		30.995815, 34.860630, 35.681709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840940, 34.934265, 35.469135>,  <31.436512, 34.329811, 35.800117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840940, 34.934265, 35.469135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537615, 34.999939, 35.721485>,  <31.355619, 35.039345, 35.872894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537615, 34.999939, 35.721485>,  <31.840940, 34.934265, 35.469135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537615, 34.999939, 35.721485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634903, 0.405492, 0.657627,
		-0.147839, 0.899232, -0.411735,
		-0.758315, 0.164189, 0.630873,
		31.310120, 35.049194, 35.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774927, 35.617123, 35.670250>,  <31.840940, 34.934265, 35.469135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774927, 35.617123, 35.670250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631937, 35.395111, 35.970692>,  <31.546143, 35.261906, 36.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631937, 35.395111, 35.970692>,  <31.774927, 35.617123, 35.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631937, 35.395111, 35.970692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675342, 0.401885, 0.618387,
		-0.645078, 0.728310, 0.231168,
		-0.357474, -0.555025, 0.751105,
		31.524694, 35.228603, 36.196022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649244, 35.936619, 36.268349>,  <31.774927, 35.617123, 35.670250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649244, 35.936619, 36.268349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717215, 35.575600, 36.426609>,  <31.757998, 35.358990, 36.521564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717215, 35.575600, 36.426609>,  <31.649244, 35.936619, 36.268349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717215, 35.575600, 36.426609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524430, 0.422736, 0.739099,
		-0.834325, 0.081897, 0.545156,
		0.169928, -0.902545, 0.395648,
		31.768192, 35.304836, 36.545303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523256, 35.948723, 36.998829>,  <31.649244, 35.936619, 36.268349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523256, 35.948723, 36.998829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777021, 35.651199, 36.914665>,  <31.929281, 35.472687, 36.864166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777021, 35.651199, 36.914665>,  <31.523256, 35.948723, 36.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777021, 35.651199, 36.914665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635601, 0.347046, 0.689616,
		-0.439921, -0.571236, 0.692935,
		0.634414, -0.743807, -0.210405,
		31.967346, 35.428059, 36.851543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568542, 35.546238, 37.536221>,  <31.523256, 35.948723, 36.998829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568542, 35.546238, 37.536221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910181, 35.491604, 37.335480>,  <32.115166, 35.458824, 37.215034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910181, 35.491604, 37.335480>,  <31.568542, 35.546238, 37.536221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910181, 35.491604, 37.335480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515377, 0.352138, 0.781271,
		0.070013, -0.925928, 0.371154,
		0.854099, -0.136585, -0.501856,
		32.166412, 35.450630, 37.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974026, 35.236164, 37.993866>,  <31.568542, 35.546238, 37.536221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974026, 35.236164, 37.993866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245541, 35.361671, 37.728294>,  <32.408447, 35.436977, 37.568951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245541, 35.361671, 37.728294>,  <31.974026, 35.236164, 37.993866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245541, 35.361671, 37.728294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596175, 0.292414, 0.747710,
		0.428750, -0.903351, 0.011425,
		0.678785, 0.313769, -0.663928,
		32.449177, 35.455803, 37.529118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668808, 35.030098, 38.245377>,  <31.974026, 35.236164, 37.993866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668808, 35.030098, 38.245377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733315, 35.328617, 37.987064>,  <32.772018, 35.507729, 37.832077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733315, 35.328617, 37.987064>,  <32.668808, 35.030098, 38.245377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733315, 35.328617, 37.987064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668043, 0.399099, 0.628043,
		0.726438, -0.532691, -0.434198,
		0.161264, 0.746298, -0.645781,
		32.781693, 35.552505, 37.793331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370953, 35.104149, 38.322266>,  <32.668808, 35.030098, 38.245377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370953, 35.104149, 38.322266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219505, 35.438641, 38.163586>,  <33.128635, 35.639336, 38.068378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219505, 35.438641, 38.163586>,  <33.370953, 35.104149, 38.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219505, 35.438641, 38.163586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453575, 0.541248, 0.708040,
		0.806795, 0.088146, -0.584220,
		-0.378619, 0.836230, -0.396696,
		33.105919, 35.689510, 38.044579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936470, 35.600521, 38.376148>,  <33.370953, 35.104149, 38.322266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936470, 35.600521, 38.376148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595169, 35.801891, 38.321716>,  <33.390388, 35.922714, 38.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595169, 35.801891, 38.321716>,  <33.936470, 35.600521, 38.376148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595169, 35.801891, 38.321716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331330, 0.724835, 0.604015,
		0.402713, 0.470292, -0.785270,
		-0.853254, 0.503428, -0.136079,
		33.339191, 35.952919, 38.280891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146423, 36.305336, 38.283485>,  <33.936470, 35.600521, 38.376148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146423, 36.305336, 38.283485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763966, 36.314732, 38.400272>,  <33.534492, 36.320370, 38.470345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763966, 36.314732, 38.400272>,  <34.146423, 36.305336, 38.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763966, 36.314732, 38.400272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210229, 0.749105, 0.628208,
		-0.203958, 0.662034, -0.721188,
		-0.956141, 0.023487, 0.291965,
		33.477123, 36.321777, 38.487862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999962, 36.979797, 38.313648>,  <34.146423, 36.305336, 38.283485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999962, 36.979797, 38.313648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728462, 36.806934, 38.551151>,  <33.565563, 36.703217, 38.693653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728462, 36.806934, 38.551151>,  <33.999962, 36.979797, 38.313648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728462, 36.806934, 38.551151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157032, 0.704408, 0.692207,
		-0.717387, 0.563071, -0.410252,
		-0.678746, -0.432158, 0.593753,
		33.524837, 36.677288, 38.729279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735691, 37.586113, 38.626427>,  <33.999962, 36.979797, 38.313648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735691, 37.586113, 38.626427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596600, 37.296932, 38.865231>,  <33.513145, 37.123425, 39.008514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596600, 37.296932, 38.865231>,  <33.735691, 37.586113, 38.626427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596600, 37.296932, 38.865231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000536, 0.636903, 0.770944,
		-0.937594, 0.267761, -0.221858,
		-0.347731, -0.722952, 0.597013,
		33.492279, 37.080048, 39.044334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428417, 37.955280, 39.237972>,  <33.735691, 37.586113, 38.626427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428417, 37.955280, 39.237972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514778, 37.588524, 39.372261>,  <33.566593, 37.368469, 39.452835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514778, 37.588524, 39.372261>,  <33.428417, 37.955280, 39.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514778, 37.588524, 39.372261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187770, 0.376397, 0.907231,
		-0.958191, -0.132832, 0.253427,
		0.215898, -0.916887, 0.335718,
		33.579548, 37.313457, 39.472977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030972, 37.901936, 39.829861>,  <33.428417, 37.955280, 39.237972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030972, 37.901936, 39.829861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293488, 37.602394, 39.866734>,  <33.450996, 37.422668, 39.888859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293488, 37.602394, 39.866734>,  <33.030972, 37.901936, 39.829861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293488, 37.602394, 39.866734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148590, 0.248064, 0.957280,
		-0.739733, -0.614556, 0.274074,
		0.656290, -0.748856, 0.092184,
		33.490376, 37.377739, 39.894390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895863, 37.551685, 40.444386>,  <33.030972, 37.901936, 39.829861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895863, 37.551685, 40.444386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272713, 37.444504, 40.363792>,  <33.498821, 37.380196, 40.315437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272713, 37.444504, 40.363792>,  <32.895863, 37.551685, 40.444386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272713, 37.444504, 40.363792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243571, 0.134094, 0.960569,
		-0.230375, -0.954053, 0.191601,
		0.942125, -0.267959, -0.201487,
		33.555351, 37.364117, 40.303345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017899, 36.962929, 40.928444>,  <32.895863, 37.551685, 40.444386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017899, 36.962929, 40.928444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386456, 37.089031, 40.837536>,  <33.607590, 37.164692, 40.782993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386456, 37.089031, 40.837536>,  <33.017899, 36.962929, 40.928444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386456, 37.089031, 40.837536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291747, -0.174754, 0.940396,
		0.256751, -0.932777, -0.252992,
		0.921391, 0.315257, -0.227266,
		33.662872, 37.183609, 40.769356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403000, 36.650543, 41.338165>,  <33.017899, 36.962929, 40.928444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403000, 36.650543, 41.338165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701431, 36.903191, 41.253868>,  <33.880489, 37.054779, 41.203289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701431, 36.903191, 41.253868>,  <33.403000, 36.650543, 41.338165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701431, 36.903191, 41.253868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417302, -0.196912, 0.887178,
		0.518863, -0.749852, -0.410490,
		0.746083, 0.631623, -0.210745,
		33.925255, 37.092678, 41.190643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030663, 36.283936, 41.432625>,  <33.403000, 36.650543, 41.338165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030663, 36.283936, 41.432625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103794, 36.674511, 41.478485>,  <34.147671, 36.908855, 41.506001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103794, 36.674511, 41.478485>,  <34.030663, 36.283936, 41.432625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103794, 36.674511, 41.478485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340822, -0.172327, 0.924199,
		0.922180, -0.129893, -0.364298,
		0.182825, 0.976438, 0.114646,
		34.158642, 36.967442, 41.512878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506046, 36.224377, 41.902283>,  <34.030663, 36.283936, 41.432625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506046, 36.224377, 41.902283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407154, 36.611221, 41.926182>,  <34.347820, 36.843330, 41.940521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407154, 36.611221, 41.926182>,  <34.506046, 36.224377, 41.902283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407154, 36.611221, 41.926182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285618, 0.013814, 0.958244,
		0.925906, 0.253970, -0.279640,
		-0.247228, 0.967113, 0.059748,
		34.332985, 36.901356, 41.944107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900536, 36.443226, 42.500507>,  <34.506046, 36.224377, 41.902283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900536, 36.443226, 42.500507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645592, 36.742935, 42.428551>,  <34.492626, 36.922760, 42.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645592, 36.742935, 42.428551>,  <34.900536, 36.443226, 42.500507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645592, 36.742935, 42.428551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054526, 0.276728, 0.959400,
		0.768637, 0.601672, -0.217229,
		-0.637358, 0.749275, -0.179896,
		34.454384, 36.967716, 42.374580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219234, 37.022377, 42.682880>,  <34.900536, 36.443226, 42.500507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219234, 37.022377, 42.682880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821751, 37.057468, 42.710739>,  <34.583260, 37.078526, 42.727455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821751, 37.057468, 42.710739>,  <35.219234, 37.022377, 42.682880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821751, 37.057468, 42.710739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083792, 0.169511, 0.981960,
		0.074342, 0.981616, -0.175795,
		-0.993706, 0.087731, 0.069649,
		34.523640, 37.083786, 42.731632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089638, 37.527122, 43.268913>,  <35.219234, 37.022377, 42.682880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089638, 37.527122, 43.268913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748577, 37.324856, 43.216305>,  <34.543941, 37.203495, 43.184742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748577, 37.324856, 43.216305>,  <35.089638, 37.527122, 43.268913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748577, 37.324856, 43.216305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225532, 0.129138, 0.965639,
		-0.471304, 0.853011, -0.224152,
		-0.852648, -0.505663, -0.131518,
		34.492783, 37.173157, 43.176849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627754, 37.948650, 43.631157>,  <35.089638, 37.527122, 43.268913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627754, 37.948650, 43.631157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444702, 37.594994, 43.593479>,  <34.334873, 37.382801, 43.570873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444702, 37.594994, 43.593479>,  <34.627754, 37.948650, 43.631157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444702, 37.594994, 43.593479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322438, 0.066288, 0.944267,
		-0.828620, 0.462496, -0.315416,
		-0.457628, -0.884140, -0.094199,
		34.307415, 37.329750, 43.565220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058399, 37.991081, 44.127285>,  <34.627754, 37.948650, 43.631157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058399, 37.991081, 44.127285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106621, 37.604641, 44.035973>,  <34.135551, 37.372776, 43.981186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106621, 37.604641, 44.035973>,  <34.058399, 37.991081, 44.127285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106621, 37.604641, 44.035973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184760, -0.247778, 0.951036,
		-0.975362, -0.072471, -0.208367,
		0.120551, -0.966103, -0.228283,
		34.142788, 37.314812, 43.967487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487076, 37.663364, 44.395660>,  <34.058399, 37.991081, 44.127285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487076, 37.663364, 44.395660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745800, 37.368805, 44.316303>,  <33.901035, 37.192070, 44.268688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745800, 37.368805, 44.316303>,  <33.487076, 37.663364, 44.395660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745800, 37.368805, 44.316303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219852, -0.429131, 0.876078,
		-0.730275, -0.523038, -0.439464,
		0.646810, -0.736395, -0.198392,
		33.939842, 37.147888, 44.256786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125668, 36.943939, 44.539864>,  <33.487076, 37.663364, 44.395660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125668, 36.943939, 44.539864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524651, 36.958534, 44.564358>,  <33.764038, 36.967293, 44.579056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524651, 36.958534, 44.564358>,  <33.125668, 36.943939, 44.539864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524651, 36.958534, 44.564358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042598, -0.383677, 0.922484,
		0.057159, -0.922746, -0.381146,
		0.997456, 0.036492, 0.061238,
		33.823887, 36.969482, 44.582729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252453, 36.291084, 44.810284>,  <33.125668, 36.943939, 44.539864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252453, 36.291084, 44.810284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562637, 36.533756, 44.880264>,  <33.748749, 36.679359, 44.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562637, 36.533756, 44.880264>,  <33.252453, 36.291084, 44.810284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562637, 36.533756, 44.880264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038045, -0.231683, 0.972047,
		0.630250, -0.760439, -0.156580,
		0.775460, 0.606675, 0.174949,
		33.795277, 36.715759, 44.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433048, 35.926567, 45.313683>,  <33.252453, 36.291084, 44.810284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433048, 35.926567, 45.313683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649502, 36.262897, 45.319065>,  <33.779373, 36.464695, 45.322292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649502, 36.262897, 45.319065>,  <33.433048, 35.926567, 45.313683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649502, 36.262897, 45.319065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073696, -0.063352, 0.995266,
		0.837703, -0.537578, -0.096248,
		0.541131, 0.840831, 0.013452,
		33.811840, 36.515148, 45.323101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027298, 35.793018, 45.715370>,  <33.433048, 35.926567, 45.313683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027298, 35.793018, 45.715370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970306, 36.188358, 45.736755>,  <33.936111, 36.425564, 45.749588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970306, 36.188358, 45.736755>,  <34.027298, 35.793018, 45.715370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970306, 36.188358, 45.736755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006664, -0.053059, 0.998569,
		0.989776, 0.142627, 0.000973,
		-0.142475, 0.988353, 0.053467,
		33.927563, 36.484863, 45.752796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475323, 36.008560, 46.211571>,  <34.027298, 35.793018, 45.715370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475323, 36.008560, 46.211571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217045, 36.312805, 46.184589>,  <34.062080, 36.495354, 46.168400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217045, 36.312805, 46.184589>,  <34.475323, 36.008560, 46.211571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217045, 36.312805, 46.184589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041087, 0.053602, 0.997717,
		0.762493, 0.646988, -0.003359,
		-0.645691, 0.760614, -0.067454,
		34.023338, 36.540989, 46.164352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745731, 36.517941, 46.624149>,  <34.475323, 36.008560, 46.211571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745731, 36.517941, 46.624149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368031, 36.636883, 46.567635>,  <34.141411, 36.708248, 46.533726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368031, 36.636883, 46.567635>,  <34.745731, 36.517941, 46.624149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368031, 36.636883, 46.567635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088475, 0.184168, 0.978905,
		0.317107, 0.936835, -0.147593,
		-0.944254, 0.297359, -0.141287,
		34.084755, 36.726089, 46.525249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612331, 37.220943, 46.908451>,  <34.745731, 36.517941, 46.624149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612331, 37.220943, 46.908451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259510, 37.032772, 46.898109>,  <34.047817, 36.919868, 46.891903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259510, 37.032772, 46.898109>,  <34.612331, 37.220943, 46.908451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259510, 37.032772, 46.898109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139766, 0.208856, 0.967907,
		-0.449934, 0.857363, -0.249974,
		-0.882057, -0.470433, -0.025859,
		33.994892, 36.891644, 46.890350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286392, 37.698051, 47.208858>,  <34.612331, 37.220943, 46.908451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286392, 37.698051, 47.208858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031456, 37.390282, 47.225761>,  <33.878494, 37.205620, 47.235905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031456, 37.390282, 47.225761>,  <34.286392, 37.698051, 47.208858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031456, 37.390282, 47.225761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258895, 0.265458, 0.928712,
		-0.725788, 0.580967, -0.368386,
		-0.637342, -0.769422, 0.042257,
		33.840252, 37.159454, 47.238438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687450, 37.976059, 47.321739>,  <34.286392, 37.698051, 47.208858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687450, 37.976059, 47.321739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641102, 37.601814, 47.455128>,  <33.613293, 37.377266, 47.535160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641102, 37.601814, 47.455128>,  <33.687450, 37.976059, 47.321739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641102, 37.601814, 47.455128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313893, 0.353016, 0.881391,
		-0.942361, -0.002544, -0.334587,
		-0.115873, -0.935614, 0.333467,
		33.606339, 37.321129, 47.555168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931137, 37.939171, 47.673737>,  <33.687450, 37.976059, 47.321739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931137, 37.939171, 47.673737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201626, 37.690342, 47.831600>,  <33.363918, 37.541046, 47.926319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201626, 37.690342, 47.831600>,  <32.931137, 37.939171, 47.673737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201626, 37.690342, 47.831600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440713, 0.087690, 0.893355,
		-0.590339, -0.778033, -0.214858,
		0.676219, -0.622073, 0.394656,
		33.404491, 37.503719, 47.949997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629585, 37.582287, 48.207218>,  <32.931137, 37.939171, 47.673737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629585, 37.582287, 48.207218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989914, 37.439800, 48.306519>,  <33.206112, 37.354309, 48.366096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989914, 37.439800, 48.306519>,  <32.629585, 37.582287, 48.207218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989914, 37.439800, 48.306519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244897, 0.055266, 0.967973,
		-0.358525, -0.932769, -0.037450,
		0.900825, -0.356213, 0.248246,
		33.260162, 37.332935, 48.380993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458847, 37.105942, 48.713287>,  <32.629585, 37.582287, 48.207218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458847, 37.105942, 48.713287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850891, 37.162052, 48.769440>,  <33.086117, 37.195721, 48.803131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850891, 37.162052, 48.769440>,  <32.458847, 37.105942, 48.713287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850891, 37.162052, 48.769440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107222, -0.220928, 0.969378,
		0.167000, -0.965149, -0.201492,
		0.980109, 0.140281, 0.140380,
		33.144924, 37.204136, 48.811554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767689, 36.501850, 48.970596>,  <32.458847, 37.105942, 48.713287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767689, 36.501850, 48.970596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999802, 36.810287, 49.075432>,  <33.139069, 36.995350, 49.138332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999802, 36.810287, 49.075432>,  <32.767689, 36.501850, 48.970596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999802, 36.810287, 49.075432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059776, -0.280617, 0.957957,
		0.812222, -0.571548, -0.116743,
		0.580278, 0.771095, 0.262088,
		33.173885, 37.041615, 49.154057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260738, 36.256298, 49.338070>,  <32.767689, 36.501850, 48.970596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260738, 36.256298, 49.338070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289806, 36.647057, 49.418457>,  <33.307247, 36.881512, 49.466690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289806, 36.647057, 49.418457>,  <33.260738, 36.256298, 49.338070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289806, 36.647057, 49.418457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136019, -0.209326, 0.968339,
		0.988037, -0.043037, -0.148089,
		0.072673, 0.976898, 0.200968,
		33.311607, 36.940125, 49.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874496, 36.338318, 49.663555>,  <33.260738, 36.256298, 49.338070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874496, 36.338318, 49.663555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645161, 36.652794, 49.755798>,  <33.507557, 36.841480, 49.811146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645161, 36.652794, 49.755798>,  <33.874496, 36.338318, 49.663555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645161, 36.652794, 49.755798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092914, -0.217256, 0.971683,
		0.814031, 0.578532, 0.051513,
		-0.573341, 0.786194, 0.230607,
		33.473160, 36.888653, 49.824982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138535, 36.514050, 50.252842>,  <33.874496, 36.338318, 49.663555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138535, 36.514050, 50.252842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804585, 36.733299, 50.272987>,  <33.604214, 36.864849, 50.285076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804585, 36.733299, 50.272987>,  <34.138535, 36.514050, 50.252842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804585, 36.733299, 50.272987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039662, -0.151169, 0.987712,
		0.549004, 0.822622, 0.147947,
		-0.834878, 0.548126, 0.050365,
		33.554123, 36.897736, 50.288097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234959, 37.013721, 50.759113>,  <34.138535, 36.514050, 50.252842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234959, 37.013721, 50.759113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849655, 36.912899, 50.721996>,  <33.618473, 36.852406, 50.699726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849655, 36.912899, 50.721996>,  <34.234959, 37.013721, 50.759113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849655, 36.912899, 50.721996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090026, -0.022510, 0.995685,
		-0.253054, 0.967452, -0.001009,
		-0.963254, -0.252053, -0.092792,
		33.560680, 36.837284, 50.694160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969425, 37.316956, 51.236191>,  <34.234959, 37.013721, 50.759113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969425, 37.316956, 51.236191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692543, 37.038109, 51.161484>,  <33.526413, 36.870800, 51.116661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692543, 37.038109, 51.161484>,  <33.969425, 37.316956, 51.236191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692543, 37.038109, 51.161484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167731, -0.096303, 0.981118,
		-0.701937, 0.710463, -0.050266,
		-0.692207, -0.697114, -0.186766,
		33.484882, 36.828976, 51.105453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434326, 37.451160, 51.696758>,  <33.969425, 37.316956, 51.236191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434326, 37.451160, 51.696758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345058, 37.078484, 51.582115>,  <33.291500, 36.854877, 51.513329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345058, 37.078484, 51.582115>,  <33.434326, 37.451160, 51.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345058, 37.078484, 51.582115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332473, -0.203640, 0.920865,
		-0.916329, 0.300796, -0.264317,
		-0.223167, -0.931693, -0.286608,
		33.278107, 36.798977, 51.496132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701706, 37.347343, 51.801247>,  <33.434326, 37.451160, 51.696758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701706, 37.347343, 51.801247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909389, 37.006016, 51.820286>,  <33.034000, 36.801220, 51.831711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909389, 37.006016, 51.820286>,  <32.701706, 37.347343, 51.801247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909389, 37.006016, 51.820286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502990, -0.260067, 0.824237,
		-0.690961, -0.451891, -0.564240,
		0.519205, -0.853323, 0.047600,
		33.065151, 36.750019, 51.834564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204384, 36.709522, 51.755116>,  <32.701706, 37.347343, 51.801247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204384, 36.709522, 51.755116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541428, 36.638519, 51.958488>,  <32.743652, 36.595917, 52.080513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541428, 36.638519, 51.958488>,  <32.204384, 36.709522, 51.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541428, 36.638519, 51.958488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533162, -0.407888, 0.741192,
		0.075813, -0.895610, -0.438332,
		0.842610, -0.177511, 0.508429,
		32.794209, 36.585266, 52.111015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280579, 35.963737, 51.819328>,  <32.204384, 36.709522, 51.755116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280579, 35.963737, 51.819328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441494, 36.179760, 52.115032>,  <32.538044, 36.309372, 52.292454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441494, 36.179760, 52.115032>,  <32.280579, 35.963737, 51.819328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441494, 36.179760, 52.115032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473154, -0.568636, 0.672888,
		0.783764, -0.620482, 0.026770,
		0.402292, 0.540052, 0.739260,
		32.562183, 36.341774, 52.336811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555691, 35.504143, 52.266422>,  <32.280579, 35.963737, 51.819328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555691, 35.504143, 52.266422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448387, 35.832851, 52.467510>,  <32.384007, 36.030075, 52.588161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448387, 35.832851, 52.467510>,  <32.555691, 35.504143, 52.266422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448387, 35.832851, 52.467510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528567, -0.561840, 0.636359,
		0.805390, -0.095012, 0.585081,
		-0.268260, 0.821772, 0.502720,
		32.367908, 36.079384, 52.618328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790363, 35.444042, 52.970226>,  <32.555691, 35.504143, 52.266422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790363, 35.444042, 52.970226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471180, 35.681732, 52.929928>,  <32.279671, 35.824348, 52.905746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471180, 35.681732, 52.929928>,  <32.790363, 35.444042, 52.970226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471180, 35.681732, 52.929928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486352, -0.536120, 0.689954,
		0.355977, 0.599556, 0.716807,
		-0.797961, 0.594229, -0.100749,
		32.231792, 35.860001, 52.899704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037994, 34.774178, 52.926617>,  <32.790363, 35.444042, 52.970226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037994, 34.774178, 52.926617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696144, 34.678318, 52.742359>,  <32.491035, 34.620804, 52.631805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696144, 34.678318, 52.742359>,  <33.037994, 34.774178, 52.926617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696144, 34.678318, 52.742359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518655, -0.351478, -0.779398,
		0.024876, -0.905004, 0.424675,
		-0.854622, -0.239648, -0.460641,
		32.439758, 34.606422, 52.604168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945896, 34.000870, 52.666702>,  <33.037994, 34.774178, 52.926617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945896, 34.000870, 52.666702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738277, 34.251602, 52.434265>,  <32.613705, 34.402042, 52.294804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738277, 34.251602, 52.434265>,  <32.945896, 34.000870, 52.666702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738277, 34.251602, 52.434265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281974, -0.516212, -0.808713,
		-0.806894, -0.583615, 0.091189,
		-0.519050, 0.626833, -0.581092,
		32.582561, 34.439651, 52.259937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531654, 34.084835, 53.108063>,  <32.945896, 34.000870, 52.666702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531654, 34.084835, 53.108063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857800, 33.853359, 53.101116>,  <34.053486, 33.714474, 53.096947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857800, 33.853359, 53.101116>,  <33.531654, 34.084835, 53.108063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857800, 33.853359, 53.101116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068929, 0.126823, -0.989528,
		0.574832, 0.805627, 0.143295,
		0.815363, -0.578690, -0.017371,
		34.102409, 33.679752, 53.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097630, 34.384274, 52.808949>,  <33.531654, 34.084835, 53.108063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097630, 34.384274, 52.808949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137669, 33.988815, 52.764126>,  <34.161694, 33.751541, 52.737232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137669, 33.988815, 52.764126>,  <34.097630, 34.384274, 52.808949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137669, 33.988815, 52.764126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057293, 0.106704, -0.992639,
		0.993327, 0.105781, -0.045962,
		0.100098, -0.988648, -0.112053,
		34.167698, 33.692223, 52.730511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615765, 34.198860, 52.337414>,  <34.097630, 34.384274, 52.808949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615765, 34.198860, 52.337414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355438, 33.895435, 52.350243>,  <34.199242, 33.713379, 52.357941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355438, 33.895435, 52.350243>,  <34.615765, 34.198860, 52.337414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355438, 33.895435, 52.350243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264666, 0.187068, -0.946022,
		0.711615, -0.624171, -0.322511,
		-0.650811, -0.758561, 0.032076,
		34.160194, 33.667866, 52.359867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706600, 33.833298, 51.658997>,  <34.615765, 34.198860, 52.337414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706600, 33.833298, 51.658997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331722, 33.789612, 51.791504>,  <34.106796, 33.763401, 51.871010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331722, 33.789612, 51.791504>,  <34.706600, 33.833298, 51.658997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331722, 33.789612, 51.791504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337214, 0.040858, -0.940541,
		0.089194, -0.993177, -0.075123,
		-0.937193, -0.109223, 0.331269,
		34.050564, 33.756847, 51.890884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355400, 33.123726, 51.405327>,  <34.706600, 33.833298, 51.658997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355400, 33.123726, 51.405327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116524, 33.435635, 51.480507>,  <33.973198, 33.622780, 51.525616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116524, 33.435635, 51.480507>,  <34.355400, 33.123726, 51.405327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116524, 33.435635, 51.480507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193109, 0.087653, -0.977254,
		-0.778510, -0.619897, 0.098236,
		-0.597186, 0.779772, 0.187947,
		33.937366, 33.669567, 51.536892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696991, 33.063435, 51.048054>,  <34.355400, 33.123726, 51.405327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696991, 33.063435, 51.048054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717602, 33.459991, 51.096191>,  <33.729969, 33.697926, 51.125072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717602, 33.459991, 51.096191>,  <33.696991, 33.063435, 51.048054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717602, 33.459991, 51.096191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277212, 0.129964, -0.951978,
		-0.959426, 0.015696, 0.281524,
		0.051531, 0.991394, 0.120340,
		33.733063, 33.757408, 51.132294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084614, 33.312042, 50.821465>,  <33.696991, 33.063435, 51.048054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084614, 33.312042, 50.821465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342319, 33.617203, 50.799900>,  <33.496944, 33.800297, 50.786961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342319, 33.617203, 50.799900>,  <33.084614, 33.312042, 50.821465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342319, 33.617203, 50.799900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217816, 0.115460, -0.969136,
		-0.733129, 0.636124, 0.240558,
		0.644266, 0.762899, -0.053911,
		33.535599, 33.846073, 50.783726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827190, 33.983940, 50.535866>,  <33.084614, 33.312042, 50.821465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827190, 33.983940, 50.535866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221958, 33.981968, 50.471409>,  <33.458820, 33.980785, 50.432735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221958, 33.981968, 50.471409>,  <32.827190, 33.983940, 50.535866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221958, 33.981968, 50.471409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160873, 0.035457, -0.986338,
		0.010577, 0.999359, 0.034200,
		0.986919, -0.004931, -0.161145,
		33.518032, 33.980488, 50.423065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851200, 34.421154, 49.897858>,  <32.827190, 33.983940, 50.535866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851200, 34.421154, 49.897858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199295, 34.225327, 49.919807>,  <33.408154, 34.107830, 49.932976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199295, 34.225327, 49.919807>,  <32.851200, 34.421154, 49.897858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199295, 34.225327, 49.919807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183777, 0.219270, -0.958200,
		0.457072, 0.843945, 0.280788,
		0.870236, -0.489568, 0.054876,
		33.460365, 34.078457, 49.936272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401073, 34.858875, 49.632839>,  <32.851200, 34.421154, 49.897858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401073, 34.858875, 49.632839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498428, 34.473610, 49.587090>,  <33.556839, 34.242451, 49.559639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498428, 34.473610, 49.587090>,  <33.401073, 34.858875, 49.632839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498428, 34.473610, 49.587090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092477, 0.140429, -0.985763,
		0.965511, 0.229343, 0.123249,
		0.243385, -0.963162, -0.114377,
		33.571445, 34.184662, 49.552776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670570, 34.942223, 49.039124>,  <33.401073, 34.858875, 49.632839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670570, 34.942223, 49.039124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661213, 34.546181, 49.094467>,  <33.655598, 34.308556, 49.127674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661213, 34.546181, 49.094467>,  <33.670570, 34.942223, 49.039124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661213, 34.546181, 49.094467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302731, -0.138915, -0.942898,
		0.952789, 0.019831, 0.302984,
		-0.023390, -0.990106, 0.138360,
		33.654198, 34.249149, 49.135975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251980, 34.735634, 48.862114>,  <33.670570, 34.942223, 49.039124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251980, 34.735634, 48.862114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042633, 34.398602, 48.811283>,  <33.917023, 34.196384, 48.780785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042633, 34.398602, 48.811283>,  <34.251980, 34.735634, 48.862114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042633, 34.398602, 48.811283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364078, -0.086288, -0.927363,
		0.770409, -0.531619, 0.351924,
		-0.523371, -0.842576, -0.127073,
		33.885620, 34.145828, 48.773163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679913, 34.292831, 48.565643>,  <34.251980, 34.735634, 48.862114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679913, 34.292831, 48.565643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310719, 34.174446, 48.467258>,  <34.089203, 34.103416, 48.408230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310719, 34.174446, 48.467258>,  <34.679913, 34.292831, 48.565643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310719, 34.174446, 48.467258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281195, -0.082361, -0.956110,
		0.262716, -0.951642, 0.159242,
		-0.922990, -0.295963, -0.245960,
		34.033821, 34.085659, 48.393471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802193, 33.653629, 48.153782>,  <34.679913, 34.292831, 48.565643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802193, 33.653629, 48.153782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419476, 33.742752, 48.079041>,  <34.189846, 33.796227, 48.034195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419476, 33.742752, 48.079041>,  <34.802193, 33.653629, 48.153782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419476, 33.742752, 48.079041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111686, -0.311704, -0.943592,
		-0.268477, -0.923688, 0.273351,
		-0.956790, 0.222803, -0.186848,
		34.132439, 33.809593, 48.022987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571095, 33.064205, 47.725163>,  <34.802193, 33.653629, 48.153782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571095, 33.064205, 47.725163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334976, 33.374882, 47.637264>,  <34.193306, 33.561287, 47.584526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334976, 33.374882, 47.637264>,  <34.571095, 33.064205, 47.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334976, 33.374882, 47.637264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068871, -0.319714, -0.945008,
		-0.804241, -0.542703, 0.242219,
		-0.590300, 0.776696, -0.219750,
		34.157887, 33.607891, 47.571339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104652, 32.796535, 47.264442>,  <34.571095, 33.064205, 47.725163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104652, 32.796535, 47.264442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097332, 33.194088, 47.220867>,  <34.092941, 33.432621, 47.194721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097332, 33.194088, 47.220867>,  <34.104652, 32.796535, 47.264442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097332, 33.194088, 47.220867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062125, -0.109878, -0.992002,
		-0.997900, -0.011386, 0.063756,
		-0.018300, 0.993880, -0.108940,
		34.091843, 33.492252, 47.188187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491692, 32.943760, 46.812599>,  <34.104652, 32.796535, 47.264442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491692, 32.943760, 46.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711937, 33.277065, 46.792618>,  <33.844082, 33.477051, 46.780628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711937, 33.277065, 46.792618>,  <33.491692, 32.943760, 46.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711937, 33.277065, 46.792618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036730, -0.035596, -0.998691,
		-0.833954, 0.551724, 0.011006,
		0.550610, 0.833267, -0.049950,
		33.877121, 33.527046, 46.777634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255650, 33.447796, 46.215202>,  <33.491692, 32.943760, 46.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255650, 33.447796, 46.215202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620670, 33.589390, 46.297123>,  <33.839684, 33.674347, 46.346275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620670, 33.589390, 46.297123>,  <33.255650, 33.447796, 46.215202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620670, 33.589390, 46.297123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150041, 0.176072, -0.972875,
		-0.380444, 0.918528, 0.107563,
		0.912552, 0.353985, 0.204803,
		33.894436, 33.695587, 46.358562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182518, 34.149937, 45.836739>,  <33.255650, 33.447796, 46.215202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182518, 34.149937, 45.836739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558178, 34.021469, 45.885471>,  <33.783573, 33.944389, 45.914711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558178, 34.021469, 45.885471>,  <33.182518, 34.149937, 45.836739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558178, 34.021469, 45.885471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161571, 0.100033, -0.981778,
		0.303131, 0.941723, 0.145838,
		0.939152, -0.321171, 0.121832,
		33.839924, 33.925117, 45.922020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527264, 34.543156, 45.453354>,  <33.182518, 34.149937, 45.836739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527264, 34.543156, 45.453354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765236, 34.224186, 45.493694>,  <33.908020, 34.032803, 45.517899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765236, 34.224186, 45.493694>,  <33.527264, 34.543156, 45.453354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765236, 34.224186, 45.493694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357447, 0.150097, -0.921793,
		0.719921, 0.584455, 0.374334,
		0.594933, -0.797423, 0.100853,
		33.943714, 33.984959, 45.523949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036716, 34.647079, 44.938217>,  <33.527264, 34.543156, 45.453354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036716, 34.647079, 44.938217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091827, 34.262001, 45.031368>,  <34.124893, 34.030952, 45.087257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091827, 34.262001, 45.031368>,  <34.036716, 34.647079, 44.938217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091827, 34.262001, 45.031368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190926, -0.204897, -0.959982,
		0.971888, 0.176723, 0.155574,
		0.137774, -0.962697, 0.232878,
		34.133160, 33.973190, 45.101231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641106, 34.417694, 44.665203>,  <34.036716, 34.647079, 44.938217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641106, 34.417694, 44.665203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414162, 34.089584, 44.694191>,  <34.277996, 33.892719, 44.711582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414162, 34.089584, 44.694191>,  <34.641106, 34.417694, 44.665203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414162, 34.089584, 44.694191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062119, -0.130390, -0.989515,
		0.821121, -0.556913, 0.124932,
		-0.567363, -0.820272, 0.072471,
		34.243954, 33.843502, 44.715931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008682, 34.017620, 44.256733>,  <34.641106, 34.417694, 44.665203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008682, 34.017620, 44.256733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646439, 33.849346, 44.278255>,  <34.429092, 33.748383, 44.291168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646439, 33.849346, 44.278255>,  <35.008682, 34.017620, 44.256733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646439, 33.849346, 44.278255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018402, -0.165717, -0.986002,
		0.423711, -0.891943, 0.157817,
		-0.905610, -0.420684, 0.053803,
		34.374756, 33.723141, 44.294395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047104, 33.322105, 43.877632>,  <35.008682, 34.017620, 44.256733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047104, 33.322105, 43.877632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657661, 33.413227, 43.872059>,  <34.423996, 33.467899, 43.868713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657661, 33.413227, 43.872059>,  <35.047104, 33.322105, 43.877632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657661, 33.413227, 43.872059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028088, -0.180182, -0.983232,
		-0.226500, -0.956890, 0.181825,
		-0.973606, 0.227809, -0.013934,
		34.365578, 33.481567, 43.867878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779236, 32.932461, 43.342968>,  <35.047104, 33.322105, 43.877632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779236, 32.932461, 43.342968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502369, 33.216095, 43.396797>,  <34.336250, 33.386276, 43.429096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502369, 33.216095, 43.396797>,  <34.779236, 32.932461, 43.342968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502369, 33.216095, 43.396797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200794, -0.010095, -0.979581,
		-0.693244, -0.705055, 0.149367,
		-0.692166, 0.709081, 0.134573,
		34.294720, 33.428818, 43.437168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222980, 32.722702, 42.893913>,  <34.779236, 32.932461, 43.342968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222980, 32.722702, 42.893913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129925, 33.098862, 42.993126>,  <34.074089, 33.324558, 43.052654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129925, 33.098862, 42.993126>,  <34.222980, 32.722702, 42.893913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129925, 33.098862, 42.993126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304824, 0.171674, -0.936809,
		-0.923558, -0.293548, 0.246719,
		-0.232643, 0.940403, 0.248031,
		34.060131, 33.380981, 43.067535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569061, 32.829315, 42.665863>,  <34.222980, 32.722702, 42.893913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569061, 32.829315, 42.665863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735771, 33.192547, 42.682270>,  <33.835796, 33.410488, 42.692112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735771, 33.192547, 42.682270>,  <33.569061, 32.829315, 42.665863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735771, 33.192547, 42.682270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226621, 0.147496, -0.962750,
		-0.880306, 0.391959, 0.267264,
		0.416779, 0.908082, 0.041016,
		33.860806, 33.464970, 42.694576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154793, 33.095123, 42.171829>,  <33.569061, 32.829315, 42.665863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154793, 33.095123, 42.171829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487499, 33.314240, 42.207806>,  <33.687122, 33.445709, 42.229393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487499, 33.314240, 42.207806>,  <33.154793, 33.095123, 42.171829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487499, 33.314240, 42.207806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070594, 0.265082, -0.961638,
		-0.550618, 0.793509, 0.259158,
		0.831767, 0.547790, 0.089942,
		33.737030, 33.478577, 42.234787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040230, 33.703827, 41.761425>,  <33.154793, 33.095123, 42.171829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040230, 33.703827, 41.761425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437714, 33.672733, 41.793671>,  <33.676205, 33.654076, 41.813019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437714, 33.672733, 41.793671>,  <33.040230, 33.703827, 41.761425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437714, 33.672733, 41.793671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102906, 0.349919, -0.931110,
		0.044174, 0.933549, 0.355718,
		0.993710, -0.077736, 0.080611,
		33.735828, 33.649414, 41.817852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297543, 34.310192, 41.459000>,  <33.040230, 33.703827, 41.761425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297543, 34.310192, 41.459000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595390, 34.043755, 41.476307>,  <33.774097, 33.883892, 41.486691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595390, 34.043755, 41.476307>,  <33.297543, 34.310192, 41.459000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595390, 34.043755, 41.476307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210699, 0.173046, -0.962113,
		0.633367, 0.725520, 0.269197,
		0.744616, -0.666090, 0.043265,
		33.818775, 33.843929, 41.489285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932671, 34.566250, 41.068340>,  <33.297543, 34.310192, 41.459000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932671, 34.566250, 41.068340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016594, 34.175770, 41.090328>,  <34.066948, 33.941483, 41.103519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016594, 34.175770, 41.090328>,  <33.932671, 34.566250, 41.068340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016594, 34.175770, 41.090328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274183, 0.004780, -0.961666,
		0.938512, 0.216834, 0.268660,
		0.209806, -0.976197, 0.054966,
		34.079536, 33.882912, 41.106819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668633, 34.561295, 40.856495>,  <33.932671, 34.566250, 41.068340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668633, 34.561295, 40.856495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545296, 34.187664, 40.784470>,  <34.471294, 33.963486, 40.741253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545296, 34.187664, 40.784470>,  <34.668633, 34.561295, 40.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545296, 34.187664, 40.784470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479100, 0.011042, -0.877690,
		0.821820, -0.356899, 0.444112,
		-0.308343, -0.934078, -0.180065,
		34.452793, 33.907440, 40.730450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225254, 34.352474, 40.538418>,  <34.668633, 34.561295, 40.856495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225254, 34.352474, 40.538418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934708, 34.094204, 40.444191>,  <34.760380, 33.939243, 40.387657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934708, 34.094204, 40.444191>,  <35.225254, 34.352474, 40.538418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934708, 34.094204, 40.444191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458749, -0.200242, -0.865709,
		0.511797, -0.736890, 0.441652,
		-0.726370, -0.645675, -0.235564,
		34.716797, 33.900501, 40.373520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419628, 33.760193, 40.196693>,  <35.225254, 34.352474, 40.538418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419628, 33.760193, 40.196693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052086, 33.731792, 40.041431>,  <34.831562, 33.714752, 39.948277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052086, 33.731792, 40.041431>,  <35.419628, 33.760193, 40.196693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052086, 33.731792, 40.041431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386969, -0.354571, -0.851196,
		-0.077187, -0.932329, 0.353277,
		-0.918856, -0.071006, -0.388151,
		34.776428, 33.710491, 39.924988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307144, 33.031479, 39.793503>,  <35.419628, 33.760193, 40.196693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307144, 33.031479, 39.793503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030907, 33.264137, 39.621567>,  <34.865166, 33.403732, 39.518406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030907, 33.264137, 39.621567>,  <35.307144, 33.031479, 39.793503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030907, 33.264137, 39.621567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216473, -0.400847, -0.890203,
		-0.690089, -0.707816, 0.150910,
		-0.690592, 0.581651, -0.429843,
		34.823730, 33.438633, 39.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983181, 32.703674, 39.232246>,  <35.307144, 33.031479, 39.793503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983181, 32.703674, 39.232246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863518, 33.072308, 39.133301>,  <34.791718, 33.293488, 39.073933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863518, 33.072308, 39.133301>,  <34.983181, 32.703674, 39.232246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863518, 33.072308, 39.133301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150732, -0.210340, -0.965938,
		-0.942222, -0.326258, -0.075986,
		-0.299162, 0.921582, -0.247365,
		34.773769, 33.348782, 39.059090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637867, 32.646198, 38.600975>,  <34.983181, 32.703674, 39.232246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637867, 32.646198, 38.600975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719120, 33.037766, 38.592400>,  <34.767872, 33.272705, 38.587254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719120, 33.037766, 38.592400>,  <34.637867, 32.646198, 38.600975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719120, 33.037766, 38.592400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021616, -0.026375, -0.999419,
		-0.978913, 0.202549, -0.026518,
		0.203130, 0.978917, -0.021440,
		34.780060, 33.331440, 38.585968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190403, 32.934586, 38.053898>,  <34.637867, 32.646198, 38.600975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190403, 32.934586, 38.053898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499104, 33.183800, 38.104847>,  <34.684326, 33.333328, 38.135418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499104, 33.183800, 38.104847>,  <34.190403, 32.934586, 38.053898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499104, 33.183800, 38.104847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103351, 0.074748, -0.991832,
		-0.627467, 0.778614, -0.006704,
		0.771754, 0.623035, 0.127373,
		34.730629, 33.370708, 38.143059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146400, 33.424934, 37.514275>,  <34.190403, 32.934586, 38.053898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146400, 33.424934, 37.514275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526314, 33.488052, 37.622356>,  <34.754261, 33.525921, 37.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526314, 33.488052, 37.622356>,  <34.146400, 33.424934, 37.514275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526314, 33.488052, 37.622356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258454, 0.091158, -0.961713,
		-0.176381, 0.983256, 0.045798,
		0.949785, 0.157791, 0.270205,
		34.811249, 33.535389, 37.703419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316231, 33.982227, 37.131573>,  <34.146400, 33.424934, 37.514275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316231, 33.982227, 37.131573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686794, 33.875896, 37.238228>,  <34.909134, 33.812099, 37.302223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686794, 33.875896, 37.238228>,  <34.316231, 33.982227, 37.131573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686794, 33.875896, 37.238228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350794, 0.352157, -0.867715,
		0.136761, 0.897398, 0.419492,
		0.926412, -0.265825, 0.266641,
		34.964718, 33.796150, 37.318222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853413, 34.520935, 36.959965>,  <34.316231, 33.982227, 37.131573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853413, 34.520935, 36.959965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060265, 34.181198, 37.002285>,  <35.184376, 33.977356, 37.027679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060265, 34.181198, 37.002285>,  <34.853413, 34.520935, 36.959965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060265, 34.181198, 37.002285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474359, 0.181514, -0.861415,
		0.712429, 0.495655, 0.496759,
		0.517134, -0.849340, 0.105803,
		35.215405, 33.926395, 37.034027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584835, 34.705692, 36.881302>,  <34.853413, 34.520935, 36.959965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584835, 34.705692, 36.881302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528465, 34.323441, 36.777836>,  <35.494644, 34.094090, 36.715755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528465, 34.323441, 36.777836>,  <35.584835, 34.705692, 36.881302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528465, 34.323441, 36.777836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469956, 0.165385, -0.867058,
		0.871368, -0.243751, 0.425798,
		-0.140925, -0.955632, -0.258664,
		35.486187, 34.036751, 36.700237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253525, 34.382988, 36.677288>,  <35.584835, 34.705692, 36.881302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253525, 34.382988, 36.677288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980137, 34.159969, 36.488819>,  <35.816105, 34.026157, 36.375736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980137, 34.159969, 36.488819>,  <36.253525, 34.382988, 36.677288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980137, 34.159969, 36.488819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407391, 0.244254, -0.879985,
		0.605721, -0.793396, 0.060200,
		-0.683472, -0.557551, -0.471172,
		35.775097, 33.992702, 36.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490532, 34.015244, 35.988918>,  <36.253525, 34.382988, 36.677288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490532, 34.015244, 35.988918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092793, 34.004528, 35.947819>,  <35.854149, 33.998100, 35.923161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092793, 34.004528, 35.947819>,  <36.490532, 34.015244, 35.988918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092793, 34.004528, 35.947819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082430, 0.415241, -0.905969,
		0.066933, -0.909317, -0.410686,
		-0.994347, -0.026787, -0.102748,
		35.794487, 33.996490, 35.916996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818932, 33.576771, 36.439564>,  <36.490532, 34.015244, 35.988918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818932, 33.576771, 36.439564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217396, 33.554176, 36.466297>,  <37.456474, 33.540619, 36.482338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217396, 33.554176, 36.466297>,  <36.818932, 33.576771, 36.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217396, 33.554176, 36.466297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072553, -0.106221, 0.991692,
		-0.048911, -0.992737, -0.109911,
		0.996164, -0.056479, 0.066831,
		37.516247, 33.537231, 36.486347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917431, 33.150238, 36.917187>,  <36.818932, 33.576771, 36.439564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917431, 33.150238, 36.917187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239861, 33.386913, 36.921936>,  <37.433319, 33.528919, 36.924786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239861, 33.386913, 36.921936>,  <36.917431, 33.150238, 36.917187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239861, 33.386913, 36.921936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080347, 0.089543, 0.992737,
		0.586332, -0.801175, 0.119720,
		0.806077, 0.591693, 0.011870,
		37.481682, 33.564423, 36.925495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440521, 32.812550, 37.248100>,  <36.917431, 33.150238, 36.917187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440521, 32.812550, 37.248100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541683, 33.198097, 37.281548>,  <37.602379, 33.429428, 37.301617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541683, 33.198097, 37.281548>,  <37.440521, 32.812550, 37.248100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541683, 33.198097, 37.281548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270801, -0.153491, 0.950320,
		0.928821, -0.217693, -0.299835,
		0.252900, 0.963873, 0.083614,
		37.617554, 33.487259, 37.306633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965698, 32.754009, 37.693531>,  <37.440521, 32.812550, 37.248100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965698, 32.754009, 37.693531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856453, 33.138248, 37.714180>,  <37.790905, 33.368793, 37.726570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856453, 33.138248, 37.714180>,  <37.965698, 32.754009, 37.693531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856453, 33.138248, 37.714180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261350, 0.022447, 0.964983,
		0.925801, 0.277039, -0.257182,
		-0.273111, 0.960596, 0.051623,
		37.774521, 33.426426, 37.729668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474880, 33.145447, 38.120342>,  <37.965698, 32.754009, 37.693531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474880, 33.145447, 38.120342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141766, 33.366356, 38.135620>,  <37.941895, 33.498901, 38.144787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141766, 33.366356, 38.135620>,  <38.474880, 33.145447, 38.120342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141766, 33.366356, 38.135620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167603, 0.185782, 0.968191,
		0.527606, 0.812702, -0.247279,
		-0.832791, 0.552268, 0.038192,
		37.891930, 33.532036, 38.147079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655392, 33.689732, 38.533718>,  <38.474880, 33.145447, 38.120342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655392, 33.689732, 38.533718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256153, 33.708103, 38.550209>,  <38.016609, 33.719124, 38.560104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256153, 33.708103, 38.550209>,  <38.655392, 33.689732, 38.533718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256153, 33.708103, 38.550209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047999, 0.157657, 0.986327,
		0.038799, 0.986426, -0.159561,
		-0.998094, 0.045927, 0.041230,
		37.956726, 33.721882, 38.562576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519188, 34.302795, 38.849987>,  <38.655392, 33.689732, 38.533718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519188, 34.302795, 38.849987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163677, 34.124294, 38.891800>,  <37.950371, 34.017193, 38.916889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163677, 34.124294, 38.891800>,  <38.519188, 34.302795, 38.849987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163677, 34.124294, 38.891800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008216, 0.212532, 0.977120,
		-0.458259, 0.869304, -0.185228,
		-0.888781, -0.446252, 0.104537,
		37.897041, 33.990417, 38.923161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115376, 34.789413, 39.185318>,  <38.519188, 34.302795, 38.849987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115376, 34.789413, 39.185318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939308, 34.437618, 39.257698>,  <37.833668, 34.226540, 39.301125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939308, 34.437618, 39.257698>,  <38.115376, 34.789413, 39.185318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939308, 34.437618, 39.257698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057549, 0.173477, 0.983155,
		-0.896067, 0.443172, -0.025746,
		-0.440173, -0.879491, 0.180951,
		37.807255, 34.173771, 39.311985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679543, 34.898693, 39.766273>,  <38.115376, 34.789413, 39.185318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679543, 34.898693, 39.766273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716530, 34.500523, 39.756641>,  <37.738724, 34.261620, 39.750862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716530, 34.500523, 39.756641>,  <37.679543, 34.898693, 39.766273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716530, 34.500523, 39.756641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080794, -0.031607, 0.996229,
		-0.992432, -0.090178, -0.083347,
		0.092473, -0.995424, -0.024082,
		37.744270, 34.201897, 39.749416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214619, 34.615322, 40.285748>,  <37.679543, 34.898693, 39.766273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214619, 34.615322, 40.285748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443668, 34.297127, 40.206440>,  <37.581097, 34.106209, 40.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443668, 34.297127, 40.206440>,  <37.214619, 34.615322, 40.285748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443668, 34.297127, 40.206440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051454, -0.276240, 0.959711,
		-0.818204, -0.539349, -0.199111,
		0.572621, -0.795484, -0.198269,
		37.615456, 34.058483, 40.146957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899944, 34.008297, 40.578568>,  <37.214619, 34.615322, 40.285748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899944, 34.008297, 40.578568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297710, 33.981716, 40.545757>,  <37.536369, 33.965767, 40.526073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297710, 33.981716, 40.545757>,  <36.899944, 34.008297, 40.578568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297710, 33.981716, 40.545757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078873, -0.048706, 0.995694,
		-0.070170, -0.996600, -0.043192,
		0.994412, -0.066461, -0.082023,
		37.596035, 33.961781, 40.521152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085182, 33.267372, 40.776501>,  <36.899944, 34.008297, 40.578568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085182, 33.267372, 40.776501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409683, 33.495190, 40.829395>,  <37.604385, 33.631882, 40.861134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409683, 33.495190, 40.829395>,  <37.085182, 33.267372, 40.776501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409683, 33.495190, 40.829395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046798, -0.288688, 0.956279,
		0.582821, -0.769594, -0.260853,
		0.811252, 0.569547, 0.132238,
		37.653057, 33.666054, 40.869068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612892, 32.895931, 41.149837>,  <37.085182, 33.267372, 40.776501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612892, 32.895931, 41.149837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706509, 33.277157, 41.226669>,  <37.762676, 33.505894, 41.272766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706509, 33.277157, 41.226669>,  <37.612892, 32.895931, 41.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706509, 33.277157, 41.226669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097083, -0.219485, 0.970773,
		0.967368, -0.208552, -0.143895,
		0.234039, 0.953065, 0.192076,
		37.776722, 33.563076, 41.284290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066753, 32.781174, 41.710995>,  <37.612892, 32.895931, 41.149837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066753, 32.781174, 41.710995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938240, 33.159660, 41.695774>,  <37.861134, 33.386753, 41.686642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938240, 33.159660, 41.695774>,  <38.066753, 32.781174, 41.710995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938240, 33.159660, 41.695774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148245, -0.010565, 0.988894,
		0.935309, 0.323354, 0.143667,
		-0.321280, 0.946219, -0.038054,
		37.841854, 33.443527, 41.684357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467297, 33.142891, 42.288109>,  <38.066753, 32.781174, 41.710995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467297, 33.142891, 42.288109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138279, 33.339119, 42.173031>,  <37.940868, 33.456856, 42.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138279, 33.339119, 42.173031>,  <38.467297, 33.142891, 42.288109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138279, 33.339119, 42.173031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300169, 0.055175, 0.952289,
		0.483035, 0.869655, 0.101869,
		-0.822542, 0.490567, -0.287695,
		37.891518, 33.486290, 42.086723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519196, 33.650906, 42.722473>,  <38.467297, 33.142891, 42.288109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519196, 33.650906, 42.722473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144119, 33.591900, 42.596634>,  <37.919071, 33.556496, 42.521130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144119, 33.591900, 42.596634>,  <38.519196, 33.650906, 42.722473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144119, 33.591900, 42.596634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312394, -0.038477, 0.949173,
		-0.152124, 0.988311, -0.010004,
		-0.937693, -0.147517, -0.314596,
		37.862812, 33.547646, 42.502254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189304, 34.052261, 43.163143>,  <38.519196, 33.650906, 42.722473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189304, 34.052261, 43.163143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894855, 33.847488, 42.986034>,  <37.718185, 33.724625, 42.879768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894855, 33.847488, 42.986034>,  <38.189304, 34.052261, 43.163143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894855, 33.847488, 42.986034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487084, -0.053554, 0.871712,
		-0.469969, 0.857355, -0.209931,
		-0.736124, -0.511932, -0.442773,
		37.674019, 33.693909, 42.853203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611221, 34.359161, 43.394794>,  <38.189304, 34.052261, 43.163143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611221, 34.359161, 43.394794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518787, 33.982777, 43.295845>,  <37.463326, 33.756947, 43.236477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518787, 33.982777, 43.295845>,  <37.611221, 34.359161, 43.394794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518787, 33.982777, 43.295845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302247, -0.172248, 0.937538,
		-0.924795, 0.291421, -0.244598,
		-0.231087, -0.940959, -0.247375,
		37.449463, 33.700489, 43.221634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960049, 34.286175, 43.654346>,  <37.611221, 34.359161, 43.394794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960049, 34.286175, 43.654346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102631, 33.916645, 43.598503>,  <37.188179, 33.694927, 43.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102631, 33.916645, 43.598503>,  <36.960049, 34.286175, 43.654346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102631, 33.916645, 43.598503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478279, -0.308782, 0.822133,
		-0.802615, -0.226279, -0.551912,
		0.356452, -0.923824, -0.139608,
		37.209568, 33.639496, 43.556622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341099, 33.854633, 43.501789>,  <36.960049, 34.286175, 43.654346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341099, 33.854633, 43.501789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659698, 33.659935, 43.645271>,  <36.850857, 33.543118, 43.731361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659698, 33.659935, 43.645271>,  <36.341099, 33.854633, 43.501789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659698, 33.659935, 43.645271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520704, -0.250627, 0.816121,
		-0.307341, -0.836819, -0.453074,
		0.796498, -0.486745, 0.358707,
		36.898647, 33.513912, 43.752884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075768, 33.439129, 43.978439>,  <36.341099, 33.854633, 43.501789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075768, 33.439129, 43.978439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460320, 33.435040, 44.088448>,  <36.691051, 33.432587, 44.154453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460320, 33.435040, 44.088448>,  <36.075768, 33.439129, 43.978439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460320, 33.435040, 44.088448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274234, -0.119805, 0.954171,
		0.023202, -0.992745, -0.117980,
		0.961383, -0.010216, 0.275024,
		36.748734, 33.431973, 44.170956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053082, 33.014748, 44.585114>,  <36.075768, 33.439129, 43.978439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053082, 33.014748, 44.585114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402573, 33.209213, 44.578911>,  <36.612267, 33.325893, 44.575191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402573, 33.209213, 44.578911>,  <36.053082, 33.014748, 44.585114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402573, 33.209213, 44.578911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007914, 0.046076, 0.998906,
		0.486350, -0.872650, 0.044106,
		0.873728, 0.486167, -0.015503,
		36.664692, 33.355064, 44.574261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382210, 32.549164, 44.984196>,  <36.053082, 33.014748, 44.585114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382210, 32.549164, 44.984196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539135, 32.916431, 45.006325>,  <36.633289, 33.136791, 45.019604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539135, 32.916431, 45.006325>,  <36.382210, 32.549164, 44.984196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539135, 32.916431, 45.006325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042441, -0.042016, 0.998215,
		0.918853, -0.393959, 0.022484,
		0.392311, 0.918167, 0.055327,
		36.656830, 33.191883, 45.022923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749271, 32.594963, 45.585854>,  <36.382210, 32.549164, 44.984196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749271, 32.594963, 45.585854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728348, 32.988079, 45.514996>,  <36.715794, 33.223949, 45.472481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728348, 32.988079, 45.514996>,  <36.749271, 32.594963, 45.585854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728348, 32.988079, 45.514996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179442, 0.183753, 0.966455,
		0.982377, 0.018766, -0.185967,
		-0.052308, 0.982793, -0.177147,
		36.712654, 33.282917, 45.461853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259304, 32.870094, 45.996849>,  <36.749271, 32.594963, 45.585854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259304, 32.870094, 45.996849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006786, 33.176334, 45.947338>,  <36.855274, 33.360081, 45.917633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006786, 33.176334, 45.947338>,  <37.259304, 32.870094, 45.996849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006786, 33.176334, 45.947338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133035, 0.264137, 0.955266,
		0.764048, 0.586587, -0.268600,
		-0.631294, 0.765603, -0.123776,
		36.817398, 33.406013, 45.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441639, 33.225098, 46.485165>,  <37.259304, 32.870094, 45.996849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441639, 33.225098, 46.485165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127281, 33.449070, 46.380219>,  <36.938667, 33.583454, 46.317249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127281, 33.449070, 46.380219>,  <37.441639, 33.225098, 46.485165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127281, 33.449070, 46.380219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092532, 0.526013, 0.845428,
		0.611393, 0.640143, -0.465205,
		-0.785898, 0.559935, -0.262367,
		36.891510, 33.617050, 46.301510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624344, 33.964729, 46.585098>,  <37.441639, 33.225098, 46.485165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624344, 33.964729, 46.585098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225887, 33.929630, 46.586285>,  <36.986813, 33.908569, 46.586998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225887, 33.929630, 46.586285>,  <37.624344, 33.964729, 46.585098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225887, 33.929630, 46.586285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036218, 0.441462, 0.896549,
		-0.079983, 0.892979, -0.442935,
		-0.996138, -0.087750, 0.002968,
		36.927048, 33.903305, 46.587173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486240, 34.595947, 46.809269>,  <37.624344, 33.964729, 46.585098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486240, 34.595947, 46.809269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177788, 34.345886, 46.857506>,  <36.992718, 34.195850, 46.886448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177788, 34.345886, 46.857506>,  <37.486240, 34.595947, 46.809269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177788, 34.345886, 46.857506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158478, 0.371922, 0.914636,
		-0.616642, 0.686189, -0.385873,
		-0.771128, -0.625155, 0.120597,
		36.946449, 34.158340, 46.893684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051933, 35.002598, 47.105537>,  <37.486240, 34.595947, 46.809269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051933, 35.002598, 47.105537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898453, 34.648766, 47.211590>,  <36.806366, 34.436466, 47.275223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898453, 34.648766, 47.211590>,  <37.051933, 35.002598, 47.105537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898453, 34.648766, 47.211590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211814, 0.363755, 0.907093,
		-0.898838, 0.291892, -0.326939,
		-0.383699, -0.884580, 0.265130,
		36.783344, 34.383392, 47.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451458, 35.149944, 47.511612>,  <37.051933, 35.002598, 47.105537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451458, 35.149944, 47.511612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563667, 34.776863, 47.602272>,  <36.630993, 34.553013, 47.656666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563667, 34.776863, 47.602272>,  <36.451458, 35.149944, 47.511612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563667, 34.776863, 47.602272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130971, 0.196726, 0.971672,
		-0.950871, -0.302258, -0.066972,
		0.280520, -0.932705, 0.226648,
		36.647823, 34.497051, 47.670265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926620, 34.887657, 47.946934>,  <36.451458, 35.149944, 47.511612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926620, 34.887657, 47.946934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257175, 34.677551, 48.028107>,  <36.455509, 34.551487, 48.076809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257175, 34.677551, 48.028107>,  <35.926620, 34.887657, 47.946934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257175, 34.677551, 48.028107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201308, 0.060989, 0.977628,
		-0.525886, -0.848753, -0.055338,
		0.826389, -0.525261, 0.202934,
		36.505093, 34.519974, 48.088985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715836, 34.368744, 48.395271>,  <35.926620, 34.887657, 47.946934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715836, 34.368744, 48.395271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110970, 34.404194, 48.446377>,  <36.348049, 34.425465, 48.477039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110970, 34.404194, 48.446377>,  <35.715836, 34.368744, 48.395271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110970, 34.404194, 48.446377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140906, 0.162761, 0.976552,
		0.065748, -0.982678, 0.173269,
		0.987838, 0.088621, 0.127764,
		36.407322, 34.430779, 48.484707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865292, 33.990780, 49.013313>,  <35.715836, 34.368744, 48.395271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865292, 33.990780, 49.013313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193256, 34.213680, 48.960823>,  <36.390034, 34.347420, 48.929329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193256, 34.213680, 48.960823>,  <35.865292, 33.990780, 49.013313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193256, 34.213680, 48.960823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115490, 0.063500, 0.991277,
		0.560722, -0.827913, -0.012293,
		0.819910, 0.557250, -0.131222,
		36.439228, 34.380856, 48.921455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240662, 33.774391, 49.608929>,  <35.865292, 33.990780, 49.013313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240662, 33.774391, 49.608929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415756, 34.110455, 49.480854>,  <36.520813, 34.312092, 49.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415756, 34.110455, 49.480854>,  <36.240662, 33.774391, 49.608929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415756, 34.110455, 49.480854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311933, 0.192088, 0.930484,
		0.843259, -0.507182, -0.177990,
		0.437735, 0.840160, -0.320187,
		36.547077, 34.362503, 49.384796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788036, 33.846256, 50.094143>,  <36.240662, 33.774391, 49.608929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788036, 33.846256, 50.094143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727570, 34.204914, 49.927681>,  <36.691288, 34.420109, 49.827805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727570, 34.204914, 49.927681>,  <36.788036, 33.846256, 50.094143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727570, 34.204914, 49.927681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241025, 0.441718, 0.864171,
		0.958673, 0.030333, -0.282887,
		-0.151169, 0.896641, -0.416152,
		36.682220, 34.473907, 49.802834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401722, 34.380165, 50.307320>,  <36.788036, 33.846256, 50.094143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401722, 34.380165, 50.307320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072472, 34.595291, 50.234421>,  <36.874920, 34.724365, 50.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072472, 34.595291, 50.234421>,  <37.401722, 34.380165, 50.307320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072472, 34.595291, 50.234421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112329, 0.468805, 0.876130,
		0.556634, 0.700697, -0.446299,
		-0.823129, 0.537816, -0.182244,
		36.825531, 34.756638, 50.179749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655460, 34.964695, 50.597603>,  <37.401722, 34.380165, 50.307320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655460, 34.964695, 50.597603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257473, 34.989346, 50.566013>,  <37.018681, 35.004135, 50.547062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257473, 34.989346, 50.566013>,  <37.655460, 34.964695, 50.597603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257473, 34.989346, 50.566013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049528, 0.382623, 0.922576,
		0.087070, 0.921847, -0.377647,
		-0.994970, 0.061625, -0.078972,
		36.958981, 35.007832, 50.542320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571613, 35.631596, 50.737724>,  <37.655460, 34.964695, 50.597603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571613, 35.631596, 50.737724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239166, 35.423557, 50.816463>,  <37.039700, 35.298737, 50.863705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239166, 35.423557, 50.816463>,  <37.571613, 35.631596, 50.737724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239166, 35.423557, 50.816463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038362, 0.406753, 0.912732,
		-0.554773, 0.751036, -0.358011,
		-0.831117, -0.520093, 0.196845,
		36.989830, 35.267529, 50.875519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740036, 36.205254, 50.343079>,  <37.571613, 35.631596, 50.737724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740036, 36.205254, 50.343079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888783, 36.519028, 50.541626>,  <37.978031, 36.707291, 50.660755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888783, 36.519028, 50.541626>,  <37.740036, 36.205254, 50.343079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888783, 36.519028, 50.541626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617201, 0.190467, -0.763404,
		-0.693380, 0.590244, -0.413324,
		0.371870, 0.784433, 0.496365,
		38.000343, 36.754356, 50.690536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583759, 36.864254, 49.905788>,  <37.740036, 36.205254, 50.343079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583759, 36.864254, 49.905788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891712, 36.892559, 50.159489>,  <38.076485, 36.909542, 50.311710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891712, 36.892559, 50.159489>,  <37.583759, 36.864254, 49.905788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891712, 36.892559, 50.159489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586435, 0.313597, -0.746827,
		-0.251747, 0.946916, 0.199935,
		0.769882, 0.070763, 0.634251,
		38.122677, 36.913788, 50.349766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768154, 37.543743, 49.942875>,  <37.583759, 36.864254, 49.905788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768154, 37.543743, 49.942875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112080, 37.397282, 50.085224>,  <38.318436, 37.309402, 50.170631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112080, 37.397282, 50.085224>,  <37.768154, 37.543743, 49.942875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112080, 37.397282, 50.085224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500504, 0.466479, -0.729310,
		0.101037, 0.805187, 0.584350,
		0.859818, -0.366157, 0.355868,
		38.370026, 37.287434, 50.191986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373501, 38.131645, 49.979164>,  <37.768154, 37.543743, 49.942875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373501, 38.131645, 49.979164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491711, 37.751522, 49.940022>,  <38.562637, 37.523449, 49.916538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491711, 37.751522, 49.940022>,  <38.373501, 38.131645, 49.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491711, 37.751522, 49.940022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599645, 0.264256, -0.755377,
		0.743701, 0.164557, 0.647943,
		0.295525, -0.950310, -0.097852,
		38.580368, 37.466431, 49.910667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981556, 38.194405, 49.742367>,  <38.373501, 38.131645, 49.979164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981556, 38.194405, 49.742367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916241, 37.811001, 49.648907>,  <38.877052, 37.580959, 49.592831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916241, 37.811001, 49.648907>,  <38.981556, 38.194405, 49.742367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916241, 37.811001, 49.648907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581365, 0.097855, -0.807737,
		0.797089, -0.267733, 0.541266,
		-0.163292, -0.958511, -0.233650,
		38.867252, 37.523449, 49.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507706, 37.999043, 49.297054>,  <38.981556, 38.194405, 49.742367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507706, 37.999043, 49.297054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258297, 37.693787, 49.229118>,  <39.108654, 37.510635, 49.188354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258297, 37.693787, 49.229118>,  <39.507706, 37.999043, 49.297054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258297, 37.693787, 49.229118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386913, -0.112433, -0.915236,
		0.679356, -0.636380, 0.365372,
		-0.623518, -0.763138, -0.169842,
		39.071243, 37.464844, 49.178165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983562, 37.441883, 49.146152>,  <39.507706, 37.999043, 49.297054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983562, 37.441883, 49.146152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610771, 37.386108, 49.012299>,  <39.387096, 37.352642, 48.931988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610771, 37.386108, 49.012299>,  <39.983562, 37.441883, 49.146152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610771, 37.386108, 49.012299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357047, -0.193237, -0.913880,
		0.062770, -0.971193, 0.229879,
		-0.931975, -0.139442, -0.334632,
		39.331181, 37.344276, 48.911907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938221, 36.794323, 48.809891>,  <39.983562, 37.441883, 49.146152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938221, 36.794323, 48.809891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628727, 36.959938, 48.618099>,  <39.443031, 37.059307, 48.503025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628727, 36.959938, 48.618099>,  <39.938221, 36.794323, 48.809891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628727, 36.959938, 48.618099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224812, -0.528160, -0.818845,
		-0.592273, -0.741366, 0.315579,
		-0.773739, 0.414033, -0.479483,
		39.396606, 37.084148, 48.474255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522144, 36.293480, 48.476288>,  <39.938221, 36.794323, 48.809891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522144, 36.293480, 48.476288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452248, 36.633991, 48.278385>,  <39.410309, 36.838299, 48.159641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452248, 36.633991, 48.278385>,  <39.522144, 36.293480, 48.476288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452248, 36.633991, 48.278385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241069, -0.450208, -0.859767,
		-0.954647, -0.269507, -0.126548,
		-0.174740, 0.851281, -0.494759,
		39.399826, 36.889374, 48.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885605, 36.194317, 48.001198>,  <39.522144, 36.293480, 48.476288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885605, 36.194317, 48.001198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102463, 36.504105, 47.870792>,  <39.232578, 36.689976, 47.792549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102463, 36.504105, 47.870792>,  <38.885605, 36.194317, 48.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102463, 36.504105, 47.870792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052693, -0.355876, -0.933046,
		-0.838633, 0.523023, -0.152127,
		0.542143, 0.774467, -0.326009,
		39.265106, 36.736446, 47.772991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540390, 36.296227, 47.307629>,  <38.885605, 36.194317, 48.001198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540390, 36.296227, 47.307629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879704, 36.502247, 47.258404>,  <39.083290, 36.625858, 47.228867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879704, 36.502247, 47.258404>,  <38.540390, 36.296227, 47.307629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879704, 36.502247, 47.258404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058527, -0.139783, -0.988451,
		-0.526303, 0.845686, -0.088431,
		0.848281, 0.515049, -0.123064,
		39.134190, 36.656761, 47.221485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485756, 36.722622, 46.727020>,  <38.540390, 36.296227, 47.307629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485756, 36.722622, 46.727020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883045, 36.686657, 46.756470>,  <39.121418, 36.665077, 46.774139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883045, 36.686657, 46.756470>,  <38.485756, 36.722622, 46.727020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883045, 36.686657, 46.756470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066932, -0.075277, -0.994914,
		0.094999, 0.993101, -0.068749,
		0.993225, -0.089914, 0.073621,
		39.181011, 36.659683, 46.778557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822285, 37.242702, 46.282253>,  <38.485756, 36.722622, 46.727020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822285, 37.242702, 46.282253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062439, 36.926922, 46.333336>,  <39.206532, 36.737453, 46.363983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062439, 36.926922, 46.333336>,  <38.822285, 37.242702, 46.282253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062439, 36.926922, 46.333336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023126, -0.142482, -0.989527,
		0.799375, 0.597052, -0.067288,
		0.600387, -0.789447, 0.127704,
		39.242554, 36.690086, 46.371647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297607, 37.295906, 45.741100>,  <38.822285, 37.242702, 46.282253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297607, 37.295906, 45.741100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312664, 36.911972, 45.852318>,  <39.321697, 36.681614, 45.919048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312664, 36.911972, 45.852318>,  <39.297607, 37.295906, 45.741100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312664, 36.911972, 45.852318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114623, -0.272255, -0.955374,
		0.992696, 0.067828, 0.099772,
		0.037638, -0.959832, 0.278041,
		39.323956, 36.624023, 45.935730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803730, 37.030376, 45.377113>,  <39.297607, 37.295906, 45.741100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803730, 37.030376, 45.377113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604221, 36.698692, 45.478024>,  <39.484516, 36.499683, 45.538570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604221, 36.698692, 45.478024>,  <39.803730, 37.030376, 45.377113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604221, 36.698692, 45.478024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009747, -0.296412, -0.955011,
		0.866679, -0.473874, 0.155924,
		-0.498772, -0.829207, 0.252275,
		39.454590, 36.449932, 45.553707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070179, 36.505962, 45.067631>,  <39.803730, 37.030376, 45.377113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070179, 36.505962, 45.067631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721565, 36.334045, 45.162045>,  <39.512398, 36.230896, 45.218693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721565, 36.334045, 45.162045>,  <40.070179, 36.505962, 45.067631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721565, 36.334045, 45.162045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024952, -0.519621, -0.854032,
		0.489702, -0.738428, 0.463591,
		-0.871533, -0.429789, 0.236034,
		39.460106, 36.205109, 45.232853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189854, 35.793331, 45.085308>,  <40.070179, 36.505962, 45.067631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189854, 35.793331, 45.085308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800507, 35.865677, 45.028954>,  <39.566898, 35.909084, 44.995140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800507, 35.865677, 45.028954>,  <40.189854, 35.793331, 45.085308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800507, 35.865677, 45.028954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026484, -0.521690, -0.852724,
		-0.227724, -0.833744, 0.503004,
		-0.973365, 0.180864, -0.140883,
		39.508495, 35.919937, 44.986691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885044, 35.132107, 44.804478>,  <40.189854, 35.793331, 45.085308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885044, 35.132107, 44.804478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640156, 35.436611, 44.718998>,  <39.493221, 35.619312, 44.667709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640156, 35.436611, 44.718998>,  <39.885044, 35.132107, 44.804478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640156, 35.436611, 44.718998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076930, -0.326340, -0.942117,
		-0.786936, -0.560342, 0.258356,
		-0.612220, 0.761261, -0.213702,
		39.456490, 35.664989, 44.654888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423473, 34.845470, 44.367638>,  <39.885044, 35.132107, 44.804478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423473, 34.845470, 44.367638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389515, 35.241959, 44.327087>,  <39.369141, 35.479851, 44.302757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389515, 35.241959, 44.327087>,  <39.423473, 34.845470, 44.367638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389515, 35.241959, 44.327087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029667, -0.099181, -0.994627,
		-0.995948, -0.087444, -0.020987,
		-0.084892, 0.991220, -0.101373,
		39.364048, 35.539326, 44.296677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891582, 34.909191, 43.912903>,  <39.423473, 34.845470, 44.367638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891582, 34.909191, 43.912903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076221, 35.263508, 43.893673>,  <39.187004, 35.476097, 43.882133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076221, 35.263508, 43.893673>,  <38.891582, 34.909191, 43.912903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076221, 35.263508, 43.893673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194074, -0.153717, -0.968868,
		-0.865602, 0.437893, -0.242864,
		0.461593, 0.885788, -0.048074,
		39.214699, 35.529243, 43.879250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557251, 35.224449, 43.418983>,  <38.891582, 34.909191, 43.912903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557251, 35.224449, 43.418983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898411, 35.432972, 43.430267>,  <39.103107, 35.558086, 43.437038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898411, 35.432972, 43.430267>,  <38.557251, 35.224449, 43.418983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898411, 35.432972, 43.430267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115993, -0.136545, -0.983819,
		-0.509019, 0.842375, -0.176928,
		0.852904, 0.521305, 0.028206,
		39.154282, 35.589363, 43.438728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603168, 35.668957, 42.808731>,  <38.557251, 35.224449, 43.418983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603168, 35.668957, 42.808731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981312, 35.651741, 42.938007>,  <39.208199, 35.641411, 43.015572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981312, 35.651741, 42.938007>,  <38.603168, 35.668957, 42.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981312, 35.651741, 42.938007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307405, -0.212658, -0.927512,
		0.108645, 0.976178, -0.187809,
		0.945356, -0.043036, 0.323186,
		39.264919, 35.638832, 43.034962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943512, 36.262573, 42.502266>,  <38.603168, 35.668957, 42.808731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943512, 36.262573, 42.502266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200581, 35.966450, 42.581181>,  <39.354820, 35.788776, 42.628529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200581, 35.966450, 42.581181>,  <38.943512, 36.262573, 42.502266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200581, 35.966450, 42.581181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266762, -0.025164, -0.963434,
		0.718202, 0.671797, 0.181314,
		0.642669, -0.740308, 0.197282,
		39.393383, 35.744358, 42.640366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581272, 36.392757, 42.150108>,  <38.943512, 36.262573, 42.502266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581272, 36.392757, 42.150108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602875, 36.003559, 42.239880>,  <39.615837, 35.770042, 42.293743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602875, 36.003559, 42.239880>,  <39.581272, 36.392757, 42.150108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602875, 36.003559, 42.239880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263399, -0.202919, -0.943104,
		0.963174, 0.110045, 0.245327,
		0.054002, -0.972992, 0.224432,
		39.619076, 35.711662, 42.307209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048008, 36.288074, 41.770939>,  <39.581272, 36.392757, 42.150108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048008, 36.288074, 41.770939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915657, 35.920712, 41.857700>,  <39.836246, 35.700294, 41.909756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915657, 35.920712, 41.857700>,  <40.048008, 36.288074, 41.770939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915657, 35.920712, 41.857700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124898, -0.270444, -0.954600,
		0.935374, -0.288761, 0.204190,
		-0.330873, -0.918410, 0.216901,
		39.816395, 35.645187, 41.922771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490326, 35.889576, 41.411137>,  <40.048008, 36.288074, 41.770939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490326, 35.889576, 41.411137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184559, 35.638710, 41.470924>,  <40.001099, 35.488190, 41.506798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184559, 35.638710, 41.470924>,  <40.490326, 35.889576, 41.411137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184559, 35.638710, 41.470924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135016, -0.382413, -0.914074,
		0.630431, -0.678549, 0.376999,
		-0.764413, -0.627162, 0.149470,
		39.955235, 35.450562, 41.515766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689945, 35.209919, 41.116001>,  <40.490326, 35.889576, 41.411137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689945, 35.209919, 41.116001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291759, 35.203751, 41.153557>,  <40.052849, 35.200050, 41.176090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291759, 35.203751, 41.153557>,  <40.689945, 35.209919, 41.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291759, 35.203751, 41.153557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070598, -0.541841, -0.837511,
		0.063786, -0.840340, 0.538294,
		-0.995463, -0.015419, 0.093888,
		39.993122, 35.199123, 41.181725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421192, 34.540604, 40.834942>,  <40.689945, 35.209919, 41.116001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421192, 34.540604, 40.834942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119823, 34.801807, 40.804138>,  <39.939003, 34.958530, 40.785656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119823, 34.801807, 40.804138>,  <40.421192, 34.540604, 40.834942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119823, 34.801807, 40.804138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076244, -0.203088, -0.976188,
		-0.653100, -0.729612, 0.202799,
		-0.753424, 0.653010, -0.077008,
		39.893795, 34.997711, 40.781036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121651, 34.297108, 40.292496>,  <40.421192, 34.540604, 40.834942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121651, 34.297108, 40.292496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951561, 34.658676, 40.310905>,  <39.849506, 34.875618, 40.321953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951561, 34.658676, 40.310905>,  <40.121651, 34.297108, 40.292496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951561, 34.658676, 40.310905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123074, -0.007365, -0.992370,
		-0.896682, -0.427643, 0.114381,
		-0.425223, 0.903918, 0.046028,
		39.823994, 34.929852, 40.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422722, 34.276566, 39.867294>,  <40.121651, 34.297108, 40.292496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422722, 34.276566, 39.867294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577660, 34.643822, 39.900726>,  <39.670624, 34.864174, 39.920784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577660, 34.643822, 39.900726>,  <39.422722, 34.276566, 39.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577660, 34.643822, 39.900726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129480, 0.035582, -0.990943,
		-0.912796, 0.394660, -0.105098,
		0.387347, 0.918138, 0.083580,
		39.693863, 34.919262, 39.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466671, 34.474777, 39.103943>,  <39.422722, 34.276566, 39.867294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466671, 34.474777, 39.103943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660839, 34.757969, 39.309132>,  <39.777340, 34.927883, 39.432243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660839, 34.757969, 39.309132>,  <39.466671, 34.474777, 39.103943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660839, 34.757969, 39.309132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400763, 0.341274, -0.850248,
		-0.777018, 0.618307, -0.118070,
		0.485420, 0.707975, 0.512970,
		39.806465, 34.970360, 39.463024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306320, 35.081966, 38.718666>,  <39.466671, 34.474777, 39.103943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306320, 35.081966, 38.718666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621567, 35.146797, 38.956188>,  <39.810715, 35.185696, 39.098701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621567, 35.146797, 38.956188>,  <39.306320, 35.081966, 38.718666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621567, 35.146797, 38.956188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523363, 0.331320, -0.785059,
		-0.323982, 0.929493, 0.176291,
		0.788116, 0.162081, 0.593804,
		39.858002, 35.195423, 39.134331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561436, 35.643562, 38.470383>,  <39.306320, 35.081966, 38.718666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561436, 35.643562, 38.470383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883938, 35.511196, 38.666527>,  <40.077438, 35.431774, 38.784214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883938, 35.511196, 38.666527>,  <39.561436, 35.643562, 38.470383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883938, 35.511196, 38.666527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591016, 0.414656, -0.691925,
		0.025640, 0.847675, 0.529895,
		0.806252, -0.330918, 0.490358,
		40.125813, 35.411922, 38.813633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012718, 36.178463, 38.607777>,  <39.561436, 35.643562, 38.470383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012718, 36.178463, 38.607777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226776, 35.840942, 38.591660>,  <40.355209, 35.638432, 38.581989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226776, 35.840942, 38.591660>,  <40.012718, 36.178463, 38.607777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226776, 35.840942, 38.591660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585694, 0.404977, -0.702109,
		0.608757, 0.352129, 0.710929,
		0.535142, -0.843800, -0.040293,
		40.387318, 35.587803, 38.579571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736740, 36.336872, 38.578838>,  <40.012718, 36.178463, 38.607777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736740, 36.336872, 38.578838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725418, 35.963455, 38.435898>,  <40.718624, 35.739407, 38.350132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725418, 35.963455, 38.435898>,  <40.736740, 36.336872, 38.578838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725418, 35.963455, 38.435898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661218, 0.250623, -0.707092,
		0.749660, -0.256299, 0.610181,
		-0.028301, -0.933541, -0.357352,
		40.716927, 35.683392, 38.328693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460182, 36.157383, 38.422543>,  <40.736740, 36.336872, 38.578838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460182, 36.157383, 38.422543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231136, 35.909966, 38.207317>,  <41.093708, 35.761513, 38.078182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231136, 35.909966, 38.207317>,  <41.460182, 36.157383, 38.422543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231136, 35.909966, 38.207317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520878, 0.232327, -0.821407,
		0.633085, -0.750617, 0.189152,
		-0.572617, -0.618546, -0.538063,
		41.059353, 35.724403, 38.045898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973122, 35.730263, 37.901684>,  <41.460182, 36.157383, 38.422543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973122, 35.730263, 37.901684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603046, 35.708546, 37.751446>,  <41.381001, 35.695515, 37.661301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603046, 35.708546, 37.751446>,  <41.973122, 35.730263, 37.901684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603046, 35.708546, 37.751446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364066, 0.152417, -0.918817,
		0.107129, -0.986824, -0.121250,
		-0.925192, -0.054289, -0.375597,
		41.325489, 35.692257, 37.638767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087780, 35.469025, 37.316463>,  <41.973122, 35.730263, 37.901684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087780, 35.469025, 37.316463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726120, 35.633804, 37.271175>,  <41.509125, 35.732670, 37.244003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726120, 35.633804, 37.271175>,  <42.087780, 35.469025, 37.316463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726120, 35.633804, 37.271175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319126, 0.475035, -0.820061,
		-0.284038, -0.777587, -0.560964,
		-0.904147, 0.411947, -0.113220,
		41.454876, 35.757389, 37.237209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978844, 35.485039, 36.615868>,  <42.087780, 35.469025, 37.316463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978844, 35.485039, 36.615868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701523, 35.750336, 36.728611>,  <41.535130, 35.909515, 36.796257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701523, 35.750336, 36.728611>,  <41.978844, 35.485039, 36.615868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701523, 35.750336, 36.728611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147243, 0.513232, -0.845525,
		-0.705448, -0.544700, -0.453481,
		-0.693298, 0.663246, 0.281855,
		41.493534, 35.949310, 36.813168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405476, 35.571468, 36.088558>,  <41.978844, 35.485039, 36.615868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405476, 35.571468, 36.088558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386604, 35.909698, 36.301266>,  <41.375282, 36.112637, 36.428890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386604, 35.909698, 36.301266>,  <41.405476, 35.571468, 36.088558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386604, 35.909698, 36.301266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017842, 0.532992, -0.845932,
		-0.998727, -0.030418, -0.040230,
		-0.047174, 0.845574, 0.531771,
		41.372452, 36.163372, 36.460796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802486, 35.983028, 36.032898>,  <41.405476, 35.571468, 36.088558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802486, 35.983028, 36.032898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071804, 36.265778, 36.119621>,  <41.233395, 36.435425, 36.171654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071804, 36.265778, 36.119621>,  <40.802486, 35.983028, 36.032898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071804, 36.265778, 36.119621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054497, 0.339882, -0.938888,
		-0.737360, 0.620336, 0.267364,
		0.673298, 0.706869, 0.216809,
		41.273792, 36.477837, 36.184666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629524, 36.603195, 35.801594>,  <40.802486, 35.983028, 36.032898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629524, 36.603195, 35.801594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024620, 36.665619, 35.800488>,  <41.261677, 36.703072, 35.799824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024620, 36.665619, 35.800488>,  <40.629524, 36.603195, 35.801594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024620, 36.665619, 35.800488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079160, 0.485593, -0.870594,
		-0.134520, 0.860143, 0.491995,
		0.987744, 0.156059, -0.002767,
		41.320942, 36.712437, 35.799656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713299, 37.302063, 35.882656>,  <40.629524, 36.603195, 35.801594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713299, 37.302063, 35.882656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984077, 37.105129, 35.663807>,  <41.146545, 36.986969, 35.532497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984077, 37.105129, 35.663807>,  <40.713299, 37.302063, 35.882656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984077, 37.105129, 35.663807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160191, 0.626977, -0.762390,
		0.718384, 0.603745, 0.345566,
		0.676951, -0.492333, -0.547125,
		41.187164, 36.957428, 35.499668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060371, 37.766300, 35.375877>,  <40.713299, 37.302063, 35.882656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060371, 37.766300, 35.375877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098454, 37.398678, 35.222900>,  <41.121304, 37.178104, 35.131115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098454, 37.398678, 35.222900>,  <41.060371, 37.766300, 35.375877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098454, 37.398678, 35.222900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019097, 0.382433, -0.923786,
		0.995275, 0.095250, 0.018858,
		0.095203, -0.919060, -0.382445,
		41.127014, 37.122959, 35.108166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397526, 37.975655, 34.778671>,  <41.060371, 37.766300, 35.375877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397526, 37.975655, 34.778671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175133, 37.643929, 34.756302>,  <41.041698, 37.444893, 34.742882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175133, 37.643929, 34.756302>,  <41.397526, 37.975655, 34.778671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175133, 37.643929, 34.756302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206515, 0.202995, -0.957155,
		0.805132, -0.520610, -0.284126,
		-0.555981, -0.829312, -0.055925,
		41.008339, 37.395134, 34.739525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729069, 37.542103, 34.322128>,  <41.397526, 37.975655, 34.778671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729069, 37.542103, 34.322128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332172, 37.497917, 34.344929>,  <41.094032, 37.471405, 34.358608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332172, 37.497917, 34.344929>,  <41.729069, 37.542103, 34.322128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332172, 37.497917, 34.344929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075004, 0.166404, -0.983201,
		0.099123, -0.979851, -0.173398,
		-0.992244, -0.110464, 0.056998,
		41.034500, 37.464779, 34.362030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465687, 36.923309, 33.874157>,  <41.729069, 37.542103, 34.322128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465687, 36.923309, 33.874157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234344, 37.246426, 33.919720>,  <41.095539, 37.440296, 33.947056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234344, 37.246426, 33.919720>,  <41.465687, 36.923309, 33.874157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234344, 37.246426, 33.919720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047967, 0.105714, -0.993239,
		-0.814373, -0.579910, -0.022393,
		-0.578356, 0.807793, 0.113907,
		41.060837, 37.488762, 33.953892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806728, 37.400478, 33.315929>,  <41.465687, 36.923309, 33.874157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806728, 37.400478, 33.315929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192184, 37.454845, 33.223904>,  <42.423458, 37.487465, 33.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192184, 37.454845, 33.223904>,  <41.806728, 37.400478, 33.315929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192184, 37.454845, 33.223904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198622, -0.211637, -0.956953,
		-0.178760, 0.967851, -0.176945,
		0.963636, 0.135920, -0.230069,
		42.481274, 37.495621, 33.154884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881599, 37.904823, 32.737785>,  <41.806728, 37.400478, 33.315929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881599, 37.904823, 32.737785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223743, 37.698017, 32.724846>,  <42.429031, 37.573933, 32.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223743, 37.698017, 32.724846>,  <41.881599, 37.904823, 32.737785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223743, 37.698017, 32.724846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053043, -0.025289, -0.998272,
		0.515307, 0.855600, -0.049056,
		0.855362, -0.517019, -0.032352,
		42.480350, 37.542912, 32.715141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190166, 38.076607, 32.096169>,  <41.881599, 37.904823, 32.737785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190166, 38.076607, 32.096169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354378, 37.726715, 32.199177>,  <42.452904, 37.516781, 32.260983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354378, 37.726715, 32.199177>,  <42.190166, 38.076607, 32.096169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354378, 37.726715, 32.199177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347545, -0.411200, -0.842690,
		0.843019, 0.256445, -0.472816,
		0.410526, -0.874729, 0.257523,
		42.477535, 37.464298, 32.276432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607895, 37.803612, 31.509218>,  <42.190166, 38.076607, 32.096169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607895, 37.803612, 31.509218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538902, 37.481789, 31.736528>,  <42.497505, 37.288696, 31.872915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538902, 37.481789, 31.736528>,  <42.607895, 37.803612, 31.509218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538902, 37.481789, 31.736528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220719, -0.530682, -0.818327,
		0.959964, -0.266579, -0.086046,
		-0.172486, -0.804557, 0.568275,
		42.487156, 37.240421, 31.907011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872662, 37.229652, 31.138378>,  <42.607895, 37.803612, 31.509218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872662, 37.229652, 31.138378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599682, 37.076107, 31.387188>,  <42.435894, 36.983978, 31.536474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599682, 37.076107, 31.387188>,  <42.872662, 37.229652, 31.138378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599682, 37.076107, 31.387188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183959, -0.733403, -0.654431,
		0.707406, -0.561042, 0.429894,
		-0.682449, -0.383865, 0.622022,
		42.394947, 36.960949, 31.573795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003666, 36.576900, 31.099714>,  <42.872662, 37.229652, 31.138378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003666, 36.576900, 31.099714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638744, 36.601658, 31.261642>,  <42.419792, 36.616512, 31.358799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638744, 36.601658, 31.261642>,  <43.003666, 36.576900, 31.099714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638744, 36.601658, 31.261642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321200, -0.721359, -0.613572,
		0.254046, -0.689790, 0.677975,
		-0.912300, 0.061890, 0.404819,
		42.365055, 36.620224, 31.383089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773323, 35.913055, 31.258440>,  <43.003666, 36.576900, 31.099714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773323, 35.913055, 31.258440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441303, 36.131516, 31.213285>,  <42.242092, 36.262592, 31.186192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441303, 36.131516, 31.213285>,  <42.773323, 35.913055, 31.258440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441303, 36.131516, 31.213285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420633, -0.746004, -0.516281,
		-0.366180, -0.381053, 0.848947,
		-0.830048, 0.546147, -0.112888,
		42.192287, 36.295361, 31.179419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172295, 35.461521, 31.352827>,  <42.773323, 35.913055, 31.258440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172295, 35.461521, 31.352827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012463, 35.770943, 31.156073>,  <41.916565, 35.956596, 31.038019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012463, 35.770943, 31.156073>,  <42.172295, 35.461521, 31.352827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012463, 35.770943, 31.156073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566476, -0.630232, -0.530955,
		-0.720726, 0.066486, 0.690024,
		-0.399574, 0.773555, -0.491888,
		41.892590, 36.003010, 31.008507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480839, 35.294216, 31.340210>,  <42.172295, 35.461521, 31.352827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480839, 35.294216, 31.340210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548775, 35.568462, 31.057060>,  <41.589535, 35.733009, 30.887171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548775, 35.568462, 31.057060>,  <41.480839, 35.294216, 31.340210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548775, 35.568462, 31.057060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465621, -0.577245, -0.670809,
		-0.868534, 0.443530, 0.221199,
		0.169838, 0.685616, -0.707874,
		41.599728, 35.774147, 30.844698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816250, 35.395950, 31.028830>,  <41.480839, 35.294216, 31.340210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816250, 35.395950, 31.028830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108562, 35.520962, 30.786083>,  <41.283951, 35.595970, 30.640436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108562, 35.520962, 30.786083>,  <40.816250, 35.395950, 31.028830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108562, 35.520962, 30.786083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326640, -0.620539, -0.712908,
		-0.599386, 0.719207, -0.351395,
		0.730782, 0.312528, -0.606864,
		41.327797, 35.614719, 30.604025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496746, 35.256638, 30.362944>,  <40.816250, 35.395950, 31.028830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496746, 35.256638, 30.362944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860806, 35.366364, 30.238762>,  <41.079243, 35.432198, 30.164253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860806, 35.366364, 30.238762>,  <40.496746, 35.256638, 30.362944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860806, 35.366364, 30.238762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180615, -0.411678, -0.893252,
		-0.372840, 0.869064, -0.325142,
		0.910148, 0.274314, -0.310456,
		41.133850, 35.448658, 30.145624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377167, 35.551422, 29.716980>,  <40.496746, 35.256638, 30.362944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377167, 35.551422, 29.716980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755257, 35.421669, 29.731499>,  <40.982113, 35.343819, 29.740210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755257, 35.421669, 29.731499>,  <40.377167, 35.551422, 29.716980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755257, 35.421669, 29.731499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092511, -0.372877, -0.923257,
		0.313022, 0.869332, -0.382463,
		0.945229, -0.324382, 0.036296,
		41.038826, 35.324356, 29.742388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509327, 35.709080, 29.012562>,  <40.377167, 35.551422, 29.716980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509327, 35.709080, 29.012562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760475, 35.441887, 29.172352>,  <40.911163, 35.281570, 29.268227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760475, 35.441887, 29.172352>,  <40.509327, 35.709080, 29.012562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760475, 35.441887, 29.172352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020064, -0.526974, -0.849645,
		0.778060, 0.525450, -0.344273,
		0.627869, -0.667982, 0.399474,
		40.948837, 35.241493, 29.292194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006516, 35.603943, 28.516405>,  <40.509327, 35.709080, 29.012562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006516, 35.603943, 28.516405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042843, 35.291904, 28.764017>,  <41.064640, 35.104679, 28.912584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042843, 35.291904, 28.764017>,  <41.006516, 35.603943, 28.516405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042843, 35.291904, 28.764017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046282, -0.624233, -0.779866,
		0.994791, 0.042179, -0.092799,
		0.090822, -0.780099, 0.619029,
		41.070091, 35.057877, 28.949726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400986, 35.101910, 28.103552>,  <41.006516, 35.603943, 28.516405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400986, 35.101910, 28.103552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232273, 34.907612, 28.409794>,  <41.131046, 34.791031, 28.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232273, 34.907612, 28.409794>,  <41.400986, 35.101910, 28.103552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232273, 34.907612, 28.409794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236381, -0.756279, -0.610054,
		0.875344, -0.438282, 0.204161,
		-0.421778, -0.485747, 0.765606,
		41.105740, 34.761887, 28.639475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747925, 34.527161, 28.137352>,  <41.400986, 35.101910, 28.103552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747925, 34.527161, 28.137352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392761, 34.440723, 28.299795>,  <41.179665, 34.388859, 28.397261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392761, 34.440723, 28.299795>,  <41.747925, 34.527161, 28.137352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392761, 34.440723, 28.299795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099615, -0.771534, -0.628341,
		0.449109, -0.598363, 0.663523,
		-0.887907, -0.216097, 0.406108,
		41.126389, 34.375893, 28.421627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742596, 33.823719, 28.470217>,  <41.747925, 34.527161, 28.137352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742596, 33.823719, 28.470217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358475, 33.910957, 28.400646>,  <41.128002, 33.963299, 28.358904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358475, 33.910957, 28.400646>,  <41.742596, 33.823719, 28.470217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358475, 33.910957, 28.400646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049582, -0.747007, -0.662965,
		-0.274514, -0.628025, 0.728167,
		-0.960304, 0.218097, -0.173925,
		41.070385, 33.976387, 28.348469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406784, 33.177238, 28.219130>,  <41.742596, 33.823719, 28.470217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406784, 33.177238, 28.219130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139206, 33.459934, 28.127016>,  <40.978661, 33.629551, 28.071749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139206, 33.459934, 28.127016>,  <41.406784, 33.177238, 28.219130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139206, 33.459934, 28.127016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372900, -0.587079, -0.718529,
		-0.643011, -0.394781, 0.656265,
		-0.668941, 0.706744, -0.230285,
		40.938522, 33.671959, 28.057930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858700, 32.837234, 28.046202>,  <41.406784, 33.177238, 28.219130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858700, 32.837234, 28.046202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748550, 33.183643, 27.879267>,  <40.682461, 33.391491, 27.779106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748550, 33.183643, 27.879267>,  <40.858700, 32.837234, 28.046202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748550, 33.183643, 27.879267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567560, -0.496846, -0.656521,
		-0.775915, 0.056073, 0.628340,
		-0.275375, 0.866026, -0.417336,
		40.665939, 33.443451, 27.754066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180489, 32.710255, 27.927998>,  <40.858700, 32.837234, 28.046202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180489, 32.710255, 27.927998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286777, 33.020519, 27.699001>,  <40.350552, 33.206676, 27.561604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286777, 33.020519, 27.699001>,  <40.180489, 32.710255, 27.927998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286777, 33.020519, 27.699001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552062, -0.364401, -0.749960,
		-0.790329, 0.515331, 0.331383,
		0.265721, 0.775659, -0.572491,
		40.366493, 33.253216, 27.527254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539619, 32.962440, 27.657368>,  <40.180489, 32.710255, 27.927998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539619, 32.962440, 27.657368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841877, 33.046864, 27.409348>,  <40.023232, 33.097519, 27.260536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841877, 33.046864, 27.409348>,  <39.539619, 32.962440, 27.657368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841877, 33.046864, 27.409348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431139, -0.552374, -0.713444,
		-0.493078, 0.806435, -0.326400,
		0.755641, 0.211059, -0.620049,
		40.068569, 33.110180, 27.223333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453678, 33.516491, 27.073484>,  <39.539619, 32.962440, 27.657368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453678, 33.516491, 27.073484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677170, 33.187832, 27.028362>,  <39.811264, 32.990639, 27.001289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677170, 33.187832, 27.028362>,  <39.453678, 33.516491, 27.073484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677170, 33.187832, 27.028362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652683, -0.351702, -0.671052,
		0.511692, 0.448561, -0.732779,
		0.558727, -0.821644, -0.112805,
		39.844788, 32.941338, 26.994520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616432, 33.264767, 26.246763>,  <39.453678, 33.516491, 27.073484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616432, 33.264767, 26.246763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622253, 32.944939, 26.486921>,  <39.625748, 32.753040, 26.631016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622253, 32.944939, 26.486921>,  <39.616432, 33.264767, 26.246763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622253, 32.944939, 26.486921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642892, -0.467376, -0.606836,
		0.765818, -0.377156, -0.520841,
		0.014557, -0.799570, 0.600396,
		39.626621, 32.705067, 26.667040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177364, 32.621082, 26.211166>,  <39.616432, 33.264767, 26.246763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177364, 32.621082, 26.211166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552471, 32.517532, 26.303753>,  <40.777534, 32.455402, 26.359304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552471, 32.517532, 26.303753>,  <40.177364, 32.621082, 26.211166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552471, 32.517532, 26.303753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201333, -0.137791, -0.969783,
		0.282947, 0.956032, -0.077096,
		0.937767, -0.258875, 0.231468,
		40.833801, 32.439869, 26.373194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723713, 33.022709, 25.857599>,  <40.177364, 32.621082, 26.211166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723713, 33.022709, 25.857599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928577, 32.696766, 25.966183>,  <41.051498, 32.501198, 26.031332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928577, 32.696766, 25.966183>,  <40.723713, 33.022709, 25.857599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928577, 32.696766, 25.966183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405528, -0.049185, -0.912758,
		0.757122, 0.577567, 0.305258,
		0.512165, -0.814860, 0.271459,
		41.082226, 32.452309, 26.047621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465256, 33.102619, 25.707785>,  <40.723713, 33.022709, 25.857599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465256, 33.102619, 25.707785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344009, 32.724266, 25.661444>,  <41.271263, 32.497253, 25.633638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344009, 32.724266, 25.661444>,  <41.465256, 33.102619, 25.707785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344009, 32.724266, 25.661444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601355, -0.095550, -0.793248,
		0.739252, -0.310113, 0.597776,
		-0.303114, -0.945886, -0.115852,
		41.253075, 32.440498, 25.626688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048458, 32.645912, 25.759264>,  <41.465256, 33.102619, 25.707785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048458, 32.645912, 25.759264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787453, 32.443283, 25.533836>,  <41.630848, 32.321705, 25.398579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787453, 32.443283, 25.533836>,  <42.048458, 32.645912, 25.759264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787453, 32.443283, 25.533836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721201, -0.186889, -0.667039,
		0.232576, -0.841701, 0.487285,
		-0.652516, -0.506568, -0.563570,
		41.591698, 32.291313, 25.364765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390690, 32.358227, 25.215466>,  <42.048458, 32.645912, 25.759264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390690, 32.358227, 25.215466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055580, 32.287918, 25.008686>,  <41.854515, 32.245735, 24.884619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055580, 32.287918, 25.008686>,  <42.390690, 32.358227, 25.215466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055580, 32.287918, 25.008686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543534, -0.178361, -0.820218,
		0.051967, -0.968139, 0.244964,
		-0.837777, -0.175770, -0.516948,
		41.804249, 32.235188, 24.853601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158203, 32.045589, 25.408777>,  <42.390690, 32.358227, 25.215466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158203, 32.045589, 25.408777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489048, 32.268951, 25.383268>,  <43.687557, 32.402969, 25.367964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489048, 32.268951, 25.383268>,  <43.158203, 32.045589, 25.408777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489048, 32.268951, 25.383268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104932, 0.264896, 0.958551,
		0.552150, -0.786140, 0.277693,
		0.827115, 0.558403, -0.063771,
		43.737183, 32.436474, 25.364138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715279, 31.856575, 25.989336>,  <43.158203, 32.045589, 25.408777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715279, 31.856575, 25.989336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801369, 32.228951, 25.871334>,  <43.853024, 32.452377, 25.800533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801369, 32.228951, 25.871334>,  <43.715279, 31.856575, 25.989336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801369, 32.228951, 25.871334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104434, 0.278411, 0.954767,
		0.970964, -0.236301, -0.037300,
		0.215227, 0.930940, -0.295005,
		43.865936, 32.508232, 25.782833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348915, 32.026722, 26.247669>,  <43.715279, 31.856575, 25.989336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348915, 32.026722, 26.247669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132401, 32.356007, 26.179167>,  <44.002491, 32.553577, 26.138065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132401, 32.356007, 26.179167>,  <44.348915, 32.026722, 26.247669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132401, 32.356007, 26.179167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240456, 0.346717, 0.906625,
		0.805725, 0.449561, -0.385619,
		-0.541283, 0.823215, -0.171258,
		43.970016, 32.602970, 26.127789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758247, 32.541569, 26.475336>,  <44.348915, 32.026722, 26.247669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758247, 32.541569, 26.475336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398384, 32.716114, 26.469727>,  <44.182465, 32.820843, 26.466360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398384, 32.716114, 26.469727>,  <44.758247, 32.541569, 26.475336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398384, 32.716114, 26.469727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247128, 0.535462, 0.807594,
		0.359916, 0.723094, -0.589572,
		-0.899660, 0.436366, -0.014025,
		44.128487, 32.847023, 26.465519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883018, 33.417187, 26.440874>,  <44.758247, 32.541569, 26.475336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883018, 33.417187, 26.440874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532658, 33.317116, 26.605896>,  <44.322441, 33.257072, 26.704908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532658, 33.317116, 26.605896>,  <44.883018, 33.417187, 26.440874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532658, 33.317116, 26.605896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138777, 0.688300, 0.712029,
		-0.462092, 0.680923, -0.568167,
		-0.875906, -0.250175, 0.412554,
		44.269886, 33.242062, 26.729662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614193, 34.056686, 26.621849>,  <44.883018, 33.417187, 26.440874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614193, 34.056686, 26.621849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427315, 33.767288, 26.825136>,  <44.315186, 33.593651, 26.947107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427315, 33.767288, 26.825136>,  <44.614193, 34.056686, 26.621849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427315, 33.767288, 26.825136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131017, 0.511808, 0.849051,
		-0.874391, 0.463260, -0.144325,
		-0.467198, -0.723494, 0.508215,
		44.287155, 33.550240, 26.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127312, 34.534714, 26.993357>,  <44.614193, 34.056686, 26.621849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127312, 34.534714, 26.993357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156876, 34.179672, 27.175215>,  <44.174614, 33.966648, 27.284328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156876, 34.179672, 27.175215>,  <44.127312, 34.534714, 26.993357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156876, 34.179672, 27.175215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275408, 0.456328, 0.846117,
		-0.958482, 0.062677, 0.278179,
		0.073909, -0.887601, 0.454644,
		44.179047, 33.913391, 27.311607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722260, 34.537090, 27.526234>,  <44.127312, 34.534714, 26.993357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722260, 34.537090, 27.526234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964951, 34.242981, 27.647064>,  <44.110565, 34.066513, 27.719563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.964951, 34.242981, 27.647064>,  <43.722260, 34.537090, 27.526234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964951, 34.242981, 27.647064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204827, 0.511789, 0.834337,
		-0.768069, -0.444340, 0.461121,
		0.606726, -0.735278, 0.302077,
		44.146969, 34.022396, 27.737688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521275, 34.365833, 28.159801>,  <43.722260, 34.537090, 27.526234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521275, 34.365833, 28.159801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907505, 34.272038, 28.114763>,  <44.139244, 34.215759, 28.087740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.907505, 34.272038, 28.114763>,  <43.521275, 34.365833, 28.159801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907505, 34.272038, 28.114763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229913, 0.566889, 0.791060,
		-0.121667, -0.789716, 0.601287,
		0.965576, -0.234490, -0.112595,
		44.197178, 34.201691, 28.080984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686657, 34.314278, 28.856087>,  <43.521275, 34.365833, 28.159801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686657, 34.314278, 28.856087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047836, 34.293690, 28.685425>,  <44.264545, 34.281338, 28.583029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047836, 34.293690, 28.685425>,  <43.686657, 34.314278, 28.856087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047836, 34.293690, 28.685425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387918, 0.524862, 0.757654,
		0.184938, -0.849630, 0.493890,
		0.902949, -0.051470, -0.426654,
		44.318722, 34.278248, 28.557428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161312, 34.035782, 29.412283>,  <43.686657, 34.314278, 28.856087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161312, 34.035782, 29.412283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356930, 34.256271, 29.141878>,  <44.474300, 34.388565, 28.979635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356930, 34.256271, 29.141878>,  <44.161312, 34.035782, 29.412283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356930, 34.256271, 29.141878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381001, 0.562179, 0.734026,
		0.784652, -0.616529, 0.064911,
		0.489040, 0.551223, -0.676013,
		44.503643, 34.421638, 28.939074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775414, 34.072819, 29.680243>,  <44.161312, 34.035782, 29.412283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775414, 34.072819, 29.680243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760918, 34.378265, 29.422380>,  <44.752220, 34.561535, 29.267664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760918, 34.378265, 29.422380>,  <44.775414, 34.072819, 29.680243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760918, 34.378265, 29.422380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413563, 0.598708, 0.685941,
		0.909754, -0.241744, -0.337502,
		-0.036243, 0.763615, -0.644653,
		44.750046, 34.607349, 29.228985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470093, 34.314571, 29.664135>,  <44.775414, 34.072819, 29.680243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470093, 34.314571, 29.664135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232601, 34.613628, 29.545122>,  <45.090107, 34.793060, 29.473715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232601, 34.613628, 29.545122>,  <45.470093, 34.314571, 29.664135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232601, 34.613628, 29.545122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324683, 0.560910, 0.761551,
		0.736255, 0.355548, -0.575772,
		-0.593725, 0.747640, -0.297533,
		45.054485, 34.837921, 29.455862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838696, 34.926888, 29.686121>,  <45.470093, 34.314571, 29.664135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838696, 34.926888, 29.686121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450039, 35.014530, 29.721695>,  <45.216846, 35.067116, 29.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450039, 35.014530, 29.721695>,  <45.838696, 34.926888, 29.686121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450039, 35.014530, 29.721695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194837, 0.528705, 0.826141,
		0.133990, 0.820040, -0.556401,
		-0.971640, 0.219102, 0.088933,
		45.158546, 35.080261, 29.748375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751518, 35.614391, 29.841486>,  <45.838696, 34.926888, 29.686121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751518, 35.614391, 29.841486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367455, 35.543743, 29.928118>,  <45.137016, 35.501354, 29.980097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367455, 35.543743, 29.928118>,  <45.751518, 35.614391, 29.841486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367455, 35.543743, 29.928118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023736, 0.720643, 0.692900,
		-0.278456, 0.670432, -0.687737,
		-0.960155, -0.176618, 0.216581,
		45.079407, 35.490757, 29.993092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.445263, 36.280632, 29.898958>,  <45.751518, 35.614391, 29.841486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.445263, 36.280632, 29.898958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230431, 36.025249, 30.119474>,  <45.101532, 35.872021, 30.251785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230431, 36.025249, 30.119474>,  <45.445263, 36.280632, 29.898958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230431, 36.025249, 30.119474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001974, 0.652598, 0.757702,
		-0.843532, 0.408032, -0.349235,
		-0.537076, -0.638456, 0.551293,
		45.069309, 35.833714, 30.284863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023720, 36.670567, 30.279396>,  <45.445263, 36.280632, 29.898958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023720, 36.670567, 30.279396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989468, 36.332989, 30.491217>,  <44.968918, 36.130444, 30.618309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989468, 36.332989, 30.491217>,  <45.023720, 36.670567, 30.279396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989468, 36.332989, 30.491217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121527, 0.536383, 0.835179,
		-0.988888, 0.007159, -0.148492,
		-0.085628, -0.843944, 0.529553,
		44.963779, 36.079807, 30.650082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579445, 36.736370, 30.836004>,  <45.023720, 36.670567, 30.279396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579445, 36.736370, 30.836004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740608, 36.398075, 30.975945>,  <44.837307, 36.195099, 31.059908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740608, 36.398075, 30.975945>,  <44.579445, 36.736370, 30.836004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740608, 36.398075, 30.975945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019448, 0.374252, 0.927123,
		-0.915034, -0.380348, 0.134340,
		0.402907, -0.845737, 0.349851,
		44.861481, 36.144356, 31.080900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255043, 36.605083, 31.405241>,  <44.579445, 36.736370, 30.836004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255043, 36.605083, 31.405241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585651, 36.383869, 31.447218>,  <44.784016, 36.251141, 31.472404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585651, 36.383869, 31.447218>,  <44.255043, 36.605083, 31.405241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585651, 36.383869, 31.447218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049855, 0.257617, 0.964960,
		-0.560691, -0.792330, 0.240498,
		0.826523, -0.553034, 0.104943,
		44.833607, 36.217960, 31.478701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225525, 36.337673, 32.096897>,  <44.255043, 36.605083, 31.405241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225525, 36.337673, 32.096897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605652, 36.238922, 32.021053>,  <44.833729, 36.179672, 31.975548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605652, 36.238922, 32.021053>,  <44.225525, 36.337673, 32.096897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605652, 36.238922, 32.021053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229225, 0.142893, 0.962828,
		-0.210606, -0.958454, 0.192383,
		0.950316, -0.246876, -0.189607,
		44.890747, 36.164860, 31.964170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350864, 35.869438, 32.601311>,  <44.225525, 36.337673, 32.096897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350864, 35.869438, 32.601311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694702, 36.039062, 32.487282>,  <44.901005, 36.140839, 32.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.694702, 36.039062, 32.487282>,  <44.350864, 35.869438, 32.601311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694702, 36.039062, 32.487282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143114, 0.335761, 0.931012,
		0.490522, -0.841092, 0.227930,
		0.859597, 0.424062, -0.285070,
		44.952583, 36.166279, 32.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811390, 35.739403, 33.136612>,  <44.350864, 35.869438, 32.601311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811390, 35.739403, 33.136612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994537, 36.033722, 32.937027>,  <45.104427, 36.210312, 32.817276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994537, 36.033722, 32.937027>,  <44.811390, 35.739403, 33.136612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994537, 36.033722, 32.937027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244344, 0.435478, 0.866403,
		0.854782, -0.518618, 0.019605,
		0.457870, 0.735795, -0.498960,
		45.131897, 36.254459, 32.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440582, 35.849167, 33.444290>,  <44.811390, 35.739403, 33.136612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440582, 35.849167, 33.444290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380493, 36.194363, 33.251339>,  <45.344440, 36.401478, 33.135567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380493, 36.194363, 33.251339>,  <45.440582, 35.849167, 33.444290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380493, 36.194363, 33.251339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071657, 0.496137, 0.865282,
		0.986053, 0.095416, -0.136368,
		-0.150219, 0.862985, -0.482380,
		45.335426, 36.453259, 33.106625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928371, 36.302746, 33.764999>,  <45.440582, 35.849167, 33.444290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928371, 36.302746, 33.764999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638062, 36.532970, 33.614273>,  <45.463875, 36.671104, 33.523838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638062, 36.532970, 33.614273>,  <45.928371, 36.302746, 33.764999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638062, 36.532970, 33.614273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032024, 0.518881, 0.854246,
		0.687191, 0.632053, -0.358157,
		-0.725770, 0.575561, -0.376811,
		45.420330, 36.705639, 33.501228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564014, 36.091602, 34.106533>,  <45.928371, 36.302746, 33.764999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564014, 36.091602, 34.106533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728352, 35.740620, 34.007507>,  <46.826954, 35.530029, 33.948093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.728352, 35.740620, 34.007507>,  <46.564014, 36.091602, 34.106533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728352, 35.740620, 34.007507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820138, 0.237087, 0.520734,
		-0.398225, -0.416974, 0.817037,
		0.410841, -0.877452, -0.247562,
		46.851604, 35.477383, 33.933239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638313, 35.577873, 34.695988>,  <46.564014, 36.091602, 34.106533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638313, 35.577873, 34.695988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942432, 35.525173, 34.441555>,  <47.124905, 35.493553, 34.288895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942432, 35.525173, 34.441555>,  <46.638313, 35.577873, 34.695988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942432, 35.525173, 34.441555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627533, -0.103973, 0.771617,
		-0.167796, -0.985815, 0.003628,
		0.760294, -0.131752, -0.636077,
		47.170521, 35.485649, 34.250732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004471, 34.960415, 34.888649>,  <46.638313, 35.577873, 34.695988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004471, 34.960415, 34.888649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242043, 35.213959, 34.690468>,  <47.384586, 35.366085, 34.571560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242043, 35.213959, 34.690468>,  <47.004471, 34.960415, 34.888649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242043, 35.213959, 34.690468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752112, -0.218825, 0.621645,
		0.285615, -0.741851, -0.606697,
		0.593929, 0.633855, -0.495456,
		47.420219, 35.404114, 34.541832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634449, 34.572613, 34.691086>,  <47.004471, 34.960415, 34.888649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634449, 34.572613, 34.691086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721992, 34.959869, 34.739761>,  <47.774517, 35.192223, 34.768967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721992, 34.959869, 34.739761>,  <47.634449, 34.572613, 34.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721992, 34.959869, 34.739761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816321, -0.249986, 0.520699,
		0.534531, -0.014617, -0.845023,
		0.218855, 0.968139, 0.121693,
		47.787647, 35.250313, 34.776268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.607567, 40.108875, 45.122437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258251, 39.920269, 45.073364>,  <35.048664, 39.807106, 45.043922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258251, 39.920269, 45.073364>,  <35.607567, 40.108875, 45.122437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258251, 39.920269, 45.073364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146444, -0.013876, -0.989122,
		0.464681, -0.881750, 0.081167,
		-0.873284, -0.471512, -0.122679,
		34.996265, 39.778816, 45.036560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688919, 39.827309, 44.539310>,  <35.607567, 40.108875, 45.122437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688919, 39.827309, 44.539310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295635, 39.774521, 44.589714>,  <35.059666, 39.742847, 44.619957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295635, 39.774521, 44.589714>,  <35.688919, 39.827309, 44.539310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295635, 39.774521, 44.589714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097728, -0.202339, -0.974427,
		0.154091, -0.970383, 0.186045,
		-0.983212, -0.131969, 0.126012,
		35.000671, 39.734932, 44.627518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426228, 39.126740, 44.215691>,  <35.688919, 39.827309, 44.539310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426228, 39.126740, 44.215691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123386, 39.384426, 44.172256>,  <34.941681, 39.539036, 44.146194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.123386, 39.384426, 44.172256>,  <35.426228, 39.126740, 44.215691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123386, 39.384426, 44.172256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039470, -0.211016, -0.976685,
		-0.652106, -0.735162, 0.185187,
		-0.757100, 0.644212, -0.108588,
		34.896255, 39.577690, 44.139679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083809, 38.820736, 43.632347>,  <35.426228, 39.126740, 44.215691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083809, 38.820736, 43.632347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933792, 39.189556, 43.670624>,  <34.843781, 39.410851, 43.693588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933792, 39.189556, 43.670624>,  <35.083809, 38.820736, 43.632347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933792, 39.189556, 43.670624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051529, 0.123804, -0.990968,
		-0.925573, -0.366728, -0.093945,
		-0.375047, 0.922054, 0.095693,
		34.821278, 39.466171, 43.699333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429535, 38.814804, 43.177364>,  <35.083809, 38.820736, 43.632347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429535, 38.814804, 43.177364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585258, 39.178333, 43.237335>,  <34.678692, 39.396450, 43.273319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585258, 39.178333, 43.237335>,  <34.429535, 38.814804, 43.177364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585258, 39.178333, 43.237335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129432, 0.107180, -0.985779,
		-0.911968, 0.403178, -0.075905,
		0.389309, 0.908824, 0.149929,
		34.702049, 39.450981, 43.282314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014759, 39.469727, 42.894871>,  <34.429535, 38.814804, 43.177364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014759, 39.469727, 42.894871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404095, 39.561031, 42.903931>,  <34.637695, 39.615814, 42.909367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.404095, 39.561031, 42.903931>,  <34.014759, 39.469727, 42.894871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404095, 39.561031, 42.903931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018953, 0.178420, -0.983772,
		-0.228602, 0.957111, 0.177989,
		0.973336, 0.228265, 0.022647,
		34.696095, 39.629513, 42.910725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203171, 39.782127, 42.313377>,  <34.014759, 39.469727, 42.894871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203171, 39.782127, 42.313377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579563, 39.694237, 42.416355>,  <34.805397, 39.641502, 42.478142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579563, 39.694237, 42.416355>,  <34.203171, 39.782127, 42.313377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579563, 39.694237, 42.416355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309382, 0.249903, -0.917514,
		0.137269, 0.943010, 0.303133,
		0.940978, -0.219730, 0.257446,
		34.861858, 39.628319, 42.493587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618656, 40.273708, 41.974392>,  <34.203171, 39.782127, 42.313377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618656, 40.273708, 41.974392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872730, 39.996761, 42.111313>,  <35.025173, 39.830593, 42.193466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872730, 39.996761, 42.111313>,  <34.618656, 40.273708, 41.974392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872730, 39.996761, 42.111313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483745, 0.011134, -0.875138,
		0.602107, 0.721459, 0.342001,
		0.635184, -0.692368, 0.342298,
		35.063286, 39.789051, 42.214001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076477, 40.399479, 41.507633>,  <34.618656, 40.273708, 41.974392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076477, 40.399479, 41.507633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217014, 40.054375, 41.653076>,  <35.301338, 39.847313, 41.740341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217014, 40.054375, 41.653076>,  <35.076477, 40.399479, 41.507633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217014, 40.054375, 41.653076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454129, -0.182580, -0.872027,
		0.818735, 0.471504, 0.327654,
		0.351342, -0.862756, 0.363608,
		35.322418, 39.795547, 41.762157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749619, 40.439644, 41.383209>,  <35.076477, 40.399479, 41.507633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749619, 40.439644, 41.383209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712124, 40.045666, 41.441303>,  <35.689629, 39.809277, 41.476158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712124, 40.045666, 41.441303>,  <35.749619, 40.439644, 41.383209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712124, 40.045666, 41.441303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600061, -0.172293, -0.781180,
		0.794443, 0.013922, 0.607179,
		-0.093737, -0.984947, 0.145231,
		35.684002, 39.750183, 41.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437954, 40.019566, 41.386417>,  <35.749619, 40.439644, 41.383209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437954, 40.019566, 41.386417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175339, 39.726181, 41.315998>,  <36.017769, 39.550148, 41.273746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175339, 39.726181, 41.315998>,  <36.437954, 40.019566, 41.386417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175339, 39.726181, 41.315998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564062, -0.322443, -0.760174,
		0.500794, -0.598383, 0.625414,
		-0.656536, -0.733463, -0.176048,
		35.978378, 39.506142, 41.263184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856972, 39.335957, 41.503273>,  <36.437954, 40.019566, 41.386417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856972, 39.335957, 41.503273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530731, 39.290981, 41.276237>,  <36.334988, 39.263996, 41.140015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530731, 39.290981, 41.276237>,  <36.856972, 39.335957, 41.503273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530731, 39.290981, 41.276237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555200, -0.428340, -0.712936,
		-0.162956, -0.896594, 0.411781,
		-0.815597, -0.112443, -0.567590,
		36.286053, 39.257248, 41.105961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759953, 38.532257, 41.208275>,  <36.856972, 39.335957, 41.503273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759953, 38.532257, 41.208275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590279, 38.793518, 40.957367>,  <36.488476, 38.950275, 40.806824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590279, 38.793518, 40.957367>,  <36.759953, 38.532257, 41.208275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590279, 38.793518, 40.957367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401832, -0.484990, -0.776734,
		-0.811542, -0.581534, -0.056732,
		-0.424183, 0.653149, -0.627268,
		36.463024, 38.989464, 40.769188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651478, 38.131916, 40.572666>,  <36.759953, 38.532257, 41.208275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651478, 38.131916, 40.572666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586540, 38.494576, 40.416904>,  <36.547577, 38.712170, 40.323448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586540, 38.494576, 40.416904>,  <36.651478, 38.131916, 40.572666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586540, 38.494576, 40.416904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464671, -0.277899, -0.840746,
		-0.870475, -0.317433, -0.376178,
		-0.162341, 0.906647, -0.389406,
		36.537838, 38.766571, 40.300083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360641, 38.137814, 39.800747>,  <36.651478, 38.131916, 40.572666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360641, 38.137814, 39.800747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529449, 38.498478, 39.838509>,  <36.630733, 38.714874, 39.861164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529449, 38.498478, 39.838509>,  <36.360641, 38.137814, 39.800747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529449, 38.498478, 39.838509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522178, -0.156630, -0.838330,
		-0.741101, 0.403086, -0.536927,
		0.422018, 0.901659, 0.094404,
		36.656055, 38.768974, 39.866829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313393, 38.401527, 39.046978>,  <36.360641, 38.137814, 39.800747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313393, 38.401527, 39.046978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577644, 38.600372, 39.271992>,  <36.736195, 38.719681, 39.407001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577644, 38.600372, 39.271992>,  <36.313393, 38.401527, 39.046978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577644, 38.600372, 39.271992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623057, 0.054922, -0.780246,
		-0.418764, 0.865947, -0.273445,
		0.660634, 0.497111, 0.562534,
		36.775833, 38.749504, 39.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563339, 39.005325, 38.628635>,  <36.313393, 38.401527, 39.046978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563339, 39.005325, 38.628635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843643, 38.943615, 38.907242>,  <37.011826, 38.906590, 39.074406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843643, 38.943615, 38.907242>,  <36.563339, 39.005325, 38.628635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843643, 38.943615, 38.907242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684637, -0.128971, -0.717383,
		0.200503, 0.979575, 0.015243,
		0.700764, -0.154273, 0.696512,
		37.053871, 38.897331, 39.116196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141670, 39.496841, 38.460155>,  <36.563339, 39.005325, 38.628635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141670, 39.496841, 38.460155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294292, 39.199703, 38.680191>,  <37.385864, 39.021420, 38.812210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294292, 39.199703, 38.680191>,  <37.141670, 39.496841, 38.460155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294292, 39.199703, 38.680191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661086, -0.196635, -0.724086,
		0.646051, 0.639933, 0.416058,
		0.381555, -0.742846, 0.550087,
		37.408760, 38.976849, 38.845219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827374, 39.570362, 38.336269>,  <37.141670, 39.496841, 38.460155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827374, 39.570362, 38.336269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781162, 39.192421, 38.458843>,  <37.753433, 38.965656, 38.532387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781162, 39.192421, 38.458843>,  <37.827374, 39.570362, 38.336269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781162, 39.192421, 38.458843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560179, -0.316735, -0.765427,
		0.820275, 0.083227, 0.565881,
		-0.115530, -0.944855, 0.306432,
		37.746502, 38.908966, 38.550774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353260, 39.342926, 38.059345>,  <37.827374, 39.570362, 38.336269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353260, 39.342926, 38.059345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175087, 38.996952, 38.151836>,  <38.068184, 38.789368, 38.207333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175087, 38.996952, 38.151836>,  <38.353260, 39.342926, 38.059345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175087, 38.996952, 38.151836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367259, -0.412060, -0.833863,
		0.816522, -0.286510, 0.501203,
		-0.445435, -0.864939, 0.231233,
		38.041458, 38.737469, 38.221207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856335, 38.793835, 38.213501>,  <38.353260, 39.342926, 38.059345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856335, 38.793835, 38.213501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530766, 38.616474, 38.063343>,  <38.335423, 38.510059, 37.973248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530766, 38.616474, 38.063343>,  <38.856335, 38.793835, 38.213501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530766, 38.616474, 38.063343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549224, -0.376586, -0.746013,
		0.189411, -0.813377, 0.550038,
		-0.813927, -0.443397, -0.375397,
		38.286587, 38.483456, 37.950726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098209, 38.208214, 37.888584>,  <38.856335, 38.793835, 38.213501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098209, 38.208214, 37.888584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728916, 38.269608, 37.747684>,  <38.507339, 38.306446, 37.663147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728916, 38.269608, 37.747684>,  <39.098209, 38.208214, 37.888584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728916, 38.269608, 37.747684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317938, -0.209613, -0.924650,
		-0.215764, -0.965661, 0.144720,
		-0.923234, 0.153494, -0.352248,
		38.451946, 38.315655, 37.642010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791241, 38.330322, 38.082676>,  <39.098209, 38.208214, 37.888584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791241, 38.330322, 38.082676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.186745, 38.277313, 38.110352>,  <40.424049, 38.245506, 38.126957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.186745, 38.277313, 38.110352>,  <39.791241, 38.330322, 38.082676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186745, 38.277313, 38.110352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048907, 0.150585, 0.987387,
		-0.141271, -0.979674, 0.142411,
		0.988762, -0.132524, 0.069186,
		40.483372, 38.237556, 38.131107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008110, 37.747822, 38.577286>,  <39.791241, 38.330322, 38.082676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008110, 37.747822, 38.577286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248428, 38.065205, 38.538345>,  <40.392620, 38.255634, 38.514980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248428, 38.065205, 38.538345>,  <40.008110, 37.747822, 38.577286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248428, 38.065205, 38.538345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277347, 0.321107, 0.905521,
		0.749751, -0.517029, 0.412982,
		0.600792, 0.793455, -0.097354,
		40.428665, 38.303242, 38.509140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340530, 37.792076, 39.112022>,  <40.008110, 37.747822, 38.577286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340530, 37.792076, 39.112022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346634, 38.173279, 38.990997>,  <40.350296, 38.402000, 38.918381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.346634, 38.173279, 38.990997>,  <40.340530, 37.792076, 39.112022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346634, 38.173279, 38.990997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454579, 0.276134, 0.846823,
		0.890576, 0.124617, 0.437430,
		0.015261, 0.953006, -0.302566,
		40.351212, 38.459179, 38.900227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378490, 38.142128, 39.766174>,  <40.340530, 37.792076, 39.112022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378490, 38.142128, 39.766174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.342846, 38.448769, 39.511810>,  <40.321457, 38.632751, 39.359192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.342846, 38.448769, 39.511810>,  <40.378490, 38.142128, 39.766174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342846, 38.448769, 39.511810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483317, 0.524963, 0.700584,
		0.870898, 0.369779, 0.323729,
		-0.089116, 0.766601, -0.635909,
		40.316113, 38.678749, 39.321037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704178, 38.638805, 40.057896>,  <40.378490, 38.142128, 39.766174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704178, 38.638805, 40.057896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433365, 38.795128, 39.808449>,  <40.270878, 38.888920, 39.658779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433365, 38.795128, 39.808449>,  <40.704178, 38.638805, 40.057896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433365, 38.795128, 39.808449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467550, 0.425992, 0.774550,
		0.568357, 0.815966, -0.105687,
		-0.677028, 0.390807, -0.623621,
		40.230255, 38.912369, 39.621361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609421, 39.271294, 40.267536>,  <40.704178, 38.638805, 40.057896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609421, 39.271294, 40.267536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270695, 39.207985, 40.064415>,  <40.067459, 39.170002, 39.942543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.270695, 39.207985, 40.064415>,  <40.609421, 39.271294, 40.267536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270695, 39.207985, 40.064415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531138, 0.302463, 0.791460,
		0.028327, 0.939929, -0.340192,
		-0.846812, -0.158269, -0.507800,
		40.016651, 39.160503, 39.912075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249516, 39.889034, 40.423664>,  <40.609421, 39.271294, 40.267536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249516, 39.889034, 40.423664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980286, 39.613049, 40.317135>,  <39.818748, 39.447456, 40.253216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980286, 39.613049, 40.317135>,  <40.249516, 39.889034, 40.423664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980286, 39.613049, 40.317135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658216, 0.394636, 0.641104,
		-0.337235, 0.606808, -0.719761,
		-0.673071, -0.689961, -0.266325,
		39.778366, 39.406059, 40.237236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614975, 40.292324, 40.311687>,  <40.249516, 39.889034, 40.423664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614975, 40.292324, 40.311687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538506, 39.906693, 40.385448>,  <39.492622, 39.675312, 40.429707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538506, 39.906693, 40.385448>,  <39.614975, 40.292324, 40.311687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538506, 39.906693, 40.385448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622437, 0.264334, 0.736682,
		-0.758963, 0.026056, -0.650612,
		-0.191174, -0.964079, 0.184402,
		39.481155, 39.617470, 40.440769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980965, 40.390793, 40.468681>,  <39.614975, 40.292324, 40.311687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980965, 40.390793, 40.468681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104061, 40.039425, 40.614925>,  <39.177917, 39.828602, 40.702671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104061, 40.039425, 40.614925>,  <38.980965, 40.390793, 40.468681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104061, 40.039425, 40.614925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656743, 0.081939, 0.749650,
		-0.688467, -0.470809, -0.551681,
		0.307738, -0.878422, 0.365612,
		39.196381, 39.775898, 40.724609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364609, 40.091076, 40.873993>,  <38.980965, 40.390793, 40.468681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364609, 40.091076, 40.873993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662979, 39.865959, 41.016464>,  <38.841999, 39.730888, 41.101948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662979, 39.865959, 41.016464>,  <38.364609, 40.091076, 40.873993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662979, 39.865959, 41.016464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493498, -0.107884, 0.863030,
		-0.447283, -0.819526, -0.358211,
		0.745921, -0.562795, 0.356180,
		38.886757, 39.697121, 41.123318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135193, 39.397350, 41.051231>,  <38.364609, 40.091076, 40.873993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135193, 39.397350, 41.051231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474140, 39.439816, 41.259346>,  <38.677509, 39.465294, 41.384216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474140, 39.439816, 41.259346>,  <38.135193, 39.397350, 41.051231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474140, 39.439816, 41.259346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492555, -0.208940, 0.844827,
		0.198398, -0.972149, -0.124758,
		0.847365, 0.106162, 0.520290,
		38.728348, 39.471664, 41.415432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207527, 38.866116, 41.428299>,  <38.135193, 39.397350, 41.051231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207527, 38.866116, 41.428299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427971, 39.130554, 41.631958>,  <38.560238, 39.289215, 41.754154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427971, 39.130554, 41.631958>,  <38.207527, 38.866116, 41.428299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427971, 39.130554, 41.631958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576830, -0.139068, 0.804939,
		0.602946, -0.737304, 0.304696,
		0.551111, 0.661093, 0.509149,
		38.593304, 39.328880, 41.784702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129589, 38.657166, 42.174019>,  <38.207527, 38.866116, 41.428299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129589, 38.657166, 42.174019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306152, 39.015682, 42.191086>,  <38.412090, 39.230793, 42.201328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306152, 39.015682, 42.191086>,  <38.129589, 38.657166, 42.174019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306152, 39.015682, 42.191086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354268, 0.130386, 0.926010,
		0.824411, -0.423865, 0.375081,
		0.441409, 0.896291, 0.042670,
		38.438576, 39.284569, 42.203888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631382, 38.763824, 42.741077>,  <38.129589, 38.657166, 42.174019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631382, 38.763824, 42.741077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527790, 39.144009, 42.672325>,  <38.465633, 39.372120, 42.631073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527790, 39.144009, 42.672325>,  <38.631382, 38.763824, 42.741077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527790, 39.144009, 42.672325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398044, 0.057115, 0.915586,
		0.880050, 0.305539, 0.363535,
		-0.258984, 0.950465, -0.171883,
		38.450096, 39.429150, 42.620762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001495, 39.059750, 43.205219>,  <38.631382, 38.763824, 42.741077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001495, 39.059750, 43.205219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673874, 39.270206, 43.113716>,  <38.477303, 39.396481, 43.058815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673874, 39.270206, 43.113716>,  <39.001495, 39.059750, 43.205219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673874, 39.270206, 43.113716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269974, -0.001639, 0.962866,
		0.506232, 0.850394, 0.143387,
		-0.819050, 0.526144, -0.228754,
		38.428158, 39.428051, 43.045090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999546, 39.594902, 43.687286>,  <39.001495, 39.059750, 43.205219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999546, 39.594902, 43.687286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630131, 39.559982, 43.537910>,  <38.408482, 39.539032, 43.448284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630131, 39.559982, 43.537910>,  <38.999546, 39.594902, 43.687286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630131, 39.559982, 43.537910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383291, 0.177647, 0.906383,
		-0.012783, 0.980215, -0.197524,
		-0.923539, -0.087296, -0.373437,
		38.353069, 39.533794, 43.425880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655857, 40.171902, 43.876511>,  <38.999546, 39.594902, 43.687286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655857, 40.171902, 43.876511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378132, 39.898758, 43.785618>,  <38.211498, 39.734871, 43.731083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378132, 39.898758, 43.785618>,  <38.655857, 40.171902, 43.876511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378132, 39.898758, 43.785618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369396, 0.067167, 0.926842,
		-0.617641, 0.727455, -0.298880,
		-0.694310, -0.682860, -0.227234,
		38.169838, 39.693901, 43.717449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240467, 40.380398, 44.389267>,  <38.655857, 40.171902, 43.876511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240467, 40.380398, 44.389267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097137, 40.042446, 44.230377>,  <38.011139, 39.839676, 44.135044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097137, 40.042446, 44.230377>,  <38.240467, 40.380398, 44.389267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097137, 40.042446, 44.230377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391406, -0.250329, 0.885515,
		-0.847589, 0.472773, -0.240993,
		-0.358320, -0.844879, -0.397223,
		37.989643, 39.788982, 44.111210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.400227, 40.358364, 44.437698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500988, 39.974701, 44.386230>,  <37.561443, 39.744503, 44.355350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500988, 39.974701, 44.386230>,  <37.400227, 40.358364, 44.437698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500988, 39.974701, 44.386230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482748, -0.239774, 0.842296,
		-0.838749, -0.150060, -0.523432,
		0.251901, -0.959162, -0.128669,
		37.576557, 39.686951, 44.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769764, 39.975288, 44.464603>,  <37.400227, 40.358364, 44.437698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769764, 39.975288, 44.464603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053951, 39.713421, 44.567867>,  <37.224464, 39.556301, 44.629826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053951, 39.713421, 44.567867>,  <36.769764, 39.975288, 44.464603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053951, 39.713421, 44.567867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493015, -0.201267, 0.846420,
		-0.502167, -0.728629, -0.465756,
		0.710468, -0.654669, 0.258156,
		37.267094, 39.517021, 44.645313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432076, 39.406494, 44.690563>,  <36.769764, 39.975288, 44.464603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432076, 39.406494, 44.690563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791187, 39.422287, 44.866032>,  <37.006653, 39.431763, 44.971313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791187, 39.422287, 44.866032>,  <36.432076, 39.406494, 44.690563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791187, 39.422287, 44.866032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425252, -0.181632, 0.886663,
		0.114686, -0.982574, -0.146275,
		0.897780, 0.039484, 0.438672,
		37.060520, 39.434132, 44.997635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289322, 38.932640, 45.187038>,  <36.432076, 39.406494, 44.690563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289322, 38.932640, 45.187038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635357, 39.121792, 45.253990>,  <36.842976, 39.235283, 45.294163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635357, 39.121792, 45.253990>,  <36.289322, 38.932640, 45.187038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635357, 39.121792, 45.253990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190213, 0.000477, 0.981743,
		0.464164, -0.881128, 0.090360,
		0.865085, 0.472877, 0.167381,
		36.894882, 39.263657, 45.304203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446865, 38.708904, 45.782318>,  <36.289322, 38.932640, 45.187038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446865, 38.708904, 45.782318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726719, 38.993034, 45.751484>,  <36.894630, 39.163513, 45.732983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726719, 38.993034, 45.751484>,  <36.446865, 38.708904, 45.782318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726719, 38.993034, 45.751484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040995, 0.147617, 0.988194,
		0.713323, -0.688215, 0.132399,
		0.699635, 0.710330, -0.077085,
		36.936611, 39.206135, 45.728359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927742, 38.626137, 46.353817>,  <36.446865, 38.708904, 45.782318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927742, 38.626137, 46.353817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.993824, 39.000282, 46.228725>,  <37.033474, 39.224770, 46.153671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.993824, 39.000282, 46.228725>,  <36.927742, 38.626137, 46.353817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993824, 39.000282, 46.228725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137363, 0.292176, 0.946449,
		0.976647, -0.199318, -0.080215,
		0.165207, 0.935364, -0.312732,
		37.043385, 39.280891, 46.134907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616085, 38.856354, 46.661694>,  <36.927742, 38.626137, 46.353817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616085, 38.856354, 46.661694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371716, 39.161243, 46.576096>,  <37.225094, 39.344177, 46.524738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371716, 39.161243, 46.576096>,  <37.616085, 38.856354, 46.661694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371716, 39.161243, 46.576096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094866, 0.338833, 0.936051,
		0.785988, 0.551552, -0.279309,
		-0.610920, 0.762222, -0.213996,
		37.188438, 39.389912, 46.511898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972198, 39.463844, 46.922100>,  <37.616085, 38.856354, 46.661694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972198, 39.463844, 46.922100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589329, 39.575520, 46.891445>,  <37.359608, 39.642525, 46.873051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589329, 39.575520, 46.891445>,  <37.972198, 39.463844, 46.922100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589329, 39.575520, 46.891445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007779, 0.289413, 0.957173,
		0.289413, 0.915583, -0.279191,
		-0.957173, 0.279191, -0.076638,
		37.302177, 39.659275, 46.868454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004658, 40.145008, 47.157356>,  <37.972198, 39.463844, 46.922100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004658, 40.145008, 47.157356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633568, 40.004414, 47.207623>,  <37.410915, 39.920055, 47.237782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.633568, 40.004414, 47.207623>,  <38.004658, 40.145008, 47.157356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633568, 40.004414, 47.207623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009620, 0.314026, 0.949366,
		-0.373149, 0.881956, -0.287947,
		-0.927721, -0.351485, 0.125663,
		37.355251, 39.898968, 47.245323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686367, 40.685024, 47.523148>,  <38.004658, 40.145008, 47.157356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686367, 40.685024, 47.523148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468376, 40.355759, 47.586903>,  <37.337582, 40.158199, 47.625156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468376, 40.355759, 47.586903>,  <37.686367, 40.685024, 47.523148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468376, 40.355759, 47.586903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003633, 0.187772, 0.982206,
		-0.838444, 0.535857, -0.099341,
		-0.544976, -0.823164, 0.159383,
		37.304882, 40.108810, 47.634716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249882, 40.840515, 48.108856>,  <37.686367, 40.685024, 47.523148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249882, 40.840515, 48.108856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228943, 40.442261, 48.077942>,  <37.216381, 40.203308, 48.059395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228943, 40.442261, 48.077942>,  <37.249882, 40.840515, 48.108856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228943, 40.442261, 48.077942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195301, -0.065688, 0.978541,
		-0.979346, 0.066313, -0.191010,
		-0.052343, -0.995634, -0.077282,
		37.213242, 40.143570, 48.054756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666885, 40.600857, 48.447456>,  <37.249882, 40.840515, 48.108856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666885, 40.600857, 48.447456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879616, 40.262691, 48.427723>,  <37.007256, 40.059792, 48.415882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879616, 40.262691, 48.427723>,  <36.666885, 40.600857, 48.447456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879616, 40.262691, 48.427723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185673, -0.173248, 0.967218,
		-0.826247, -0.505233, -0.249108,
		0.531828, -0.845414, -0.049337,
		37.039165, 40.009068, 48.412922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185150, 40.061722, 48.720192>,  <36.666885, 40.600857, 48.447456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185150, 40.061722, 48.720192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573872, 39.983021, 48.772182>,  <36.807102, 39.935802, 48.803375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573872, 39.983021, 48.772182>,  <36.185150, 40.061722, 48.720192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573872, 39.983021, 48.772182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175003, -0.232334, 0.956763,
		-0.158045, -0.952528, -0.260214,
		0.971800, -0.196750, 0.129976,
		36.865410, 39.923996, 48.811176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109879, 39.522274, 49.142513>,  <36.185150, 40.061722, 48.720192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109879, 39.522274, 49.142513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504585, 39.582066, 49.167629>,  <36.741409, 39.617939, 49.182701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504585, 39.582066, 49.167629>,  <36.109879, 39.522274, 49.142513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504585, 39.582066, 49.167629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007596, -0.344245, 0.938849,
		0.161952, -0.926905, -0.338555,
		0.986769, 0.149476, 0.062792,
		36.800617, 39.626907, 49.186466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401012, 38.958939, 49.483688>,  <36.109879, 39.522274, 49.142513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401012, 38.958939, 49.483688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659050, 39.257538, 49.548923>,  <36.813873, 39.436699, 49.588066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659050, 39.257538, 49.548923>,  <36.401012, 38.958939, 49.483688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659050, 39.257538, 49.548923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071159, -0.271198, 0.959890,
		0.760787, -0.607609, -0.228067,
		0.645089, 0.746500, 0.163087,
		36.852577, 39.481487, 49.597851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953156, 38.616863, 49.872131>,  <36.401012, 38.958939, 49.483688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953156, 38.616863, 49.872131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990253, 39.008484, 49.944630>,  <37.012512, 39.243458, 49.988129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990253, 39.008484, 49.944630>,  <36.953156, 38.616863, 49.872131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990253, 39.008484, 49.944630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147128, -0.193507, 0.970004,
		0.984760, -0.063298, -0.161993,
		0.092746, 0.979055, 0.181245,
		37.018078, 39.302200, 49.999004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457073, 38.676804, 50.272999>,  <36.953156, 38.616863, 49.872131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457073, 38.676804, 50.272999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287895, 39.029247, 50.357624>,  <37.186386, 39.240715, 50.408398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287895, 39.029247, 50.357624>,  <37.457073, 38.676804, 50.272999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287895, 39.029247, 50.357624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125171, -0.174426, 0.976682,
		0.897466, 0.439569, -0.036516,
		-0.422950, 0.881110, 0.211563,
		37.161011, 39.293579, 50.421093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872311, 38.896126, 50.819843>,  <37.457073, 38.676804, 50.272999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872311, 38.896126, 50.819843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523979, 39.087097, 50.866688>,  <37.314980, 39.201679, 50.894794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523979, 39.087097, 50.866688>,  <37.872311, 38.896126, 50.819843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523979, 39.087097, 50.866688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147854, 0.027170, 0.988636,
		0.468818, 0.878252, -0.094250,
		-0.870832, 0.477425, 0.117115,
		37.262730, 39.230324, 50.901821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946712, 39.326256, 51.394920>,  <37.872311, 38.896126, 50.819843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946712, 39.326256, 51.394920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547970, 39.353531, 51.378819>,  <37.308723, 39.369896, 51.369160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547970, 39.353531, 51.378819>,  <37.946712, 39.326256, 51.394920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547970, 39.353531, 51.378819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044819, -0.066824, 0.996758,
		0.065277, 0.995432, 0.069671,
		-0.996860, 0.068188, -0.040252,
		37.248913, 39.373989, 51.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730053, 39.840336, 51.881031>,  <37.946712, 39.326256, 51.394920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730053, 39.840336, 51.881031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412006, 39.606396, 51.816860>,  <37.221180, 39.466030, 51.778358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412006, 39.606396, 51.816860>,  <37.730053, 39.840336, 51.881031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412006, 39.606396, 51.816860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157938, -0.055704, 0.985877,
		-0.585531, 0.809223, -0.048079,
		-0.795116, -0.584855, -0.160424,
		37.173473, 39.430939, 51.768734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222805, 40.125683, 52.337086>,  <37.730053, 39.840336, 51.881031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222805, 40.125683, 52.337086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092537, 39.758904, 52.244873>,  <37.014378, 39.538837, 52.189545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092537, 39.758904, 52.244873>,  <37.222805, 40.125683, 52.337086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092537, 39.758904, 52.244873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177203, -0.180312, 0.967516,
		-0.928730, 0.355941, -0.103764,
		-0.325668, -0.916948, -0.230535,
		36.994835, 39.483818, 52.175713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549339, 39.950432, 52.766644>,  <37.222805, 40.125683, 52.337086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549339, 39.950432, 52.766644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719860, 39.602848, 52.666103>,  <36.822170, 39.394299, 52.605778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719860, 39.602848, 52.666103>,  <36.549339, 39.950432, 52.766644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719860, 39.602848, 52.666103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029942, -0.264160, 0.964014,
		-0.904088, -0.418482, -0.086592,
		0.426297, -0.868960, -0.251354,
		36.847748, 39.342159, 52.590698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234459, 39.383934, 53.134583>,  <36.549339, 39.950432, 52.766644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234459, 39.383934, 53.134583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616341, 39.319157, 53.034733>,  <36.845470, 39.280289, 52.974823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616341, 39.319157, 53.034733>,  <36.234459, 39.383934, 53.134583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616341, 39.319157, 53.034733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158720, -0.432431, 0.887587,
		-0.251682, -0.887005, -0.387141,
		0.954706, -0.161942, -0.249621,
		36.902752, 39.270573, 52.959846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555393, 38.996132, 53.427090>,  <36.234459, 39.383934, 53.134583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555393, 38.996132, 53.427090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917679, 38.830612, 53.390327>,  <36.135052, 38.731300, 53.368271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917679, 38.830612, 53.390327>,  <35.555393, 38.996132, 53.427090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917679, 38.830612, 53.390327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391496, -0.899732, 0.192906,
		-0.162516, -0.138737, -0.976904,
		0.905715, -0.413804, -0.091907,
		36.189392, 38.706470, 53.362755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919968, 39.285023, 53.100620>,  <35.555393, 38.996132, 53.427090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919968, 39.285023, 53.100620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540543, 39.173542, 53.040539>,  <34.312889, 39.106655, 53.004490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540543, 39.173542, 53.040539>,  <34.919968, 39.285023, 53.100620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540543, 39.173542, 53.040539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129904, 0.090032, -0.987431,
		0.288722, -0.956148, -0.049196,
		-0.948559, -0.278702, -0.150202,
		34.255974, 39.089931, 52.995480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886272, 38.697849, 52.515644>,  <34.919968, 39.285023, 53.100620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886272, 38.697849, 52.515644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541828, 38.901085, 52.522976>,  <34.335163, 39.023026, 52.527374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541828, 38.901085, 52.522976>,  <34.886272, 38.697849, 52.515644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541828, 38.901085, 52.522976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078593, 0.168641, -0.982539,
		-0.502312, -0.844631, -0.185151,
		-0.861107, 0.508093, 0.018328,
		34.283497, 39.053513, 52.528473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578842, 38.420391, 51.912663>,  <34.886272, 38.697849, 52.515644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578842, 38.420391, 51.912663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366203, 38.745995, 52.006298>,  <34.238621, 38.941357, 52.062477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.366203, 38.745995, 52.006298>,  <34.578842, 38.420391, 51.912663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366203, 38.745995, 52.006298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159417, 0.175276, -0.971527,
		-0.831863, -0.553773, 0.036591,
		-0.531592, 0.814010, 0.234087,
		34.206726, 38.990196, 52.076523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917610, 38.355560, 51.621483>,  <34.578842, 38.420391, 51.912663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917610, 38.355560, 51.621483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966480, 38.748276, 51.679684>,  <33.995804, 38.983906, 51.714603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966480, 38.748276, 51.679684>,  <33.917610, 38.355560, 51.621483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966480, 38.748276, 51.679684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219833, 0.169729, -0.960659,
		-0.967857, 0.085382, 0.236566,
		0.122175, 0.981785, 0.145503,
		34.003132, 39.042812, 51.723335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321735, 38.679684, 51.368965>,  <33.917610, 38.355560, 51.621483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321735, 38.679684, 51.368965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620491, 38.945400, 51.380795>,  <33.799744, 39.104828, 51.387894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620491, 38.945400, 51.380795>,  <33.321735, 38.679684, 51.368965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620491, 38.945400, 51.380795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289124, 0.364487, -0.885187,
		-0.598799, 0.652587, 0.464294,
		0.746891, 0.664288, 0.029576,
		33.844559, 39.144688, 51.389668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074673, 39.216049, 50.825478>,  <33.321735, 38.679684, 51.368965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074673, 39.216049, 50.825478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455875, 39.313759, 50.897148>,  <33.684597, 39.372383, 50.940151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455875, 39.313759, 50.897148>,  <33.074673, 39.216049, 50.825478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455875, 39.313759, 50.897148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050719, 0.454464, -0.889320,
		-0.298665, 0.856618, 0.420719,
		0.953009, 0.244270, 0.179179,
		33.741779, 39.387039, 50.950901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182495, 39.889622, 50.787914>,  <33.074673, 39.216049, 50.825478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182495, 39.889622, 50.787914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544853, 39.740536, 50.707478>,  <33.762268, 39.651085, 50.659214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544853, 39.740536, 50.707478>,  <33.182495, 39.889622, 50.787914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544853, 39.740536, 50.707478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048656, 0.380090, -0.923669,
		0.420694, 0.846533, 0.326187,
		0.905897, -0.372711, -0.201090,
		33.816624, 39.628723, 50.647152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499527, 40.339188, 50.262703>,  <33.182495, 39.889622, 50.787914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499527, 40.339188, 50.262703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739586, 40.020218, 50.237598>,  <33.883621, 39.828838, 50.222534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739586, 40.020218, 50.237598>,  <33.499527, 40.339188, 50.262703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739586, 40.020218, 50.237598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099388, 0.152199, -0.983340,
		0.793689, 0.583913, 0.170596,
		0.600149, -0.797422, -0.062765,
		33.919632, 39.780991, 50.218769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060081, 40.560352, 49.772804>,  <33.499527, 40.339188, 50.262703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060081, 40.560352, 49.772804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096771, 40.162109, 49.780338>,  <34.118786, 39.923164, 49.784859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096771, 40.162109, 49.780338>,  <34.060081, 40.560352, 49.772804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096771, 40.162109, 49.780338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185409, -0.001508, -0.982660,
		0.978371, 0.093626, 0.184456,
		0.091724, -0.995606, 0.018834,
		34.124287, 39.863426, 49.785988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737579, 40.421604, 49.561214>,  <34.060081, 40.560352, 49.772804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737579, 40.421604, 49.561214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537838, 40.079643, 49.504940>,  <34.417992, 39.874466, 49.471176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.537838, 40.079643, 49.504940>,  <34.737579, 40.421604, 49.561214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537838, 40.079643, 49.504940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309829, -0.024560, -0.950475,
		0.809105, -0.518213, 0.277137,
		-0.499355, -0.854899, -0.140686,
		34.388031, 39.823174, 49.462734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193806, 39.982990, 49.112404>,  <34.737579, 40.421604, 49.561214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193806, 39.982990, 49.112404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820156, 39.844688, 49.076927>,  <34.595966, 39.761707, 49.055641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820156, 39.844688, 49.076927>,  <35.193806, 39.982990, 49.112404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820156, 39.844688, 49.076927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106161, -0.031867, -0.993838,
		0.340795, -0.937785, 0.066473,
		-0.934125, -0.345752, -0.088696,
		34.539917, 39.740963, 49.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306828, 39.350594, 48.734486>,  <35.193806, 39.982990, 49.112404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306828, 39.350594, 48.734486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.924438, 39.461292, 48.695438>,  <34.695004, 39.527710, 48.672012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.924438, 39.461292, 48.695438>,  <35.306828, 39.350594, 48.734486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924438, 39.461292, 48.695438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067444, -0.116535, -0.990894,
		-0.285600, -0.953851, 0.092739,
		-0.955973, 0.276745, -0.097614,
		34.637646, 39.544315, 48.666153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070881, 38.854477, 48.317574>,  <35.306828, 39.350594, 48.734486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070881, 38.854477, 48.317574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800381, 39.147118, 48.283058>,  <34.638081, 39.322704, 48.262348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.800381, 39.147118, 48.283058>,  <35.070881, 38.854477, 48.317574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800381, 39.147118, 48.283058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100631, -0.207777, -0.972986,
		-0.729769, -0.649296, 0.214131,
		-0.676247, 0.731604, -0.086290,
		34.597507, 39.366600, 48.257172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699253, 38.648605, 47.742630>,  <35.070881, 38.854477, 48.317574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699253, 38.648605, 47.742630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578377, 39.028210, 47.778542>,  <34.505852, 39.255974, 47.800087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578377, 39.028210, 47.778542>,  <34.699253, 38.648605, 47.742630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578377, 39.028210, 47.778542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074109, 0.070506, -0.994755,
		-0.950361, -0.307262, 0.049024,
		-0.302194, 0.949009, 0.089777,
		34.487717, 39.312912, 47.805473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028820, 38.796043, 47.336620>,  <34.699253, 38.648605, 47.742630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028820, 38.796043, 47.336620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188240, 39.157532, 47.399170>,  <34.283894, 39.374424, 47.436699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188240, 39.157532, 47.399170>,  <34.028820, 38.796043, 47.336620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188240, 39.157532, 47.399170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164761, 0.097172, -0.981535,
		-0.902224, 0.416958, -0.110169,
		0.398554, 0.903717, 0.156370,
		34.307808, 39.428646, 47.446079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673584, 39.281601, 46.930485>,  <34.028820, 38.796043, 47.336620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673584, 39.281601, 46.930485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033028, 39.447159, 46.988724>,  <34.248692, 39.546494, 47.023666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033028, 39.447159, 46.988724>,  <33.673584, 39.281601, 46.930485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033028, 39.447159, 46.988724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168785, -0.019783, -0.985454,
		-0.404994, 0.910110, -0.087636,
		0.898605, 0.413895, 0.145601,
		34.302608, 39.571327, 47.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692951, 39.685913, 46.404129>,  <33.673584, 39.281601, 46.930485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692951, 39.685913, 46.404129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078896, 39.663647, 46.506847>,  <34.310463, 39.650288, 46.568478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078896, 39.663647, 46.506847>,  <33.692951, 39.685913, 46.404129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078896, 39.663647, 46.506847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257756, 0.010774, -0.966150,
		0.051019, 0.998391, 0.024745,
		0.964862, -0.055671, 0.256792,
		34.368355, 39.646946, 46.583885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918839, 40.283096, 46.236263>,  <33.692951, 39.685913, 46.404129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918839, 40.283096, 46.236263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.230350, 40.032295, 46.228683>,  <34.417259, 39.881813, 46.224136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.230350, 40.032295, 46.228683>,  <33.918839, 40.283096, 46.236263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230350, 40.032295, 46.228683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111647, 0.168268, -0.979398,
		0.617277, 0.760624, 0.201047,
		0.778784, -0.627007, -0.018947,
		34.463985, 39.844193, 46.223000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531349, 40.585228, 45.773350>,  <33.918839, 40.283096, 46.236263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531349, 40.585228, 45.773350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607361, 40.194702, 45.814739>,  <34.652966, 39.960388, 45.839573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607361, 40.194702, 45.814739>,  <34.531349, 40.585228, 45.773350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607361, 40.194702, 45.814739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235774, -0.056925, -0.970139,
		0.953048, 0.208747, 0.219372,
		0.190026, -0.976312, 0.103469,
		34.664368, 39.901810, 45.845779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042591, 40.522812, 45.309135>,  <34.531349, 40.585228, 45.773350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042591, 40.522812, 45.309135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902493, 40.150105, 45.347363>,  <34.818436, 39.926479, 45.370300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902493, 40.150105, 45.347363>,  <35.042591, 40.522812, 45.309135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902493, 40.150105, 45.347363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097865, -0.137879, -0.985602,
		0.931532, -0.335848, 0.139479,
		-0.350243, -0.931770, 0.095571,
		34.797421, 39.870575, 45.376034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.993011, 33.778595, 26.530558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681595, 33.606674, 26.713488>,  <40.494743, 33.503521, 26.823246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681595, 33.606674, 26.713488>,  <40.993011, 33.778595, 26.530558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681595, 33.606674, 26.713488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464146, 0.096159, 0.880524,
		-0.422423, 0.897790, 0.124625,
		-0.778542, -0.429798, 0.457325,
		40.448032, 33.477734, 26.850685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694466, 34.289803, 26.791197>,  <40.993011, 33.778595, 26.530558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694466, 34.289803, 26.791197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620911, 33.954262, 26.996140>,  <40.576778, 33.752937, 27.119106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.620911, 33.954262, 26.996140>,  <40.694466, 34.289803, 26.791197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620911, 33.954262, 26.996140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169115, 0.486475, 0.857171,
		-0.968290, 0.244272, 0.052406,
		-0.183888, -0.838853, 0.512358,
		40.565742, 33.702606, 27.149847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440426, 34.599499, 27.303379>,  <40.694466, 34.289803, 26.791197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440426, 34.599499, 27.303379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.512794, 34.235088, 27.451597>,  <40.556213, 34.016441, 27.540529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.512794, 34.235088, 27.451597>,  <40.440426, 34.599499, 27.303379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512794, 34.235088, 27.451597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107077, 0.392771, 0.913381,
		-0.977652, -0.125571, 0.168610,
		0.180920, -0.911023, 0.370547,
		40.567070, 33.961781, 27.562761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034241, 34.562504, 27.806316>,  <40.440426, 34.599499, 27.303379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034241, 34.562504, 27.806316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304996, 34.278217, 27.882956>,  <40.467449, 34.107647, 27.928938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304996, 34.278217, 27.882956>,  <40.034241, 34.562504, 27.806316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304996, 34.278217, 27.882956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055440, 0.308775, 0.949518,
		-0.733996, -0.632094, 0.248408,
		0.676887, -0.710715, 0.191596,
		40.508064, 34.065002, 27.940434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791466, 34.227314, 28.390694>,  <40.034241, 34.562504, 27.806316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791466, 34.227314, 28.390694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.184364, 34.163109, 28.351870>,  <40.420105, 34.124588, 28.328575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.184364, 34.163109, 28.351870>,  <39.791466, 34.227314, 28.390694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184364, 34.163109, 28.351870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140636, 0.287799, 0.947309,
		-0.124118, -0.944144, 0.305264,
		0.982250, -0.160509, -0.097060,
		40.479038, 34.114956, 28.322752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014847, 33.925701, 29.054667>,  <39.791466, 34.227314, 28.390694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014847, 33.925701, 29.054667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336895, 34.067806, 28.864689>,  <40.530125, 34.153069, 28.750702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336895, 34.067806, 28.864689>,  <40.014847, 33.925701, 29.054667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336895, 34.067806, 28.864689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280092, 0.478108, 0.832443,
		0.522817, -0.803241, 0.285424,
		0.805116, 0.355270, -0.474944,
		40.578430, 34.174385, 28.722206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518898, 34.063766, 29.607906>,  <40.014847, 33.925701, 29.054667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518898, 34.063766, 29.607906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707153, 34.254166, 29.310740>,  <40.820107, 34.368404, 29.132439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707153, 34.254166, 29.310740>,  <40.518898, 34.063766, 29.607906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707153, 34.254166, 29.310740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378443, 0.651713, 0.657305,
		0.797042, -0.590507, 0.126587,
		0.470642, 0.475994, -0.742917,
		40.848347, 34.396965, 29.087864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156479, 34.033085, 29.765779>,  <40.518898, 34.063766, 29.607906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156479, 34.033085, 29.765779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.140953, 34.351665, 29.524397>,  <41.131638, 34.542812, 29.379568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.140953, 34.351665, 29.524397>,  <41.156479, 34.033085, 29.765779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140953, 34.351665, 29.524397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496536, 0.539449, 0.680034,
		0.867148, -0.273242, -0.416406,
		-0.038815, 0.796451, -0.603456,
		41.129307, 34.590599, 29.343359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813648, 34.438873, 29.851587>,  <41.156479, 34.033085, 29.765779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813648, 34.438873, 29.851587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564514, 34.699238, 29.677969>,  <41.415035, 34.855457, 29.573799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564514, 34.699238, 29.677969>,  <41.813648, 34.438873, 29.851587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564514, 34.699238, 29.677969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384656, 0.737879, 0.554594,
		0.681263, 0.178462, -0.709952,
		-0.622833, 0.650911, -0.434043,
		41.377663, 34.894512, 29.547756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293373, 34.964142, 29.661707>,  <41.813648, 34.438873, 29.851587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293373, 34.964142, 29.661707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913445, 35.086140, 29.689453>,  <41.685486, 35.159340, 29.706100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913445, 35.086140, 29.689453>,  <42.293373, 34.964142, 29.661707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913445, 35.086140, 29.689453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259086, 0.642931, 0.720774,
		0.175235, 0.702580, -0.689691,
		-0.949825, 0.304994, 0.069364,
		41.628498, 35.177639, 29.710262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361546, 35.581192, 29.774302>,  <42.293373, 34.964142, 29.661707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361546, 35.581192, 29.774302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975342, 35.563984, 29.877010>,  <41.743618, 35.553658, 29.938637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975342, 35.563984, 29.877010>,  <42.361546, 35.581192, 29.774302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975342, 35.563984, 29.877010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162530, 0.670873, 0.723542,
		-0.203391, 0.740323, -0.640745,
		-0.965514, -0.043022, 0.256774,
		41.685688, 35.551079, 29.954042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125050, 36.270149, 29.796595>,  <42.361546, 35.581192, 29.774302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125050, 36.270149, 29.796595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877132, 36.051105, 30.021444>,  <41.728382, 35.919682, 30.156355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877132, 36.051105, 30.021444>,  <42.125050, 36.270149, 29.796595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877132, 36.051105, 30.021444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141191, 0.626797, 0.766283,
		-0.771962, 0.554302, -0.311166,
		-0.619791, -0.547607, 0.562126,
		41.691196, 35.886822, 30.190083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667210, 36.728020, 29.955952>,  <42.125050, 36.270149, 29.796595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667210, 36.728020, 29.955952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.651009, 36.426903, 30.218758>,  <41.641289, 36.246231, 30.376440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.651009, 36.426903, 30.218758>,  <41.667210, 36.728020, 29.955952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651009, 36.426903, 30.218758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209788, 0.636489, 0.742207,
		-0.976908, 0.167892, 0.132149,
		-0.040499, -0.752791, 0.657013,
		41.638859, 36.201065, 30.415861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320683, 37.056519, 30.498606>,  <41.667210, 36.728020, 29.955952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320683, 37.056519, 30.498606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503288, 36.731361, 30.643270>,  <41.612850, 36.536266, 30.730070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503288, 36.731361, 30.643270>,  <41.320683, 37.056519, 30.498606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503288, 36.731361, 30.643270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315143, 0.527875, 0.788690,
		-0.832033, -0.246073, 0.497160,
		0.456514, -0.812894, 0.361662,
		41.640244, 36.487492, 30.751768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061398, 36.960773, 31.241085>,  <41.320683, 37.056519, 30.498606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061398, 36.960773, 31.241085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407497, 36.762249, 31.212723>,  <41.615158, 36.643135, 31.195705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.407497, 36.762249, 31.212723>,  <41.061398, 36.960773, 31.241085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407497, 36.762249, 31.212723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235431, 0.277367, 0.931472,
		-0.442630, -0.822646, 0.356837,
		0.865246, -0.496308, -0.070906,
		41.667072, 36.613358, 31.191450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163734, 36.701244, 31.915056>,  <41.061398, 36.960773, 31.241085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163734, 36.701244, 31.915056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523243, 36.662415, 31.744045>,  <41.738949, 36.639114, 31.641439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523243, 36.662415, 31.744045>,  <41.163734, 36.701244, 31.915056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523243, 36.662415, 31.744045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426728, 0.417342, 0.802327,
		0.100535, -0.903549, 0.416523,
		0.898774, -0.097080, -0.427527,
		41.792877, 36.633289, 31.615788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531105, 36.495167, 32.460873>,  <41.163734, 36.701244, 31.915056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531105, 36.495167, 32.460873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795601, 36.604187, 32.181309>,  <41.954300, 36.669598, 32.013569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795601, 36.604187, 32.181309>,  <41.531105, 36.495167, 32.460873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795601, 36.604187, 32.181309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611011, 0.344859, 0.712557,
		0.435234, -0.898215, 0.061504,
		0.661239, 0.272550, -0.698913,
		41.993973, 36.685951, 31.971636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153564, 36.259224, 32.719616>,  <41.531105, 36.495167, 32.460873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153564, 36.259224, 32.719616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223541, 36.557461, 32.462406>,  <42.265526, 36.736404, 32.308079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223541, 36.557461, 32.462406>,  <42.153564, 36.259224, 32.719616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223541, 36.557461, 32.462406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669919, 0.388473, 0.632691,
		0.721530, -0.541459, -0.431529,
		0.174939, 0.745594, -0.643028,
		42.276024, 36.781139, 32.269497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875919, 36.273186, 32.627613>,  <42.153564, 36.259224, 32.719616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875919, 36.273186, 32.627613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774979, 36.646873, 32.526772>,  <42.714417, 36.871086, 32.466267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774979, 36.646873, 32.526772>,  <42.875919, 36.273186, 32.627613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774979, 36.646873, 32.526772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529407, 0.351376, 0.772181,
		0.809968, 0.061396, -0.583252,
		-0.252349, 0.934219, -0.252100,
		42.699272, 36.927139, 32.451141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529346, 36.748283, 32.576057>,  <42.875919, 36.273186, 32.627613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529346, 36.748283, 32.576057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217007, 36.990116, 32.638996>,  <43.029602, 37.135216, 32.676758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217007, 36.990116, 32.638996>,  <43.529346, 36.748283, 32.576057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217007, 36.990116, 32.638996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407763, 0.302429, 0.861548,
		0.473290, 0.736898, -0.482677,
		-0.780849, 0.604581, 0.157343,
		42.982754, 37.171490, 32.686199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746513, 37.334538, 33.002880>,  <43.529346, 36.748283, 32.576057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746513, 37.334538, 33.002880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351414, 37.392685, 33.025574>,  <43.114353, 37.427574, 33.039188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351414, 37.392685, 33.025574>,  <43.746513, 37.334538, 33.002880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351414, 37.392685, 33.025574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095120, 0.272706, 0.957384,
		0.123704, 0.951051, -0.283193,
		-0.987750, 0.145369, 0.056730,
		43.055088, 37.436295, 33.042591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470753, 37.295853, 32.863483>,  <43.746513, 37.334538, 33.002880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470753, 37.295853, 32.863483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.791759, 37.155548, 33.056538>,  <44.984364, 37.071365, 33.172371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.791759, 37.155548, 33.056538>,  <44.470753, 37.295853, 32.863483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791759, 37.155548, 33.056538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331523, -0.410391, -0.849513,
		0.496048, 0.841750, -0.213057,
		0.802514, -0.350765, 0.482633,
		45.032513, 37.050320, 33.201328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123577, 37.619774, 32.556099>,  <44.470753, 37.295853, 32.863483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123577, 37.619774, 32.556099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188629, 37.262531, 32.723862>,  <45.227661, 37.048183, 32.824520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188629, 37.262531, 32.723862>,  <45.123577, 37.619774, 32.556099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188629, 37.262531, 32.723862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163698, -0.394753, -0.904087,
		0.973012, 0.215692, 0.082000,
		0.162634, -0.893111, 0.419408,
		45.237419, 36.994598, 32.849686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677029, 37.259811, 32.136627>,  <45.123577, 37.619774, 32.556099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677029, 37.259811, 32.136627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.529140, 36.945911, 32.335613>,  <45.440407, 36.757572, 32.455006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.529140, 36.945911, 32.335613>,  <45.677029, 37.259811, 32.136627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529140, 36.945911, 32.335613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032316, -0.524222, -0.850969,
		0.928580, -0.330698, 0.168457,
		-0.369722, -0.784749, 0.497469,
		45.418224, 36.710487, 32.484856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991280, 36.727734, 31.854479>,  <45.677029, 37.259811, 32.136627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991280, 36.727734, 31.854479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665569, 36.568352, 32.023331>,  <45.470142, 36.472721, 32.124641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665569, 36.568352, 32.023331>,  <45.991280, 36.727734, 31.854479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665569, 36.568352, 32.023331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202842, -0.486050, -0.850065,
		0.543889, -0.777810, 0.314954,
		-0.814272, -0.398455, 0.422130,
		45.421288, 36.448814, 32.149971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129280, 36.080635, 31.612387>,  <45.991280, 36.727734, 31.854479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129280, 36.080635, 31.612387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748768, 36.098698, 31.734388>,  <45.520462, 36.109535, 31.807589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748768, 36.098698, 31.734388>,  <46.129280, 36.080635, 31.612387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748768, 36.098698, 31.734388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289536, -0.470918, -0.833310,
		0.106001, -0.881020, 0.461050,
		-0.951280, 0.045159, 0.305005,
		45.463383, 36.112247, 31.825890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844593, 35.410023, 31.528793>,  <46.129280, 36.080635, 31.612387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844593, 35.410023, 31.528793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516926, 35.638363, 31.551033>,  <45.320324, 35.775368, 31.564377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516926, 35.638363, 31.551033>,  <45.844593, 35.410023, 31.528793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516926, 35.638363, 31.551033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421715, -0.533772, -0.732969,
		-0.388736, -0.623874, 0.677986,
		-0.819171, 0.570848, 0.055601,
		45.271175, 35.809616, 31.567713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307560, 34.996098, 31.552433>,  <45.844593, 35.410023, 31.528793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307560, 34.996098, 31.552433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189270, 35.344074, 31.394575>,  <45.118294, 35.552860, 31.299860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189270, 35.344074, 31.394575>,  <45.307560, 34.996098, 31.552433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189270, 35.344074, 31.394575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529581, -0.493128, -0.690195,
		-0.795041, 0.004887, 0.606536,
		-0.295727, 0.869943, -0.394645,
		45.100552, 35.605057, 31.276182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745213, 34.875336, 31.110929>,  <45.307560, 34.996098, 31.552433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745213, 34.875336, 31.110929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799858, 35.246536, 30.972281>,  <44.832645, 35.469257, 30.889091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799858, 35.246536, 30.972281>,  <44.745213, 34.875336, 31.110929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799858, 35.246536, 30.972281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111118, -0.333341, -0.936235,
		-0.984373, 0.166417, 0.057579,
		0.136612, 0.928003, -0.346623,
		44.840843, 35.524937, 30.868294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196369, 34.989304, 30.738054>,  <44.745213, 34.875336, 31.110929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196369, 34.989304, 30.738054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479534, 35.240585, 30.608925>,  <44.649433, 35.391354, 30.531448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479534, 35.240585, 30.608925>,  <44.196369, 34.989304, 30.738054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479534, 35.240585, 30.608925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030522, -0.429425, -0.902587,
		-0.705641, 0.648805, -0.284821,
		0.707912, 0.628209, -0.322822,
		44.691906, 35.429047, 30.512077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887753, 35.235497, 30.273321>,  <44.196369, 34.989304, 30.738054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887753, 35.235497, 30.273321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271667, 35.307709, 30.187326>,  <44.502014, 35.351036, 30.135731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271667, 35.307709, 30.187326>,  <43.887753, 35.235497, 30.273321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271667, 35.307709, 30.187326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132479, -0.383897, -0.913823,
		-0.247509, 0.905555, -0.344542,
		0.959786, 0.180534, -0.214985,
		44.559605, 35.361870, 30.122831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974361, 35.652054, 29.736822>,  <43.887753, 35.235497, 30.273321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974361, 35.652054, 29.736822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320545, 35.451794, 29.744080>,  <44.528255, 35.331638, 29.748434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320545, 35.451794, 29.744080>,  <43.974361, 35.652054, 29.736822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320545, 35.451794, 29.744080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099539, -0.207340, -0.973191,
		0.490995, 0.840449, -0.229279,
		0.865457, -0.500655, 0.018145,
		44.580181, 35.301598, 29.749523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316742, 35.798084, 29.062477>,  <43.974361, 35.652054, 29.736822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316742, 35.798084, 29.062477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538181, 35.491901, 29.193693>,  <44.671043, 35.308193, 29.272423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538181, 35.491901, 29.193693>,  <44.316742, 35.798084, 29.062477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538181, 35.491901, 29.193693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067986, -0.351053, -0.933884,
		0.830005, 0.539298, -0.142302,
		0.553597, -0.765454, 0.328041,
		44.704262, 35.262264, 29.292105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640003, 35.611366, 28.388094>,  <44.316742, 35.798084, 29.062477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640003, 35.611366, 28.388094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652428, 35.307011, 28.647350>,  <44.659882, 35.124397, 28.802904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652428, 35.307011, 28.647350>,  <44.640003, 35.611366, 28.388094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652428, 35.307011, 28.647350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287108, -0.627918, -0.723386,
		0.957395, -0.163620, -0.237958,
		0.031058, -0.760886, 0.648142,
		44.661743, 35.078747, 28.841793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099831, 35.171967, 28.036753>,  <44.640003, 35.611366, 28.388094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099831, 35.171967, 28.036753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915417, 34.939209, 28.304735>,  <44.804768, 34.799553, 28.465525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915417, 34.939209, 28.304735>,  <45.099831, 35.171967, 28.036753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915417, 34.939209, 28.304735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116895, -0.708579, -0.695882,
		0.879647, -0.399143, 0.258661,
		-0.461039, -0.581895, 0.669957,
		44.777103, 34.764641, 28.505722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504665, 34.497761, 28.041517>,  <45.099831, 35.171967, 28.036753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504665, 34.497761, 28.041517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141151, 34.415840, 28.186939>,  <44.923042, 34.366688, 28.274193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141151, 34.415840, 28.186939>,  <45.504665, 34.497761, 28.041517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141151, 34.415840, 28.186939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128579, -0.691427, -0.710913,
		0.396971, -0.692809, 0.602021,
		-0.908780, -0.204805, 0.363557,
		44.868519, 34.354401, 28.296007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463715, 33.834023, 27.914352>,  <45.504665, 34.497761, 28.041517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463715, 33.834023, 27.914352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.082741, 33.940701, 27.973322>,  <44.854156, 34.004707, 28.008703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.082741, 33.940701, 27.973322>,  <45.463715, 33.834023, 27.914352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082741, 33.940701, 27.973322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300288, -0.739112, -0.602943,
		-0.051841, -0.618536, 0.784045,
		-0.952438, 0.266696, 0.147423,
		44.797009, 34.020710, 28.017550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068325, 33.153561, 27.980957>,  <45.463715, 33.834023, 27.914352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068325, 33.153561, 27.980957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797626, 33.433033, 27.888121>,  <44.635208, 33.600716, 27.832418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797626, 33.433033, 27.888121>,  <45.068325, 33.153561, 27.980957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797626, 33.433033, 27.888121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497320, -0.666282, -0.555645,
		-0.542856, -0.260606, 0.798369,
		-0.676743, 0.698679, -0.232091,
		44.594604, 33.642635, 27.818493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399696, 32.792404, 27.926846>,  <45.068325, 33.153561, 27.980957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399696, 32.792404, 27.926846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.325844, 33.129780, 27.725048>,  <44.281532, 33.332207, 27.603970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.325844, 33.129780, 27.725048>,  <44.399696, 32.792404, 27.926846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325844, 33.129780, 27.725048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270730, -0.537110, -0.798885,
		-0.944783, -0.010921, 0.327515,
		-0.184636, 0.843441, -0.504496,
		44.270454, 33.382812, 27.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701469, 32.729027, 27.795460>,  <44.399696, 32.792404, 27.926846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701469, 32.729027, 27.795460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878624, 32.979092, 27.538391>,  <43.984917, 33.129131, 27.384150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.878624, 32.979092, 27.538391>,  <43.701469, 32.729027, 27.795460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878624, 32.979092, 27.538391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342236, -0.544651, -0.765657,
		-0.828689, 0.559045, -0.027267,
		0.442888, 0.625159, -0.642671,
		44.011490, 33.166641, 27.345591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174519, 32.958111, 27.316481>,  <43.701469, 32.729027, 27.795460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174519, 32.958111, 27.316481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519928, 33.021812, 27.125076>,  <43.727173, 33.060032, 27.010235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519928, 33.021812, 27.125076>,  <43.174519, 32.958111, 27.316481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519928, 33.021812, 27.125076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394514, -0.377740, -0.837658,
		-0.314151, 0.912114, -0.263359,
		0.863521, 0.159252, -0.478509,
		43.778984, 33.069588, 26.981524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861279, 33.072041, 26.751789>,  <43.174519, 32.958111, 27.316481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861279, 33.072041, 26.751789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246002, 33.029858, 26.650753>,  <43.476837, 33.004547, 26.590132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246002, 33.029858, 26.650753>,  <42.861279, 33.072041, 26.751789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246002, 33.029858, 26.650753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264228, -0.116766, -0.957366,
		0.071470, 0.987544, -0.140172,
		0.961809, -0.105460, -0.252591,
		43.534546, 32.998219, 26.574976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.445148, 40.060356, 42.375736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162991, 39.858307, 42.176830>,  <38.993694, 39.737080, 42.057487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162991, 39.858307, 42.176830>,  <39.445148, 40.060356, 42.375736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162991, 39.858307, 42.176830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610373, -0.076200, -0.788441,
		0.360367, -0.859678, 0.362063,
		-0.705394, -0.505121, -0.497264,
		38.951374, 39.706772, 42.027653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798893, 39.532143, 42.045036>,  <39.445148, 40.060356, 42.375736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798893, 39.532143, 42.045036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453804, 39.519741, 41.843147>,  <39.246750, 39.512299, 41.722015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453804, 39.519741, 41.843147>,  <39.798893, 39.532143, 42.045036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453804, 39.519741, 41.843147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504675, -0.115409, -0.855560,
		-0.031721, -0.992834, 0.115215,
		-0.862726, -0.031007, -0.504719,
		39.194984, 39.510441, 41.691730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880878, 39.024834, 41.568890>,  <39.798893, 39.532143, 42.045036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880878, 39.024834, 41.568890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579796, 39.234871, 41.410042>,  <39.399147, 39.360893, 41.314732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579796, 39.234871, 41.410042>,  <39.880878, 39.024834, 41.568890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579796, 39.234871, 41.410042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386168, -0.136395, -0.912289,
		-0.533203, -0.840044, -0.100108,
		-0.752708, 0.525093, -0.397124,
		39.353985, 39.392399, 41.290905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645985, 38.635681, 41.112057>,  <39.880878, 39.024834, 41.568890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645985, 38.635681, 41.112057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513882, 38.990532, 40.983097>,  <39.434620, 39.203442, 40.905720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513882, 38.990532, 40.983097>,  <39.645985, 38.635681, 41.112057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513882, 38.990532, 40.983097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200909, -0.267672, -0.942331,
		-0.922261, -0.375986, -0.089830,
		-0.330258, 0.887122, -0.322402,
		39.414803, 39.256668, 40.886375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095707, 38.399624, 40.638947>,  <39.645985, 38.635681, 41.112057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095707, 38.399624, 40.638947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214905, 38.773815, 40.562965>,  <39.286423, 38.998329, 40.517376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214905, 38.773815, 40.562965>,  <39.095707, 38.399624, 40.638947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214905, 38.773815, 40.562965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194995, -0.254453, -0.947223,
		-0.934440, 0.245224, -0.258238,
		0.297991, 0.935478, -0.189953,
		39.304302, 39.054459, 40.505978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842968, 38.579880, 39.867981>,  <39.095707, 38.399624, 40.638947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842968, 38.579880, 39.867981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141354, 38.825932, 39.970085>,  <39.320385, 38.973560, 40.031345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141354, 38.825932, 39.970085>,  <38.842968, 38.579880, 39.867981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141354, 38.825932, 39.970085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431258, -0.154093, -0.888972,
		-0.507496, 0.773224, -0.380226,
		0.745965, 0.615126, 0.255257,
		39.365143, 39.010468, 40.046661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983574, 38.831600, 39.209061>,  <38.842968, 38.579880, 39.867981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983574, 38.831600, 39.209061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293587, 38.968357, 39.421638>,  <39.479595, 39.050411, 39.549183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293587, 38.968357, 39.421638>,  <38.983574, 38.831600, 39.209061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293587, 38.968357, 39.421638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528165, 0.111246, -0.841823,
		-0.346935, 0.933131, -0.094357,
		0.775034, 0.341894, 0.531442,
		39.526096, 39.070927, 39.581070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261089, 39.409599, 38.873161>,  <38.983574, 38.831600, 39.209061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261089, 39.409599, 38.873161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548645, 39.254585, 39.103992>,  <39.721176, 39.161575, 39.242493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548645, 39.254585, 39.103992>,  <39.261089, 39.409599, 38.873161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548645, 39.254585, 39.103992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615681, -0.030425, -0.787408,
		0.322707, 0.921352, 0.216727,
		0.718886, -0.387536, 0.577077,
		39.764313, 39.138325, 39.277115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907211, 39.739456, 38.650661>,  <39.261089, 39.409599, 38.873161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907211, 39.739456, 38.650661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032345, 39.405075, 38.831020>,  <40.107426, 39.204445, 38.939236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032345, 39.405075, 38.831020>,  <39.907211, 39.739456, 38.650661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032345, 39.405075, 38.831020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664197, -0.146805, -0.733001,
		0.678951, 0.528795, 0.509314,
		0.312838, -0.835957, 0.450898,
		40.126198, 39.154289, 38.966290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531391, 39.661991, 38.429340>,  <39.907211, 39.739456, 38.650661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531391, 39.661991, 38.429340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506874, 39.297047, 38.591248>,  <40.492165, 39.078079, 38.688393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506874, 39.297047, 38.591248>,  <40.531391, 39.661991, 38.429340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506874, 39.297047, 38.591248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697539, -0.329211, -0.636442,
		0.713920, 0.243334, 0.656587,
		-0.061288, -0.912364, 0.404766,
		40.488487, 39.023338, 38.712677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225273, 39.347824, 38.426132>,  <40.531391, 39.661991, 38.429340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225273, 39.347824, 38.426132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965015, 39.044147, 38.433014>,  <40.808861, 38.861942, 38.437145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965015, 39.044147, 38.433014>,  <41.225273, 39.347824, 38.426132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965015, 39.044147, 38.433014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467254, -0.418102, -0.779015,
		0.598615, -0.498819, 0.626769,
		-0.650641, -0.759190, 0.017207,
		40.769825, 38.816391, 38.438175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628696, 38.626694, 38.390984>,  <41.225273, 39.347824, 38.426132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628696, 38.626694, 38.390984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262653, 38.611294, 38.230434>,  <41.043030, 38.602055, 38.134106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262653, 38.611294, 38.230434>,  <41.628696, 38.626694, 38.390984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262653, 38.611294, 38.230434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356468, -0.542484, -0.760685,
		-0.188451, -0.839184, 0.510154,
		-0.915105, -0.038501, -0.401373,
		40.988121, 38.599743, 38.110023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569302, 38.005470, 38.079411>,  <41.628696, 38.626694, 38.390984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569302, 38.005470, 38.079411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303722, 38.262787, 37.926910>,  <41.144375, 38.417175, 37.835411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303722, 38.262787, 37.926910>,  <41.569302, 38.005470, 38.079411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303722, 38.262787, 37.926910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148603, -0.386165, -0.910381,
		-0.732866, -0.661099, 0.160798,
		-0.663946, 0.643292, -0.381249,
		41.104538, 38.455776, 37.812534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988865, 37.601345, 37.798874>,  <41.569302, 38.005470, 38.079411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988865, 37.601345, 37.798874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087059, 37.930416, 37.593765>,  <41.145977, 38.127861, 37.470699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087059, 37.930416, 37.593765>,  <40.988865, 37.601345, 37.798874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087059, 37.930416, 37.593765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155568, -0.555534, -0.816811,
		-0.956835, 0.120748, -0.264361,
		0.245490, 0.822680, -0.512770,
		41.160706, 38.177219, 37.439934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331295, 37.216805, 37.219604>,  <40.988865, 37.601345, 37.798874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331295, 37.216805, 37.219604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330738, 36.889851, 36.989166>,  <41.330402, 36.693680, 36.850903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330738, 36.889851, 36.989166>,  <41.331295, 37.216805, 37.219604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330738, 36.889851, 36.989166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456101, -0.512162, 0.727778,
		-0.889927, 0.263774, -0.372093,
		-0.001397, -0.817382, -0.576094,
		41.330318, 36.644634, 36.816338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661198, 36.840221, 37.285122>,  <41.331295, 37.216805, 37.219604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661198, 36.840221, 37.285122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912468, 36.564556, 37.140652>,  <41.063229, 36.399155, 37.053970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912468, 36.564556, 37.140652>,  <40.661198, 36.840221, 37.285122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912468, 36.564556, 37.140652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382296, -0.677675, 0.628177,
		-0.677675, -0.256531, -0.689165,
		-0.628177, 0.689165, 0.361173,
		41.100922, 36.357807, 37.032299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288395, 36.328449, 37.171093>,  <40.661198, 36.840221, 37.285122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288395, 36.328449, 37.171093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649406, 36.156410, 37.179565>,  <40.866013, 36.053185, 37.184650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649406, 36.156410, 37.179565>,  <40.288395, 36.328449, 37.171093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649406, 36.156410, 37.179565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336115, -0.672858, 0.659006,
		-0.269187, -0.601893, -0.751840,
		0.902533, -0.430100, 0.021180,
		40.920166, 36.027382, 37.185921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111530, 35.630829, 37.152252>,  <40.288395, 36.328449, 37.171093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111530, 35.630829, 37.152252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480083, 35.653015, 37.306126>,  <40.701214, 35.666325, 37.398449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480083, 35.653015, 37.306126>,  <40.111530, 35.630829, 37.152252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480083, 35.653015, 37.306126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289749, -0.561665, 0.774970,
		0.259047, -0.825503, -0.501437,
		0.921380, 0.055463, 0.384686,
		40.756496, 35.669655, 37.421532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252647, 34.929672, 37.443130>,  <40.111530, 35.630829, 37.152252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252647, 34.929672, 37.443130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524639, 35.161980, 37.622169>,  <40.687832, 35.301365, 37.729591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524639, 35.161980, 37.622169>,  <40.252647, 34.929672, 37.443130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524639, 35.161980, 37.622169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122546, -0.511838, 0.850297,
		0.722921, -0.633033, -0.276867,
		0.679977, 0.580768, 0.447594,
		40.728634, 35.336208, 37.756447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595287, 34.506500, 37.890003>,  <40.252647, 34.929672, 37.443130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595287, 34.506500, 37.890003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642693, 34.877747, 38.031174>,  <40.671135, 35.100494, 38.115875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642693, 34.877747, 38.031174>,  <40.595287, 34.506500, 37.890003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642693, 34.877747, 38.031174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120950, -0.339289, 0.932874,
		0.985559, -0.153241, 0.072047,
		0.118510, 0.928117, 0.352923,
		40.678246, 35.156181, 38.137051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005867, 34.438694, 38.484409>,  <40.595287, 34.506500, 37.890003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005867, 34.438694, 38.484409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795933, 34.778244, 38.509598>,  <40.669971, 34.981972, 38.524712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795933, 34.778244, 38.509598>,  <41.005867, 34.438694, 38.484409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795933, 34.778244, 38.509598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367199, -0.292528, 0.882945,
		0.767929, 0.440276, 0.465234,
		-0.524834, 0.848872, 0.062971,
		40.638481, 35.032906, 38.528488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133625, 34.754585, 39.276539>,  <41.005867, 34.438694, 38.484409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133625, 34.754585, 39.276539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809837, 34.941647, 39.134518>,  <40.615566, 35.053883, 39.049305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809837, 34.941647, 39.134518>,  <41.133625, 34.754585, 39.276539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809837, 34.941647, 39.134518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394150, 0.015420, 0.918917,
		0.435206, 0.883780, 0.171842,
		-0.809470, 0.467649, -0.355052,
		40.566998, 35.081940, 39.028004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031574, 35.231533, 39.768032>,  <41.133625, 34.754585, 39.276539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031574, 35.231533, 39.768032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681301, 35.250069, 39.575768>,  <40.471138, 35.261192, 39.460407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681301, 35.250069, 39.575768>,  <41.031574, 35.231533, 39.768032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681301, 35.250069, 39.575768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469957, 0.147047, 0.870355,
		0.111014, 0.988043, -0.106988,
		-0.875680, 0.046342, -0.480663,
		40.418598, 35.263969, 39.431568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669445, 35.724411, 39.984703>,  <41.031574, 35.231533, 39.768032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669445, 35.724411, 39.984703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387913, 35.484848, 39.831902>,  <40.218994, 35.341110, 39.740219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387913, 35.484848, 39.831902>,  <40.669445, 35.724411, 39.984703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387913, 35.484848, 39.831902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551616, 0.121955, 0.825135,
		-0.447593, 0.791476, -0.416204,
		-0.703833, -0.598909, -0.382004,
		40.176762, 35.305176, 39.717300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021362, 36.168362, 39.914688>,  <40.669445, 35.724411, 39.984703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021362, 36.168362, 39.914688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940918, 35.776550, 39.918083>,  <39.892651, 35.541462, 39.920120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940918, 35.776550, 39.918083>,  <40.021362, 36.168362, 39.914688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940918, 35.776550, 39.918083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367345, 0.083445, 0.926334,
		-0.908083, 0.183174, -0.376608,
		-0.201106, -0.979533, 0.008487,
		39.880585, 35.482689, 39.920628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366520, 36.108185, 40.216965>,  <40.021362, 36.168362, 39.914688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366520, 36.108185, 40.216965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529682, 35.746986, 40.270950>,  <39.627579, 35.530270, 40.303341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529682, 35.746986, 40.270950>,  <39.366520, 36.108185, 40.216965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529682, 35.746986, 40.270950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389441, -0.038381, 0.920251,
		-0.825801, -0.427936, -0.367319,
		0.407907, -0.902994, 0.134961,
		39.652054, 35.476089, 40.311440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997040, 35.917538, 40.731277>,  <39.366520, 36.108185, 40.216965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997040, 35.917538, 40.731277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272106, 35.627129, 40.731564>,  <39.437145, 35.452885, 40.731735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272106, 35.627129, 40.731564>,  <38.997040, 35.917538, 40.731277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272106, 35.627129, 40.731564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114583, -0.107553, 0.987574,
		-0.716926, -0.679206, -0.157151,
		0.687669, -0.726024, 0.000719,
		39.478405, 35.409321, 40.731781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670143, 35.274643, 41.129509>,  <38.997040, 35.917538, 40.731277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670143, 35.274643, 41.129509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067562, 35.229504, 41.133881>,  <39.306015, 35.202419, 41.136505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067562, 35.229504, 41.133881>,  <38.670143, 35.274643, 41.129509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067562, 35.229504, 41.133881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009383, 0.014242, 0.999855,
		-0.112989, -0.993510, 0.013091,
		0.993552, -0.112849, 0.010931,
		39.365627, 35.195648, 41.137161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619694, 34.532478, 40.877163>,  <38.670143, 35.274643, 41.129509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619694, 34.532478, 40.877163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340282, 34.247135, 40.899738>,  <38.172634, 34.075932, 40.913284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340282, 34.247135, 40.899738>,  <38.619694, 34.532478, 40.877163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340282, 34.247135, 40.899738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174391, 0.093215, -0.980254,
		0.694008, -0.694576, -0.189516,
		-0.698527, -0.713355, 0.056437,
		38.130726, 34.033131, 40.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880733, 33.913383, 40.417343>,  <38.619694, 34.532478, 40.877163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880733, 33.913383, 40.417343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482449, 33.913574, 40.454338>,  <38.243477, 33.913689, 40.476536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482449, 33.913574, 40.454338>,  <38.880733, 33.913383, 40.417343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482449, 33.913574, 40.454338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092491, -0.000432, -0.995713,
		-0.000432, -1.000000, 0.000474,
		0.995713, -0.000474, -0.092491,
		38.183735, 33.913715, 40.482086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701336, 33.332630, 39.978909>,  <38.880733, 33.913383, 40.417343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701336, 33.332630, 39.978909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377567, 33.557922, 40.045357>,  <38.183304, 33.693100, 40.085224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377567, 33.557922, 40.045357>,  <38.701336, 33.332630, 39.978909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377567, 33.557922, 40.045357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287045, -0.132708, -0.948680,
		-0.512285, -0.815570, 0.269091,
		-0.809425, 0.563236, 0.166120,
		38.134739, 33.726894, 40.095192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992142, 32.953873, 39.813698>,  <38.701336, 33.332630, 39.978909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992142, 32.953873, 39.813698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901104, 33.342953, 39.795544>,  <37.846481, 33.576401, 39.784653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901104, 33.342953, 39.795544>,  <37.992142, 32.953873, 39.813698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901104, 33.342953, 39.795544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355438, -0.126377, -0.926117,
		-0.906568, -0.194646, 0.374496,
		-0.227593, 0.972698, -0.045384,
		37.832825, 33.634762, 39.781929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237732, 33.011578, 39.602699>,  <37.992142, 32.953873, 39.813698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237732, 33.011578, 39.602699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413265, 33.354801, 39.495998>,  <37.518585, 33.560734, 39.431976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413265, 33.354801, 39.495998>,  <37.237732, 33.011578, 39.602699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413265, 33.354801, 39.495998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367169, -0.099720, -0.924793,
		-0.820128, 0.503776, 0.271292,
		0.438835, 0.858059, -0.266754,
		37.544914, 33.612221, 39.415974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741066, 33.414734, 39.107723>,  <37.237732, 33.011578, 39.602699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741066, 33.414734, 39.107723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090199, 33.598274, 39.041237>,  <37.299679, 33.708397, 39.001347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090199, 33.598274, 39.041237>,  <36.741066, 33.414734, 39.107723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090199, 33.598274, 39.041237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158708, -0.055190, -0.985782,
		-0.461501, 0.886797, 0.024652,
		0.872828, 0.458852, -0.166212,
		37.352047, 33.735931, 38.991375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638149, 33.876934, 38.628479>,  <36.741066, 33.414734, 39.107723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638149, 33.876934, 38.628479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035103, 33.837669, 38.598705>,  <37.273273, 33.814110, 38.580841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035103, 33.837669, 38.598705>,  <36.638149, 33.876934, 38.628479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035103, 33.837669, 38.598705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053948, 0.196907, -0.978937,
		0.110749, 0.975496, 0.190112,
		0.992383, -0.098160, -0.074433,
		37.332817, 33.808220, 38.576374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899475, 34.348869, 38.146008>,  <36.638149, 33.876934, 38.628479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899475, 34.348869, 38.146008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228451, 34.121342, 38.148285>,  <37.425838, 33.984825, 38.149651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228451, 34.121342, 38.148285>,  <36.899475, 34.348869, 38.146008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228451, 34.121342, 38.148285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207388, 0.290512, -0.934127,
		0.529696, 0.769447, 0.356896,
		0.822443, -0.568819, 0.005691,
		37.475185, 33.950695, 38.149994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452240, 34.678589, 37.825413>,  <36.899475, 34.348869, 38.146008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452240, 34.678589, 37.825413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539398, 34.290119, 37.786736>,  <37.591694, 34.057037, 37.763527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539398, 34.290119, 37.786736>,  <37.452240, 34.678589, 37.825413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539398, 34.290119, 37.786736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224595, 0.146314, -0.963405,
		0.949778, 0.188207, 0.250001,
		0.217898, -0.971170, -0.096695,
		37.604767, 33.998768, 37.757729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084824, 34.642960, 37.465950>,  <37.452240, 34.678589, 37.825413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084824, 34.642960, 37.465950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916561, 34.286373, 37.398609>,  <37.815605, 34.072422, 37.358204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916561, 34.286373, 37.398609>,  <38.084824, 34.642960, 37.465950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916561, 34.286373, 37.398609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182222, 0.098768, -0.978284,
		0.888734, -0.442195, 0.120897,
		-0.420652, -0.891464, -0.168356,
		37.790367, 34.018932, 37.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566185, 34.272999, 36.989006>,  <38.084824, 34.642960, 37.465950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566185, 34.272999, 36.989006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224152, 34.066525, 36.969486>,  <38.018932, 33.942638, 36.957775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224152, 34.066525, 36.969486>,  <38.566185, 34.272999, 36.989006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224152, 34.066525, 36.969486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007450, 0.081872, -0.996615,
		0.518433, -0.852555, -0.066162,
		-0.855085, -0.516185, -0.048797,
		37.967625, 33.911671, 36.954845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567719, 33.848576, 36.353481>,  <38.566185, 34.272999, 36.989006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567719, 33.848576, 36.353481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178738, 33.897903, 36.432613>,  <37.945351, 33.927502, 36.480091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178738, 33.897903, 36.432613>,  <38.567719, 33.848576, 36.353481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178738, 33.897903, 36.432613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201261, -0.015885, -0.979409,
		-0.117638, -0.992240, 0.040267,
		-0.972448, 0.123320, 0.197831,
		37.887005, 33.934898, 36.491962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.014984, 33.328102, 44.434799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623272, 33.345131, 44.355610>,  <37.388245, 33.355350, 44.308098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.623272, 33.345131, 44.355610>,  <38.014984, 33.328102, 44.434799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623272, 33.345131, 44.355610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194818, -0.068598, -0.978438,
		-0.055221, -0.996736, 0.058885,
		-0.979284, 0.042559, -0.197970,
		37.329487, 33.357903, 44.296219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907776, 32.692631, 44.042858>,  <38.014984, 33.328102, 44.434799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907776, 32.692631, 44.042858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603191, 32.936661, 43.955235>,  <37.420441, 33.083080, 43.902660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603191, 32.936661, 43.955235>,  <37.907776, 32.692631, 44.042858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603191, 32.936661, 43.955235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186098, -0.117963, -0.975424,
		-0.620923, -0.783513, -0.023710,
		-0.761461, 0.610075, -0.219056,
		37.374752, 33.119682, 43.889519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546238, 32.388813, 43.359783>,  <37.907776, 32.692631, 44.042858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546238, 32.388813, 43.359783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461166, 32.774887, 43.420696>,  <37.410122, 33.006531, 43.457245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461166, 32.774887, 43.420696>,  <37.546238, 32.388813, 43.359783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461166, 32.774887, 43.420696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138242, 0.184004, -0.973156,
		-0.967293, -0.185920, -0.172563,
		-0.212681, 0.965182, 0.152284,
		37.397362, 33.064442, 43.466381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093006, 32.566891, 42.836510>,  <37.546238, 32.388813, 43.359783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093006, 32.566891, 42.836510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197388, 32.933102, 42.958958>,  <37.260017, 33.152828, 43.032429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.197388, 32.933102, 42.958958>,  <37.093006, 32.566891, 42.836510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197388, 32.933102, 42.958958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041598, 0.306153, -0.951073,
		-0.964456, 0.260917, 0.041807,
		0.260950, 0.915529, 0.306125,
		37.275673, 33.207760, 43.050797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672882, 32.998474, 42.402149>,  <37.093006, 32.566891, 42.836510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672882, 32.998474, 42.402149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984856, 33.202896, 42.546661>,  <37.172039, 33.325550, 42.633369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984856, 33.202896, 42.546661>,  <36.672882, 32.998474, 42.402149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984856, 33.202896, 42.546661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113540, 0.452142, -0.884690,
		-0.615476, 0.731020, 0.294616,
		0.779935, 0.511054, 0.361282,
		37.218838, 33.356213, 42.655045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615734, 33.647102, 42.133083>,  <36.672882, 32.998474, 42.402149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615734, 33.647102, 42.133083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997395, 33.612495, 42.247707>,  <37.226391, 33.591732, 42.316483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997395, 33.612495, 42.247707>,  <36.615734, 33.647102, 42.133083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997395, 33.612495, 42.247707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298208, 0.357840, -0.884886,
		-0.025989, 0.929767, 0.367231,
		0.954147, -0.086513, 0.286564,
		37.283638, 33.586540, 42.333675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921501, 34.316170, 42.090008>,  <36.615734, 33.647102, 42.133083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921501, 34.316170, 42.090008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204647, 34.034382, 42.069424>,  <37.374535, 33.865311, 42.057072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204647, 34.034382, 42.069424>,  <36.921501, 34.316170, 42.090008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204647, 34.034382, 42.069424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365144, 0.427329, -0.827079,
		0.604643, 0.566671, 0.559724,
		0.707868, -0.704468, -0.051465,
		37.417007, 33.823040, 42.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427513, 34.719227, 41.714600>,  <36.921501, 34.316170, 42.090008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427513, 34.719227, 41.714600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566105, 34.344078, 41.707062>,  <37.649258, 34.118988, 41.702541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566105, 34.344078, 41.707062>,  <37.427513, 34.719227, 41.714600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566105, 34.344078, 41.707062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362361, 0.152338, -0.919504,
		0.865245, 0.311758, 0.392629,
		0.346475, -0.937870, -0.018841,
		37.670048, 34.062717, 41.701408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109249, 34.747433, 41.517056>,  <37.427513, 34.719227, 41.714600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109249, 34.747433, 41.517056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982227, 34.379505, 41.424885>,  <37.906013, 34.158749, 41.369583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.982227, 34.379505, 41.424885>,  <38.109249, 34.747433, 41.517056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982227, 34.379505, 41.424885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247003, 0.154376, -0.956639,
		0.915506, -0.360696, 0.178176,
		-0.317550, -0.919818, -0.230425,
		37.886963, 34.103561, 41.355759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887280, 34.707249, 41.714680>,  <38.109249, 34.747433, 41.517056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887280, 34.707249, 41.714680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221279, 34.920147, 41.658833>,  <39.421680, 35.047886, 41.625324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.221279, 34.920147, 41.658833>,  <38.887280, 34.707249, 41.714680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221279, 34.920147, 41.658833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073945, 0.142891, 0.986972,
		0.545262, -0.834444, 0.079957,
		0.834998, 0.532246, -0.139616,
		39.471779, 35.079819, 41.616947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445339, 34.409500, 42.207127>,  <38.887280, 34.707249, 41.714680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445339, 34.409500, 42.207127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551460, 34.783222, 42.111889>,  <39.615131, 35.007454, 42.054749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551460, 34.783222, 42.111889>,  <39.445339, 34.409500, 42.207127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551460, 34.783222, 42.111889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070647, 0.227438, 0.971227,
		0.961573, -0.274491, -0.005666,
		0.265304, 0.934306, -0.238090,
		39.631050, 35.063515, 42.040462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992718, 34.541397, 42.606491>,  <39.445339, 34.409500, 42.207127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992718, 34.541397, 42.606491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855812, 34.907059, 42.519608>,  <39.773670, 35.126457, 42.467476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855812, 34.907059, 42.519608>,  <39.992718, 34.541397, 42.606491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855812, 34.907059, 42.519608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129285, 0.274789, 0.952773,
		0.930667, 0.298017, -0.212236,
		-0.342262, 0.914154, -0.217208,
		39.753132, 35.181305, 42.454445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448467, 35.000320, 42.939968>,  <39.992718, 34.541397, 42.606491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448467, 35.000320, 42.939968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110764, 35.202179, 42.867786>,  <39.908142, 35.323292, 42.824478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.110764, 35.202179, 42.867786>,  <40.448467, 35.000320, 42.939968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110764, 35.202179, 42.867786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031095, 0.382270, 0.923527,
		0.535036, 0.774083, -0.338426,
		-0.844257, 0.504644, -0.180459,
		39.857487, 35.353573, 42.813648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454185, 35.500385, 43.390541>,  <40.448467, 35.000320, 42.939968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454185, 35.500385, 43.390541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082081, 35.558609, 43.255825>,  <39.858818, 35.593544, 43.174995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082081, 35.558609, 43.255825>,  <40.454185, 35.500385, 43.390541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082081, 35.558609, 43.255825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265116, 0.367872, 0.891282,
		0.253634, 0.918413, -0.303625,
		-0.930260, 0.145563, -0.336790,
		39.803001, 35.602280, 43.154789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318245, 36.224548, 43.446163>,  <40.454185, 35.500385, 43.390541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318245, 36.224548, 43.446163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968681, 36.030193, 43.451836>,  <39.758945, 35.913582, 43.455238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.968681, 36.030193, 43.451836>,  <40.318245, 36.224548, 43.446163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968681, 36.030193, 43.451836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225236, 0.430613, 0.873980,
		-0.430762, 0.760583, -0.485755,
		-0.873907, -0.485887, 0.014181,
		39.706509, 35.884426, 43.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796833, 36.685390, 43.830318>,  <40.318245, 36.224548, 43.446163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796833, 36.685390, 43.830318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618774, 36.327209, 43.830254>,  <39.511940, 36.112301, 43.830215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618774, 36.327209, 43.830254>,  <39.796833, 36.685390, 43.830318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618774, 36.327209, 43.830254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407459, 0.202393, 0.890513,
		-0.797382, 0.396480, -0.454957,
		-0.445151, -0.895456, -0.000165,
		39.485229, 36.058575, 43.830204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087711, 36.797813, 44.090508>,  <39.796833, 36.685390, 43.830318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087711, 36.797813, 44.090508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204288, 36.421001, 44.156998>,  <39.274235, 36.194912, 44.196892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.204288, 36.421001, 44.156998>,  <39.087711, 36.797813, 44.090508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204288, 36.421001, 44.156998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085826, 0.147315, 0.985359,
		-0.952729, -0.301445, -0.037916,
		0.291446, -0.942034, 0.166223,
		39.291721, 36.138390, 44.206863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539886, 36.579769, 44.551174>,  <39.087711, 36.797813, 44.090508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539886, 36.579769, 44.551174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828156, 36.302822, 44.565384>,  <39.001118, 36.136654, 44.573910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828156, 36.302822, 44.565384>,  <38.539886, 36.579769, 44.551174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828156, 36.302822, 44.565384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218976, -0.178710, 0.959225,
		-0.657783, -0.699068, -0.280403,
		0.720674, -0.692363, 0.035527,
		39.044357, 36.095112, 44.576042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213085, 36.018475, 44.894970>,  <38.539886, 36.579769, 44.551174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213085, 36.018475, 44.894970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609940, 35.977970, 44.924374>,  <38.848053, 35.953667, 44.942017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.609940, 35.977970, 44.924374>,  <38.213085, 36.018475, 44.894970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609940, 35.977970, 44.924374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089228, -0.160658, 0.982969,
		-0.087725, -0.981802, -0.168430,
		0.992140, -0.101260, 0.073510,
		38.907581, 35.947590, 44.946426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315380, 35.615620, 45.426823>,  <38.213085, 36.018475, 44.894970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315380, 35.615620, 45.426823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.660381, 35.812920, 45.381584>,  <38.867382, 35.931297, 45.354439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.660381, 35.812920, 45.381584>,  <38.315380, 35.615620, 45.426823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660381, 35.812920, 45.381584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093959, 0.063516, 0.993548,
		0.497249, -0.867567, 0.008438,
		0.862505, 0.493248, -0.113099,
		38.919132, 35.960896, 45.347656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852306, 35.403465, 46.034912>,  <38.315380, 35.615620, 45.426823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852306, 35.403465, 46.034912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.040249, 35.727661, 45.895004>,  <39.153015, 35.922180, 45.811058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.040249, 35.727661, 45.895004>,  <38.852306, 35.403465, 46.034912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040249, 35.727661, 45.895004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298207, 0.227199, 0.927067,
		0.830845, -0.539896, -0.134942,
		0.469861, 0.810490, -0.349768,
		39.181206, 35.970806, 45.790073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574089, 35.421406, 46.365158>,  <38.852306, 35.403465, 46.034912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574089, 35.421406, 46.365158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483749, 35.782440, 46.218552>,  <39.429546, 35.999062, 46.130589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.483749, 35.782440, 46.218552>,  <39.574089, 35.421406, 46.365158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483749, 35.782440, 46.218552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432521, 0.430026, 0.792467,
		0.872880, 0.020450, -0.487507,
		-0.225846, 0.902585, -0.366516,
		39.415997, 36.053215, 46.108597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126480, 35.781517, 46.626270>,  <39.574089, 35.421406, 46.365158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126480, 35.781517, 46.626270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830597, 36.039463, 46.549343>,  <39.653069, 36.194229, 46.503189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830597, 36.039463, 46.549343>,  <40.126480, 35.781517, 46.626270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830597, 36.039463, 46.549343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221445, 0.503137, 0.835353,
		0.635450, 0.575329, -0.514976,
		-0.739706, 0.644864, -0.192315,
		39.608685, 36.232922, 46.491650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.805004, 36.996735, 46.366516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194527, 36.924000, 46.421124>,  <33.428242, 36.880360, 46.453888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194527, 36.924000, 46.421124>,  <32.805004, 36.996735, 46.366516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194527, 36.924000, 46.421124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188153, 0.307265, -0.932838,
		0.127680, 0.934089, 0.333431,
		0.973805, -0.181841, 0.136520,
		33.486668, 36.869446, 46.462078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161072, 37.517197, 46.032692>,  <32.805004, 36.996735, 46.366516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161072, 37.517197, 46.032692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438484, 37.235672, 46.094234>,  <33.604931, 37.066757, 46.131161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438484, 37.235672, 46.094234>,  <33.161072, 37.517197, 46.032692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438484, 37.235672, 46.094234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308424, 0.097056, -0.946285,
		0.651070, 0.703729, 0.284382,
		0.693529, -0.703808, 0.153857,
		33.646542, 37.024529, 46.140392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785114, 37.783398, 45.734039>,  <33.161072, 37.517197, 46.032692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785114, 37.783398, 45.734039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831955, 37.386150, 45.733746>,  <33.860058, 37.147800, 45.733570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831955, 37.386150, 45.733746>,  <33.785114, 37.783398, 45.734039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831955, 37.386150, 45.733746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288397, 0.034711, -0.956882,
		0.950324, 0.111836, 0.290477,
		0.117097, -0.993120, -0.000734,
		33.867085, 37.088215, 45.733524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453476, 37.683853, 45.518097>,  <33.785114, 37.783398, 45.734039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453476, 37.683853, 45.518097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276608, 37.331123, 45.452534>,  <34.170486, 37.119484, 45.413197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276608, 37.331123, 45.452534>,  <34.453476, 37.683853, 45.518097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276608, 37.331123, 45.452534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204088, 0.079030, -0.975757,
		0.873403, -0.464902, 0.145026,
		-0.442170, -0.881827, -0.163907,
		34.143955, 37.066574, 45.403362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968357, 37.256538, 45.088005>,  <34.453476, 37.683853, 45.518097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968357, 37.256538, 45.088005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596249, 37.114193, 45.052311>,  <34.372986, 37.028786, 45.030895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596249, 37.114193, 45.052311>,  <34.968357, 37.256538, 45.088005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596249, 37.114193, 45.052311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128320, -0.087728, -0.987845,
		0.343708, -0.930412, 0.127275,
		-0.930268, -0.355862, -0.089238,
		34.317169, 37.007435, 45.025539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081833, 36.672539, 44.687126>,  <34.968357, 37.256538, 45.088005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081833, 36.672539, 44.687126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697739, 36.774834, 44.642315>,  <34.467281, 36.836208, 44.615429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697739, 36.774834, 44.642315>,  <35.081833, 36.672539, 44.687126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697739, 36.774834, 44.642315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135499, 0.076012, -0.987857,
		-0.244112, -0.963754, -0.107641,
		-0.960234, 0.255733, -0.112033,
		34.409668, 36.851555, 44.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864094, 36.255188, 44.107403>,  <35.081833, 36.672539, 44.687126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864094, 36.255188, 44.107403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589264, 36.541481, 44.157459>,  <34.424366, 36.713257, 44.187492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589264, 36.541481, 44.157459>,  <34.864094, 36.255188, 44.107403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589264, 36.541481, 44.157459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042629, 0.132220, -0.990303,
		-0.725339, -0.685743, -0.060334,
		-0.687071, 0.715733, 0.125137,
		34.383144, 36.756203, 44.195000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460167, 36.108559, 43.600887>,  <34.864094, 36.255188, 44.107403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460167, 36.108559, 43.600887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348095, 36.482265, 43.689114>,  <34.280853, 36.706490, 43.742050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.348095, 36.482265, 43.689114>,  <34.460167, 36.108559, 43.600887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348095, 36.482265, 43.689114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236268, 0.155585, -0.959151,
		-0.930418, -0.320844, 0.177146,
		-0.280177, 0.934266, 0.220564,
		34.264042, 36.762547, 43.755283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752666, 36.189262, 43.398525>,  <34.460167, 36.108559, 43.600887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752666, 36.189262, 43.398525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904057, 36.556786, 43.443340>,  <33.994892, 36.777298, 43.470230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.904057, 36.556786, 43.443340>,  <33.752666, 36.189262, 43.398525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904057, 36.556786, 43.443340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180722, 0.192066, -0.964598,
		-0.907798, 0.344827, 0.238740,
		0.378474, 0.918806, 0.112040,
		34.017597, 36.832428, 43.476952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348457, 36.575939, 43.045399>,  <33.752666, 36.189262, 43.398525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348457, 36.575939, 43.045399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693920, 36.775257, 43.075882>,  <33.901196, 36.894848, 43.094173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.693920, 36.775257, 43.075882>,  <33.348457, 36.575939, 43.045399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693920, 36.775257, 43.075882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088839, 0.299281, -0.950020,
		-0.496196, 0.813718, 0.302743,
		0.863653, 0.498291, 0.076212,
		33.953014, 36.924744, 43.098747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245178, 37.212723, 42.749477>,  <33.348457, 36.575939, 43.045399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245178, 37.212723, 42.749477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642845, 37.175758, 42.727230>,  <33.881447, 37.153580, 42.713882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642845, 37.175758, 42.727230>,  <33.245178, 37.212723, 42.749477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642845, 37.175758, 42.727230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020643, 0.343132, -0.939060,
		0.105861, 0.934730, 0.339223,
		0.994167, -0.092407, -0.055620,
		33.941093, 37.148037, 42.710545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502003, 37.825287, 42.396122>,  <33.245178, 37.212723, 42.749477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502003, 37.825287, 42.396122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798901, 37.559113, 42.364445>,  <33.977039, 37.399406, 42.345436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798901, 37.559113, 42.364445>,  <33.502003, 37.825287, 42.396122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798901, 37.559113, 42.364445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095602, 0.222118, -0.970322,
		0.663279, 0.712641, 0.228482,
		0.742241, -0.665437, -0.079196,
		34.021572, 37.359482, 42.340687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148991, 38.173817, 42.213184>,  <33.502003, 37.825287, 42.396122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148991, 38.173817, 42.213184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166519, 37.789803, 42.102615>,  <34.177036, 37.559395, 42.036274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166519, 37.789803, 42.102615>,  <34.148991, 38.173817, 42.213184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166519, 37.789803, 42.102615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182964, 0.279716, -0.942487,
		0.982142, -0.009276, 0.187910,
		0.043819, -0.960038, -0.276418,
		34.179665, 37.501793, 42.019691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498318, 38.213665, 41.649197>,  <34.148991, 38.173817, 42.213184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498318, 38.213665, 41.649197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.365078, 37.838451, 41.610989>,  <34.285133, 37.613323, 41.588062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.365078, 37.838451, 41.610989>,  <34.498318, 38.213665, 41.649197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365078, 37.838451, 41.610989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087277, 0.131550, -0.987460,
		0.938842, -0.320590, -0.125689,
		-0.333104, -0.938039, -0.095525,
		34.265148, 37.557041, 41.582333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257385, 38.478016, 41.546307>,  <34.498318, 38.213665, 41.649197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257385, 38.478016, 41.546307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374821, 38.859131, 41.515312>,  <35.445282, 39.087799, 41.496716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374821, 38.859131, 41.515312>,  <35.257385, 38.478016, 41.546307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374821, 38.859131, 41.515312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191294, 0.137979, 0.971786,
		0.936597, -0.270478, 0.222771,
		0.293585, 0.952787, -0.077490,
		35.462894, 39.144966, 41.492065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550316, 38.591618, 42.181183>,  <35.257385, 38.478016, 41.546307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550316, 38.591618, 42.181183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.502861, 38.968452, 42.055710>,  <35.474388, 39.194553, 41.980427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.502861, 38.968452, 42.055710>,  <35.550316, 38.591618, 42.181183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502861, 38.968452, 42.055710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280327, 0.271283, 0.920773,
		0.952545, 0.197168, 0.231909,
		-0.118634, 0.942088, -0.313681,
		35.467270, 39.251080, 41.961605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020634, 38.974274, 42.540627>,  <35.550316, 38.591618, 42.181183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020634, 38.974274, 42.540627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722591, 39.220375, 42.437653>,  <35.543766, 39.368034, 42.375866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722591, 39.220375, 42.437653>,  <36.020634, 38.974274, 42.540627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722591, 39.220375, 42.437653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128317, 0.246541, 0.960600,
		0.654482, 0.748786, -0.104753,
		-0.745109, 0.615254, -0.257439,
		35.499058, 39.404953, 42.360420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094177, 39.653080, 42.949944>,  <36.020634, 38.974274, 42.540627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094177, 39.653080, 42.949944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717152, 39.643227, 42.816704>,  <35.490936, 39.637314, 42.736759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.717152, 39.643227, 42.816704>,  <36.094177, 39.653080, 42.949944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717152, 39.643227, 42.816704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328171, 0.253988, 0.909832,
		0.062192, 0.966894, -0.247486,
		-0.942569, -0.024633, -0.333103,
		35.434380, 39.635838, 42.716774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847462, 40.187370, 43.310516>,  <36.094177, 39.653080, 42.949944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847462, 40.187370, 43.310516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507233, 40.026455, 43.175056>,  <35.303093, 39.929905, 43.093781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507233, 40.026455, 43.175056>,  <35.847462, 40.187370, 43.310516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507233, 40.026455, 43.175056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414066, 0.115399, 0.902902,
		-0.324145, 0.908212, -0.264729,
		-0.850576, -0.402286, -0.338653,
		35.252060, 39.905769, 43.073460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188919, 40.655231, 43.458656>,  <35.847462, 40.187370, 43.310516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188919, 40.655231, 43.458656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048252, 40.284405, 43.406689>,  <34.963852, 40.061909, 43.375507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048252, 40.284405, 43.406689>,  <35.188919, 40.655231, 43.458656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048252, 40.284405, 43.406689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461030, 0.050730, 0.885933,
		-0.814727, 0.371453, -0.445245,
		-0.351670, -0.927065, -0.129920,
		34.942753, 40.006287, 43.367714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473923, 40.711697, 43.730724>,  <35.188919, 40.655231, 43.458656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473923, 40.711697, 43.730724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584221, 40.327206, 43.731907>,  <34.650398, 40.096512, 43.732616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584221, 40.327206, 43.731907>,  <34.473923, 40.711697, 43.730724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584221, 40.327206, 43.731907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427958, -0.120011, 0.895796,
		-0.860708, -0.248274, -0.444457,
		0.275742, -0.961227, 0.002956,
		34.666943, 40.038837, 43.732792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927586, 40.389175, 44.064106>,  <34.473923, 40.711697, 43.730724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927586, 40.389175, 44.064106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.233517, 40.133141, 44.093304>,  <34.417076, 39.979519, 44.110825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.233517, 40.133141, 44.093304>,  <33.927586, 40.389175, 44.064106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233517, 40.133141, 44.093304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221024, -0.154276, 0.962989,
		-0.605133, -0.752656, -0.259469,
		0.764829, -0.640085, 0.072997,
		34.462967, 39.941116, 44.115204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738373, 39.753166, 44.570019>,  <33.927586, 40.389175, 44.064106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738373, 39.753166, 44.570019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138027, 39.738266, 44.577469>,  <34.377819, 39.729328, 44.581940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138027, 39.738266, 44.577469>,  <33.738373, 39.753166, 44.570019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138027, 39.738266, 44.577469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025250, -0.186225, 0.982183,
		-0.033114, -0.981801, -0.187003,
		0.999132, -0.037246, 0.018624,
		34.437767, 39.727093, 44.583057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820087, 39.137772, 44.993805>,  <33.738373, 39.753166, 44.570019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820087, 39.137772, 44.993805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177975, 39.316021, 45.005817>,  <34.392708, 39.422970, 45.013027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177975, 39.316021, 45.005817>,  <33.820087, 39.137772, 44.993805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177975, 39.316021, 45.005817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034692, -0.136384, 0.990048,
		0.445289, -0.884769, -0.137484,
		0.894715, 0.445627, 0.030036,
		34.446388, 39.449711, 45.014828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317142, 38.684181, 45.428173>,  <33.820087, 39.137772, 44.993805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317142, 38.684181, 45.428173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465816, 39.055408, 45.418896>,  <34.555019, 39.278145, 45.413330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.465816, 39.055408, 45.418896>,  <34.317142, 38.684181, 45.428173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465816, 39.055408, 45.418896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149944, -0.035358, 0.988062,
		0.916169, -0.370727, -0.152301,
		0.371686, 0.928069, -0.023195,
		34.577324, 39.333828, 45.411938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917366, 38.614666, 45.818623>,  <34.317142, 38.684181, 45.428173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917366, 38.614666, 45.818623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838329, 39.006420, 45.835415>,  <34.790909, 39.241474, 45.845490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.838329, 39.006420, 45.835415>,  <34.917366, 38.614666, 45.818623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838329, 39.006420, 45.835415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107105, -0.020995, 0.994026,
		0.974416, 0.200903, -0.100749,
		-0.197588, 0.979386, 0.041976,
		34.779053, 39.300236, 45.848007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420052, 38.944984, 46.292587>,  <34.917366, 38.614666, 45.818623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420052, 38.944984, 46.292587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157421, 39.246445, 46.280392>,  <34.999844, 39.427319, 46.273075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.157421, 39.246445, 46.280392>,  <35.420052, 38.944984, 46.292587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157421, 39.246445, 46.280392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077851, 0.107918, 0.991107,
		0.750235, 0.648359, -0.129529,
		-0.656572, 0.753647, -0.030489,
		34.960449, 39.472538, 46.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672215, 39.546860, 46.730713>,  <35.420052, 38.944984, 46.292587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672215, 39.546860, 46.730713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272671, 39.563210, 46.720825>,  <35.032944, 39.573021, 46.714893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272671, 39.563210, 46.720825>,  <35.672215, 39.546860, 46.730713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272671, 39.563210, 46.720825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020204, 0.107464, 0.994004,
		0.043288, 0.993368, -0.106515,
		-0.998858, 0.040876, -0.024722,
		34.973015, 39.575474, 46.713409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125153, 40.155342, 46.750389>,  <35.672215, 39.546860, 46.730713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125153, 40.155342, 46.750389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487633, 39.991398, 46.791992>,  <36.705120, 39.893028, 46.816952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487633, 39.991398, 46.791992>,  <36.125153, 40.155342, 46.750389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487633, 39.991398, 46.791992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074032, -0.088380, -0.993332,
		0.416324, 0.907854, -0.049747,
		0.906197, -0.409865, 0.104005,
		36.759491, 39.868439, 46.823193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460228, 40.431667, 46.178329>,  <36.125153, 40.155342, 46.750389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460228, 40.431667, 46.178329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.673885, 40.114681, 46.296104>,  <36.802082, 39.924492, 46.366768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.673885, 40.114681, 46.296104>,  <36.460228, 40.431667, 46.178329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673885, 40.114681, 46.296104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162023, -0.245867, -0.955666,
		0.829721, 0.558171, -0.002933,
		0.534146, -0.792461, 0.294437,
		36.834129, 39.876942, 46.384438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242588, 40.547935, 45.869705>,  <36.460228, 40.431667, 46.178329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242588, 40.547935, 45.869705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.171982, 40.160992, 45.942429>,  <37.129620, 39.928825, 45.986065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.171982, 40.160992, 45.942429>,  <37.242588, 40.547935, 45.869705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171982, 40.160992, 45.942429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380956, -0.237457, -0.893581,
		0.907588, -0.088466, 0.410436,
		-0.176512, -0.967361, 0.181811,
		37.119026, 39.870785, 45.996971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808060, 40.180771, 45.672604>,  <37.242588, 40.547935, 45.869705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808060, 40.180771, 45.672604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540154, 39.884331, 45.691277>,  <37.379410, 39.706467, 45.702480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540154, 39.884331, 45.691277>,  <37.808060, 40.180771, 45.672604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540154, 39.884331, 45.691277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402024, -0.414745, -0.816311,
		0.624328, -0.527974, 0.575724,
		-0.669770, -0.741100, 0.046679,
		37.339222, 39.661999, 45.705280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143753, 39.582874, 45.591831>,  <37.808060, 40.180771, 45.672604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143753, 39.582874, 45.591831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.766144, 39.490273, 45.497829>,  <37.539577, 39.434711, 45.441429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.766144, 39.490273, 45.497829>,  <38.143753, 39.582874, 45.591831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766144, 39.490273, 45.497829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312999, -0.403599, -0.859732,
		0.104186, -0.885162, 0.453468,
		-0.944022, -0.231507, -0.235005,
		37.482937, 39.420822, 45.427326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054024, 38.895844, 45.486320>,  <38.143753, 39.582874, 45.591831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054024, 38.895844, 45.486320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754978, 39.061787, 45.278870>,  <37.575550, 39.161350, 45.154400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754978, 39.061787, 45.278870>,  <38.054024, 38.895844, 45.486320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754978, 39.061787, 45.278870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345338, -0.424197, -0.837138,
		-0.567290, -0.804955, 0.173869,
		-0.747613, 0.414856, -0.518624,
		37.530693, 39.186245, 45.123283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017906, 38.535816, 44.859795>,  <38.054024, 38.895844, 45.486320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017906, 38.535816, 44.859795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848473, 38.892693, 44.797096>,  <37.746815, 39.106819, 44.759476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848473, 38.892693, 44.797096>,  <38.017906, 38.535816, 44.859795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848473, 38.892693, 44.797096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422985, 0.041790, -0.905172,
		-0.801038, -0.449716, -0.395086,
		-0.423581, 0.892193, -0.156748,
		37.721397, 39.160351, 44.750072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055191, 38.567497, 44.177971>,  <38.017906, 38.535816, 44.859795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055191, 38.567497, 44.177971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880138, 38.918564, 44.256130>,  <37.775108, 39.129204, 44.303028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880138, 38.918564, 44.256130>,  <38.055191, 38.567497, 44.177971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880138, 38.918564, 44.256130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264766, 0.333466, -0.904820,
		-0.859291, -0.344238, -0.378311,
		-0.437627, 0.877668, 0.195402,
		37.748852, 39.181866, 44.314751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519947, 38.574440, 43.730080>,  <38.055191, 38.567497, 44.177971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519947, 38.574440, 43.730080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.671383, 38.932476, 43.824303>,  <37.762245, 39.147297, 43.880836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.671383, 38.932476, 43.824303>,  <37.519947, 38.574440, 43.730080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671383, 38.932476, 43.824303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026292, 0.244000, -0.969419,
		-0.925192, 0.373203, 0.068842,
		0.378587, 0.895089, 0.235559,
		37.784958, 39.201004, 43.894970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193134, 39.024155, 43.254719>,  <37.519947, 38.574440, 43.730080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193134, 39.024155, 43.254719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489300, 39.249561, 43.401268>,  <37.667000, 39.384808, 43.489197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489300, 39.249561, 43.401268>,  <37.193134, 39.024155, 43.254719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489300, 39.249561, 43.401268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244289, 0.282191, -0.927734,
		-0.626184, 0.776410, 0.071277,
		0.740417, 0.563520, 0.366372,
		37.711426, 39.418617, 43.511181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176895, 39.710239, 42.873394>,  <37.193134, 39.024155, 43.254719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176895, 39.710239, 42.873394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531738, 39.661076, 43.051350>,  <37.744644, 39.631577, 43.158123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531738, 39.661076, 43.051350>,  <37.176895, 39.710239, 42.873394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531738, 39.661076, 43.051350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459629, 0.323180, -0.827222,
		-0.042103, 0.938322, 0.343191,
		0.887112, -0.122912, 0.444887,
		37.797871, 39.624203, 43.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543022, 40.270313, 42.649155>,  <37.176895, 39.710239, 42.873394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543022, 40.270313, 42.649155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817181, 40.006241, 42.772049>,  <37.981674, 39.847797, 42.845787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817181, 40.006241, 42.772049>,  <37.543022, 40.270313, 42.649155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817181, 40.006241, 42.772049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487817, 0.103033, -0.866844,
		0.540617, 0.744008, 0.392664,
		0.685397, -0.660179, 0.307239,
		38.022800, 39.808186, 42.864220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149559, 40.666370, 42.499817>,  <37.543022, 40.270313, 42.649155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149559, 40.666370, 42.499817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233494, 40.276608, 42.532066>,  <38.283855, 40.042751, 42.551418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233494, 40.276608, 42.532066>,  <38.149559, 40.666370, 42.499817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233494, 40.276608, 42.532066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585481, 0.059178, -0.808523,
		0.783060, 0.216860, 0.582915,
		0.209833, -0.974407, 0.080627,
		38.296444, 39.984283, 42.556255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897358, 40.541763, 42.473324>,  <38.149559, 40.666370, 42.499817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897358, 40.541763, 42.473324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740517, 40.189491, 42.366997>,  <38.646412, 39.978130, 42.303200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740517, 40.189491, 42.366997>,  <38.897358, 40.541763, 42.473324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740517, 40.189491, 42.366997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657032, -0.065857, -0.750980,
		0.643866, -0.469115, 0.604457,
		-0.392104, -0.880678, -0.265820,
		38.622887, 39.925289, 42.287251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.542414, 27.375359, 34.601669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537617, 27.266586, 34.986565>,  <26.534739, 27.201323, 35.217503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.537617, 27.266586, 34.986565>,  <26.542414, 27.375359, 34.601669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537617, 27.266586, 34.986565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327495, 0.908166, 0.260731,
		-0.944777, 0.318256, 0.078164,
		-0.011993, -0.271931, 0.962242,
		26.534019, 27.185007, 35.275238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173096, 27.820398, 34.896267>,  <26.542414, 27.375359, 34.601669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173096, 27.820398, 34.896267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.404411, 27.675255, 35.188545>,  <26.543201, 27.588169, 35.363911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.404411, 27.675255, 35.188545>,  <26.173096, 27.820398, 34.896267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404411, 27.675255, 35.188545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327293, 0.923596, 0.199625,
		-0.747302, 0.123710, 0.652866,
		0.578289, -0.362859, 0.730695,
		26.577898, 27.566397, 35.407753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963266, 28.191174, 35.428364>,  <26.173096, 27.820398, 34.896267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963266, 28.191174, 35.428364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329830, 28.053253, 35.509663>,  <26.549768, 27.970501, 35.558441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329830, 28.053253, 35.509663>,  <25.963266, 28.191174, 35.428364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329830, 28.053253, 35.509663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289788, 0.921860, 0.257288,
		-0.276077, -0.176883, 0.944719,
		0.916408, -0.344799, 0.203246,
		26.604753, 27.949814, 35.570637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120789, 28.579748, 36.017281>,  <25.963266, 28.191174, 35.428364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120789, 28.579748, 36.017281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453573, 28.454910, 35.833786>,  <26.653244, 28.380007, 35.723690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.453573, 28.454910, 35.833786>,  <26.120789, 28.579748, 36.017281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453573, 28.454910, 35.833786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431602, 0.883593, 0.181614,
		0.348652, -0.349086, 0.869816,
		0.831962, -0.312094, -0.458733,
		26.703161, 28.361282, 35.696167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646616, 28.894089, 36.339115>,  <26.120789, 28.579748, 36.017281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646616, 28.894089, 36.339115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828289, 28.788769, 35.998669>,  <26.937292, 28.725576, 35.794403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828289, 28.788769, 35.998669>,  <26.646616, 28.894089, 36.339115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828289, 28.788769, 35.998669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441642, 0.896227, -0.041580,
		0.773738, -0.357003, 0.523334,
		0.454182, -0.263298, -0.851113,
		26.964544, 28.709780, 35.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247292, 29.326967, 36.317429>,  <26.646616, 28.894089, 36.339115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247292, 29.326967, 36.317429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218430, 29.183067, 35.945328>,  <27.201113, 29.096727, 35.722065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218430, 29.183067, 35.945328>,  <27.247292, 29.326967, 36.317429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218430, 29.183067, 35.945328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355562, 0.862129, -0.360983,
		0.931863, -0.356810, 0.065707,
		-0.072154, -0.359750, -0.930255,
		27.196783, 29.075142, 35.666252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899023, 29.555351, 36.081486>,  <27.247292, 29.326967, 36.317429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899023, 29.555351, 36.081486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665638, 29.460630, 35.770744>,  <27.525608, 29.403797, 35.584301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665638, 29.460630, 35.770744>,  <27.899023, 29.555351, 36.081486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665638, 29.460630, 35.770744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242996, 0.861824, -0.445210,
		0.774935, -0.448535, -0.445300,
		-0.583462, -0.236803, -0.776850,
		27.490599, 29.389589, 35.537689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251423, 29.710585, 35.455425>,  <27.899023, 29.555351, 36.081486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251423, 29.710585, 35.455425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861191, 29.718040, 35.367882>,  <27.627052, 29.722513, 35.315357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861191, 29.718040, 35.367882>,  <28.251423, 29.710585, 35.455425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861191, 29.718040, 35.367882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138522, 0.825471, -0.547183,
		0.170461, -0.564136, -0.807894,
		-0.975579, 0.018637, -0.218856,
		27.568518, 29.723631, 35.302223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237411, 29.882515, 34.820305>,  <28.251423, 29.710585, 35.455425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237411, 29.882515, 34.820305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860695, 29.973345, 34.919472>,  <27.634665, 30.027843, 34.978973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860695, 29.973345, 34.919472>,  <28.237411, 29.882515, 34.820305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860695, 29.973345, 34.919472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060380, 0.839678, -0.539717,
		-0.330726, -0.493333, -0.804514,
		-0.941793, 0.227075, 0.247916,
		27.578157, 30.041468, 34.993847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974001, 30.069321, 34.209072>,  <28.237411, 29.882515, 34.820305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974001, 30.069321, 34.209072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739475, 30.219080, 34.496422>,  <27.598761, 30.308935, 34.668831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.739475, 30.219080, 34.496422>,  <27.974001, 30.069321, 34.209072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739475, 30.219080, 34.496422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002376, 0.887581, -0.460646,
		-0.810080, -0.268377, -0.521291,
		-0.586315, 0.374399, 0.718374,
		27.563581, 30.331400, 34.711933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412291, 30.449572, 33.901501>,  <27.974001, 30.069321, 34.209072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412291, 30.449572, 33.901501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458246, 30.588852, 34.273643>,  <27.485819, 30.672421, 34.496929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458246, 30.588852, 34.273643>,  <27.412291, 30.449572, 33.901501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458246, 30.588852, 34.273643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043001, 0.937420, -0.345536,
		-0.992447, -0.000307, 0.122673,
		0.114890, 0.348201, 0.930353,
		27.492714, 30.693312, 34.552750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020405, 31.061222, 33.912228>,  <27.412291, 30.449572, 33.901501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020405, 31.061222, 33.912228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241076, 31.124069, 34.239880>,  <27.373478, 31.161777, 34.436470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241076, 31.124069, 34.239880>,  <27.020405, 31.061222, 33.912228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241076, 31.124069, 34.239880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124382, 0.955617, -0.267069,
		-0.824731, 0.249220, 0.507649,
		0.551677, 0.157118, 0.819125,
		27.406578, 31.171204, 34.485619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792612, 31.745209, 34.177917>,  <27.020405, 31.061222, 33.912228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792612, 31.745209, 34.177917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141771, 31.662745, 34.354801>,  <27.351267, 31.613266, 34.460930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141771, 31.662745, 34.354801>,  <26.792612, 31.745209, 34.177917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141771, 31.662745, 34.354801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349898, 0.896160, -0.272890,
		-0.340027, 0.392932, 0.854392,
		0.872899, -0.206160, 0.442205,
		27.403641, 31.600897, 34.487461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930140, 32.327171, 34.519329>,  <26.792612, 31.745209, 34.177917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930140, 32.327171, 34.519329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279625, 32.138931, 34.470078>,  <27.489315, 32.025986, 34.440525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.279625, 32.138931, 34.470078>,  <26.930140, 32.327171, 34.519329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279625, 32.138931, 34.470078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456941, 0.880804, -0.124049,
		0.166829, 0.052121, 0.984607,
		0.873712, -0.470603, -0.123127,
		27.541739, 31.997751, 34.433140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368902, 32.662746, 34.936195>,  <26.930140, 32.327171, 34.519329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368902, 32.662746, 34.936195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592682, 32.478638, 34.660465>,  <27.726950, 32.368172, 34.495026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592682, 32.478638, 34.660465>,  <27.368902, 32.662746, 34.936195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592682, 32.478638, 34.660465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565968, 0.819717, -0.088002,
		0.605555, -0.340903, 0.719088,
		0.559449, -0.460271, -0.689324,
		27.760517, 32.340557, 34.453667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090008, 32.832596, 35.051979>,  <27.368902, 32.662746, 34.936195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090008, 32.832596, 35.051979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052111, 32.719448, 34.670193>,  <28.029373, 32.651558, 34.441120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052111, 32.719448, 34.670193>,  <28.090008, 32.832596, 35.051979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052111, 32.719448, 34.670193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608996, 0.741978, -0.280345,
		0.787494, -0.607828, 0.101968,
		-0.094743, -0.282868, -0.954468,
		28.023687, 32.634586, 34.383854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611551, 33.321888, 34.753201>,  <28.090008, 32.832596, 35.051979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611551, 33.321888, 34.753201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438507, 33.135334, 34.444569>,  <28.334681, 33.023399, 34.259392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438507, 33.135334, 34.444569>,  <28.611551, 33.321888, 34.753201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438507, 33.135334, 34.444569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546808, 0.544707, -0.635842,
		0.716832, -0.696976, 0.019378,
		-0.432611, -0.466388, -0.771576,
		28.308723, 32.995419, 34.213097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120306, 32.965469, 34.360626>,  <28.611551, 33.321888, 34.753201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120306, 32.965469, 34.360626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803541, 33.096680, 34.154606>,  <28.613482, 33.175404, 34.030994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803541, 33.096680, 34.154606>,  <29.120306, 32.965469, 34.360626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803541, 33.096680, 34.154606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567368, 0.707102, -0.422020,
		0.225757, -0.626424, -0.746074,
		-0.791914, 0.328024, -0.515046,
		28.565968, 33.195087, 34.000092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757650, 33.323162, 34.066055>,  <29.120306, 32.965469, 34.360626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757650, 33.323162, 34.066055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956596, 33.465740, 34.382427>,  <30.075964, 33.551289, 34.572250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956596, 33.465740, 34.382427>,  <29.757650, 33.323162, 34.066055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956596, 33.465740, 34.382427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299957, -0.926121, 0.228748,
		0.814034, 0.123474, -0.567540,
		0.497367, 0.356446, 0.790931,
		30.105806, 33.572674, 34.619705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383383, 32.844925, 34.227112>,  <29.757650, 33.323162, 34.066055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383383, 32.844925, 34.227112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281073, 33.058292, 34.549614>,  <30.219687, 33.186314, 34.743114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281073, 33.058292, 34.549614>,  <30.383383, 32.844925, 34.227112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281073, 33.058292, 34.549614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054838, -0.824646, 0.562985,
		0.965179, 0.188211, 0.181674,
		-0.255777, 0.533419, 0.806253,
		30.204340, 33.218319, 34.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841959, 32.503876, 34.754078>,  <30.383383, 32.844925, 34.227112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841959, 32.503876, 34.754078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.559074, 32.712124, 34.945412>,  <30.389343, 32.837074, 35.060211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.559074, 32.712124, 34.945412>,  <30.841959, 32.503876, 34.754078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559074, 32.712124, 34.945412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073763, -0.727209, 0.682442,
		0.703146, 0.447346, 0.552692,
		-0.707210, 0.520624, 0.478336,
		30.346912, 32.868313, 35.088913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019222, 32.522636, 35.480602>,  <30.841959, 32.503876, 34.754078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019222, 32.522636, 35.480602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624825, 32.589203, 35.485062>,  <30.388186, 32.629143, 35.487740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624825, 32.589203, 35.485062>,  <31.019222, 32.522636, 35.480602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624825, 32.589203, 35.485062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116086, -0.732747, 0.670527,
		0.119756, 0.659840, 0.741802,
		-0.985993, 0.166412, 0.011153,
		30.329027, 32.639126, 35.488407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805223, 32.500462, 36.233192>,  <31.019222, 32.522636, 35.480602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805223, 32.500462, 36.233192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471962, 32.459717, 36.015759>,  <30.272005, 32.435272, 35.885300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.471962, 32.459717, 36.015759>,  <30.805223, 32.500462, 36.233192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471962, 32.459717, 36.015759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261081, -0.794032, 0.548953,
		-0.487538, 0.599280, 0.634956,
		-0.833153, -0.101860, -0.543582,
		30.222015, 32.429157, 35.852684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152269, 32.555046, 36.606289>,  <30.805223, 32.500462, 36.233192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152269, 32.555046, 36.606289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086483, 32.312439, 36.295139>,  <30.047010, 32.166874, 36.108448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086483, 32.312439, 36.295139>,  <30.152269, 32.555046, 36.606289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086483, 32.312439, 36.295139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318475, -0.713724, 0.623836,
		-0.933555, 0.350333, -0.075778,
		-0.164466, -0.606519, -0.777873,
		30.037144, 32.130482, 36.061779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536705, 32.119316, 36.829540>,  <30.152269, 32.555046, 36.606289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536705, 32.119316, 36.829540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676544, 31.957937, 36.491306>,  <29.760448, 31.861111, 36.288364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.676544, 31.957937, 36.491306>,  <29.536705, 32.119316, 36.829540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676544, 31.957937, 36.491306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149496, -0.914992, 0.374755,
		-0.924896, -0.004601, -0.380192,
		0.349597, -0.403447, -0.845584,
		29.781424, 31.836903, 36.237633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028883, 31.571268, 36.577343>,  <29.536705, 32.119316, 36.829540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028883, 31.571268, 36.577343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.372282, 31.476961, 36.395180>,  <29.578321, 31.420378, 36.285881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.372282, 31.476961, 36.395180>,  <29.028883, 31.571268, 36.577343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372282, 31.476961, 36.395180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074356, -0.935895, 0.344343,
		-0.507402, -0.261754, -0.820992,
		0.858495, -0.235766, -0.455412,
		29.629831, 31.406231, 36.258556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863384, 30.958023, 36.301304>,  <29.028883, 31.571268, 36.577343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863384, 30.958023, 36.301304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262669, 30.963726, 36.324543>,  <29.502239, 30.967148, 36.338486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262669, 30.963726, 36.324543>,  <28.863384, 30.958023, 36.301304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262669, 30.963726, 36.324543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012006, -0.903668, 0.428066,
		0.058603, -0.427997, -0.901878,
		0.998209, 0.014258, 0.058096,
		29.562132, 30.968004, 36.341972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078035, 30.395241, 36.035046>,  <28.863384, 30.958023, 36.301304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078035, 30.395241, 36.035046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391575, 30.493242, 36.263275>,  <29.579699, 30.552042, 36.400215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391575, 30.493242, 36.263275>,  <29.078035, 30.395241, 36.035046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391575, 30.493242, 36.263275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023677, -0.929996, 0.366807,
		0.620502, -0.274012, -0.734776,
		0.783848, 0.245002, 0.570576,
		29.626730, 30.566742, 36.434448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645771, 29.891392, 35.964184>,  <29.078035, 30.395241, 36.035046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645771, 29.891392, 35.964184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.715965, 30.049576, 36.324810>,  <29.758081, 30.144487, 36.541183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.715965, 30.049576, 36.324810>,  <29.645771, 29.891392, 35.964184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715965, 30.049576, 36.324810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297024, -0.894367, 0.334491,
		0.938606, 0.209087, -0.274410,
		0.175486, 0.395461, 0.901563,
		29.768612, 30.168215, 36.595280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166481, 29.543991, 36.137146>,  <29.645771, 29.891392, 35.964184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166481, 29.543991, 36.137146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.012751, 29.691389, 36.475731>,  <29.920513, 29.779827, 36.678883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.012751, 29.691389, 36.475731>,  <30.166481, 29.543991, 36.137146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012751, 29.691389, 36.475731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183544, -0.868083, 0.461240,
		0.904769, 0.332630, 0.265990,
		-0.384324, 0.368495, 0.846467,
		29.897453, 29.801937, 36.729671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582094, 29.183565, 36.692322>,  <30.166481, 29.543991, 36.137146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582094, 29.183565, 36.692322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250013, 29.324242, 36.865330>,  <30.050764, 29.408648, 36.969135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250013, 29.324242, 36.865330>,  <30.582094, 29.183565, 36.692322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250013, 29.324242, 36.865330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070063, -0.703898, 0.706837,
		0.553041, 0.617122, 0.559738,
		-0.830203, 0.351693, 0.432522,
		30.000952, 29.429749, 36.995087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751471, 29.062666, 37.360500>,  <30.582094, 29.183565, 36.692322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751471, 29.062666, 37.360500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.352938, 29.095942, 37.352497>,  <30.113817, 29.115906, 37.347694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.352938, 29.095942, 37.352497>,  <30.751471, 29.062666, 37.360500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352938, 29.095942, 37.352497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077307, -0.775056, 0.627146,
		0.036664, 0.626393, 0.778645,
		-0.996333, 0.083188, -0.020008,
		30.054037, 29.120897, 37.346497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360390, 28.832720, 37.975143>,  <30.751471, 29.062666, 37.360500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360390, 28.832720, 37.975143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037415, 28.827818, 37.739212>,  <29.843630, 28.824877, 37.597652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037415, 28.827818, 37.739212>,  <30.360390, 28.832720, 37.975143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037415, 28.827818, 37.739212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228388, -0.915334, 0.331665,
		-0.543953, 0.402508, 0.736275,
		-0.807436, -0.012254, -0.589827,
		29.795183, 28.824142, 37.562263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815458, 28.663332, 38.396137>,  <30.360390, 28.832720, 37.975143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815458, 28.663332, 38.396137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661388, 28.570978, 38.038738>,  <29.568947, 28.515566, 37.824299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661388, 28.570978, 38.038738>,  <29.815458, 28.663332, 38.396137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661388, 28.570978, 38.038738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334576, -0.867387, 0.368373,
		-0.860057, 0.440830, 0.256847,
		-0.385175, -0.230887, -0.893494,
		29.545835, 28.501713, 37.770691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019703, 28.466011, 38.431896>,  <29.815458, 28.663332, 38.396137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019703, 28.466011, 38.431896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160990, 28.286560, 38.103512>,  <29.245762, 28.178888, 37.906483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160990, 28.286560, 38.103512>,  <29.019703, 28.466011, 38.431896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160990, 28.286560, 38.103512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619551, -0.769692, 0.154051,
		-0.700995, 0.454211, -0.549816,
		0.353217, -0.448628, -0.820957,
		29.266954, 28.151972, 37.857224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317717, 28.176559, 38.174637>,  <29.019703, 28.466011, 38.431896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317717, 28.176559, 38.174637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611742, 27.972574, 37.995926>,  <28.788158, 27.850183, 37.888699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611742, 27.972574, 37.995926>,  <28.317717, 28.176559, 38.174637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611742, 27.972574, 37.995926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389661, -0.857029, 0.337142,
		-0.554836, -0.073728, -0.828687,
		0.735066, -0.509965, -0.446782,
		28.832262, 27.819584, 37.861893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070408, 27.729214, 37.595436>,  <28.317717, 28.176559, 38.174637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070408, 27.729214, 37.595436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404335, 27.543467, 37.713718>,  <28.604692, 27.432018, 37.784687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404335, 27.543467, 37.713718>,  <28.070408, 27.729214, 37.595436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404335, 27.543467, 37.713718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499052, -0.865107, 0.050361,
		0.232429, -0.189614, -0.953951,
		0.834820, -0.464366, 0.295703,
		28.654781, 27.404158, 37.802429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053190, 27.117060, 37.258560>,  <28.070408, 27.729214, 37.595436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053190, 27.117060, 37.258560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336498, 27.072886, 37.537460>,  <28.506483, 27.046381, 37.704800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336498, 27.072886, 37.537460>,  <28.053190, 27.117060, 37.258560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336498, 27.072886, 37.537460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347111, -0.914523, 0.207751,
		0.614707, -0.389167, -0.686065,
		0.708272, -0.110435, 0.697248,
		28.548981, 27.039755, 37.746635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330076, 26.541237, 37.107513>,  <28.053190, 27.117060, 37.258560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330076, 26.541237, 37.107513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451847, 26.608910, 37.482471>,  <28.524910, 26.649513, 37.707447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451847, 26.608910, 37.482471>,  <28.330076, 26.541237, 37.107513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451847, 26.608910, 37.482471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260750, -0.931710, 0.252837,
		0.916152, -0.321395, -0.239524,
		0.304427, 0.169181, 0.937391,
		28.543175, 26.659664, 37.763687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630259, 25.854883, 37.328915>,  <28.330076, 26.541237, 37.107513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630259, 25.854883, 37.328915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561438, 26.063921, 37.662930>,  <28.520145, 26.189342, 37.863338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.561438, 26.063921, 37.662930>,  <28.630259, 25.854883, 37.328915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561438, 26.063921, 37.662930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415473, -0.807095, 0.419499,
		0.893185, -0.274761, 0.355986,
		-0.172053, 0.522593, 0.835042,
		28.509821, 26.220699, 37.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788435, 25.428713, 37.798683>,  <28.630259, 25.854883, 37.328915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788435, 25.428713, 37.798683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562479, 25.693516, 37.995720>,  <28.426905, 25.852398, 38.113941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562479, 25.693516, 37.995720>,  <28.788435, 25.428713, 37.798683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562479, 25.693516, 37.995720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411650, -0.743458, 0.527081,
		0.715151, 0.094968, 0.692488,
		-0.564892, 0.662005, 0.492591,
		28.393011, 25.892117, 38.143497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843899, 25.280127, 38.566208>,  <28.788435, 25.428713, 37.798683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843899, 25.280127, 38.566208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.504648, 25.482248, 38.502522>,  <28.301098, 25.603521, 38.464310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.504648, 25.482248, 38.502522>,  <28.843899, 25.280127, 38.566208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504648, 25.482248, 38.502522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525098, -0.761820, 0.379346,
		0.070389, 0.405339, 0.911453,
		-0.848126, 0.505303, -0.159219,
		28.250210, 25.633839, 38.454754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.454056, 36.709011, 46.855736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054920, 36.709221, 46.829483>,  <39.815437, 36.709347, 46.813732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054920, 36.709221, 46.829483>,  <40.454056, 36.709011, 46.855736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054920, 36.709221, 46.829483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062004, 0.320533, 0.945206,
		0.021536, 0.947237, -0.319809,
		-0.997844, 0.000526, -0.065635,
		39.755566, 36.709377, 46.809792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233906, 37.291023, 47.107174>,  <40.454056, 36.709011, 46.855736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233906, 37.291023, 47.107174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871891, 37.122581, 47.131100>,  <39.654682, 37.021515, 47.145454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871891, 37.122581, 47.131100>,  <40.233906, 37.291023, 47.107174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871891, 37.122581, 47.131100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196264, 0.538237, 0.819623,
		-0.377343, 0.730049, -0.569772,
		-0.905037, -0.421105, 0.059817,
		39.600380, 36.996250, 47.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719818, 37.783623, 47.251740>,  <40.233906, 37.291023, 47.107174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719818, 37.783623, 47.251740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579010, 37.453251, 47.427887>,  <39.494526, 37.255028, 47.533577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579010, 37.453251, 47.427887>,  <39.719818, 37.783623, 47.251740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579010, 37.453251, 47.427887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322751, 0.548740, 0.771179,
		-0.878586, 0.129342, -0.459737,
		-0.352022, -0.825927, 0.440370,
		39.473404, 37.205471, 47.559998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998634, 38.010799, 47.558899>,  <39.719818, 37.783623, 47.251740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998634, 38.010799, 47.558899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.118229, 37.670490, 47.731781>,  <39.189987, 37.466305, 47.835510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.118229, 37.670490, 47.731781>,  <38.998634, 38.010799, 47.558899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118229, 37.670490, 47.731781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362434, 0.317741, 0.876175,
		-0.882751, -0.418610, -0.213347,
		0.298986, -0.850768, 0.432204,
		39.207924, 37.415260, 47.861443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411816, 37.667423, 47.907841>,  <38.998634, 38.010799, 47.558899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411816, 37.667423, 47.907841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732849, 37.520309, 48.095711>,  <38.925468, 37.432041, 48.208435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732849, 37.520309, 48.095711>,  <38.411816, 37.667423, 47.907841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732849, 37.520309, 48.095711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480639, 0.067674, 0.874303,
		-0.353342, -0.927445, -0.122459,
		0.802581, -0.367786, 0.469678,
		38.973625, 37.409973, 48.236614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121994, 37.207851, 48.390278>,  <38.411816, 37.667423, 47.907841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121994, 37.207851, 48.390278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493076, 37.252113, 48.532890>,  <38.715725, 37.278671, 48.618458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.493076, 37.252113, 48.532890>,  <38.121994, 37.207851, 48.390278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493076, 37.252113, 48.532890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358647, -0.000847, 0.933473,
		0.103600, -0.993858, 0.038902,
		0.927707, 0.110660, 0.356532,
		38.771389, 37.285309, 48.639851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144989, 36.636787, 48.934158>,  <38.121994, 37.207851, 48.390278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144989, 36.636787, 48.934158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467236, 36.861561, 49.009209>,  <38.660583, 36.996426, 49.054241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467236, 36.861561, 49.009209>,  <38.144989, 36.636787, 48.934158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467236, 36.861561, 49.009209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220958, -0.008856, 0.975243,
		0.549685, -0.827134, 0.117030,
		0.805620, 0.561936, 0.187630,
		38.708923, 37.030140, 49.065498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699181, 36.234600, 49.348625>,  <38.144989, 36.636787, 48.934158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699181, 36.234600, 49.348625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738148, 36.625702, 49.422924>,  <38.761528, 36.860363, 49.467503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738148, 36.625702, 49.422924>,  <38.699181, 36.234600, 49.348625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738148, 36.625702, 49.422924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136302, -0.171773, 0.975662,
		0.985866, -0.120367, 0.116536,
		0.097419, 0.977755, 0.185751,
		38.767372, 36.919029, 49.478649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214809, 36.293182, 49.945213>,  <38.699181, 36.234600, 49.348625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214809, 36.293182, 49.945213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004826, 36.633453, 49.934166>,  <38.878838, 36.837616, 49.927536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004826, 36.633453, 49.934166>,  <39.214809, 36.293182, 49.945213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004826, 36.633453, 49.934166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292345, -0.149737, 0.944517,
		0.799346, 0.503906, 0.327298,
		-0.524957, 0.850680, -0.027623,
		38.847340, 36.888657, 49.925880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430088, 36.643913, 50.589287>,  <39.214809, 36.293182, 49.945213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430088, 36.643913, 50.589287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104294, 36.838379, 50.462631>,  <38.908817, 36.955059, 50.386639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104294, 36.838379, 50.462631>,  <39.430088, 36.643913, 50.589287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104294, 36.838379, 50.462631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420779, -0.119236, 0.899293,
		0.399445, 0.865697, 0.301681,
		-0.814487, 0.486159, -0.316639,
		38.859947, 36.984226, 50.367638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172913, 37.028645, 51.131725>,  <39.430088, 36.643913, 50.589287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172913, 37.028645, 51.131725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853500, 36.982513, 50.895401>,  <38.661854, 36.954834, 50.753609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853500, 36.982513, 50.895401>,  <39.172913, 37.028645, 51.131725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853500, 36.982513, 50.895401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601845, 0.172020, 0.779867,
		0.011694, 0.978320, -0.206770,
		-0.798528, -0.115324, -0.590808,
		38.613941, 36.947918, 50.718159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683342, 37.654434, 51.228607>,  <39.172913, 37.028645, 51.131725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683342, 37.654434, 51.228607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441181, 37.366440, 51.092896>,  <38.295887, 37.193642, 51.011467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441181, 37.366440, 51.092896>,  <38.683342, 37.654434, 51.228607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441181, 37.366440, 51.092896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740218, 0.352646, 0.572467,
		-0.292525, 0.597710, -0.746439,
		-0.605398, -0.719988, -0.339278,
		38.259563, 37.150444, 50.991112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098782, 37.917576, 51.164501>,  <38.683342, 37.654434, 51.228607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098782, 37.917576, 51.164501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068260, 37.522320, 51.217793>,  <38.049950, 37.285164, 51.249767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.068260, 37.522320, 51.217793>,  <38.098782, 37.917576, 51.164501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068260, 37.522320, 51.217793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857509, 0.133215, 0.496923,
		-0.508780, -0.076332, -0.857506,
		-0.076301, -0.988143, 0.133232,
		38.045368, 37.225876, 51.257763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437595, 37.915325, 51.624416>,  <38.098782, 37.917576, 51.164501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437595, 37.915325, 51.624416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144089, 37.924519, 51.352814>,  <36.967983, 37.930035, 51.189850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144089, 37.924519, 51.352814>,  <37.437595, 37.915325, 51.624416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144089, 37.924519, 51.352814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381867, 0.840573, -0.384206,
		0.561925, -0.541210, -0.625566,
		-0.733770, 0.022988, -0.679009,
		36.923958, 37.931416, 51.149113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868927, 37.636608, 51.818100>,  <37.437595, 37.915325, 51.624416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868927, 37.636608, 51.818100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833416, 37.348698, 51.542698>,  <36.812111, 37.175953, 51.377457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833416, 37.348698, 51.542698>,  <36.868927, 37.636608, 51.818100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833416, 37.348698, 51.542698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665807, -0.556996, 0.496444,
		-0.740823, -0.414340, 0.528680,
		-0.088776, -0.719776, -0.688506,
		36.806782, 37.132763, 51.336147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638798, 38.308334, 51.844002>,  <36.868927, 37.636608, 51.818100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638798, 38.308334, 51.844002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706177, 38.683094, 51.966537>,  <36.746605, 38.907951, 52.040058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706177, 38.683094, 51.966537>,  <36.638798, 38.308334, 51.844002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706177, 38.683094, 51.966537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124979, 0.328575, -0.936172,
		-0.977755, 0.119411, 0.172441,
		0.168449, 0.936899, 0.306342,
		36.756710, 38.964165, 52.058441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096550, 38.779388, 51.520523>,  <36.638798, 38.308334, 51.844002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096550, 38.779388, 51.520523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423538, 38.993610, 51.605297>,  <36.619732, 39.122143, 51.656162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.423538, 38.993610, 51.605297>,  <36.096550, 38.779388, 51.520523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423538, 38.993610, 51.605297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066538, 0.277692, -0.958363,
		-0.572108, 0.797539, 0.191372,
		0.817475, 0.535554, 0.211937,
		36.668781, 39.154278, 51.668877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927547, 39.339489, 51.245155>,  <36.096550, 38.779388, 51.520523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927547, 39.339489, 51.245155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325577, 39.359352, 51.279488>,  <36.564396, 39.371269, 51.300087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325577, 39.359352, 51.279488>,  <35.927547, 39.339489, 51.245155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325577, 39.359352, 51.279488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067744, 0.291607, -0.954136,
		-0.072408, 0.955248, 0.286806,
		0.995072, 0.049657, 0.085827,
		36.624100, 39.374249, 51.305237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166264, 39.994694, 50.938366>,  <35.927547, 39.339489, 51.245155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166264, 39.994694, 50.938366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477005, 39.743370, 50.921734>,  <36.663448, 39.592575, 50.911755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477005, 39.743370, 50.921734>,  <36.166264, 39.994694, 50.938366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477005, 39.743370, 50.921734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168114, 0.270583, -0.947904,
		0.606830, 0.729389, 0.315830,
		0.776849, -0.628312, -0.041577,
		36.710060, 39.554878, 50.909260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732452, 40.415821, 50.814747>,  <36.166264, 39.994694, 50.938366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732452, 40.415821, 50.814747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826511, 40.050545, 50.681610>,  <36.882946, 39.831379, 50.601730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826511, 40.050545, 50.681610>,  <36.732452, 40.415821, 50.814747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826511, 40.050545, 50.681610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257225, 0.388698, -0.884731,
		0.937306, 0.122425, 0.326297,
		0.235144, -0.913195, -0.332839,
		36.897053, 39.776585, 50.581757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143177, 40.537430, 50.269424>,  <36.732452, 40.415821, 50.814747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143177, 40.537430, 50.269424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103329, 40.148487, 50.184956>,  <37.079418, 39.915119, 50.134274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103329, 40.148487, 50.184956>,  <37.143177, 40.537430, 50.269424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103329, 40.148487, 50.184956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285778, 0.175324, -0.942121,
		0.953104, -0.154202, 0.260413,
		-0.099621, -0.972360, -0.211169,
		37.073444, 39.856781, 50.121605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744247, 40.382347, 49.802067>,  <37.143177, 40.537430, 50.269424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744247, 40.382347, 49.802067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456833, 40.113106, 49.732056>,  <37.284386, 39.951561, 49.690048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456833, 40.113106, 49.732056>,  <37.744247, 40.382347, 49.802067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456833, 40.113106, 49.732056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299800, -0.072683, -0.951229,
		0.627559, -0.735964, 0.254023,
		-0.718534, -0.673108, -0.175029,
		37.241272, 39.911175, 49.679546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096642, 39.900772, 49.359837>,  <37.744247, 40.382347, 49.802067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096642, 39.900772, 49.359837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705727, 39.828381, 49.315723>,  <37.471180, 39.784946, 49.289257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.705727, 39.828381, 49.315723>,  <38.096642, 39.900772, 49.359837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705727, 39.828381, 49.315723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125105, -0.072624, -0.989482,
		0.171064, -0.980802, 0.093616,
		-0.977285, -0.180977, -0.110280,
		37.412540, 39.774086, 49.282639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090515, 39.228024, 48.996273>,  <38.096642, 39.900772, 49.359837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090515, 39.228024, 48.996273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743172, 39.417267, 48.936779>,  <37.534767, 39.530811, 48.901081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743172, 39.417267, 48.936779>,  <38.090515, 39.228024, 48.996273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743172, 39.417267, 48.936779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121855, -0.087171, -0.988713,
		-0.480733, -0.876681, 0.018045,
		-0.868359, 0.473108, -0.148734,
		37.482662, 39.559200, 48.892159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779037, 38.953503, 48.340740>,  <38.090515, 39.228024, 48.996273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779037, 38.953503, 48.340740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568459, 39.290573, 48.385918>,  <37.442112, 39.492817, 48.413025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.568459, 39.290573, 48.385918>,  <37.779037, 38.953503, 48.340740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568459, 39.290573, 48.385918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093782, 0.074472, -0.992803,
		-0.845022, -0.533247, 0.039822,
		-0.526443, 0.842676, 0.112940,
		37.410526, 39.543377, 48.419800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089539, 38.844097, 48.043137>,  <37.779037, 38.953503, 48.340740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089539, 38.844097, 48.043137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123188, 39.242271, 48.061157>,  <37.143379, 39.481174, 48.071968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123188, 39.242271, 48.061157>,  <37.089539, 38.844097, 48.043137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123188, 39.242271, 48.061157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346892, 0.071641, -0.935165,
		-0.934125, 0.063042, 0.351336,
		0.084124, 0.995436, 0.045052,
		37.148426, 39.540901, 48.074673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466778, 39.042587, 47.728672>,  <37.089539, 38.844097, 48.043137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466778, 39.042587, 47.728672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728954, 39.343784, 47.705395>,  <36.886261, 39.524506, 47.691429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728954, 39.343784, 47.705395>,  <36.466778, 39.042587, 47.728672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728954, 39.343784, 47.705395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159334, 0.062552, -0.985241,
		-0.738244, 0.655044, 0.160978,
		0.655445, 0.752997, -0.058193,
		36.925587, 39.569683, 47.687939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109222, 39.704330, 47.455746>,  <36.466778, 39.042587, 47.728672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109222, 39.704330, 47.455746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499397, 39.732677, 47.372318>,  <36.733501, 39.749687, 47.322262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499397, 39.732677, 47.372318>,  <36.109222, 39.704330, 47.455746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499397, 39.732677, 47.372318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219685, 0.243467, -0.944702,
		-0.016174, 0.967316, 0.253056,
		0.975437, 0.070872, -0.208567,
		36.792027, 39.753941, 47.309750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423492, 40.020073, 47.419518>,  <36.109222, 39.704330, 47.455746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423492, 40.020073, 47.419518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061516, 39.919930, 47.281876>,  <34.844330, 39.859844, 47.199291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061516, 39.919930, 47.281876>,  <35.423492, 40.020073, 47.419518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061516, 39.919930, 47.281876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387709, 0.151755, 0.909204,
		-0.175409, 0.956185, -0.234396,
		-0.904938, -0.250360, -0.344102,
		34.790035, 39.844822, 47.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957241, 40.519688, 47.607681>,  <35.423492, 40.020073, 47.419518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957241, 40.519688, 47.607681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744118, 40.184063, 47.563709>,  <34.616245, 39.982689, 47.537327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744118, 40.184063, 47.563709>,  <34.957241, 40.519688, 47.607681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744118, 40.184063, 47.563709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403088, 0.137420, 0.904785,
		-0.744067, 0.526389, -0.411436,
		-0.532808, -0.839065, -0.109931,
		34.584274, 39.932343, 47.530731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282722, 40.606106, 47.882904>,  <34.957241, 40.519688, 47.607681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282722, 40.606106, 47.882904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337234, 40.210773, 47.855671>,  <34.369942, 39.973576, 47.839329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337234, 40.210773, 47.855671>,  <34.282722, 40.606106, 47.882904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337234, 40.210773, 47.855671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395014, -0.117239, 0.911164,
		-0.908511, -0.097279, -0.406381,
		0.136281, -0.988328, -0.068087,
		34.378120, 39.914276, 47.835243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710449, 40.324986, 48.175713>,  <34.282722, 40.606106, 47.882904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710449, 40.324986, 48.175713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975739, 40.026020, 48.191261>,  <34.134911, 39.846642, 48.200592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975739, 40.026020, 48.191261>,  <33.710449, 40.324986, 48.175713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975739, 40.026020, 48.191261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357431, -0.270683, 0.893853,
		-0.657556, -0.606716, -0.446672,
		0.663222, -0.747413, 0.038870,
		34.174706, 39.801796, 48.202923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407108, 39.829391, 48.485630>,  <33.710449, 40.324986, 48.175713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407108, 39.829391, 48.485630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791649, 39.731682, 48.536427>,  <34.022373, 39.673054, 48.566902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.791649, 39.731682, 48.536427>,  <33.407108, 39.829391, 48.485630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791649, 39.731682, 48.536427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191594, -0.262376, 0.945754,
		-0.197707, -0.933535, -0.299039,
		0.961355, -0.244276, 0.126986,
		34.080055, 39.658398, 48.574524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381321, 39.241287, 48.798672>,  <33.407108, 39.829391, 48.485630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381321, 39.241287, 48.798672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749516, 39.373913, 48.881397>,  <33.970432, 39.453487, 48.931034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749516, 39.373913, 48.881397>,  <33.381321, 39.241287, 48.798672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749516, 39.373913, 48.881397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129020, -0.241704, 0.961734,
		0.368869, -0.911944, -0.179706,
		0.920483, 0.331569, 0.206816,
		34.025661, 39.473385, 48.943443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730755, 38.728523, 49.254169>,  <33.381321, 39.241287, 48.798672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730755, 38.728523, 49.254169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940922, 39.061783, 49.323215>,  <34.067020, 39.261738, 49.364643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940922, 39.061783, 49.323215>,  <33.730755, 38.728523, 49.254169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940922, 39.061783, 49.323215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088991, -0.147954, 0.984982,
		0.846178, -0.532889, -0.003595,
		0.525418, 0.833150, 0.172618,
		34.098549, 39.311729, 49.375000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969772, 38.066959, 49.376144>,  <33.730755, 38.728523, 49.254169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969772, 38.066959, 49.376144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762550, 37.731388, 49.309425>,  <33.638218, 37.530045, 49.269394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762550, 37.731388, 49.309425>,  <33.969772, 38.066959, 49.376144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762550, 37.731388, 49.309425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247591, 0.039584, -0.968056,
		0.818732, -0.542801, 0.187204,
		-0.518051, -0.838928, -0.166801,
		33.607136, 37.479710, 49.259384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356411, 37.619370, 48.900661>,  <33.969772, 38.066959, 49.376144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356411, 37.619370, 48.900661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997147, 37.443653, 48.907917>,  <33.781590, 37.338223, 48.912270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997147, 37.443653, 48.907917>,  <34.356411, 37.619370, 48.900661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997147, 37.443653, 48.907917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093184, -0.230511, -0.968598,
		0.429679, -0.868266, 0.247971,
		-0.898161, -0.439293, 0.018138,
		33.727699, 37.311867, 48.913357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479767, 36.961338, 48.745174>,  <34.356411, 37.619370, 48.900661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479767, 36.961338, 48.745174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104504, 37.049889, 48.638702>,  <33.879345, 37.103020, 48.574818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104504, 37.049889, 48.638702>,  <34.479767, 36.961338, 48.745174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104504, 37.049889, 48.638702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157140, -0.412805, -0.897161,
		-0.308489, -0.883507, 0.352490,
		-0.938159, 0.221374, -0.266180,
		33.823055, 37.116302, 48.558849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203728, 36.494553, 48.282310>,  <34.479767, 36.961338, 48.745174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203728, 36.494553, 48.282310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934952, 36.773598, 48.182842>,  <33.773685, 36.941025, 48.123161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934952, 36.773598, 48.182842>,  <34.203728, 36.494553, 48.282310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934952, 36.773598, 48.182842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108835, -0.239115, -0.964872,
		-0.732566, -0.675400, 0.084747,
		-0.671939, 0.697609, -0.248674,
		33.733372, 36.982880, 48.108238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548576, 36.133530, 47.995831>,  <34.203728, 36.494553, 48.282310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548576, 36.133530, 47.995831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579006, 36.503315, 47.846390>,  <33.597263, 36.725185, 47.756725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579006, 36.503315, 47.846390>,  <33.548576, 36.133530, 47.995831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579006, 36.503315, 47.846390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053319, -0.370378, -0.927350,
		-0.995675, 0.090470, 0.021114,
		0.076077, 0.924465, -0.373600,
		33.601830, 36.780655, 47.734310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094704, 36.093121, 47.429996>,  <33.548576, 36.133530, 47.995831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094704, 36.093121, 47.429996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325161, 36.409851, 47.348942>,  <33.463436, 36.599892, 47.300308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325161, 36.409851, 47.348942>,  <33.094704, 36.093121, 47.429996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325161, 36.409851, 47.348942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019984, -0.234199, -0.971983,
		-0.817103, 0.564053, -0.119109,
		0.576145, 0.791830, -0.202637,
		33.498005, 36.647400, 47.288151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758808, 36.383118, 46.848164>,  <33.094704, 36.093121, 47.429996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758808, 36.383118, 46.848164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137077, 36.512573, 46.860508>,  <33.364040, 36.590248, 46.867916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137077, 36.512573, 46.860508>,  <32.758808, 36.383118, 46.848164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137077, 36.512573, 46.860508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071083, -0.113196, -0.991027,
		-0.317245, 0.939384, -0.130053,
		0.945676, 0.323643, 0.030864,
		33.420780, 36.609665, 46.869766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.797981, 34.716118, 51.051018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.143070, 34.918072, 51.039635>,  <36.350124, 35.039242, 51.032806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.143070, 34.918072, 51.039635>,  <35.797981, 34.716118, 51.051018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143070, 34.918072, 51.039635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034263, 0.002224, -0.999410,
		-0.504521, 0.863185, 0.019217,
		0.862719, 0.504882, -0.028453,
		36.401886, 35.069538, 51.031097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625137, 35.209492, 50.596569>,  <35.797981, 34.716118, 51.051018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625137, 35.209492, 50.596569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.016590, 35.140083, 50.552433>,  <36.251461, 35.098438, 50.525951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.016590, 35.140083, 50.552433>,  <35.625137, 35.209492, 50.596569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016590, 35.140083, 50.552433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143158, -0.189694, -0.971351,
		0.147615, 0.966389, -0.210480,
		0.978629, -0.173518, -0.110345,
		36.310181, 35.088028, 50.519329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834801, 35.497337, 49.880207>,  <35.625137, 35.209492, 50.596569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834801, 35.497337, 49.880207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.123379, 35.236610, 49.973713>,  <36.296528, 35.080173, 50.029816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.123379, 35.236610, 49.973713>,  <35.834801, 35.497337, 49.880207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123379, 35.236610, 49.973713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172794, -0.157452, -0.972292,
		0.670561, 0.741854, -0.000964,
		0.721450, -0.651815, 0.233769,
		36.339813, 35.041065, 50.043842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425003, 35.687599, 49.476612>,  <35.834801, 35.497337, 49.880207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425003, 35.687599, 49.476612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.483982, 35.299931, 49.555565>,  <36.519371, 35.067329, 49.602936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.483982, 35.299931, 49.555565>,  <36.425003, 35.687599, 49.476612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483982, 35.299931, 49.555565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028179, -0.195365, -0.980326,
		0.988668, 0.150112, -0.001496,
		0.147451, -0.969174, 0.197381,
		36.528217, 35.009178, 49.614780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105835, 35.533432, 49.183094>,  <36.425003, 35.687599, 49.476612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105835, 35.533432, 49.183094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.902786, 35.191959, 49.229645>,  <36.780956, 34.987076, 49.257576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.902786, 35.191959, 49.229645>,  <37.105835, 35.533432, 49.183094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902786, 35.191959, 49.229645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184958, -0.239905, -0.953014,
		0.841491, -0.462249, 0.279677,
		-0.507625, -0.853682, 0.116381,
		36.750500, 34.935856, 49.264561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561321, 35.014454, 48.840355>,  <37.105835, 35.533432, 49.183094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561321, 35.014454, 48.840355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.211617, 34.821583, 48.862865>,  <37.001793, 34.705860, 48.876369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.211617, 34.821583, 48.862865>,  <37.561321, 35.014454, 48.840355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211617, 34.821583, 48.862865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160231, -0.396047, -0.904142,
		0.458242, -0.781444, 0.423509,
		-0.874266, -0.482175, 0.056274,
		36.949337, 34.676929, 48.879749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695816, 34.386929, 48.551926>,  <37.561321, 35.014454, 48.840355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695816, 34.386929, 48.551926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297371, 34.418507, 48.536308>,  <37.058304, 34.437454, 48.526936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297371, 34.418507, 48.536308>,  <37.695816, 34.386929, 48.551926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297371, 34.418507, 48.536308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007490, -0.365799, -0.930664,
		-0.087751, -0.927340, 0.363786,
		-0.996114, 0.078942, -0.039045,
		36.998535, 34.442188, 48.524593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528618, 33.774723, 48.300877>,  <37.695816, 34.386929, 48.551926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528618, 33.774723, 48.300877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214481, 34.012024, 48.230118>,  <37.026001, 34.154404, 48.187660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.214481, 34.012024, 48.230118>,  <37.528618, 33.774723, 48.300877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214481, 34.012024, 48.230118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078374, -0.378734, -0.922181,
		-0.614084, -0.710361, 0.343930,
		-0.785340, 0.593252, -0.176900,
		36.978878, 34.189999, 48.177048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030018, 33.298409, 48.031414>,  <37.528618, 33.774723, 48.300877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030018, 33.298409, 48.031414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.921673, 33.667709, 47.922428>,  <36.856667, 33.889290, 47.857037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.921673, 33.667709, 47.922428>,  <37.030018, 33.298409, 48.031414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921673, 33.667709, 47.922428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189226, -0.328592, -0.925322,
		-0.943838, -0.199073, 0.263705,
		-0.270858, 0.923254, -0.272467,
		36.840416, 33.944687, 47.840687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364246, 33.253174, 47.723450>,  <37.030018, 33.298409, 48.031414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364246, 33.253174, 47.723450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508144, 33.596733, 47.577644>,  <36.594482, 33.802868, 47.490162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508144, 33.596733, 47.577644>,  <36.364246, 33.253174, 47.723450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508144, 33.596733, 47.577644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354454, -0.235583, -0.904911,
		-0.863104, 0.454740, 0.219691,
		0.359743, 0.858902, -0.364517,
		36.616066, 33.854404, 47.468288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915279, 33.336861, 47.158058>,  <36.364246, 33.253174, 47.723450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915279, 33.336861, 47.158058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.210690, 33.599220, 47.095596>,  <36.387936, 33.756638, 47.058121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.210690, 33.599220, 47.095596>,  <35.915279, 33.336861, 47.158058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210690, 33.599220, 47.095596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100476, -0.121954, -0.987437,
		-0.666702, 0.744933, -0.024163,
		0.738521, 0.655898, -0.156154,
		36.432247, 33.795990, 47.048752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627495, 33.778526, 46.741322>,  <35.915279, 33.336861, 47.158058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627495, 33.778526, 46.741322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020123, 33.802280, 46.668674>,  <36.255699, 33.816532, 46.625084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020123, 33.802280, 46.668674>,  <35.627495, 33.778526, 46.741322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020123, 33.802280, 46.668674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177311, -0.071229, -0.981574,
		-0.071229, 0.995691, -0.059387,
		0.981574, 0.059387, -0.181621,
		36.314594, 33.820095, 46.614189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050678, 34.200413, 46.526207>,  <35.627495, 33.778526, 46.741322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050678, 34.200413, 46.526207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684330, 34.049683, 46.470802>,  <34.464520, 33.959244, 46.437561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684330, 34.049683, 46.470802>,  <35.050678, 34.200413, 46.526207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684330, 34.049683, 46.470802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214711, 0.168227, 0.962080,
		-0.339232, 0.910882, -0.234982,
		-0.915872, -0.376821, -0.138508,
		34.409569, 33.936638, 46.429249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574978, 34.637802, 46.732475>,  <35.050678, 34.200413, 46.526207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574978, 34.637802, 46.732475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371811, 34.293564, 46.747398>,  <34.249912, 34.087021, 46.756351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.371811, 34.293564, 46.747398>,  <34.574978, 34.637802, 46.732475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371811, 34.293564, 46.747398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306028, 0.220763, 0.926073,
		-0.805212, 0.458952, -0.375496,
		-0.507919, -0.860597, 0.037309,
		34.219437, 34.035385, 46.758591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095921, 34.832451, 47.139904>,  <34.574978, 34.637802, 46.732475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095921, 34.832451, 47.139904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050404, 34.435078, 47.144535>,  <34.023094, 34.196651, 47.147316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050404, 34.435078, 47.144535>,  <34.095921, 34.832451, 47.139904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050404, 34.435078, 47.144535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213147, 0.035796, 0.976365,
		-0.970371, 0.108633, -0.215821,
		-0.113791, -0.993437, 0.011581,
		34.016266, 34.137047, 47.148010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422470, 34.672768, 47.378971>,  <34.095921, 34.832451, 47.139904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422470, 34.672768, 47.378971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618526, 34.330017, 47.442875>,  <33.736160, 34.124367, 47.481216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618526, 34.330017, 47.442875>,  <33.422470, 34.672768, 47.378971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618526, 34.330017, 47.442875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245873, 0.039926, 0.968479,
		-0.836245, -0.513975, -0.191113,
		0.490144, -0.856875, 0.159761,
		33.765568, 34.072956, 47.490803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940044, 34.285172, 47.719921>,  <33.422470, 34.672768, 47.378971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940044, 34.285172, 47.719921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286114, 34.102940, 47.803745>,  <33.493755, 33.993603, 47.854042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.286114, 34.102940, 47.803745>,  <32.940044, 34.285172, 47.719921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286114, 34.102940, 47.803745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317515, -0.174215, 0.932112,
		-0.388141, -0.872982, -0.295380,
		0.865177, -0.455578, 0.209565,
		33.545666, 33.966267, 47.866615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848022, 33.630402, 48.070393>,  <32.940044, 34.285172, 47.719921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848022, 33.630402, 48.070393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.202560, 33.778000, 48.182266>,  <33.415283, 33.866558, 48.249390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.202560, 33.778000, 48.182266>,  <32.848022, 33.630402, 48.070393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202560, 33.778000, 48.182266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245780, -0.136968, 0.959600,
		0.392400, -0.919282, -0.030708,
		0.886349, 0.368999, 0.279688,
		33.468464, 33.888699, 48.266174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089333, 33.133850, 48.524910>,  <32.848022, 33.630402, 48.070393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089333, 33.133850, 48.524910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.318058, 33.451973, 48.605434>,  <33.455292, 33.642845, 48.653748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.318058, 33.451973, 48.605434>,  <33.089333, 33.133850, 48.524910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318058, 33.451973, 48.605434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024181, -0.261618, 0.964869,
		0.820031, -0.546852, -0.168827,
		0.571809, 0.795304, 0.201311,
		33.489601, 33.690563, 48.665829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551868, 32.950813, 49.108685>,  <33.089333, 33.133850, 48.524910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551868, 32.950813, 49.108685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.615696, 33.345520, 49.120209>,  <33.653992, 33.582344, 49.127125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.615696, 33.345520, 49.120209>,  <33.551868, 32.950813, 49.108685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615696, 33.345520, 49.120209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043643, -0.036209, 0.998391,
		0.986221, -0.158056, -0.048844,
		0.159570, 0.986766, 0.028812,
		33.663567, 33.641548, 49.128853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013947, 33.010662, 49.760620>,  <33.551868, 32.950813, 49.108685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013947, 33.010662, 49.760620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.932892, 33.387032, 49.652096>,  <33.884258, 33.612854, 49.586983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.932892, 33.387032, 49.652096>,  <34.013947, 33.010662, 49.760620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932892, 33.387032, 49.652096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015640, 0.280130, 0.959834,
		0.979129, 0.190252, -0.071479,
		-0.202634, 0.940920, -0.271308,
		33.872101, 33.669308, 49.570702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523132, 33.339859, 50.074013>,  <34.013947, 33.010662, 49.760620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523132, 33.339859, 50.074013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.224659, 33.599842, 50.016361>,  <34.045574, 33.755833, 49.981770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.224659, 33.599842, 50.016361>,  <34.523132, 33.339859, 50.074013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224659, 33.599842, 50.016361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094492, 0.317703, 0.943470,
		0.659005, 0.690379, -0.298479,
		-0.746180, 0.649955, -0.144133,
		34.000805, 33.794830, 49.973122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777214, 34.019814, 50.267033>,  <34.523132, 33.339859, 50.074013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777214, 34.019814, 50.267033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379967, 34.012871, 50.313358>,  <34.141617, 34.008705, 50.341152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.379967, 34.012871, 50.313358>,  <34.777214, 34.019814, 50.267033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379967, 34.012871, 50.313358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106048, 0.286220, 0.952277,
		-0.049672, 0.958007, -0.282410,
		-0.993120, -0.017352, 0.115811,
		34.082031, 34.007664, 50.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614185, 34.604042, 50.714493>,  <34.777214, 34.019814, 50.267033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614185, 34.604042, 50.714493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275635, 34.391014, 50.716259>,  <34.072506, 34.263199, 50.717319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275635, 34.391014, 50.716259>,  <34.614185, 34.604042, 50.714493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275635, 34.391014, 50.716259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022026, 0.043288, 0.998820,
		-0.532132, 0.845279, -0.048368,
		-0.846375, -0.532570, 0.004416,
		34.021721, 34.231243, 50.717583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071224, 35.001404, 51.193634>,  <34.614185, 34.604042, 50.714493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071224, 35.001404, 51.193634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952496, 34.619709, 51.179054>,  <33.881260, 34.390694, 51.170307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952496, 34.619709, 51.179054>,  <34.071224, 35.001404, 51.193634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952496, 34.619709, 51.179054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086705, -0.064940, 0.994115,
		-0.950988, 0.291915, 0.102013,
		-0.296822, -0.954237, -0.036447,
		33.863449, 34.333439, 51.168121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750092, 34.802456, 51.862553>,  <34.071224, 35.001404, 51.193634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750092, 34.802456, 51.862553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898098, 34.462822, 51.711742>,  <33.986904, 34.259041, 51.621258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.898098, 34.462822, 51.711742>,  <33.750092, 34.802456, 51.862553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898098, 34.462822, 51.711742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183568, -0.331003, 0.925602,
		-0.910707, -0.411701, 0.033387,
		0.370020, -0.849082, -0.377022,
		34.009106, 34.208099, 51.598637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584728, 35.562866, 51.721409>,  <33.750092, 34.802456, 51.862553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584728, 35.562866, 51.721409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378857, 35.901665, 51.774620>,  <33.255333, 36.104946, 51.806549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378857, 35.901665, 51.774620>,  <33.584728, 35.562866, 51.721409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378857, 35.901665, 51.774620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071329, 0.112323, -0.991108,
		-0.854412, -0.519589, 0.002606,
		-0.514677, 0.847001, 0.133032,
		33.224453, 36.155766, 51.814529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221741, 35.600040, 51.101006>,  <33.584728, 35.562866, 51.721409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221741, 35.600040, 51.101006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223450, 35.977100, 51.234509>,  <33.224476, 36.203335, 51.314610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223450, 35.977100, 51.234509>,  <33.221741, 35.600040, 51.101006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223450, 35.977100, 51.234509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085601, 0.332189, -0.939321,
		-0.996320, 0.032583, -0.079273,
		0.004272, 0.942650, 0.333756,
		33.224731, 36.259895, 51.334637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555435, 36.046886, 50.726604>,  <33.221741, 35.600040, 51.101006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555435, 36.046886, 50.726604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845161, 36.276749, 50.878990>,  <33.018997, 36.414665, 50.970421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845161, 36.276749, 50.878990>,  <32.555435, 36.046886, 50.726604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845161, 36.276749, 50.878990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081517, 0.477295, -0.874954,
		-0.684632, 0.664798, 0.298868,
		0.724316, 0.574659, 0.380964,
		33.062458, 36.449146, 50.993279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312332, 36.675774, 50.611115>,  <32.555435, 36.046886, 50.726604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312332, 36.675774, 50.611115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.711475, 36.698711, 50.623730>,  <32.950962, 36.712475, 50.631298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.711475, 36.698711, 50.623730>,  <32.312332, 36.675774, 50.611115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711475, 36.698711, 50.623730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002738, 0.518044, -0.855349,
		-0.065389, 0.853429, 0.517091,
		0.997856, 0.057346, 0.031538,
		33.010834, 36.715916, 50.633190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341160, 37.331509, 50.261169>,  <32.312332, 36.675774, 50.611115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341160, 37.331509, 50.261169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721203, 37.210258, 50.290585>,  <32.949230, 37.137508, 50.308235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721203, 37.210258, 50.290585>,  <32.341160, 37.331509, 50.261169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721203, 37.210258, 50.290585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204261, 0.426448, -0.881147,
		0.235740, 0.852206, 0.467089,
		0.950108, -0.303129, 0.073541,
		33.006233, 37.119320, 50.312649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705593, 37.928040, 50.172035>,  <32.341160, 37.331509, 50.261169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705593, 37.928040, 50.172035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.926636, 37.613075, 50.062775>,  <33.059261, 37.424095, 49.997219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.926636, 37.613075, 50.062775>,  <32.705593, 37.928040, 50.172035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926636, 37.613075, 50.062775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226214, 0.457137, -0.860147,
		0.802155, 0.413534, 0.430741,
		0.552608, -0.787410, -0.273148,
		33.092419, 37.376854, 49.980831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300568, 38.248291, 49.864471>,  <32.705593, 37.928040, 50.172035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300568, 38.248291, 49.864471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.281830, 37.866089, 49.747978>,  <33.270588, 37.636768, 49.678082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.281830, 37.866089, 49.747978>,  <33.300568, 38.248291, 49.864471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281830, 37.866089, 49.747978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141884, 0.282235, -0.948795,
		0.988774, -0.085763, 0.122351,
		-0.046840, -0.955504, -0.291235,
		33.267776, 37.579437, 49.660606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046535, 38.577080, 49.866196>,  <33.300568, 38.248291, 49.864471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046535, 38.577080, 49.866196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081104, 38.975239, 49.849636>,  <34.101845, 39.214134, 49.839699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081104, 38.975239, 49.849636>,  <34.046535, 38.577080, 49.866196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081104, 38.975239, 49.849636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017923, 0.043104, 0.998910,
		0.996098, -0.085583, 0.021565,
		0.086419, 0.995398, -0.041402,
		34.107029, 39.273857, 49.837215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644665, 38.675262, 50.312153>,  <34.046535, 38.577080, 49.866196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644665, 38.675262, 50.312153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428108, 39.008377, 50.265911>,  <34.298176, 39.208244, 50.238167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428108, 39.008377, 50.265911>,  <34.644665, 38.675262, 50.312153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428108, 39.008377, 50.265911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113453, 0.208596, 0.971399,
		0.833080, 0.512793, -0.207414,
		-0.541393, 0.832785, -0.115600,
		34.265690, 39.258213, 50.231232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030102, 39.167553, 50.552124>,  <34.644665, 38.675262, 50.312153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030102, 39.167553, 50.552124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.650150, 39.290718, 50.573738>,  <34.422180, 39.364616, 50.586704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.650150, 39.290718, 50.573738>,  <35.030102, 39.167553, 50.552124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650150, 39.290718, 50.573738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108320, 0.162044, 0.980820,
		0.293248, 0.937515, -0.187275,
		-0.949880, 0.307909, 0.054032,
		34.365185, 39.383091, 50.589947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989239, 39.687428, 51.038883>,  <35.030102, 39.167553, 50.552124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989239, 39.687428, 51.038883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607418, 39.568367, 51.032696>,  <34.378326, 39.496929, 51.028984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607418, 39.568367, 51.032696>,  <34.989239, 39.687428, 51.038883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607418, 39.568367, 51.032696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075181, 0.190243, 0.978854,
		-0.288418, 0.935526, -0.203974,
		-0.954548, -0.297655, -0.015464,
		34.321053, 39.479069, 51.028057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691185, 40.079018, 51.548271>,  <34.989239, 39.687428, 51.038883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691185, 40.079018, 51.548271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.405815, 39.802856, 51.500317>,  <34.234592, 39.637161, 51.471546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.405815, 39.802856, 51.500317>,  <34.691185, 40.079018, 51.548271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405815, 39.802856, 51.500317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184049, 0.019544, 0.982723,
		-0.676132, 0.723160, -0.141011,
		-0.713422, -0.690404, -0.119883,
		34.191788, 39.595734, 51.464352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216854, 40.249783, 52.056454>,  <34.691185, 40.079018, 51.548271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216854, 40.249783, 52.056454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146614, 39.871574, 51.946793>,  <34.104469, 39.644650, 51.880997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146614, 39.871574, 51.946793>,  <34.216854, 40.249783, 52.056454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146614, 39.871574, 51.946793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200203, -0.238359, 0.950318,
		-0.963889, 0.221765, -0.147439,
		-0.175604, -0.945518, -0.274149,
		34.093933, 39.587917, 51.864548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427296, 40.049934, 52.320805>,  <34.216854, 40.249783, 52.056454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427296, 40.049934, 52.320805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.678852, 39.745522, 52.257149>,  <33.829784, 39.562874, 52.218956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.678852, 39.745522, 52.257149>,  <33.427296, 40.049934, 52.320805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678852, 39.745522, 52.257149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240852, -0.385311, 0.890801,
		-0.739248, -0.521886, -0.425614,
		0.628889, -0.761032, -0.159143,
		33.867519, 39.517212, 52.209404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106064, 39.473511, 52.536770>,  <33.427296, 40.049934, 52.320805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106064, 39.473511, 52.536770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489407, 39.359810, 52.547729>,  <33.719414, 39.291588, 52.554306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.489407, 39.359810, 52.547729>,  <33.106064, 39.473511, 52.536770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489407, 39.359810, 52.547729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180772, -0.529588, 0.828769,
		-0.221073, -0.799209, -0.558920,
		0.958357, -0.284255, 0.027397,
		33.776913, 39.274532, 52.555950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007153, 38.775158, 52.878185>,  <33.106064, 39.473511, 52.536770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007153, 38.775158, 52.878185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397423, 38.854759, 52.914948>,  <33.631584, 38.902519, 52.937004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397423, 38.854759, 52.914948>,  <33.007153, 38.775158, 52.878185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397423, 38.854759, 52.914948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076136, -0.700843, 0.709240,
		0.205553, -0.684994, -0.698950,
		0.975680, 0.199002, 0.091907,
		33.690128, 38.914459, 52.942520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.229885, 38.238552, 37.121243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598873, 38.265007, 37.273388>,  <37.820267, 38.280880, 37.364674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598873, 38.265007, 37.273388>,  <37.229885, 38.238552, 37.121243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598873, 38.265007, 37.273388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386048, 0.168316, 0.906993,
		-0.004038, -0.983512, 0.180798,
		0.922470, 0.066134, 0.380362,
		37.875614, 38.284847, 37.387497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145065, 37.898476, 37.675064>,  <37.229885, 38.238552, 37.121243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145065, 37.898476, 37.675064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490398, 38.083012, 37.756866>,  <37.697598, 38.193733, 37.805950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490398, 38.083012, 37.756866>,  <37.145065, 37.898476, 37.675064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490398, 38.083012, 37.756866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304421, 0.152903, 0.940185,
		0.402478, -0.873947, 0.272448,
		0.863330, 0.461343, 0.204508,
		37.749397, 38.221413, 37.818218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393684, 37.639256, 38.280682>,  <37.145065, 37.898476, 37.675064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393684, 37.639256, 38.280682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610363, 37.975483, 38.281517>,  <37.740368, 38.177219, 38.282017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610363, 37.975483, 38.281517>,  <37.393684, 37.639256, 38.280682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610363, 37.975483, 38.281517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291229, 0.185350, 0.938526,
		0.788513, -0.509002, 0.345202,
		0.541694, 0.840573, 0.002085,
		37.772873, 38.227654, 38.282143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511456, 37.722191, 39.017365>,  <37.393684, 37.639256, 38.280682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511456, 37.722191, 39.017365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578930, 38.081230, 38.854462>,  <37.619415, 38.296654, 38.756721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578930, 38.081230, 38.854462>,  <37.511456, 37.722191, 39.017365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578930, 38.081230, 38.854462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300859, 0.440350, 0.845918,
		0.938631, -0.020171, 0.344333,
		0.168690, 0.897600, -0.407257,
		37.629536, 38.350510, 38.732285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966583, 38.061897, 39.476192>,  <37.511456, 37.722191, 39.017365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966583, 38.061897, 39.476192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756493, 38.333778, 39.271393>,  <37.630440, 38.496906, 39.148514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756493, 38.333778, 39.271393>,  <37.966583, 38.061897, 39.476192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756493, 38.333778, 39.271393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273317, 0.435052, 0.857920,
		0.805875, 0.590542, -0.042728,
		-0.525227, 0.679698, -0.512003,
		37.598923, 38.537689, 39.117790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989025, 38.642811, 39.958614>,  <37.966583, 38.061897, 39.476192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989025, 38.642811, 39.958614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695370, 38.724621, 39.699627>,  <37.519176, 38.773708, 39.544235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695370, 38.724621, 39.699627>,  <37.989025, 38.642811, 39.958614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695370, 38.724621, 39.699627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515564, 0.452619, 0.727550,
		0.441858, 0.867932, -0.226839,
		-0.734136, 0.204524, -0.647468,
		37.475128, 38.785976, 39.505386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721649, 39.306084, 40.096149>,  <37.989025, 38.642811, 39.958614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721649, 39.306084, 40.096149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406685, 39.154095, 39.901997>,  <37.217705, 39.062901, 39.785503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406685, 39.154095, 39.901997>,  <37.721649, 39.306084, 40.096149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406685, 39.154095, 39.901997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615623, 0.524884, 0.587797,
		0.031423, 0.761653, -0.647222,
		-0.787414, -0.379975, -0.485384,
		37.170460, 39.040104, 39.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225613, 39.912628, 40.039215>,  <37.721649, 39.306084, 40.096149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225613, 39.912628, 40.039215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025684, 39.571953, 39.976223>,  <36.905727, 39.367546, 39.938427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025684, 39.571953, 39.976223>,  <37.225613, 39.912628, 40.039215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025684, 39.571953, 39.976223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730488, 0.316826, 0.604986,
		-0.465368, 0.417422, -0.780507,
		-0.499819, -0.851693, -0.157481,
		36.875740, 39.316444, 39.928978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504192, 40.023991, 39.894997>,  <37.225613, 39.912628, 40.039215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504192, 40.023991, 39.894997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524212, 39.646698, 40.026333>,  <36.536224, 39.420322, 40.105137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524212, 39.646698, 40.026333>,  <36.504192, 40.023991, 39.894997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524212, 39.646698, 40.026333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694517, 0.203388, 0.690130,
		-0.717733, -0.262577, -0.644913,
		0.050044, -0.943232, 0.328342,
		36.539227, 39.363728, 40.124836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781818, 39.709526, 39.928833>,  <36.504192, 40.023991, 39.894997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781818, 39.709526, 39.928833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005604, 39.508255, 40.192291>,  <36.139874, 39.387493, 40.350365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005604, 39.508255, 40.192291>,  <35.781818, 39.709526, 39.928833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005604, 39.508255, 40.192291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778722, -0.046918, 0.625612,
		-0.283892, -0.862908, -0.418085,
		0.559462, -0.503178, 0.658646,
		36.173443, 39.357300, 40.389885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324497, 39.159088, 40.245346>,  <35.781818, 39.709526, 39.928833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324497, 39.159088, 40.245346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623211, 39.206383, 40.507133>,  <35.802441, 39.234760, 40.664207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623211, 39.206383, 40.507133>,  <35.324497, 39.159088, 40.245346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623211, 39.206383, 40.507133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660212, 0.013093, 0.750965,
		0.080227, -0.992898, 0.087843,
		0.746783, 0.118243, 0.654472,
		35.847244, 39.241856, 40.703476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203949, 38.568031, 40.778267>,  <35.324497, 39.159088, 40.245346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203949, 38.568031, 40.778267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436829, 38.857040, 40.927399>,  <35.576557, 39.030445, 41.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436829, 38.857040, 40.927399>,  <35.203949, 38.568031, 40.778267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436829, 38.857040, 40.927399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537106, -0.002467, 0.843511,
		0.610378, -0.691340, 0.386637,
		0.582199, 0.722526, 0.372829,
		35.611488, 39.073799, 41.039246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710094, 38.096199, 40.919086>,  <35.203949, 38.568031, 40.778267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710094, 38.096199, 40.919086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488541, 37.770046, 40.986439>,  <34.355606, 37.574352, 41.026852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488541, 37.770046, 40.986439>,  <34.710094, 38.096199, 40.919086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488541, 37.770046, 40.986439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033825, -0.180038, -0.983078,
		0.831903, -0.550212, 0.072141,
		-0.553889, -0.815386, 0.168385,
		34.322372, 37.525429, 41.036953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851383, 37.653702, 40.365341>,  <34.710094, 38.096199, 40.919086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851383, 37.653702, 40.365341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504005, 37.509506, 40.501488>,  <34.295578, 37.422989, 40.583176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504005, 37.509506, 40.501488>,  <34.851383, 37.653702, 40.365341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504005, 37.509506, 40.501488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273546, -0.224166, -0.935373,
		0.413495, -0.905425, 0.096064,
		-0.868444, -0.360494, 0.340366,
		34.243473, 37.401360, 40.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800129, 37.005672, 40.031853>,  <34.851383, 37.653702, 40.365341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800129, 37.005672, 40.031853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424858, 37.111496, 40.121136>,  <34.199696, 37.174992, 40.174706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424858, 37.111496, 40.121136>,  <34.800129, 37.005672, 40.031853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424858, 37.111496, 40.121136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324883, -0.450513, -0.831558,
		-0.119441, -0.852669, 0.508615,
		-0.938182, 0.264562, 0.223208,
		34.143402, 37.190865, 40.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358578, 36.371712, 40.049435>,  <34.800129, 37.005672, 40.031853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358578, 36.371712, 40.049435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103760, 36.675926, 39.999222>,  <33.950871, 36.858456, 39.969093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103760, 36.675926, 39.999222>,  <34.358578, 36.371712, 40.049435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103760, 36.675926, 39.999222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340586, -0.423806, -0.839279,
		-0.691505, -0.491903, 0.529011,
		-0.637042, 0.760539, -0.125528,
		33.912647, 36.904087, 39.961563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891117, 36.085445, 39.670319>,  <34.358578, 36.371712, 40.049435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891117, 36.085445, 39.670319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736851, 36.453030, 39.637398>,  <33.644291, 36.673580, 39.617645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736851, 36.453030, 39.637398>,  <33.891117, 36.085445, 39.670319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736851, 36.453030, 39.637398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440220, -0.261674, -0.858914,
		-0.810845, -0.295021, 0.505463,
		-0.385664, 0.918961, -0.082303,
		33.621151, 36.728718, 39.612705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208004, 36.069561, 39.793137>,  <33.891117, 36.085445, 39.670319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208004, 36.069561, 39.793137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270527, 36.389416, 39.561226>,  <33.308041, 36.581329, 39.422077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270527, 36.389416, 39.561226>,  <33.208004, 36.069561, 39.793137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270527, 36.389416, 39.561226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465882, -0.457906, -0.757150,
		-0.870931, 0.388459, 0.300962,
		0.156310, 0.799638, -0.579781,
		33.317421, 36.629307, 39.387291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590508, 36.090328, 39.425762>,  <33.208004, 36.069561, 39.793137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590508, 36.090328, 39.425762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864975, 36.282375, 39.207165>,  <33.029655, 36.397602, 39.076008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864975, 36.282375, 39.207165>,  <32.590508, 36.090328, 39.425762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864975, 36.282375, 39.207165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369142, -0.417524, -0.830306,
		-0.626819, 0.771466, -0.109260,
		0.686172, 0.480119, -0.546493,
		33.070827, 36.426411, 39.043217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163578, 36.293575, 38.805828>,  <32.590508, 36.090328, 39.425762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163578, 36.293575, 38.805828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553879, 36.315739, 38.721134>,  <32.788059, 36.329037, 38.670319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553879, 36.315739, 38.721134>,  <32.163578, 36.293575, 38.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553879, 36.315739, 38.721134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176784, -0.370818, -0.911724,
		-0.129035, 0.927051, -0.352031,
		0.975755, 0.055411, -0.211736,
		32.846603, 36.332363, 38.657612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189667, 36.495766, 38.195641>,  <32.163578, 36.293575, 38.805828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189667, 36.495766, 38.195641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563480, 36.353863, 38.206951>,  <32.787769, 36.268719, 38.213737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563480, 36.353863, 38.206951>,  <32.189667, 36.495766, 38.195641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563480, 36.353863, 38.206951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188391, -0.560542, -0.806413,
		0.301933, 0.748290, -0.590676,
		0.934530, -0.354761, 0.028275,
		32.843838, 36.247433, 38.215435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507725, 36.695919, 37.488335>,  <32.189667, 36.495766, 38.195641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507725, 36.695919, 37.488335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715607, 36.396317, 37.652721>,  <32.840336, 36.216557, 37.751354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715607, 36.396317, 37.652721>,  <32.507725, 36.695919, 37.488335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715607, 36.396317, 37.652721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297118, -0.609461, -0.735036,
		0.801016, 0.259898, -0.539284,
		0.519707, -0.749007, 0.410967,
		32.871517, 36.171616, 37.776012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844646, 36.453445, 36.868382>,  <32.507725, 36.695919, 37.488335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844646, 36.453445, 36.868382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855976, 36.176731, 37.157001>,  <32.862774, 36.010704, 37.330173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855976, 36.176731, 37.157001>,  <32.844646, 36.453445, 36.868382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855976, 36.176731, 37.157001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287453, -0.696982, -0.656952,
		0.957376, -0.188806, -0.218594,
		0.028320, -0.691786, 0.721547,
		32.864471, 35.969196, 37.373466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264641, 35.910564, 36.604893>,  <32.844646, 36.453445, 36.868382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264641, 35.910564, 36.604893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003857, 35.777649, 36.877518>,  <32.847385, 35.697899, 37.041092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003857, 35.777649, 36.877518>,  <33.264641, 35.910564, 36.604893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003857, 35.777649, 36.877518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427967, -0.580743, -0.692519,
		0.625928, -0.743183, 0.236415,
		-0.651965, -0.332289, 0.681561,
		32.808266, 35.677963, 37.081985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215363, 35.159977, 36.443665>,  <33.264641, 35.910564, 36.604893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215363, 35.159977, 36.443665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905605, 35.243225, 36.682663>,  <32.719749, 35.293175, 36.826061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905605, 35.243225, 36.682663>,  <33.215363, 35.159977, 36.443665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905605, 35.243225, 36.682663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551071, -0.685837, -0.475341,
		0.310857, -0.697364, 0.645796,
		-0.774396, 0.208116, 0.597494,
		32.673286, 35.305660, 36.861912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896828, 34.559723, 36.583836>,  <33.215363, 35.159977, 36.443665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896828, 34.559723, 36.583836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583080, 34.795723, 36.660431>,  <32.394833, 34.937325, 36.706387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583080, 34.795723, 36.660431>,  <32.896828, 34.559723, 36.583836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583080, 34.795723, 36.660431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614412, -0.696551, -0.370560,
		-0.085248, -0.408308, 0.908855,
		-0.784367, 0.590001, 0.191490,
		32.347771, 34.972725, 36.717876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556087, 34.375263, 36.356373>,  <32.896828, 34.559723, 36.583836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556087, 34.375263, 36.356373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624001, 34.424496, 35.965267>,  <33.664749, 34.454037, 35.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624001, 34.424496, 35.965267>,  <33.556087, 34.375263, 36.356373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624001, 34.424496, 35.965267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978429, -0.139533, 0.152337,
		-0.117680, -0.982538, -0.144120,
		0.169787, 0.123084, -0.977764,
		33.674938, 34.461422, 35.671936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188843, 34.062092, 36.326996>,  <33.556087, 34.375263, 36.356373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188843, 34.062092, 36.326996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177433, 34.276325, 35.989395>,  <34.170589, 34.404865, 35.786835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177433, 34.276325, 35.989395>,  <34.188843, 34.062092, 36.326996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177433, 34.276325, 35.989395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999073, -0.011966, -0.041353,
		-0.032247, -0.844399, -0.534744,
		-0.028520, 0.535582, -0.844002,
		34.168877, 34.437000, 35.736195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664330, 33.745956, 35.754879>,  <34.188843, 34.062092, 36.326996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664330, 33.745956, 35.754879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046661, 33.634911, 35.793495>,  <35.276062, 33.568283, 35.816666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046661, 33.634911, 35.793495>,  <34.664330, 33.745956, 35.754879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046661, 33.634911, 35.793495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138070, -0.134122, 0.981299,
		-0.259474, -0.951284, -0.166528,
		0.955830, -0.277614, 0.096543,
		35.333412, 33.551628, 35.822456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904099, 33.094971, 35.999760>,  <34.664330, 33.745956, 35.754879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904099, 33.094971, 35.999760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194088, 33.350689, 36.102303>,  <35.368080, 33.504120, 36.163830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194088, 33.350689, 36.102303>,  <34.904099, 33.094971, 35.999760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194088, 33.350689, 36.102303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228246, -0.128188, 0.965128,
		0.649861, -0.758204, 0.052984,
		0.724972, 0.639292, 0.256361,
		35.411579, 33.542477, 36.179211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274460, 32.767029, 36.470551>,  <34.904099, 33.094971, 35.999760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274460, 32.767029, 36.470551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364021, 33.152439, 36.529186>,  <35.417759, 33.383686, 36.564369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364021, 33.152439, 36.529186>,  <35.274460, 32.767029, 36.470551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364021, 33.152439, 36.529186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071556, -0.133750, 0.988428,
		0.971982, -0.231798, 0.039000,
		0.223900, 0.963525, 0.146589,
		35.431190, 33.441498, 36.573162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689255, 32.727257, 37.005730>,  <35.274460, 32.767029, 36.470551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689255, 32.727257, 37.005730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599552, 33.116562, 37.025627>,  <35.545731, 33.350143, 37.037567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599552, 33.116562, 37.025627>,  <35.689255, 32.727257, 37.005730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599552, 33.116562, 37.025627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263551, -0.109709, 0.958387,
		0.938217, 0.201813, 0.281106,
		-0.224254, 0.973260, 0.049743,
		35.532276, 33.408539, 37.040550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001720, 33.050041, 37.569057>,  <35.689255, 32.727257, 37.005730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001720, 33.050041, 37.569057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695202, 33.293560, 37.486923>,  <35.511292, 33.439671, 37.437641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695202, 33.293560, 37.486923>,  <36.001720, 33.050041, 37.569057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695202, 33.293560, 37.486923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232974, 0.034547, 0.971869,
		0.598761, 0.792577, 0.115360,
		-0.766295, 0.608793, -0.205336,
		35.465313, 33.476196, 37.425323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034645, 33.677952, 38.041027>,  <36.001720, 33.050041, 37.569057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034645, 33.677952, 38.041027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650249, 33.651974, 37.933491>,  <35.419613, 33.636387, 37.868969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650249, 33.651974, 37.933491>,  <36.034645, 33.677952, 38.041027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650249, 33.651974, 37.933491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272156, 0.048925, 0.961009,
		-0.049257, 0.996689, -0.064691,
		-0.960992, -0.064942, -0.268845,
		35.361954, 33.632492, 37.852837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595345, 34.344913, 38.247688>,  <36.034645, 33.677952, 38.041027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595345, 34.344913, 38.247688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343468, 34.034618, 38.231133>,  <35.192341, 33.848442, 38.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343468, 34.034618, 38.231133>,  <35.595345, 34.344913, 38.247688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343468, 34.034618, 38.231133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278733, 0.175882, 0.944126,
		-0.725116, 0.606048, -0.326976,
		-0.629695, -0.775739, -0.041390,
		35.154560, 33.801895, 38.218716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023598, 34.569038, 38.607777>,  <35.595345, 34.344913, 38.247688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023598, 34.569038, 38.607777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950634, 34.175812, 38.600830>,  <34.906857, 33.939877, 38.596661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950634, 34.175812, 38.600830>,  <35.023598, 34.569038, 38.607777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950634, 34.175812, 38.600830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511525, 0.079796, 0.855555,
		-0.839685, 0.164942, -0.517420,
		-0.182405, -0.983070, -0.017368,
		34.895912, 33.880890, 38.595619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317070, 34.508266, 38.688324>,  <35.023598, 34.569038, 38.607777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317070, 34.508266, 38.688324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491192, 34.170040, 38.811958>,  <34.595665, 33.967106, 38.886139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491192, 34.170040, 38.811958>,  <34.317070, 34.508266, 38.688324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491192, 34.170040, 38.811958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539826, 0.029599, 0.841256,
		-0.720483, -0.533057, -0.443571,
		0.435308, -0.845562, 0.309083,
		34.621784, 33.916370, 38.904682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827034, 34.142956, 39.077160>,  <34.317070, 34.508266, 38.688324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827034, 34.142956, 39.077160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130512, 33.914558, 39.202602>,  <34.312599, 33.777519, 39.277866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130512, 33.914558, 39.202602>,  <33.827034, 34.142956, 39.077160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130512, 33.914558, 39.202602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482753, -0.169553, 0.859186,
		-0.437418, -0.803254, -0.404288,
		0.758693, -0.570995, 0.313608,
		34.358120, 33.743259, 39.296684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563866, 33.410126, 39.411762>,  <33.827034, 34.142956, 39.077160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563866, 33.410126, 39.411762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913387, 33.548080, 39.548882>,  <34.123100, 33.630856, 39.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913387, 33.548080, 39.548882>,  <33.563866, 33.410126, 39.411762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913387, 33.548080, 39.548882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375301, 0.030052, 0.926416,
		0.309209, -0.938162, 0.155697,
		0.873808, 0.344889, 0.342801,
		34.175529, 33.651546, 39.651722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717499, 33.073193, 40.011951>,  <33.563866, 33.410126, 39.411762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717499, 33.073193, 40.011951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026283, 33.296127, 40.134224>,  <34.211555, 33.429890, 40.207588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026283, 33.296127, 40.134224>,  <33.717499, 33.073193, 40.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026283, 33.296127, 40.134224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268473, -0.150028, 0.951532,
		0.576188, -0.816618, 0.033814,
		0.771965, 0.557340, 0.305684,
		34.257874, 33.463329, 40.225929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096577, 32.708748, 40.519234>,  <33.717499, 33.073193, 40.011951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096577, 32.708748, 40.519234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198006, 33.088997, 40.590801>,  <34.258862, 33.317146, 40.633743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198006, 33.088997, 40.590801>,  <34.096577, 32.708748, 40.519234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198006, 33.088997, 40.590801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139445, -0.147108, 0.979242,
		0.957213, -0.273257, 0.095258,
		0.253571, 0.950626, 0.178918,
		34.274078, 33.374184, 40.644478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357754, 32.633907, 41.219486>,  <34.096577, 32.708748, 40.519234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357754, 32.633907, 41.219486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336746, 33.030663, 41.173191>,  <34.324142, 33.268715, 41.145412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336746, 33.030663, 41.173191>,  <34.357754, 32.633907, 41.219486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336746, 33.030663, 41.173191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116961, 0.121210, 0.985712,
		0.991747, 0.038229, -0.122378,
		-0.052516, 0.991890, -0.115738,
		34.320992, 33.328228, 41.138470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753086, 32.957451, 41.672379>,  <34.357754, 32.633907, 41.219486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753086, 32.957451, 41.672379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481518, 33.245884, 41.617081>,  <34.318577, 33.418945, 41.583900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481518, 33.245884, 41.617081>,  <34.753086, 32.957451, 41.672379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481518, 33.245884, 41.617081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093515, 0.101831, 0.990396,
		0.728234, 0.685326, -0.001703,
		-0.678918, 0.721082, -0.138245,
		34.277843, 33.462208, 41.575607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014637, 33.575706, 42.074081>,  <34.753086, 32.957451, 41.672379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014637, 33.575706, 42.074081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626450, 33.626186, 41.991852>,  <34.393536, 33.656475, 41.942513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626450, 33.626186, 41.991852>,  <35.014637, 33.575706, 42.074081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626450, 33.626186, 41.991852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205480, 0.013910, 0.978562,
		0.126354, 0.991907, 0.012433,
		-0.970470, 0.126200, -0.205574,
		34.335308, 33.664047, 41.930180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870037, 34.213120, 42.434471>,  <35.014637, 33.575706, 42.074081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870037, 34.213120, 42.434471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512859, 34.040497, 42.383240>,  <34.298553, 33.936924, 42.352501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512859, 34.040497, 42.383240>,  <34.870037, 34.213120, 42.434471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512859, 34.040497, 42.383240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206382, 0.139606, 0.968461,
		-0.400065, 0.891218, -0.213727,
		-0.892947, -0.431556, -0.128080,
		34.244976, 33.911030, 42.344814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412647, 34.637966, 42.832439>,  <34.870037, 34.213120, 42.434471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412647, 34.637966, 42.832439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262619, 34.269978, 42.786869>,  <34.172600, 34.049187, 42.759525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262619, 34.269978, 42.786869>,  <34.412647, 34.637966, 42.832439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262619, 34.269978, 42.786869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124101, -0.071965, 0.989656,
		-0.918651, 0.385333, -0.087177,
		-0.375073, -0.919967, -0.113931,
		34.150097, 33.993988, 42.752689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901741, 34.668289, 43.296955>,  <34.412647, 34.637966, 42.832439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901741, 34.668289, 43.296955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969421, 34.279602, 43.231064>,  <34.010029, 34.046391, 43.191528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969421, 34.279602, 43.231064>,  <33.901741, 34.668289, 43.296955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969421, 34.279602, 43.231064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113251, -0.146861, 0.982652,
		-0.979053, -0.184926, 0.085198,
		0.169205, -0.971717, -0.164728,
		34.020184, 33.988087, 43.181644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456249, 34.342564, 43.718311>,  <33.901741, 34.668289, 43.296955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456249, 34.342564, 43.718311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691139, 34.033199, 43.622814>,  <33.832073, 33.847580, 43.565517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691139, 34.033199, 43.622814>,  <33.456249, 34.342564, 43.718311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691139, 34.033199, 43.622814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005584, -0.298815, 0.954295,
		-0.809406, -0.559051, -0.179790,
		0.587224, -0.773415, -0.238741,
		33.867306, 33.801174, 43.551193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090405, 33.645870, 43.977249>,  <33.456249, 34.342564, 43.718311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090405, 33.645870, 43.977249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482578, 33.573326, 43.946625>,  <33.717880, 33.529800, 43.928249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482578, 33.573326, 43.946625>,  <33.090405, 33.645870, 43.977249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482578, 33.573326, 43.946625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053807, -0.127203, 0.990416,
		-0.189362, -0.975155, -0.114955,
		0.980432, -0.181362, -0.076557,
		33.776707, 33.518917, 43.923656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182896, 33.125263, 44.429298>,  <33.090405, 33.645870, 43.977249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182896, 33.125263, 44.429298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539246, 33.301655, 44.385696>,  <33.753056, 33.407490, 44.359535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539246, 33.301655, 44.385696>,  <33.182896, 33.125263, 44.429298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539246, 33.301655, 44.385696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209900, -0.186813, 0.959710,
		0.402845, -0.877862, -0.258988,
		0.890875, 0.440976, -0.109006,
		33.806507, 33.433949, 44.352993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623775, 32.768757, 44.835049>,  <33.182896, 33.125263, 44.429298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623775, 32.768757, 44.835049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814007, 33.118355, 44.795147>,  <33.928146, 33.328114, 44.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814007, 33.118355, 44.795147>,  <33.623775, 32.768757, 44.835049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814007, 33.118355, 44.795147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287745, -0.047406, 0.956533,
		0.831279, -0.483612, -0.274034,
		0.475582, 0.873998, -0.099750,
		33.956680, 33.380554, 44.765221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231369, 32.699444, 45.238270>,  <33.623775, 32.768757, 44.835049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231369, 32.699444, 45.238270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206810, 33.097042, 45.202023>,  <34.192074, 33.335602, 45.180275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206810, 33.097042, 45.202023>,  <34.231369, 32.699444, 45.238270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206810, 33.097042, 45.202023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135741, 0.098261, 0.985860,
		0.988840, 0.048229, -0.140958,
		-0.061398, 0.993991, -0.090618,
		34.188389, 33.395241, 45.174839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826527, 33.062790, 45.590069>,  <34.231369, 32.699444, 45.238270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826527, 33.062790, 45.590069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530792, 33.330490, 45.560440>,  <34.353352, 33.491112, 45.542664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530792, 33.330490, 45.560440>,  <34.826527, 33.062790, 45.590069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530792, 33.330490, 45.560440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176186, 0.298453, 0.938021,
		0.649881, 0.680460, -0.338569,
		-0.739333, 0.669253, -0.074071,
		34.308990, 33.531265, 45.538219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037964, 33.516182, 46.031052>,  <34.826527, 33.062790, 45.590069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037964, 33.516182, 46.031052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652260, 33.619648, 46.008114>,  <34.420837, 33.681728, 45.994350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652260, 33.619648, 46.008114>,  <35.037964, 33.516182, 46.031052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652260, 33.619648, 46.008114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039845, 0.072410, 0.996579,
		0.261936, 0.963249, -0.059515,
		-0.964262, 0.258668, -0.057347,
		34.362980, 33.697247, 45.990910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700813, 33.983383, 46.001041>,  <35.037964, 33.516182, 46.031052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700813, 33.983383, 46.001041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069618, 33.864300, 46.100048>,  <36.290901, 33.792850, 46.159451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069618, 33.864300, 46.100048>,  <35.700813, 33.983383, 46.001041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069618, 33.864300, 46.100048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235416, -0.076434, -0.968884,
		0.307361, 0.951593, -0.000389,
		0.922013, -0.297706, 0.247513,
		36.346222, 33.774986, 46.174301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107643, 34.459106, 45.648033>,  <35.700813, 33.983383, 46.001041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107643, 34.459106, 45.648033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304749, 34.117790, 45.716236>,  <36.423012, 33.913002, 45.757160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304749, 34.117790, 45.716236>,  <36.107643, 34.459106, 45.648033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304749, 34.117790, 45.716236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225800, -0.063851, -0.972079,
		0.840354, 0.517509, 0.161210,
		0.492767, -0.853292, 0.170511,
		36.452579, 33.861801, 45.767391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673721, 34.579853, 45.243702>,  <36.107643, 34.459106, 45.648033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673721, 34.579853, 45.243702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688583, 34.183819, 45.297882>,  <36.697502, 33.946198, 45.330391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688583, 34.183819, 45.297882>,  <36.673721, 34.579853, 45.243702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688583, 34.183819, 45.297882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334302, -0.115420, -0.935372,
		0.941733, 0.080040, 0.326699,
		0.037159, -0.990087, 0.135452,
		36.699730, 33.886791, 45.338516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235138, 34.374561, 44.992912>,  <36.673721, 34.579853, 45.243702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235138, 34.374561, 44.992912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077343, 34.007805, 45.017189>,  <36.982666, 33.787750, 45.031754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077343, 34.007805, 45.017189>,  <37.235138, 34.374561, 44.992912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077343, 34.007805, 45.017189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350358, -0.211139, -0.912508,
		0.849489, -0.338707, 0.404533,
		-0.394485, -0.916896, 0.060691,
		36.958996, 33.732735, 45.035397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767056, 33.934074, 44.856781>,  <37.235138, 34.374561, 44.992912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767056, 33.934074, 44.856781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411514, 33.778538, 44.759838>,  <37.198189, 33.685215, 44.701672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411514, 33.778538, 44.759838>,  <37.767056, 33.934074, 44.856781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411514, 33.778538, 44.759838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275123, -0.029968, -0.960942,
		0.366391, -0.920817, 0.133617,
		-0.888856, -0.388842, -0.242358,
		37.144859, 33.661884, 44.687130>
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
