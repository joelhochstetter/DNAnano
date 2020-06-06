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
	<23.996983, 34.903622, 35.149082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390169, 34.834057, 35.172848>,  <24.626081, 34.792316, 35.187107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390169, 34.834057, 35.172848>,  <23.996983, 34.903622, 35.149082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390169, 34.834057, 35.172848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170967, 0.746699, -0.642814,
		0.067427, 0.642024, 0.763714,
		0.982967, -0.173913, 0.059417,
		24.685059, 34.781883, 35.190674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413864, 35.494972, 35.338612>,  <23.996983, 34.903622, 35.149082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413864, 35.494972, 35.338612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622368, 35.244884, 35.106270>,  <24.747469, 35.094830, 34.966866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622368, 35.244884, 35.106270>,  <24.413864, 35.494972, 35.338612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622368, 35.244884, 35.106270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148781, 0.736787, -0.659552,
		0.840330, 0.257377, 0.477077,
		0.521258, -0.625222, -0.580851,
		24.778746, 35.057320, 34.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256321, 35.669121, 35.142727>,  <24.413864, 35.494972, 35.338612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256321, 35.669121, 35.142727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024908, 35.479954, 34.876900>,  <24.886061, 35.366455, 34.717403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024908, 35.479954, 34.876900>,  <25.256321, 35.669121, 35.142727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024908, 35.479954, 34.876900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243695, 0.677332, -0.694143,
		0.778407, -0.563533, -0.276608,
		-0.578528, -0.472918, -0.664571,
		24.851349, 35.338078, 34.677528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619312, 35.487438, 34.549545>,  <25.256321, 35.669121, 35.142727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619312, 35.487438, 34.549545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231771, 35.544830, 34.468815>,  <24.999247, 35.579266, 34.420376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231771, 35.544830, 34.468815>,  <25.619312, 35.487438, 34.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231771, 35.544830, 34.468815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247371, 0.598211, -0.762202,
		0.011373, -0.788388, -0.615072,
		-0.968854, 0.143483, -0.201827,
		24.941114, 35.587875, 34.408268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399763, 35.148712, 33.944767>,  <25.619312, 35.487438, 34.549545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399763, 35.148712, 33.944767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163177, 35.466965, 33.997143>,  <25.021225, 35.657917, 34.028568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163177, 35.466965, 33.997143>,  <25.399763, 35.148712, 33.944767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163177, 35.466965, 33.997143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332136, 0.388365, -0.859569,
		-0.734748, -0.464916, -0.493961,
		-0.591465, 0.795629, 0.130936,
		24.985739, 35.705654, 34.036423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998629, 35.254532, 33.306259>,  <25.399763, 35.148712, 33.944767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998629, 35.254532, 33.306259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024130, 35.599571, 33.507004>,  <25.039431, 35.806595, 33.627449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024130, 35.599571, 33.507004>,  <24.998629, 35.254532, 33.306259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024130, 35.599571, 33.507004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338908, 0.454285, -0.823873,
		-0.938657, 0.222610, -0.263377,
		0.063754, 0.862595, 0.501863,
		25.043257, 35.858349, 33.657562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900740, 35.904156, 32.856354>,  <24.998629, 35.254532, 33.306259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900740, 35.904156, 32.856354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132736, 36.031956, 33.156094>,  <25.271935, 36.108635, 33.335938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132736, 36.031956, 33.156094>,  <24.900740, 35.904156, 32.856354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132736, 36.031956, 33.156094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487521, 0.600822, -0.633511,
		-0.652637, 0.732755, 0.192706,
		0.579990, 0.319504, 0.749352,
		25.306734, 36.127808, 33.380898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905100, 36.542053, 32.732800>,  <24.900740, 35.904156, 32.856354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905100, 36.542053, 32.732800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231894, 36.475346, 32.953606>,  <25.427971, 36.435322, 33.086090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231894, 36.475346, 32.953606>,  <24.905100, 36.542053, 32.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231894, 36.475346, 32.953606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498431, 0.685633, -0.530541,
		-0.290000, 0.708586, 0.643278,
		0.816986, -0.166773, 0.552015,
		25.476990, 36.425312, 33.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341688, 37.256905, 32.893642>,  <24.905100, 36.542053, 32.732800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341688, 37.256905, 32.893642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614054, 36.964504, 32.911526>,  <25.777473, 36.789066, 32.922256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614054, 36.964504, 32.911526>,  <25.341688, 37.256905, 32.893642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614054, 36.964504, 32.911526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669339, 0.596382, -0.443073,
		0.297224, 0.331617, 0.895370,
		0.680914, -0.730998, 0.044705,
		25.818327, 36.745205, 32.924938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858505, 37.532436, 33.114323>,  <25.341688, 37.256905, 32.893642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858505, 37.532436, 33.114323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023458, 37.220417, 32.926079>,  <26.122431, 37.033207, 32.813133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023458, 37.220417, 32.926079>,  <25.858505, 37.532436, 33.114323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023458, 37.220417, 32.926079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791972, 0.562266, -0.237983,
		0.450243, -0.274566, 0.849644,
		0.412384, -0.780045, -0.470606,
		26.147173, 36.986404, 32.784897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586460, 37.511986, 33.360016>,  <25.858505, 37.532436, 33.114323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586460, 37.511986, 33.360016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555759, 37.302082, 33.020905>,  <26.537340, 37.176140, 32.817436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555759, 37.302082, 33.020905>,  <26.586460, 37.511986, 33.360016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555759, 37.302082, 33.020905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806478, 0.467293, -0.362257,
		0.586262, -0.711521, 0.387344,
		-0.076751, -0.524762, -0.847782,
		26.532734, 37.144653, 32.766571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244987, 37.418026, 33.130318>,  <26.586460, 37.511986, 33.360016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244987, 37.418026, 33.130318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043837, 37.339691, 32.793564>,  <26.923147, 37.292690, 32.591511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043837, 37.339691, 32.793564>,  <27.244987, 37.418026, 33.130318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043837, 37.339691, 32.793564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812908, 0.223868, -0.537646,
		0.293764, -0.954740, 0.046623,
		-0.502875, -0.195842, -0.841881,
		26.892975, 37.280937, 32.541000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709867, 37.067871, 32.697163>,  <27.244987, 37.418026, 33.130318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709867, 37.067871, 32.697163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449163, 37.193527, 32.421040>,  <27.292742, 37.268921, 32.255363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449163, 37.193527, 32.421040>,  <27.709867, 37.067871, 32.697163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449163, 37.193527, 32.421040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757926, 0.236725, -0.607873,
		-0.027543, -0.919390, -0.392381,
		-0.651759, 0.314138, -0.690309,
		27.253635, 37.287769, 32.213947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009571, 36.869247, 32.148220>,  <27.709867, 37.067871, 32.697163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009571, 36.869247, 32.148220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751284, 37.147488, 32.022240>,  <27.596312, 37.314430, 31.946651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.751284, 37.147488, 32.022240>,  <28.009571, 36.869247, 32.148220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751284, 37.147488, 32.022240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671146, 0.320320, -0.668549,
		-0.364156, -0.643071, -0.673684,
		-0.645719, 0.695597, -0.314948,
		27.557568, 37.356167, 31.927755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045046, 36.854496, 31.389284>,  <28.009571, 36.869247, 32.148220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045046, 36.854496, 31.389284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895557, 37.205826, 31.508533>,  <27.805864, 37.416622, 31.580084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895557, 37.205826, 31.508533>,  <28.045046, 36.854496, 31.389284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895557, 37.205826, 31.508533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501924, 0.461789, -0.731316,
		-0.780003, -0.123672, -0.613433,
		-0.373720, 0.878326, 0.298123,
		27.783442, 37.469322, 31.597971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000029, 37.196735, 30.675251>,  <28.045046, 36.854496, 31.389284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000029, 37.196735, 30.675251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934443, 37.502571, 30.924576>,  <27.895090, 37.686073, 31.074171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934443, 37.502571, 30.924576>,  <28.000029, 37.196735, 30.675251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934443, 37.502571, 30.924576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452940, 0.619671, -0.640978,
		-0.876334, 0.177223, -0.447919,
		-0.163966, 0.764591, 0.623310,
		27.885252, 37.731949, 31.111568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633097, 37.766888, 30.385084>,  <28.000029, 37.196735, 30.675251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633097, 37.766888, 30.385084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820642, 37.939384, 30.693422>,  <27.933170, 38.042881, 30.878426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820642, 37.939384, 30.693422>,  <27.633097, 37.766888, 30.385084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820642, 37.939384, 30.693422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583177, 0.504313, -0.636846,
		-0.663379, 0.748132, -0.015035,
		0.468863, 0.431239, 0.770844,
		27.961302, 38.068756, 30.924675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596880, 38.467148, 30.264883>,  <27.633097, 37.766888, 30.385084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596880, 38.467148, 30.264883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897058, 38.407818, 30.522511>,  <28.077166, 38.372219, 30.677088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897058, 38.407818, 30.522511>,  <27.596880, 38.467148, 30.264883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897058, 38.407818, 30.522511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599849, 0.562015, -0.569492,
		-0.277506, 0.813719, 0.510737,
		0.750448, -0.148328, 0.644070,
		28.122192, 38.363319, 30.715733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793652, 39.180256, 30.418718>,  <27.596880, 38.467148, 30.264883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793652, 39.180256, 30.418718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109200, 38.955032, 30.517223>,  <28.298529, 38.819897, 30.576326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109200, 38.955032, 30.517223>,  <27.793652, 39.180256, 30.418718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109200, 38.955032, 30.517223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612667, 0.751962, -0.243295,
		-0.048191, 0.342805, 0.938170,
		0.788871, -0.563061, 0.246263,
		28.345861, 38.786114, 30.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195059, 39.670952, 30.867044>,  <27.793652, 39.180256, 30.418718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195059, 39.670952, 30.867044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443584, 39.385468, 30.737688>,  <28.592701, 39.214176, 30.660074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443584, 39.385468, 30.737688>,  <28.195059, 39.670952, 30.867044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443584, 39.385468, 30.737688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708548, 0.687970, -0.157026,
		0.334556, -0.131576, 0.933145,
		0.621315, -0.713712, -0.323392,
		28.629978, 39.171352, 30.640671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878027, 39.842308, 31.156408>,  <28.195059, 39.670952, 30.867044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878027, 39.842308, 31.156408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921831, 39.608356, 30.834930>,  <28.948112, 39.467987, 30.642044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921831, 39.608356, 30.834930>,  <28.878027, 39.842308, 31.156408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921831, 39.608356, 30.834930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672994, 0.638662, -0.373080,
		0.731496, -0.500026, 0.463560,
		0.109509, -0.584880, -0.803694,
		28.954683, 39.432892, 30.593822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559019, 39.601723, 31.159483>,  <28.878027, 39.842308, 31.156408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559019, 39.601723, 31.159483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423399, 39.584019, 30.783592>,  <29.342028, 39.573399, 30.558058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423399, 39.584019, 30.783592>,  <29.559019, 39.601723, 31.159483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423399, 39.584019, 30.783592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604769, 0.754894, -0.253752,
		0.720624, -0.654352, -0.229182,
		-0.339051, -0.044258, -0.939726,
		29.321684, 39.570740, 30.501675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185001, 39.749348, 30.745628>,  <29.559019, 39.601723, 31.159483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185001, 39.749348, 30.745628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887817, 39.814938, 30.486052>,  <29.709507, 39.854290, 30.330305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887817, 39.814938, 30.486052>,  <30.185001, 39.749348, 30.745628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887817, 39.814938, 30.486052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538557, 0.722154, -0.434109,
		0.397452, -0.672017, -0.624840,
		-0.742959, 0.163974, -0.648941,
		29.664930, 39.864128, 30.291368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564348, 39.985134, 30.014196>,  <30.185001, 39.749348, 30.745628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564348, 39.985134, 30.014196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191269, 40.129047, 30.024288>,  <29.967422, 40.215393, 30.030342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191269, 40.129047, 30.024288>,  <30.564348, 39.985134, 30.014196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191269, 40.129047, 30.024288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345354, 0.911081, -0.225081,
		-0.103965, -0.201219, -0.974014,
		-0.932696, 0.359780, 0.025228,
		29.911461, 40.236980, 30.031857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505449, 40.391888, 29.421425>,  <30.564348, 39.985134, 30.014196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505449, 40.391888, 29.421425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215446, 40.503548, 29.673279>,  <30.041445, 40.570545, 29.824390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215446, 40.503548, 29.673279>,  <30.505449, 40.391888, 29.421425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215446, 40.503548, 29.673279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175390, 0.958873, -0.223162,
		-0.666034, -0.051363, -0.744151,
		-0.725008, 0.279150, 0.629633,
		29.997944, 40.587292, 29.862169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082170, 40.962410, 29.065924>,  <30.505449, 40.391888, 29.421425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082170, 40.962410, 29.065924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088667, 40.980122, 29.465479>,  <30.092566, 40.990749, 29.705212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088667, 40.980122, 29.465479>,  <30.082170, 40.962410, 29.065924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088667, 40.980122, 29.465479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283938, 0.957687, -0.047071,
		-0.958705, 0.284387, 0.002982,
		0.016242, 0.044280, 0.998887,
		30.093540, 40.993404, 29.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686071, 41.530071, 29.374603>,  <30.082170, 40.962410, 29.065924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686071, 41.530071, 29.374603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006285, 41.412693, 29.583614>,  <30.198414, 41.342266, 29.709021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006285, 41.412693, 29.583614>,  <29.686071, 41.530071, 29.374603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006285, 41.412693, 29.583614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452026, 0.868129, -0.204998,
		-0.393469, 0.400306, 0.827610,
		0.800534, -0.293441, 0.522530,
		30.246445, 41.324661, 29.740374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945332, 42.013531, 29.890678>,  <29.686071, 41.530071, 29.374603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945332, 42.013531, 29.890678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226313, 41.781418, 29.725834>,  <30.394901, 41.642151, 29.626926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226313, 41.781418, 29.725834>,  <29.945332, 42.013531, 29.890678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226313, 41.781418, 29.725834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372032, 0.792991, -0.482449,
		0.606758, 0.185577, 0.772920,
		0.702451, -0.580281, -0.412114,
		30.437048, 41.607334, 29.602200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672028, 42.335632, 30.027555>,  <29.945332, 42.013531, 29.890678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672028, 42.335632, 30.027555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631569, 42.107117, 29.701759>,  <30.607294, 41.970005, 29.506281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631569, 42.107117, 29.701759>,  <30.672028, 42.335632, 30.027555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631569, 42.107117, 29.701759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096797, 0.809154, -0.579568,
		0.990151, -0.137461, -0.026544,
		-0.101146, -0.571291, -0.814491,
		30.601225, 41.935730, 29.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212423, 42.571033, 29.589903>,  <30.672028, 42.335632, 30.027555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212423, 42.571033, 29.589903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915716, 42.427433, 29.363310>,  <30.737692, 42.341274, 29.227354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915716, 42.427433, 29.363310>,  <31.212423, 42.571033, 29.589903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915716, 42.427433, 29.363310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004468, 0.847290, -0.531112,
		0.670643, -0.391430, -0.630096,
		-0.741767, -0.359001, -0.566480,
		30.693186, 42.319733, 29.193365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404264, 42.692463, 28.895590>,  <31.212423, 42.571033, 29.589903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404264, 42.692463, 28.895590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007151, 42.681770, 28.942345>,  <30.768883, 42.675354, 28.970398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007151, 42.681770, 28.942345>,  <31.404264, 42.692463, 28.895590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007151, 42.681770, 28.942345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069644, 0.922087, -0.380665,
		-0.097605, -0.386059, -0.917296,
		-0.992786, -0.026730, 0.116887,
		30.709314, 42.673752, 28.977411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003330, 42.256588, 29.108126>,  <31.404264, 42.692463, 28.895590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003330, 42.256588, 29.108126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293697, 42.490780, 29.252489>,  <32.467918, 42.631294, 29.339108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293697, 42.490780, 29.252489>,  <32.003330, 42.256588, 29.108126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293697, 42.490780, 29.252489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239011, 0.706783, -0.665831,
		-0.644916, 0.397077, 0.653003,
		0.725918, 0.585480, 0.360910,
		32.511475, 42.666424, 29.360762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952606, 41.546753, 29.011475>,  <32.003330, 42.256588, 29.108126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952606, 41.546753, 29.011475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870480, 41.189163, 28.852152>,  <31.821203, 40.974609, 28.756557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870480, 41.189163, 28.852152>,  <31.952606, 41.546753, 29.011475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870480, 41.189163, 28.852152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458685, -0.447410, 0.767745,
		-0.864553, -0.025064, 0.501916,
		-0.205319, -0.893978, -0.398306,
		31.808884, 40.920971, 28.732660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439831, 41.022228, 29.139135>,  <31.952606, 41.546753, 29.011475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439831, 41.022228, 29.139135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508026, 41.375759, 29.313395>,  <32.548943, 41.587875, 29.417950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508026, 41.375759, 29.313395>,  <32.439831, 41.022228, 29.139135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508026, 41.375759, 29.313395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411351, -0.337913, 0.846525,
		0.895391, -0.323525, 0.305952,
		0.170487, 0.883825, 0.435646,
		32.559174, 41.640907, 29.444088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739834, 40.761852, 29.693953>,  <32.439831, 41.022228, 29.139135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739834, 40.761852, 29.693953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598118, 41.127480, 29.772900>,  <32.513088, 41.346855, 29.820269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598118, 41.127480, 29.772900>,  <32.739834, 40.761852, 29.693953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598118, 41.127480, 29.772900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369189, -0.330636, 0.868550,
		0.859174, 0.234851, 0.454605,
		-0.354289, 0.914070, 0.197369,
		32.491833, 41.401699, 29.832111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023006, 40.970654, 30.263580>,  <32.739834, 40.761852, 29.693953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023006, 40.970654, 30.263580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665550, 41.141220, 30.207623>,  <32.451077, 41.243561, 30.174047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665550, 41.141220, 30.207623>,  <33.023006, 40.970654, 30.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665550, 41.141220, 30.207623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321481, -0.390752, 0.862533,
		0.313138, 0.815768, 0.486279,
		-0.893641, 0.426421, -0.139895,
		32.397457, 41.269146, 30.165653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806492, 41.214806, 30.972610>,  <33.023006, 40.970654, 30.263580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806492, 41.214806, 30.972610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469299, 41.190945, 30.758759>,  <32.266983, 41.176628, 30.630447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469299, 41.190945, 30.758759>,  <32.806492, 41.214806, 30.972610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469299, 41.190945, 30.758759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461390, -0.430833, 0.775566,
		-0.276600, 0.900458, 0.335660,
		-0.842978, -0.059651, -0.534631,
		32.216408, 41.173050, 30.598370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270504, 41.529350, 31.365618>,  <32.806492, 41.214806, 30.972610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270504, 41.529350, 31.365618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098991, 41.271221, 31.112728>,  <31.996084, 41.116344, 30.960995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098991, 41.271221, 31.112728>,  <32.270504, 41.529350, 31.365618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098991, 41.271221, 31.112728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530064, -0.386992, 0.754500,
		-0.731561, 0.658633, -0.176128,
		-0.428778, -0.645322, -0.632226,
		31.970358, 41.077625, 30.923061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529619, 41.551342, 31.541798>,  <32.270504, 41.529350, 31.365618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529619, 41.551342, 31.541798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605301, 41.209164, 31.348963>,  <31.650711, 41.003857, 31.233261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605301, 41.209164, 31.348963>,  <31.529619, 41.551342, 31.541798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605301, 41.209164, 31.348963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586106, -0.492292, 0.643527,
		-0.787833, 0.160795, -0.594529,
		0.189206, -0.855449, -0.482087,
		31.662064, 40.952530, 31.204336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019501, 41.256714, 31.665483>,  <31.529619, 41.551342, 31.541798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019501, 41.256714, 31.665483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247824, 40.946537, 31.557507>,  <31.384817, 40.760429, 31.492722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247824, 40.946537, 31.557507>,  <31.019501, 41.256714, 31.665483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247824, 40.946537, 31.557507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477332, -0.580890, 0.659333,
		-0.668081, -0.247501, -0.701720,
		0.570808, -0.775442, -0.269942,
		31.419065, 40.713905, 31.476524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526138, 40.802567, 31.687059>,  <31.019501, 41.256714, 31.665483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526138, 40.802567, 31.687059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878618, 40.613560, 31.692944>,  <31.090107, 40.500156, 31.696474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878618, 40.613560, 31.692944>,  <30.526138, 40.802567, 31.687059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878618, 40.613560, 31.692944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386162, -0.701520, 0.598957,
		-0.272696, -0.533482, -0.800646,
		0.881202, -0.472512, 0.014709,
		31.142979, 40.471806, 31.697357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499430, 40.100552, 31.453676>,  <30.526138, 40.802567, 31.687059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499430, 40.100552, 31.453676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794300, 40.114933, 31.723574>,  <30.971222, 40.123562, 31.885513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794300, 40.114933, 31.723574>,  <30.499430, 40.100552, 31.453676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794300, 40.114933, 31.723574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455823, -0.710687, 0.535863,
		0.498798, -0.702589, -0.507513,
		0.737174, 0.035952, 0.674746,
		31.015453, 40.125717, 31.925997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636578, 39.402790, 31.545256>,  <30.499430, 40.100552, 31.453676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636578, 39.402790, 31.545256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793968, 39.593891, 31.859436>,  <30.888403, 39.708549, 32.047943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793968, 39.593891, 31.859436>,  <30.636578, 39.402790, 31.545256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793968, 39.593891, 31.859436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408608, -0.674457, 0.614936,
		0.823538, -0.562905, -0.070172,
		0.393478, 0.477750, 0.785449,
		30.912012, 39.737217, 32.095070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732048, 38.854645, 31.979769>,  <30.636578, 39.402790, 31.545256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732048, 38.854645, 31.979769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780504, 39.168957, 32.222378>,  <30.809578, 39.357544, 32.367943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780504, 39.168957, 32.222378>,  <30.732048, 38.854645, 31.979769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780504, 39.168957, 32.222378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337927, -0.541881, 0.769526,
		0.933343, -0.298182, 0.199893,
		0.121141, 0.785781, 0.606525,
		30.816847, 39.404690, 32.404335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781431, 38.511681, 32.684700>,  <30.732048, 38.854645, 31.979769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781431, 38.511681, 32.684700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719545, 38.894722, 32.781910>,  <30.682415, 39.124546, 32.840237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719545, 38.894722, 32.781910>,  <30.781431, 38.511681, 32.684700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719545, 38.894722, 32.781910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346024, -0.282926, 0.894550,
		0.925382, 0.054307, 0.375126,
		-0.154713, 0.957603, 0.243023,
		30.673132, 39.182003, 32.854816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950546, 38.493282, 33.380959>,  <30.781431, 38.511681, 32.684700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950546, 38.493282, 33.380959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697191, 38.794579, 33.310020>,  <30.545177, 38.975357, 33.267460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697191, 38.794579, 33.310020>,  <30.950546, 38.493282, 33.380959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697191, 38.794579, 33.310020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418719, -0.140879, 0.897122,
		0.650764, 0.642482, 0.404627,
		-0.633388, 0.753239, -0.177341,
		30.507175, 39.020550, 33.256817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906260, 38.806820, 34.017567>,  <30.950546, 38.493282, 33.380959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906260, 38.806820, 34.017567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574825, 38.876991, 33.804901>,  <30.375965, 38.919094, 33.677303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574825, 38.876991, 33.804901>,  <30.906260, 38.806820, 34.017567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574825, 38.876991, 33.804901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552774, -0.406950, 0.727209,
		-0.088790, 0.896447, 0.434165,
		-0.828588, 0.175427, -0.531665,
		30.326248, 38.929619, 33.645401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511780, 39.023338, 34.574577>,  <30.906260, 38.806820, 34.017567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511780, 39.023338, 34.574577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254507, 38.967613, 34.273403>,  <30.100143, 38.934177, 34.092701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254507, 38.967613, 34.273403>,  <30.511780, 39.023338, 34.574577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254507, 38.967613, 34.273403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689151, -0.323273, 0.648510,
		-0.333746, 0.935995, 0.111919,
		-0.643183, -0.139309, -0.752933,
		30.061552, 38.925819, 34.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825180, 39.313633, 34.831055>,  <30.511780, 39.023338, 34.574577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825180, 39.313633, 34.831055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789108, 39.049362, 34.532959>,  <29.767466, 38.890800, 34.354103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789108, 39.049362, 34.532959>,  <29.825180, 39.313633, 34.831055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789108, 39.049362, 34.532959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732659, -0.462845, 0.498985,
		-0.674595, 0.591002, -0.442310,
		-0.090179, -0.660675, -0.745236,
		29.762054, 38.851158, 34.309387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100180, 39.267941, 34.798439>,  <29.825180, 39.313633, 34.831055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100180, 39.267941, 34.798439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216953, 38.939274, 34.602627>,  <29.287018, 38.742073, 34.485142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216953, 38.939274, 34.602627>,  <29.100180, 39.267941, 34.798439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216953, 38.939274, 34.602627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795960, -0.492502, 0.351980,
		-0.530304, 0.286889, -0.797792,
		0.291935, -0.821667, -0.489528,
		29.304535, 38.692772, 34.455769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526382, 39.166275, 34.569599>,  <29.100180, 39.267941, 34.798439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526382, 39.166275, 34.569599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720570, 38.817608, 34.542725>,  <28.837082, 38.608406, 34.526600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720570, 38.817608, 34.542725>,  <28.526382, 39.166275, 34.569599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720570, 38.817608, 34.542725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835878, -0.485303, 0.256495,
		-0.256186, -0.068358, -0.964207,
		0.485466, -0.871670, -0.067189,
		28.866209, 38.556107, 34.522568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124975, 38.785107, 34.085957>,  <28.526382, 39.166275, 34.569599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124975, 38.785107, 34.085957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358404, 38.534264, 34.292324>,  <28.498463, 38.383759, 34.416145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358404, 38.534264, 34.292324>,  <28.124975, 38.785107, 34.085957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358404, 38.534264, 34.292324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794046, -0.573741, 0.200778,
		0.170095, -0.526834, -0.832774,
		0.583574, -0.627110, 0.515921,
		28.533476, 38.346130, 34.447102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021183, 38.142658, 33.866840>,  <28.124975, 38.785107, 34.085957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021183, 38.142658, 33.866840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152267, 38.063461, 34.236359>,  <28.230919, 38.015945, 34.458069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152267, 38.063461, 34.236359>,  <28.021183, 38.142658, 33.866840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152267, 38.063461, 34.236359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759644, -0.636584, 0.133046,
		0.561735, -0.745360, -0.359017,
		0.327712, -0.197989, 0.923800,
		28.250582, 38.004066, 34.513500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955137, 37.376835, 33.984100>,  <28.021183, 38.142658, 33.866840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955137, 37.376835, 33.984100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995220, 37.531017, 34.351006>,  <28.019270, 37.623528, 34.571148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995220, 37.531017, 34.351006>,  <27.955137, 37.376835, 33.984100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995220, 37.531017, 34.351006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551974, -0.745496, 0.373578,
		0.827818, -0.543743, 0.138060,
		0.100208, 0.385460, 0.917267,
		28.025282, 37.646656, 34.626186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855177, 36.725780, 34.337074>,  <27.955137, 37.376835, 33.984100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855177, 36.725780, 34.337074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830807, 37.011333, 34.616116>,  <27.816185, 37.182667, 34.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830807, 37.011333, 34.616116>,  <27.855177, 36.725780, 34.337074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830807, 37.011333, 34.616116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729642, -0.508771, 0.456918,
		0.681109, -0.481166, 0.551878,
		-0.060927, 0.713885, 0.697608,
		27.812529, 37.225498, 34.825397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052038, 36.428200, 34.986736>,  <27.855177, 36.725780, 34.337074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052038, 36.428200, 34.986736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816650, 36.734062, 35.091816>,  <27.675417, 36.917580, 35.154861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816650, 36.734062, 35.091816>,  <28.052038, 36.428200, 34.986736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816650, 36.734062, 35.091816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688343, -0.644261, 0.333334,
		0.424129, 0.015333, 0.905472,
		-0.588472, 0.764652, 0.262696,
		27.640108, 36.963459, 35.170624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856869, 36.250641, 35.602539>,  <28.052038, 36.428200, 34.986736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856869, 36.250641, 35.602539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575691, 36.507301, 35.479797>,  <27.406984, 36.661297, 35.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575691, 36.507301, 35.479797>,  <27.856869, 36.250641, 35.602539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575691, 36.507301, 35.479797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708306, -0.592348, 0.383963,
		0.064608, 0.487248, 0.870870,
		-0.702943, 0.641649, -0.306850,
		27.364809, 36.699795, 35.387741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678423, 36.260227, 35.323666>,  <27.856869, 36.250641, 35.602539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678423, 36.260227, 35.323666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969784, 36.256081, 35.597694>,  <29.144600, 36.253593, 35.762112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969784, 36.256081, 35.597694>,  <28.678423, 36.260227, 35.323666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969784, 36.256081, 35.597694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334592, -0.877933, 0.342466,
		0.597895, -0.478672, -0.642958,
		0.728403, -0.010370, 0.685071,
		29.188305, 36.252968, 35.803215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987858, 35.689125, 35.270763>,  <28.678423, 36.260227, 35.323666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987858, 35.689125, 35.270763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015873, 35.765827, 35.662338>,  <29.032682, 35.811848, 35.897285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015873, 35.765827, 35.662338>,  <28.987858, 35.689125, 35.270763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015873, 35.765827, 35.662338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046898, -0.979632, 0.195246,
		0.996441, -0.059586, -0.059620,
		0.070039, 0.191755, 0.978941,
		29.036884, 35.823353, 35.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148235, 35.032467, 35.355274>,  <28.987858, 35.689125, 35.270763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148235, 35.032467, 35.355274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152382, 35.184544, 35.725216>,  <29.154869, 35.275787, 35.947182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152382, 35.184544, 35.725216>,  <29.148235, 35.032467, 35.355274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152382, 35.184544, 35.725216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068572, -0.922453, 0.379971,
		0.997592, -0.067358, 0.016507,
		0.010367, 0.380189, 0.924851,
		29.155493, 35.298599, 36.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551842, 34.549900, 35.689507>,  <29.148235, 35.032467, 35.355274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551842, 34.549900, 35.689507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331604, 34.703999, 35.985733>,  <29.199461, 34.796459, 36.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331604, 34.703999, 35.985733>,  <29.551842, 34.549900, 35.689507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331604, 34.703999, 35.985733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018509, -0.892558, 0.450553,
		0.834568, 0.234365, 0.498567,
		-0.550593, 0.385245, 0.740563,
		29.166426, 34.819572, 36.207901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451557, 33.875786, 35.472500>,  <29.551842, 34.549900, 35.689507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451557, 33.875786, 35.472500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725536, 34.146458, 35.364464>,  <29.889923, 34.308861, 35.299641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725536, 34.146458, 35.364464>,  <29.451557, 33.875786, 35.472500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725536, 34.146458, 35.364464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358554, 0.009647, 0.933459,
		0.634262, -0.736211, -0.236020,
		0.684946, 0.676683, -0.270090,
		29.931021, 34.349464, 35.283436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082842, 33.725197, 35.827553>,  <29.451557, 33.875786, 35.472500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082842, 33.725197, 35.827553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121679, 34.104519, 35.706696>,  <30.144981, 34.332111, 35.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121679, 34.104519, 35.706696>,  <30.082842, 33.725197, 35.827553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121679, 34.104519, 35.706696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506301, 0.214299, 0.835306,
		0.856874, -0.234077, -0.459321,
		0.097094, 0.948306, -0.302140,
		30.150808, 34.389011, 35.616055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769108, 33.848606, 36.245655>,  <30.082842, 33.725197, 35.827553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769108, 33.848606, 36.245655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087379, 33.773502, 36.476006>,  <31.278343, 33.728439, 36.614216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087379, 33.773502, 36.476006>,  <30.769108, 33.848606, 36.245655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087379, 33.773502, 36.476006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400248, 0.550626, 0.732539,
		-0.454635, -0.813362, 0.362972,
		0.795681, -0.187759, 0.575880,
		31.326084, 33.717175, 36.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509848, 33.963593, 36.932442>,  <30.769108, 33.848606, 36.245655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509848, 33.963593, 36.932442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907244, 33.950279, 36.976017>,  <31.145681, 33.942291, 37.002163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907244, 33.950279, 36.976017>,  <30.509848, 33.963593, 36.932442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907244, 33.950279, 36.976017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060015, 0.659946, 0.748912,
		-0.096819, -0.750576, 0.653653,
		0.993491, -0.033280, 0.108941,
		31.205292, 33.940296, 37.008698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672295, 33.952427, 37.683578>,  <30.509848, 33.963593, 36.932442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672295, 33.952427, 37.683578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002674, 34.088093, 37.503452>,  <31.200901, 34.169491, 37.395378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002674, 34.088093, 37.503452>,  <30.672295, 33.952427, 37.683578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002674, 34.088093, 37.503452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110730, 0.685621, 0.719488,
		0.552763, -0.644123, 0.528732,
		0.825949, 0.339160, -0.450310,
		31.250458, 34.189842, 37.368359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960340, 34.168049, 38.295589>,  <30.672295, 33.952427, 37.683578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960340, 34.168049, 38.295589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168646, 34.358826, 38.012371>,  <31.293629, 34.473293, 37.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168646, 34.358826, 38.012371>,  <30.960340, 34.168049, 38.295589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168646, 34.358826, 38.012371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252159, 0.706446, 0.661325,
		0.815610, -0.522935, 0.247627,
		0.520765, 0.476942, -0.708047,
		31.324875, 34.501907, 37.799957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622356, 34.338348, 38.576706>,  <30.960340, 34.168049, 38.295589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622356, 34.338348, 38.576706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616568, 34.599831, 38.274059>,  <31.613094, 34.756718, 38.092472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.616568, 34.599831, 38.274059>,  <31.622356, 34.338348, 38.576706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616568, 34.599831, 38.274059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498239, 0.660773, 0.561371,
		0.866919, -0.368851, -0.335262,
		-0.014470, 0.653704, -0.756612,
		31.612226, 34.795940, 38.047077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311577, 34.582180, 38.535854>,  <31.622356, 34.338348, 38.576706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311577, 34.582180, 38.535854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078842, 34.862362, 38.370529>,  <31.939201, 35.030472, 38.271336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078842, 34.862362, 38.370529>,  <32.311577, 34.582180, 38.535854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078842, 34.862362, 38.370529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551022, 0.713279, 0.433137,
		0.598201, 0.024270, -0.800978,
		-0.581834, 0.700459, -0.413311,
		31.904291, 35.072498, 38.246536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810097, 35.087555, 38.259750>,  <32.311577, 34.582180, 38.535854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810097, 35.087555, 38.259750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467033, 35.280807, 38.330181>,  <32.261196, 35.396759, 38.372440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467033, 35.280807, 38.330181>,  <32.810097, 35.087555, 38.259750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467033, 35.280807, 38.330181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502004, 0.712491, 0.490254,
		0.111401, 0.508864, -0.853608,
		-0.857661, 0.483130, 0.176079,
		32.209736, 35.425747, 38.383003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904030, 35.848053, 38.240494>,  <32.810097, 35.087555, 38.259750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904030, 35.848053, 38.240494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552586, 35.808479, 38.427368>,  <32.341721, 35.784737, 38.539494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552586, 35.808479, 38.427368>,  <32.904030, 35.848053, 38.240494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552586, 35.808479, 38.427368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331677, 0.577415, 0.746045,
		-0.343566, 0.810435, -0.474507,
		-0.878608, -0.098933, 0.467183,
		32.289001, 35.778801, 38.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660446, 36.591541, 38.369225>,  <32.904030, 35.848053, 38.240494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660446, 36.591541, 38.369225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490105, 36.325077, 38.614132>,  <32.387901, 36.165199, 38.761078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490105, 36.325077, 38.614132>,  <32.660446, 36.591541, 38.369225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490105, 36.325077, 38.614132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207792, 0.586603, 0.782764,
		-0.880609, 0.460567, -0.111382,
		-0.425852, -0.666165, 0.612270,
		32.362350, 36.125229, 38.797813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337788, 37.006893, 38.899857>,  <32.660446, 36.591541, 38.369225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337788, 37.006893, 38.899857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352814, 36.645840, 39.071365>,  <32.361832, 36.429207, 39.174271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352814, 36.645840, 39.071365>,  <32.337788, 37.006893, 38.899857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352814, 36.645840, 39.071365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185959, 0.427896, 0.884491,
		-0.981839, 0.046505, 0.183928,
		0.037568, -0.902631, 0.428773,
		32.364086, 36.375050, 39.199997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899483, 37.017670, 39.475361>,  <32.337788, 37.006893, 38.899857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899483, 37.017670, 39.475361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134899, 36.700588, 39.538918>,  <32.276150, 36.510342, 39.577049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134899, 36.700588, 39.538918>,  <31.899483, 37.017670, 39.475361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134899, 36.700588, 39.538918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184644, 0.323129, 0.928167,
		-0.787099, -0.516927, 0.336543,
		0.588542, -0.792701, 0.158887,
		32.311462, 36.462776, 39.586582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507492, 36.643909, 39.923801>,  <31.899483, 37.017670, 39.475361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507492, 36.643909, 39.923801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900337, 36.574112, 39.952099>,  <32.136044, 36.532234, 39.969078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900337, 36.574112, 39.952099>,  <31.507492, 36.643909, 39.923801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900337, 36.574112, 39.952099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018426, 0.284855, 0.958393,
		-0.187389, -0.942554, 0.276545,
		0.982113, -0.174497, 0.070746,
		32.194973, 36.521763, 39.973324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572565, 36.593445, 40.679199>,  <31.507492, 36.643909, 39.923801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572565, 36.593445, 40.679199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950058, 36.588230, 40.547020>,  <32.176556, 36.585102, 40.467712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950058, 36.588230, 40.547020>,  <31.572565, 36.593445, 40.679199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950058, 36.588230, 40.547020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312829, 0.359291, 0.879231,
		0.107263, -0.933135, 0.343154,
		0.943733, -0.013040, -0.330450,
		32.233177, 36.584320, 40.447884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926188, 36.313332, 41.248081>,  <31.572565, 36.593445, 40.679199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926188, 36.313332, 41.248081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205769, 36.491455, 41.024235>,  <32.373516, 36.598331, 40.889927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205769, 36.491455, 41.024235>,  <31.926188, 36.313332, 41.248081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205769, 36.491455, 41.024235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526112, 0.209869, 0.824112,
		0.484432, -0.870432, -0.087596,
		0.698950, 0.445312, -0.559613,
		32.415455, 36.625050, 40.856350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649845, 35.887051, 41.193283>,  <31.926188, 36.313332, 41.248081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649845, 35.887051, 41.193283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672512, 36.285889, 41.172962>,  <32.686111, 36.525192, 41.160770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672512, 36.285889, 41.172962>,  <32.649845, 35.887051, 41.193283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672512, 36.285889, 41.172962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428618, 0.021655, 0.903227,
		0.901707, -0.072961, -0.426147,
		0.056672, 0.997100, -0.050799,
		32.689514, 36.585018, 41.157722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300991, 36.033081, 41.420135>,  <32.649845, 35.887051, 41.193283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300991, 36.033081, 41.420135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072231, 36.359749, 41.451080>,  <32.934975, 36.555748, 41.469646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072231, 36.359749, 41.451080>,  <33.300991, 36.033081, 41.420135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072231, 36.359749, 41.451080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431344, 0.219161, 0.875163,
		0.697764, 0.533874, -0.477603,
		-0.571899, 0.816668, 0.077360,
		32.900661, 36.604748, 41.474289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703659, 36.578064, 41.639248>,  <33.300991, 36.033081, 41.420135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703659, 36.578064, 41.639248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329109, 36.657963, 41.754692>,  <33.104378, 36.705902, 41.823959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329109, 36.657963, 41.754692>,  <33.703659, 36.578064, 41.639248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329109, 36.657963, 41.754692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330834, 0.227607, 0.915830,
		0.117242, 0.953046, -0.279208,
		-0.936378, 0.199745, 0.288615,
		33.048195, 36.717888, 41.841278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782589, 36.969929, 42.368271>,  <33.703659, 36.578064, 41.639248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782589, 36.969929, 42.368271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387119, 36.915836, 42.342247>,  <33.149837, 36.883381, 42.326633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387119, 36.915836, 42.342247>,  <33.782589, 36.969929, 42.368271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387119, 36.915836, 42.342247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082777, 0.129813, 0.988077,
		-0.125172, 0.982274, -0.139537,
		-0.988676, -0.135230, -0.065060,
		33.090515, 36.875267, 42.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436153, 37.582890, 42.669117>,  <33.782589, 36.969929, 42.368271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436153, 37.582890, 42.669117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163109, 37.290581, 42.670910>,  <32.999283, 37.115196, 42.671986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163109, 37.290581, 42.670910>,  <33.436153, 37.582890, 42.669117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163109, 37.290581, 42.670910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334061, 0.317485, 0.887472,
		-0.649959, 0.604301, -0.460840,
		-0.682610, -0.730769, 0.004479,
		32.958324, 37.071350, 42.672253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927090, 37.885204, 43.064793>,  <33.436153, 37.582890, 42.669117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927090, 37.885204, 43.064793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835972, 37.496376, 43.042187>,  <32.781300, 37.263081, 43.028622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835972, 37.496376, 43.042187>,  <32.927090, 37.885204, 43.064793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835972, 37.496376, 43.042187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431339, 0.048704, 0.900874,
		-0.872957, 0.229596, -0.430385,
		-0.227799, -0.972067, -0.056518,
		32.767632, 37.204758, 43.025230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215778, 37.892540, 43.320164>,  <32.927090, 37.885204, 43.064793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215778, 37.892540, 43.320164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387100, 37.533230, 43.359463>,  <32.489895, 37.317642, 43.383041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387100, 37.533230, 43.359463>,  <32.215778, 37.892540, 43.320164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387100, 37.533230, 43.359463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290334, -0.033833, 0.956327,
		-0.855723, -0.438125, -0.275292,
		0.428304, -0.898277, 0.098251,
		32.515591, 37.263748, 43.388939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703268, 37.406464, 43.725391>,  <32.215778, 37.892540, 43.320164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703268, 37.406464, 43.725391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081894, 37.280506, 43.753269>,  <32.309071, 37.204933, 43.769997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081894, 37.280506, 43.753269>,  <31.703268, 37.406464, 43.725391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081894, 37.280506, 43.753269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123186, -0.153304, 0.980471,
		-0.298058, -0.936665, -0.183902,
		0.946566, -0.314891, 0.069691,
		32.365864, 37.186039, 43.774178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603035, 36.834721, 44.054234>,  <31.703268, 37.406464, 43.725391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603035, 36.834721, 44.054234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997051, 36.898239, 44.080994>,  <32.233459, 36.936352, 44.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997051, 36.898239, 44.080994>,  <31.603035, 36.834721, 44.054234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997051, 36.898239, 44.080994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037535, -0.181202, 0.982729,
		0.168179, -0.970540, -0.172531,
		0.985041, 0.158798, 0.066904,
		32.292564, 36.945877, 44.101067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981735, 36.265091, 44.343956>,  <31.603035, 36.834721, 44.054234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981735, 36.265091, 44.343956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211731, 36.584793, 44.413910>,  <32.349728, 36.776615, 44.455883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211731, 36.584793, 44.413910>,  <31.981735, 36.265091, 44.343956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211731, 36.584793, 44.413910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064316, -0.257249, 0.964203,
		0.815630, -0.543157, -0.199319,
		0.574988, 0.799252, 0.174887,
		32.384228, 36.824570, 44.466377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195000, 36.063263, 44.963696>,  <31.981735, 36.265091, 44.343956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195000, 36.063263, 44.963696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334099, 36.436794, 44.930134>,  <32.417557, 36.660912, 44.909996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334099, 36.436794, 44.930134>,  <32.195000, 36.063263, 44.963696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334099, 36.436794, 44.930134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045057, 0.106035, 0.993341,
		0.936504, -0.341653, 0.078949,
		0.347749, 0.933825, -0.083909,
		32.438423, 36.716942, 44.904961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716503, 36.104717, 45.385700>,  <32.195000, 36.063263, 44.963696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716503, 36.104717, 45.385700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626980, 36.490814, 45.331715>,  <32.573265, 36.722473, 45.299324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626980, 36.490814, 45.331715>,  <32.716503, 36.104717, 45.385700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626980, 36.490814, 45.331715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171880, 0.175397, 0.969378,
		0.959358, 0.193754, -0.205161,
		-0.223805, 0.965244, -0.134966,
		32.559837, 36.780388, 45.291225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232487, 36.530380, 45.808342>,  <32.716503, 36.104717, 45.385700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232487, 36.530380, 45.808342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902126, 36.744667, 45.738037>,  <32.703911, 36.873238, 45.695854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902126, 36.744667, 45.738037>,  <33.232487, 36.530380, 45.808342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902126, 36.744667, 45.738037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078326, 0.199693, 0.976723,
		0.558344, 0.820446, -0.122967,
		-0.825904, 0.535716, -0.175759,
		32.654354, 36.905380, 45.685310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366180, 37.053192, 46.277885>,  <33.232487, 36.530380, 45.808342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366180, 37.053192, 46.277885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977749, 37.086807, 46.188499>,  <32.744690, 37.106976, 46.134869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977749, 37.086807, 46.188499>,  <33.366180, 37.053192, 46.277885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977749, 37.086807, 46.188499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182993, 0.339191, 0.922748,
		0.153343, 0.936957, -0.314004,
		-0.971082, 0.084036, -0.223469,
		32.686424, 37.112019, 46.121460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088814, 37.765835, 46.416801>,  <33.366180, 37.053192, 46.277885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088814, 37.765835, 46.416801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804817, 37.491802, 46.482014>,  <32.634418, 37.327381, 46.521141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804817, 37.491802, 46.482014>,  <33.088814, 37.765835, 46.416801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804817, 37.491802, 46.482014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068320, 0.297424, 0.952298,
		-0.700889, 0.664984, -0.257973,
		-0.709991, -0.685080, 0.163029,
		32.591820, 37.286278, 46.530922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600037, 38.091553, 46.760048>,  <33.088814, 37.765835, 46.416801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600037, 38.091553, 46.760048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495346, 37.712952, 46.835548>,  <32.432533, 37.485790, 46.880848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495346, 37.712952, 46.835548>,  <32.600037, 38.091553, 46.760048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495346, 37.712952, 46.835548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209577, 0.246639, 0.946175,
		-0.942113, 0.208082, -0.262918,
		-0.261727, -0.946505, 0.188753,
		32.416828, 37.429001, 46.892174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154804, 38.106998, 47.260715>,  <32.600037, 38.091553, 46.760048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154804, 38.106998, 47.260715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267178, 37.726242, 47.309662>,  <32.334602, 37.497787, 47.339031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267178, 37.726242, 47.309662>,  <32.154804, 38.106998, 47.260715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267178, 37.726242, 47.309662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204327, 0.065258, 0.976725,
		-0.937724, -0.299400, -0.176164,
		0.280935, -0.951894, 0.122369,
		32.351460, 37.440674, 47.346375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650217, 37.913116, 47.722988>,  <32.154804, 38.106998, 47.260715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650217, 37.913116, 47.722988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949593, 37.647911, 47.729408>,  <32.129219, 37.488789, 47.733261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949593, 37.647911, 47.729408>,  <31.650217, 37.913116, 47.722988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949593, 37.647911, 47.729408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078766, -0.064830, 0.994783,
		-0.658510, -0.745798, -0.100744,
		0.748439, -0.663010, 0.016052,
		32.174126, 37.449009, 47.734222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414890, 37.446705, 48.120029>,  <31.650217, 37.913116, 47.722988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414890, 37.446705, 48.120029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813110, 37.413837, 48.138474>,  <32.052044, 37.394119, 48.149540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813110, 37.413837, 48.138474>,  <31.414890, 37.446705, 48.120029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813110, 37.413837, 48.138474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049068, -0.034329, 0.998205,
		-0.080434, -0.996027, -0.038208,
		0.995551, -0.082164, 0.046112,
		32.111774, 37.389187, 48.152306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543644, 37.058762, 48.687061>,  <31.414890, 37.446705, 48.120029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543644, 37.058762, 48.687061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916815, 37.196217, 48.644054>,  <32.140717, 37.278690, 48.618248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916815, 37.196217, 48.644054>,  <31.543644, 37.058762, 48.687061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916815, 37.196217, 48.644054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175110, -0.172089, 0.969392,
		0.314613, -0.923202, -0.220721,
		0.932928, 0.343634, -0.107520,
		32.196693, 37.299305, 48.611797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973618, 36.599190, 48.983879>,  <31.543644, 37.058762, 48.687061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973618, 36.599190, 48.983879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187622, 36.937122, 48.985939>,  <32.316025, 37.139881, 48.987175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187622, 36.937122, 48.985939>,  <31.973618, 36.599190, 48.983879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187622, 36.937122, 48.985939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146102, -0.098518, 0.984352,
		0.832115, -0.525889, -0.176140,
		0.535013, 0.844828, 0.005145,
		32.348125, 37.190571, 48.987484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500423, 36.528049, 49.435261>,  <31.973618, 36.599190, 48.983879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500423, 36.528049, 49.435261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540730, 36.923943, 49.394714>,  <32.564915, 37.161480, 49.370388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540730, 36.923943, 49.394714>,  <32.500423, 36.528049, 49.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540730, 36.923943, 49.394714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344261, 0.060902, 0.936897,
		0.933451, -0.129302, -0.334590,
		0.100766, 0.989733, -0.101362,
		32.570961, 37.220863, 49.364307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198868, 36.712936, 49.718502>,  <32.500423, 36.528049, 49.435261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198868, 36.712936, 49.718502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999634, 37.059769, 49.722168>,  <32.880093, 37.267868, 49.724365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999634, 37.059769, 49.722168>,  <33.198868, 36.712936, 49.718502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999634, 37.059769, 49.722168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325432, 0.177128, 0.928827,
		0.803743, 0.465618, -0.370400,
		-0.498087, 0.867079, 0.009162,
		32.850208, 37.319893, 49.724918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597198, 37.349510, 50.075275>,  <33.198868, 36.712936, 49.718502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597198, 37.349510, 50.075275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226513, 37.497681, 50.100536>,  <33.004101, 37.586582, 50.115692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226513, 37.497681, 50.100536>,  <33.597198, 37.349510, 50.075275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226513, 37.497681, 50.100536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135034, 0.171437, 0.975897,
		0.350668, 0.912905, -0.208893,
		-0.926714, 0.370423, 0.063156,
		32.948498, 37.608807, 50.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664131, 37.788357, 50.573280>,  <33.597198, 37.349510, 50.075275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664131, 37.788357, 50.573280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268665, 37.740131, 50.537502>,  <33.031384, 37.711197, 50.516037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268665, 37.740131, 50.537502>,  <33.664131, 37.788357, 50.573280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268665, 37.740131, 50.537502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107651, 0.154117, 0.982171,
		-0.104631, 0.980669, -0.165349,
		-0.988668, -0.120565, -0.089444,
		32.972065, 37.703960, 50.510670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396145, 38.409832, 50.888634>,  <33.664131, 37.788357, 50.573280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396145, 38.409832, 50.888634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115227, 38.125118, 50.893497>,  <32.946674, 37.954292, 50.896416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115227, 38.125118, 50.893497>,  <33.396145, 38.409832, 50.888634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115227, 38.125118, 50.893497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071966, 0.087975, 0.993519,
		-0.708239, 0.696869, -0.113008,
		-0.702295, -0.711782, 0.012156,
		32.904537, 37.911583, 50.897144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751396, 38.567921, 51.326500>,  <33.396145, 38.409832, 50.888634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751396, 38.567921, 51.326500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 38.168007, 51.318298>,  <32.752029, 37.928059, 51.313377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751793, 38.168007, 51.318298>,  <32.751396, 38.567921, 51.326500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751793, 38.168007, 51.318298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127382, -0.020468, 0.991642,
		-0.991853, 0.001632, -0.127375,
		0.000989, -0.999789, -0.020509,
		32.752090, 37.868069, 51.312145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245560, 38.364620, 51.812149>,  <32.751396, 38.567921, 51.326500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245560, 38.364620, 51.812149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459259, 38.030785, 51.758430>,  <32.587479, 37.830482, 51.726200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459259, 38.030785, 51.758430>,  <32.245560, 38.364620, 51.812149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459259, 38.030785, 51.758430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054538, -0.192571, 0.979766,
		-0.843567, -0.516113, -0.148397,
		0.534247, -0.834592, -0.134299,
		32.619534, 37.780407, 51.718140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968393, 37.811016, 52.230080>,  <32.245560, 38.364620, 51.812149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968393, 37.811016, 52.230080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354076, 37.736294, 52.154812>,  <32.585487, 37.691460, 52.109650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354076, 37.736294, 52.154812>,  <31.968393, 37.811016, 52.230080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354076, 37.736294, 52.154812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128367, -0.292083, 0.947739,
		-0.232004, -0.937972, -0.257649,
		0.964208, -0.186805, -0.188169,
		32.643337, 37.680252, 52.098362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026913, 37.147964, 52.566238>,  <31.968393, 37.811016, 52.230080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026913, 37.147964, 52.566238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396690, 37.285530, 52.500366>,  <32.618557, 37.368069, 52.460842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396690, 37.285530, 52.500366>,  <32.026913, 37.147964, 52.566238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396690, 37.285530, 52.500366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284692, -0.335208, 0.898101,
		0.253665, -0.877131, -0.407792,
		0.924448, 0.343912, -0.164681,
		32.674026, 37.388702, 52.450962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694759, 36.632095, 52.565804>,  <32.026913, 37.147964, 52.566238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694759, 36.632095, 52.565804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759018, 36.999603, 52.710052>,  <32.797573, 37.220108, 52.796600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759018, 36.999603, 52.710052>,  <32.694759, 36.632095, 52.565804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759018, 36.999603, 52.710052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152068, -0.384042, 0.910707,
		0.975227, -0.091466, -0.201412,
		0.160649, 0.918774, 0.360619,
		32.807213, 37.275234, 52.818237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452602, 36.700573, 52.848392>,  <32.694759, 36.632095, 52.565804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452602, 36.700573, 52.848392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137451, 36.903774, 52.987640>,  <32.948360, 37.025696, 53.071190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137451, 36.903774, 52.987640>,  <33.452602, 36.700573, 52.848392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137451, 36.903774, 52.987640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006791, -0.572411, 0.819939,
		0.615796, 0.643646, 0.454439,
		-0.787876, 0.508002, 0.348117,
		32.901089, 37.056175, 53.092075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606731, 36.998795, 53.479389>,  <33.452602, 36.700573, 52.848392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606731, 36.998795, 53.479389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218021, 36.908779, 53.451084>,  <32.984795, 36.854771, 53.434101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218021, 36.908779, 53.451084>,  <33.606731, 36.998795, 53.479389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218021, 36.908779, 53.451084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002614, -0.289681, 0.957120,
		-0.235884, 0.930292, 0.280918,
		-0.971778, -0.225035, -0.070763,
		32.926487, 36.841270, 53.429855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380558, 37.246746, 54.109444>,  <33.606731, 36.998795, 53.479389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380558, 37.246746, 54.109444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102333, 37.007542, 53.950161>,  <32.935398, 36.864017, 53.854591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102333, 37.007542, 53.950161>,  <33.380558, 37.246746, 54.109444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102333, 37.007542, 53.950161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096038, -0.471890, 0.876411,
		-0.712017, 0.647843, 0.270797,
		-0.695563, -0.598013, -0.398211,
		32.893665, 36.828136, 53.830696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994518, 37.504517, 53.794090>,  <33.380558, 37.246746, 54.109444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994518, 37.504517, 53.794090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240257, 37.218460, 53.927444>,  <34.387703, 37.046825, 54.007458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240257, 37.218460, 53.927444>,  <33.994518, 37.504517, 53.794090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240257, 37.218460, 53.927444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202947, -0.551522, -0.809096,
		0.762487, 0.429409, -0.483964,
		0.614350, -0.715144, 0.333381,
		34.424561, 37.003918, 54.027458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283901, 37.262711, 53.165440>,  <33.994518, 37.504517, 53.794090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283901, 37.262711, 53.165440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335999, 36.993855, 53.456993>,  <34.367256, 36.832542, 53.631924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335999, 36.993855, 53.456993>,  <34.283901, 37.262711, 53.165440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335999, 36.993855, 53.456993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167396, -0.739495, -0.652017,
		0.977249, -0.037090, -0.208828,
		0.130244, -0.672139, 0.728879,
		34.375072, 36.792213, 53.675655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759712, 36.870567, 53.020226>,  <34.283901, 37.262711, 53.165440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759712, 36.870567, 53.020226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509235, 36.655590, 53.246159>,  <34.358948, 36.526604, 53.381718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509235, 36.655590, 53.246159>,  <34.759712, 36.870567, 53.020226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509235, 36.655590, 53.246159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221240, -0.572191, -0.789715,
		0.747617, -0.619480, 0.239401,
		-0.626196, -0.537439, 0.564834,
		34.321377, 36.494358, 53.415607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896114, 36.113621, 53.017445>,  <34.759712, 36.870567, 53.020226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896114, 36.113621, 53.017445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508568, 36.150551, 53.109333>,  <34.276039, 36.172710, 53.164467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508568, 36.150551, 53.109333>,  <34.896114, 36.113621, 53.017445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508568, 36.150551, 53.109333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220736, -0.742331, -0.632630,
		0.112116, -0.663642, 0.739601,
		-0.968868, 0.092328, 0.229717,
		34.217907, 36.178249, 53.178249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571434, 35.393726, 53.180180>,  <34.896114, 36.113621, 53.017445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571434, 35.393726, 53.180180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301960, 35.659306, 53.050369>,  <34.140274, 35.818653, 52.972485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301960, 35.659306, 53.050369>,  <34.571434, 35.393726, 53.180180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301960, 35.659306, 53.050369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075002, -0.498294, -0.863758,
		-0.735200, -0.557563, 0.385492,
		-0.673688, 0.663948, -0.324527,
		34.099854, 35.858490, 52.953011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971203, 35.143993, 52.929493>,  <34.571434, 35.393726, 53.180180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971203, 35.143993, 52.929493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009705, 35.466648, 52.696228>,  <34.032806, 35.660240, 52.556271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009705, 35.466648, 52.696228>,  <33.971203, 35.143993, 52.929493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009705, 35.466648, 52.696228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218279, -0.554513, -0.803037,
		-0.971127, 0.204591, 0.122695,
		0.096259, 0.806633, -0.583161,
		34.038582, 35.708637, 52.521278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428127, 35.107201, 52.374763>,  <33.971203, 35.143993, 52.929493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428127, 35.107201, 52.374763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704185, 35.370247, 52.253941>,  <33.869820, 35.528076, 52.181446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704185, 35.370247, 52.253941>,  <33.428127, 35.107201, 52.374763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704185, 35.370247, 52.253941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016326, -0.431443, -0.901992,
		-0.723486, 0.617575, -0.308495,
		0.690146, 0.657616, -0.302060,
		33.911228, 35.567532, 52.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199150, 35.334805, 51.686340>,  <33.428127, 35.107201, 52.374763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199150, 35.334805, 51.686340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576775, 35.466663, 51.689793>,  <33.803349, 35.545780, 51.691864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576775, 35.466663, 51.689793>,  <33.199150, 35.334805, 51.686340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576775, 35.466663, 51.689793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154670, -0.419533, -0.894466,
		-0.291235, 0.845769, -0.447053,
		0.944065, 0.329646, 0.008632,
		33.859993, 35.565556, 51.692383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232960, 35.746586, 51.052608>,  <33.199150, 35.334805, 51.686340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232960, 35.746586, 51.052608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581970, 35.596767, 51.178093>,  <33.791378, 35.506878, 51.253384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581970, 35.596767, 51.178093>,  <33.232960, 35.746586, 51.052608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581970, 35.596767, 51.178093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128945, -0.442806, -0.887297,
		0.471244, 0.814642, -0.338065,
		0.872526, -0.374542, 0.313714,
		33.843727, 35.484406, 51.272205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683228, 35.937366, 50.544006>,  <33.232960, 35.746586, 51.052608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683228, 35.937366, 50.544006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884350, 35.644779, 50.728241>,  <34.005024, 35.469227, 50.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884350, 35.644779, 50.728241>,  <33.683228, 35.937366, 50.544006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884350, 35.644779, 50.728241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335308, -0.326073, -0.883881,
		0.796718, 0.598856, 0.081318,
		0.502801, -0.731470, 0.460589,
		34.035191, 35.425339, 50.866417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277885, 35.799377, 50.154518>,  <33.683228, 35.937366, 50.544006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277885, 35.799377, 50.154518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281063, 35.451439, 50.351822>,  <34.282970, 35.242676, 50.470203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281063, 35.451439, 50.351822>,  <34.277885, 35.799377, 50.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281063, 35.451439, 50.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330869, -0.463203, -0.822173,
		0.943643, 0.169732, 0.284128,
		0.007940, -0.869847, 0.493258,
		34.283443, 35.190483, 50.499798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834713, 35.438126, 49.921146>,  <34.277885, 35.799377, 50.154518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834713, 35.438126, 49.921146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588688, 35.164677, 50.078293>,  <34.441071, 35.000607, 50.172581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588688, 35.164677, 50.078293>,  <34.834713, 35.438126, 49.921146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588688, 35.164677, 50.078293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144429, -0.587519, -0.796217,
		0.775134, -0.432985, 0.460099,
		-0.615067, -0.683627, 0.392870,
		34.404167, 34.959587, 50.196156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178951, 34.743385, 49.927345>,  <34.834713, 35.438126, 49.921146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178951, 34.743385, 49.927345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785980, 34.672028, 49.949310>,  <34.550198, 34.629211, 49.962490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785980, 34.672028, 49.949310>,  <35.178951, 34.743385, 49.927345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785980, 34.672028, 49.949310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080621, -0.670886, -0.737165,
		0.168344, -0.719783, 0.673478,
		-0.982426, -0.178394, 0.054910,
		34.491253, 34.618511, 49.965782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142071, 34.006023, 49.840366>,  <35.178951, 34.743385, 49.927345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142071, 34.006023, 49.840366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783993, 34.159889, 49.750343>,  <34.569145, 34.252209, 49.696327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783993, 34.159889, 49.750343>,  <35.142071, 34.006023, 49.840366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783993, 34.159889, 49.750343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010559, -0.523163, -0.852167,
		-0.445537, -0.760484, 0.472398,
		-0.895201, 0.384660, -0.225059,
		34.515434, 34.275288, 49.682827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736687, 33.444801, 49.482517>,  <35.142071, 34.006023, 49.840366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736687, 33.444801, 49.482517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548893, 33.786804, 49.394386>,  <34.436214, 33.992004, 49.341507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548893, 33.786804, 49.394386>,  <34.736687, 33.444801, 49.482517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548893, 33.786804, 49.394386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090160, -0.294662, -0.951339,
		-0.878323, -0.426778, 0.215428,
		-0.469488, 0.855006, -0.220331,
		34.408047, 34.043304, 49.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347118, 33.188839, 49.029579>,  <34.736687, 33.444801, 49.482517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347118, 33.188839, 49.029579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365417, 33.585060, 48.977871>,  <34.376396, 33.822792, 48.946846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365417, 33.585060, 48.977871>,  <34.347118, 33.188839, 49.029579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365417, 33.585060, 48.977871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015206, -0.130077, -0.991387,
		-0.998837, 0.043393, -0.021013,
		0.045752, 0.990554, -0.129266,
		34.379143, 33.882225, 48.939091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873257, 33.296276, 48.496979>,  <34.347118, 33.188839, 49.029579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873257, 33.296276, 48.496979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100346, 33.624409, 48.524540>,  <34.236599, 33.821289, 48.541077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100346, 33.624409, 48.524540>,  <33.873257, 33.296276, 48.496979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100346, 33.624409, 48.524540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090986, 0.145717, -0.985134,
		-0.818175, 0.553015, 0.157366,
		0.567725, 0.820330, 0.068906,
		34.270664, 33.870506, 48.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448914, 33.882080, 48.137241>,  <33.873257, 33.296276, 48.496979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448914, 33.882080, 48.137241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837181, 33.975578, 48.114777>,  <34.070145, 34.031677, 48.101299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837181, 33.975578, 48.114777>,  <33.448914, 33.882080, 48.137241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837181, 33.975578, 48.114777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077742, 0.084149, -0.993416,
		-0.227484, 0.968648, 0.099853,
		0.970674, 0.233749, -0.056163,
		34.128384, 34.045704, 48.097927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455307, 34.489933, 47.674030>,  <33.448914, 33.882080, 48.137241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455307, 34.489933, 47.674030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830059, 34.351154, 47.656719>,  <34.054913, 34.267887, 47.646332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830059, 34.351154, 47.656719>,  <33.455307, 34.489933, 47.674030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830059, 34.351154, 47.656719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101750, 0.388976, -0.915612,
		0.334505, 0.853419, 0.399727,
		0.936885, -0.346949, -0.043279,
		34.111126, 34.247070, 47.643734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856728, 34.932507, 47.330189>,  <33.455307, 34.489933, 47.674030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856728, 34.932507, 47.330189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098694, 34.615181, 47.302677>,  <34.243874, 34.424786, 47.286171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098694, 34.615181, 47.302677>,  <33.856728, 34.932507, 47.330189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098694, 34.615181, 47.302677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219836, 0.249397, -0.943119,
		0.765343, 0.555386, 0.325263,
		0.604915, -0.793314, -0.068781,
		34.280167, 34.377186, 47.282043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333309, 35.091496, 46.713512>,  <33.856728, 34.932507, 47.330189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333309, 35.091496, 46.713512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376213, 34.697582, 46.768204>,  <34.401955, 34.461235, 46.801018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376213, 34.697582, 46.768204>,  <34.333309, 35.091496, 46.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376213, 34.697582, 46.768204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176771, -0.116444, -0.977340,
		0.978390, 0.129001, 0.161591,
		0.107261, -0.984784, 0.136731,
		34.408390, 34.402145, 46.809223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918903, 34.826187, 46.330551>,  <34.333309, 35.091496, 46.713512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918903, 34.826187, 46.330551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710339, 34.489273, 46.385239>,  <34.585201, 34.287125, 46.418049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710339, 34.489273, 46.385239>,  <34.918903, 34.826187, 46.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710339, 34.489273, 46.385239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048909, -0.189456, -0.980670,
		0.851902, -0.504648, 0.139980,
		-0.521413, -0.842281, 0.136716,
		34.553913, 34.236588, 46.426254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164364, 34.308270, 45.827011>,  <34.918903, 34.826187, 46.330551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164364, 34.308270, 45.827011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806522, 34.153503, 45.916431>,  <34.591816, 34.060642, 45.970085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806522, 34.153503, 45.916431>,  <35.164364, 34.308270, 45.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806522, 34.153503, 45.916431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165478, -0.177855, -0.970044,
		0.415085, -0.904800, 0.095084,
		-0.894607, -0.386916, 0.223550,
		34.538139, 34.037430, 45.983498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059193, 33.734165, 45.397366>,  <35.164364, 34.308270, 45.827011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059193, 33.734165, 45.397366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686607, 33.800945, 45.526676>,  <34.463055, 33.841015, 45.604263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686607, 33.800945, 45.526676>,  <35.059193, 33.734165, 45.397366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686607, 33.800945, 45.526676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354477, -0.216177, -0.909733,
		-0.081996, -0.961975, 0.260541,
		-0.931462, 0.166950, 0.323272,
		34.407169, 33.851032, 45.623657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588795, 33.144650, 45.165829>,  <35.059193, 33.734165, 45.397366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588795, 33.144650, 45.165829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373848, 33.478195, 45.216278>,  <34.244881, 33.678322, 45.246548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373848, 33.478195, 45.216278>,  <34.588795, 33.144650, 45.165829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373848, 33.478195, 45.216278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348064, -0.083070, -0.933783,
		-0.768171, -0.545683, 0.334877,
		-0.537368, 0.833864, 0.126120,
		34.212639, 33.728355, 45.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925739, 32.972572, 45.044838>,  <34.588795, 33.144650, 45.165829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925739, 32.972572, 45.044838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953419, 33.362339, 44.959309>,  <33.970028, 33.596199, 44.907990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953419, 33.362339, 44.959309>,  <33.925739, 32.972572, 45.044838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953419, 33.362339, 44.959309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565995, -0.138156, -0.812750,
		-0.821499, 0.177267, 0.541955,
		0.069199, 0.974418, -0.213827,
		33.974178, 33.654663, 44.895161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244289, 33.297634, 44.824242>,  <33.925739, 32.972572, 45.044838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244289, 33.297634, 44.824242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494896, 33.566395, 44.666245>,  <33.645260, 33.727654, 44.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494896, 33.566395, 44.666245>,  <33.244289, 33.297634, 44.824242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494896, 33.566395, 44.666245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482489, -0.063658, -0.873586,
		-0.612111, 0.737896, 0.284304,
		0.626518, 0.671905, -0.394993,
		33.682850, 33.767967, 44.547749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919094, 33.877689, 44.408993>,  <33.244289, 33.297634, 44.824242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919094, 33.877689, 44.408993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287258, 33.837349, 44.257904>,  <33.508156, 33.813145, 44.167252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287258, 33.837349, 44.257904>,  <32.919094, 33.877689, 44.408993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287258, 33.837349, 44.257904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377124, 0.025695, -0.925806,
		0.103071, 0.994570, -0.014382,
		0.920410, -0.100848, -0.377725,
		33.563381, 33.807095, 44.144588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946259, 34.201420, 43.735165>,  <32.919094, 33.877689, 44.408993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946259, 34.201420, 43.735165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274158, 33.973083, 43.716599>,  <33.470898, 33.836082, 43.705460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274158, 33.973083, 43.716599>,  <32.946259, 34.201420, 43.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274158, 33.973083, 43.716599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105558, -0.070936, -0.991880,
		0.562914, 0.817990, -0.118407,
		0.819747, -0.570842, -0.046414,
		33.520084, 33.801830, 43.702675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266296, 34.465054, 43.170513>,  <32.946259, 34.201420, 43.735165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266296, 34.465054, 43.170513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496841, 34.141304, 43.215618>,  <33.635170, 33.947056, 43.242680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496841, 34.141304, 43.215618>,  <33.266296, 34.465054, 43.170513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496841, 34.141304, 43.215618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082311, -0.194786, -0.977386,
		0.813035, 0.554051, -0.178889,
		0.576367, -0.809374, 0.112764,
		33.669750, 33.898491, 43.249447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830139, 34.456249, 42.632893>,  <33.266296, 34.465054, 43.170513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830139, 34.456249, 42.632893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784168, 34.085327, 42.775387>,  <33.756588, 33.862774, 42.860882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784168, 34.085327, 42.775387>,  <33.830139, 34.456249, 42.632893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784168, 34.085327, 42.775387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001546, -0.358444, -0.933550,
		0.993373, -0.107837, 0.039760,
		-0.114923, -0.927302, 0.356235,
		33.749691, 33.807137, 42.882256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424755, 34.059361, 42.472095>,  <33.830139, 34.456249, 42.632893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424755, 34.059361, 42.472095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088581, 33.845581, 42.507961>,  <33.886875, 33.717316, 42.529480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088581, 33.845581, 42.507961>,  <34.424755, 34.059361, 42.472095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088581, 33.845581, 42.507961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113335, -0.335137, -0.935328,
		0.529931, -0.775920, 0.342232,
		-0.840434, -0.534446, 0.089660,
		33.836452, 33.685249, 42.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445068, 33.742718, 41.792206>,  <34.424755, 34.059361, 42.472095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445068, 33.742718, 41.792206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122047, 33.593689, 41.975094>,  <33.928234, 33.504272, 42.084827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122047, 33.593689, 41.975094>,  <34.445068, 33.742718, 41.792206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122047, 33.593689, 41.975094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104483, -0.672590, -0.732602,
		0.580473, -0.639384, 0.504221,
		-0.807549, -0.372573, 0.457225,
		33.879784, 33.481918, 42.112263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513783, 33.009949, 41.854221>,  <34.445068, 33.742718, 41.792206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513783, 33.009949, 41.854221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123310, 33.095943, 41.842514>,  <33.889027, 33.147541, 41.835491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123310, 33.095943, 41.842514>,  <34.513783, 33.009949, 41.854221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123310, 33.095943, 41.842514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102234, -0.574750, -0.811918,
		-0.191371, -0.789585, 0.583037,
		-0.976179, 0.214983, -0.029268,
		33.830456, 33.160439, 41.833733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124866, 32.365318, 41.823727>,  <34.513783, 33.009949, 41.854221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124866, 32.365318, 41.823727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871239, 32.637928, 41.677586>,  <33.719063, 32.801495, 41.589901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871239, 32.637928, 41.677586>,  <34.124866, 32.365318, 41.823727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871239, 32.637928, 41.677586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172883, -0.585456, -0.792056,
		-0.753703, -0.439054, 0.489043,
		-0.634069, 0.681522, -0.365354,
		33.681019, 32.842384, 41.567978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531605, 31.993055, 41.583275>,  <34.124866, 32.365318, 41.823727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531605, 31.993055, 41.583275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546177, 32.345001, 41.393745>,  <33.554920, 32.556168, 41.280029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546177, 32.345001, 41.393745>,  <33.531605, 31.993055, 41.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546177, 32.345001, 41.393745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311952, -0.440434, -0.841846,
		-0.949399, 0.178478, 0.258431,
		0.036429, 0.879866, -0.473824,
		33.557106, 32.608959, 41.251598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950523, 31.951496, 41.094810>,  <33.531605, 31.993055, 41.583275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950523, 31.951496, 41.094810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197437, 32.236965, 40.962368>,  <33.345585, 32.408249, 40.882900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197437, 32.236965, 40.962368>,  <32.950523, 31.951496, 41.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197437, 32.236965, 40.962368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243937, -0.226501, -0.942970,
		-0.747970, 0.662847, 0.034277,
		0.617281, 0.713674, -0.331109,
		33.382622, 32.451069, 40.863037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529621, 32.329933, 40.658310>,  <32.950523, 31.951496, 41.094810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529621, 32.329933, 40.658310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895779, 32.435932, 40.537094>,  <33.115471, 32.499531, 40.464363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895779, 32.435932, 40.537094>,  <32.529621, 32.329933, 40.658310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895779, 32.435932, 40.537094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330293, 0.064044, -0.941703,
		-0.230145, 0.962119, 0.146153,
		0.915390, 0.265001, -0.303042,
		33.170395, 32.515434, 40.446182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402096, 32.642227, 40.096317>,  <32.529621, 32.329933, 40.658310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402096, 32.642227, 40.096317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798973, 32.654175, 40.047874>,  <33.037098, 32.661343, 40.018806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798973, 32.654175, 40.047874>,  <32.402096, 32.642227, 40.096317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798973, 32.654175, 40.047874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121276, 0.003814, -0.992612,
		-0.029186, 0.999547, 0.007406,
		0.992190, 0.029868, -0.121110,
		33.096630, 32.663136, 40.011543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483627, 33.016533, 39.609226>,  <32.402096, 32.642227, 40.096317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483627, 33.016533, 39.609226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843605, 32.842369, 39.600105>,  <33.059589, 32.737869, 39.594631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843605, 32.842369, 39.600105>,  <32.483627, 33.016533, 39.609226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843605, 32.842369, 39.600105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061357, -0.074692, -0.995317,
		0.431670, 0.897127, -0.093934,
		0.899942, -0.435412, -0.022803,
		33.113586, 32.711746, 39.593266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868050, 33.388084, 39.163109>,  <32.483627, 33.016533, 39.609226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868050, 33.388084, 39.163109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017796, 33.018024, 39.188213>,  <33.107643, 32.795986, 39.203278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017796, 33.018024, 39.188213>,  <32.868050, 33.388084, 39.163109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017796, 33.018024, 39.188213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026940, -0.078510, -0.996549,
		0.926889, 0.371384, -0.054315,
		0.374367, -0.925154, 0.062765,
		33.130104, 32.740479, 39.207043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320232, 33.381805, 38.697422>,  <32.868050, 33.388084, 39.163109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320232, 33.381805, 38.697422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248047, 32.990932, 38.742226>,  <33.204735, 32.756409, 38.769108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248047, 32.990932, 38.742226>,  <33.320232, 33.381805, 38.697422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248047, 32.990932, 38.742226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027870, -0.108755, -0.993678,
		0.983187, -0.182445, -0.007607,
		-0.180464, -0.977183, 0.112011,
		33.193909, 32.697777, 38.775829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821205, 33.045208, 38.396473>,  <33.320232, 33.381805, 38.697422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821205, 33.045208, 38.396473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506775, 32.797993, 38.392319>,  <33.318115, 32.649662, 38.389828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506775, 32.797993, 38.392319>,  <33.821205, 33.045208, 38.396473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506775, 32.797993, 38.392319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035638, -0.028541, -0.998957,
		0.617102, -0.785626, 0.044461,
		-0.786076, -0.618043, -0.010385,
		33.270950, 32.612579, 38.389202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920742, 32.518593, 37.900021>,  <33.821205, 33.045208, 38.396473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920742, 32.518593, 37.900021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522041, 32.486961, 37.893909>,  <33.282822, 32.467983, 37.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522041, 32.486961, 37.893909>,  <33.920742, 32.518593, 37.900021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522041, 32.486961, 37.893909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024285, -0.114193, -0.993162,
		0.076791, -0.990307, 0.115742,
		-0.996752, -0.079076, -0.015281,
		33.223015, 32.463238, 37.889324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697865, 32.287354, 38.195175>,  <33.920742, 32.518593, 37.900021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697865, 32.287354, 38.195175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063183, 32.304138, 38.033119>,  <35.282372, 32.314209, 37.935886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063183, 32.304138, 38.033119>,  <34.697865, 32.287354, 38.195175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063183, 32.304138, 38.033119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402997, 0.051180, 0.913769,
		0.059084, -0.997807, 0.029829,
		0.913292, 0.041969, -0.405138,
		35.337170, 32.316727, 37.911579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043053, 31.864443, 38.609558>,  <34.697865, 32.287354, 38.195175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043053, 31.864443, 38.609558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287811, 32.133057, 38.442402>,  <35.434666, 32.294224, 38.342110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287811, 32.133057, 38.442402>,  <35.043053, 31.864443, 38.609558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287811, 32.133057, 38.442402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460152, 0.127486, 0.878640,
		0.643310, -0.729926, -0.230999,
		0.611892, 0.671532, -0.417890,
		35.471378, 32.334515, 38.317036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828426, 31.706223, 38.857002>,  <35.043053, 31.864443, 38.609558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828426, 31.706223, 38.857002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791313, 32.089939, 38.750305>,  <35.769043, 32.320168, 38.686287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791313, 32.089939, 38.750305>,  <35.828426, 31.706223, 38.857002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791313, 32.089939, 38.750305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456714, 0.279057, 0.844712,
		0.884762, -0.043448, -0.464014,
		-0.092785, 0.959291, -0.266743,
		35.763477, 32.377728, 38.670280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515347, 31.925585, 38.959179>,  <35.828426, 31.706223, 38.857002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515347, 31.925585, 38.959179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283379, 32.251160, 38.945351>,  <36.144196, 32.446503, 38.937054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283379, 32.251160, 38.945351>,  <36.515347, 31.925585, 38.959179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283379, 32.251160, 38.945351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392835, 0.316561, 0.863406,
		0.713700, 0.487131, -0.503324,
		-0.579925, 0.813936, -0.034568,
		36.109402, 32.495342, 38.934978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932400, 32.506813, 38.970634>,  <36.515347, 31.925585, 38.959179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932400, 32.506813, 38.970634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575104, 32.601681, 39.123405>,  <36.360725, 32.658604, 39.215069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575104, 32.601681, 39.123405>,  <36.932400, 32.506813, 38.970634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575104, 32.601681, 39.123405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445393, 0.351230, 0.823567,
		0.061184, 0.905752, -0.419369,
		-0.893242, 0.237173, 0.381926,
		36.307133, 32.672832, 39.237984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115799, 33.147884, 39.240429>,  <36.932400, 32.506813, 38.970634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115799, 33.147884, 39.240429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782753, 33.040928, 39.434437>,  <36.582924, 32.976753, 39.550842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782753, 33.040928, 39.434437>,  <37.115799, 33.147884, 39.240429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782753, 33.040928, 39.434437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378021, 0.365664, 0.850523,
		-0.404782, 0.891510, -0.203378,
		-0.832618, -0.267395, 0.485023,
		36.532967, 32.960709, 39.579945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988823, 33.678818, 39.594826>,  <37.115799, 33.147884, 39.240429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988823, 33.678818, 39.594826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770111, 33.396473, 39.774956>,  <36.638885, 33.227066, 39.883034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770111, 33.396473, 39.774956>,  <36.988823, 33.678818, 39.594826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770111, 33.396473, 39.774956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077510, 0.492859, 0.866650,
		-0.833681, 0.508771, -0.214774,
		-0.546779, -0.705863, 0.450323,
		36.606079, 33.184715, 39.910053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692322, 34.182598, 40.075352>,  <36.988823, 33.678818, 39.594826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692322, 34.182598, 40.075352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634010, 33.813988, 40.219315>,  <36.599022, 33.592819, 40.305691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634010, 33.813988, 40.219315>,  <36.692322, 34.182598, 40.075352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634010, 33.813988, 40.219315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157860, 0.337461, 0.928009,
		-0.976642, 0.192099, 0.096278,
		-0.145780, -0.921530, 0.359903,
		36.590275, 33.537529, 40.327286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248356, 34.236942, 40.681446>,  <36.692322, 34.182598, 40.075352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248356, 34.236942, 40.681446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407917, 33.873329, 40.729671>,  <36.503654, 33.655163, 40.758606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407917, 33.873329, 40.729671>,  <36.248356, 34.236942, 40.681446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407917, 33.873329, 40.729671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190581, 0.210794, 0.958772,
		-0.896969, -0.359482, 0.257331,
		0.398905, -0.909031, 0.120565,
		36.527588, 33.600620, 40.765842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931858, 33.983204, 41.195385>,  <36.248356, 34.236942, 40.681446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931858, 33.983204, 41.195385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249969, 33.740719, 41.193260>,  <36.440838, 33.595226, 41.191986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249969, 33.740719, 41.193260>,  <35.931858, 33.983204, 41.195385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249969, 33.740719, 41.193260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109064, 0.134443, 0.984901,
		-0.596348, -0.783854, 0.173037,
		0.795282, -0.606216, -0.005315,
		36.488556, 33.558853, 41.191666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903568, 33.674084, 41.792564>,  <35.931858, 33.983204, 41.195385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903568, 33.674084, 41.792564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284729, 33.605648, 41.692394>,  <36.513424, 33.564587, 41.632294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284729, 33.605648, 41.692394>,  <35.903568, 33.674084, 41.792564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284729, 33.605648, 41.692394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266965, 0.081366, 0.960265,
		-0.143913, -0.981890, 0.123208,
		0.952900, -0.171087, -0.250421,
		36.570599, 33.554321, 41.617268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179985, 33.130379, 42.180565>,  <35.903568, 33.674084, 41.792564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179985, 33.130379, 42.180565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474808, 33.375145, 42.065811>,  <36.651703, 33.522007, 41.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474808, 33.375145, 42.065811>,  <36.179985, 33.130379, 42.180565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474808, 33.375145, 42.065811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412962, -0.071762, 0.907916,
		0.534984, -0.787659, -0.305592,
		0.737058, 0.611918, -0.286882,
		36.695927, 33.558720, 41.979748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686428, 32.988865, 42.666481>,  <36.179985, 33.130379, 42.180565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686428, 32.988865, 42.666481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802433, 33.330086, 42.492954>,  <36.872036, 33.534817, 42.388840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802433, 33.330086, 42.492954>,  <36.686428, 32.988865, 42.666481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802433, 33.330086, 42.492954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441797, 0.282767, 0.851386,
		0.848945, -0.438570, -0.294870,
		0.290013, 0.853053, -0.433812,
		36.889439, 33.586002, 42.362812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369003, 33.048431, 42.691891>,  <36.686428, 32.988865, 42.666481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369003, 33.048431, 42.691891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203579, 33.412354, 42.705868>,  <37.104324, 33.630707, 42.714252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203579, 33.412354, 42.705868>,  <37.369003, 33.048431, 42.691891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203579, 33.412354, 42.705868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338230, 0.117889, 0.933650,
		0.845321, 0.397939, -0.356478,
		-0.413560, 0.909806, 0.034941,
		37.079510, 33.685295, 42.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773739, 33.396172, 43.137924>,  <37.369003, 33.048431, 42.691891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773739, 33.396172, 43.137924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456100, 33.637909, 43.112045>,  <37.265518, 33.782951, 43.096516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456100, 33.637909, 43.112045>,  <37.773739, 33.396172, 43.137924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456100, 33.637909, 43.112045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105222, 0.241536, 0.964670,
		0.598616, 0.759233, -0.255392,
		-0.794096, 0.604340, -0.064699,
		37.217873, 33.819210, 43.092636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970661, 33.932800, 43.378189>,  <37.773739, 33.396172, 43.137924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970661, 33.932800, 43.378189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575096, 33.970955, 43.423710>,  <37.337757, 33.993847, 43.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575096, 33.970955, 43.423710>,  <37.970661, 33.932800, 43.378189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575096, 33.970955, 43.423710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138986, 0.324747, 0.935533,
		0.052281, 0.940978, -0.334404,
		-0.988913, 0.095388, 0.113805,
		37.278423, 33.999573, 43.457851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910236, 34.521084, 43.865208>,  <37.970661, 33.932800, 43.378189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910236, 34.521084, 43.865208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565311, 34.319420, 43.846275>,  <37.358356, 34.198421, 43.834915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565311, 34.319420, 43.846275>,  <37.910236, 34.521084, 43.865208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565311, 34.319420, 43.846275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154986, 0.173780, 0.972512,
		-0.482073, 0.845947, -0.227990,
		-0.862314, -0.504157, -0.047335,
		37.306618, 34.168175, 43.832073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455204, 34.946541, 44.095135>,  <37.910236, 34.521084, 43.865208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455204, 34.946541, 44.095135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317997, 34.575424, 44.153843>,  <37.235672, 34.352753, 44.189068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317997, 34.575424, 44.153843>,  <37.455204, 34.946541, 44.095135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317997, 34.575424, 44.153843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170749, 0.215238, 0.961518,
		-0.923679, 0.304758, -0.232250,
		-0.343019, -0.927791, 0.146774,
		37.215092, 34.297089, 44.197876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794434, 35.107616, 44.560650>,  <37.455204, 34.946541, 44.095135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794434, 35.107616, 44.560650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886185, 34.719009, 44.584435>,  <36.941235, 34.485844, 44.598705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886185, 34.719009, 44.584435>,  <36.794434, 35.107616, 44.560650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886185, 34.719009, 44.584435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263257, -0.003111, 0.964721,
		-0.937061, -0.236936, -0.256473,
		0.229375, -0.971520, 0.059459,
		36.954998, 34.427555, 44.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224884, 34.700508, 44.729214>,  <36.794434, 35.107616, 44.560650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224884, 34.700508, 44.729214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545177, 34.489117, 44.842022>,  <36.737354, 34.362282, 44.909706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545177, 34.489117, 44.842022>,  <36.224884, 34.700508, 44.729214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545177, 34.489117, 44.842022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401924, -0.124911, 0.907113,
		-0.444164, -0.839706, -0.312429,
		0.800735, -0.528480, 0.282018,
		36.785397, 34.330574, 44.926628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995995, 34.154846, 45.229675>,  <36.224884, 34.700508, 44.729214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995995, 34.154846, 45.229675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390686, 34.175823, 45.291134>,  <36.627502, 34.188408, 45.328011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390686, 34.175823, 45.291134>,  <35.995995, 34.154846, 45.229675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390686, 34.175823, 45.291134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153876, 0.000266, 0.988090,
		0.051784, -0.998624, 0.008334,
		0.986732, 0.052450, 0.153650,
		36.686707, 34.191555, 45.337231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056732, 33.691387, 45.794479>,  <35.995995, 34.154846, 45.229675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056732, 33.691387, 45.794479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383789, 33.921677, 45.793102>,  <36.580021, 34.059849, 45.792274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383789, 33.921677, 45.793102>,  <36.056732, 33.691387, 45.794479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383789, 33.921677, 45.793102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028057, 0.045824, 0.998555,
		0.575046, -0.816362, 0.053621,
		0.817640, 0.575720, -0.003446,
		36.629082, 34.094391, 45.792068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476593, 33.425446, 46.301937>,  <36.056732, 33.691387, 45.794479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476593, 33.425446, 46.301937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598869, 33.803925, 46.259480>,  <36.672234, 34.031010, 46.234005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598869, 33.803925, 46.259480>,  <36.476593, 33.425446, 46.301937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598869, 33.803925, 46.259480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121803, 0.071703, 0.989961,
		0.944307, -0.315552, -0.093331,
		0.305692, 0.946195, -0.106145,
		36.690578, 34.087784, 46.227634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193054, 33.489449, 46.730129>,  <36.476593, 33.425446, 46.301937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193054, 33.489449, 46.730129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064106, 33.864708, 46.679604>,  <36.986736, 34.089863, 46.649288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064106, 33.864708, 46.679604>,  <37.193054, 33.489449, 46.730129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064106, 33.864708, 46.679604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268235, 0.218496, 0.938248,
		0.907816, 0.268578, -0.322080,
		-0.322366, 0.938150, -0.126312,
		36.967396, 34.146152, 46.641708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716648, 33.988335, 46.855522>,  <37.193054, 33.489449, 46.730129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716648, 33.988335, 46.855522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388264, 34.207088, 46.921165>,  <37.191231, 34.338341, 46.960552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388264, 34.207088, 46.921165>,  <37.716648, 33.988335, 46.855522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388264, 34.207088, 46.921165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265461, 0.111119, 0.957697,
		0.505517, 0.829799, -0.236402,
		-0.820965, 0.546887, 0.164107,
		37.141975, 34.371155, 46.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908562, 34.422604, 47.358284>,  <37.716648, 33.988335, 46.855522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908562, 34.422604, 47.358284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510605, 34.454525, 47.383030>,  <37.271832, 34.473679, 47.397877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510605, 34.454525, 47.383030>,  <37.908562, 34.422604, 47.358284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510605, 34.454525, 47.383030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078256, 0.222255, 0.971843,
		0.063808, 0.971717, -0.227364,
		-0.994889, 0.079804, 0.061861,
		37.212139, 34.478466, 47.401588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815781, 35.013561, 47.622005>,  <37.908562, 34.422604, 47.358284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815781, 35.013561, 47.622005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468433, 34.828606, 47.693707>,  <37.260025, 34.717632, 47.736729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468433, 34.828606, 47.693707>,  <37.815781, 35.013561, 47.622005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468433, 34.828606, 47.693707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046645, 0.283704, 0.957777,
		-0.493720, 0.840065, -0.224792,
		-0.868369, -0.462388, 0.179255,
		37.207924, 34.689888, 47.747482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380795, 35.500484, 47.902626>,  <37.815781, 35.013561, 47.622005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380795, 35.500484, 47.902626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186943, 35.173008, 48.025845>,  <37.070633, 34.976524, 48.099773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186943, 35.173008, 48.025845>,  <37.380795, 35.500484, 47.902626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186943, 35.173008, 48.025845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122943, 0.412417, 0.902661,
		-0.866039, 0.399580, -0.300519,
		-0.484624, -0.818687, 0.308044,
		37.041557, 34.927402, 48.118259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825985, 35.794117, 48.352383>,  <37.380795, 35.500484, 47.902626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825985, 35.794117, 48.352383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885715, 35.407444, 48.435539>,  <36.921555, 35.175438, 48.485432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885715, 35.407444, 48.435539>,  <36.825985, 35.794117, 48.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885715, 35.407444, 48.435539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067379, 0.219705, 0.973237,
		-0.986489, -0.131326, 0.097943,
		0.149330, -0.966687, 0.207888,
		36.930515, 35.117439, 48.497906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337967, 35.708725, 48.822571>,  <36.825985, 35.794117, 48.352383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337967, 35.708725, 48.822571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565075, 35.385983, 48.887829>,  <36.701340, 35.192337, 48.926983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565075, 35.385983, 48.887829>,  <36.337967, 35.708725, 48.822571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565075, 35.385983, 48.887829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155507, 0.089488, 0.983773,
		-0.808365, -0.583927, -0.074663,
		0.567770, -0.806858, 0.163144,
		36.735405, 35.143925, 48.936771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992184, 35.455917, 49.364719>,  <36.337967, 35.708725, 48.822571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992184, 35.455917, 49.364719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373985, 35.337067, 49.374859>,  <36.603065, 35.265755, 49.380943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373985, 35.337067, 49.374859>,  <35.992184, 35.455917, 49.364719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373985, 35.337067, 49.374859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010766, 0.119268, 0.992804,
		-0.298013, -0.947359, 0.117040,
		0.954501, -0.297128, 0.025344,
		36.660336, 35.247929, 49.382462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947632, 35.064724, 49.906437>,  <35.992184, 35.455917, 49.364719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947632, 35.064724, 49.906437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337879, 35.127502, 49.845074>,  <36.572029, 35.165169, 49.808254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337879, 35.127502, 49.845074>,  <35.947632, 35.064724, 49.906437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337879, 35.127502, 49.845074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128532, 0.157989, 0.979040,
		0.177898, -0.974887, 0.133964,
		0.975619, 0.156951, -0.153410,
		36.630566, 35.174583, 49.799049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230354, 34.819462, 50.447559>,  <35.947632, 35.064724, 49.906437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230354, 34.819462, 50.447559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555557, 35.007664, 50.310364>,  <36.750679, 35.120586, 50.228046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555557, 35.007664, 50.310364>,  <36.230354, 34.819462, 50.447559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555557, 35.007664, 50.310364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252057, 0.246606, 0.935763,
		0.524864, -0.847237, 0.081899,
		0.813010, 0.470505, -0.342987,
		36.799461, 35.148815, 50.207466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849598, 34.580563, 50.837505>,  <36.230354, 34.819462, 50.447559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849598, 34.580563, 50.837505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933350, 34.945011, 50.695507>,  <36.983601, 35.163681, 50.610310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933350, 34.945011, 50.695507>,  <36.849598, 34.580563, 50.837505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933350, 34.945011, 50.695507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395163, 0.253237, 0.883016,
		0.894431, -0.325167, -0.307018,
		0.209379, 0.911119, -0.354997,
		36.996162, 35.218346, 50.589008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527088, 34.841015, 51.072769>,  <36.849598, 34.580563, 50.837505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527088, 34.841015, 51.072769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317184, 35.166271, 50.972023>,  <37.191242, 35.361423, 50.911575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317184, 35.166271, 50.972023>,  <37.527088, 34.841015, 51.072769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317184, 35.166271, 50.972023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193286, 0.401969, 0.895021,
		0.829019, 0.420984, -0.368103,
		-0.524756, 0.813138, -0.251870,
		37.159760, 35.410213, 50.896461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952602, 35.407074, 51.256214>,  <37.527088, 34.841015, 51.072769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952602, 35.407074, 51.256214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583710, 35.559921, 51.232662>,  <37.362373, 35.651630, 51.218533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583710, 35.559921, 51.232662>,  <37.952602, 35.407074, 51.256214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583710, 35.559921, 51.232662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164147, 0.524859, 0.835212,
		0.350054, 0.760597, -0.546767,
		-0.922235, 0.382120, -0.058879,
		37.307037, 35.674557, 51.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011990, 36.185047, 51.181480>,  <37.952602, 35.407074, 51.256214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011990, 36.185047, 51.181480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639763, 36.118824, 51.312107>,  <37.416428, 36.079090, 51.390484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639763, 36.118824, 51.312107>,  <38.011990, 36.185047, 51.181480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639763, 36.118824, 51.312107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199248, 0.519307, 0.831036,
		-0.307171, 0.838398, -0.450261,
		-0.930562, -0.165557, 0.326566,
		37.360596, 36.069157, 51.410076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658615, 36.920921, 51.058014>,  <38.011990, 36.185047, 51.181480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658615, 36.920921, 51.058014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469631, 36.696159, 51.329617>,  <37.356243, 36.561302, 51.492577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469631, 36.696159, 51.329617>,  <37.658615, 36.920921, 51.058014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469631, 36.696159, 51.329617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110704, 0.726478, 0.678214,
		-0.874374, 0.395594, -0.281024,
		-0.472455, -0.561902, 0.679008,
		37.327896, 36.527588, 51.533318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095070, 37.316277, 51.401691>,  <37.658615, 36.920921, 51.058014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095070, 37.316277, 51.401691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248325, 37.048824, 51.656605>,  <37.340279, 36.888351, 51.809555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248325, 37.048824, 51.656605>,  <37.095070, 37.316277, 51.401691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248325, 37.048824, 51.656605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265182, 0.740512, 0.617511,
		-0.884808, -0.067594, 0.461027,
		0.383136, -0.668635, 0.637286,
		37.363266, 36.848232, 51.847790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183674, 37.746185, 50.766666>,  <37.095070, 37.316277, 51.401691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183674, 37.746185, 50.766666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225597, 38.143978, 50.768742>,  <37.250751, 38.382652, 50.769989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225597, 38.143978, 50.768742>,  <37.183674, 37.746185, 50.766666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225597, 38.143978, 50.768742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180185, -0.013856, -0.983535,
		-0.978033, 0.104014, -0.180643,
		0.104805, 0.994479, 0.005190,
		37.257038, 38.442322, 50.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650085, 38.094139, 50.254475>,  <37.183674, 37.746185, 50.766666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650085, 38.094139, 50.254475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980675, 38.310230, 50.317844>,  <37.179028, 38.439884, 50.355865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980675, 38.310230, 50.317844>,  <36.650085, 38.094139, 50.254475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980675, 38.310230, 50.317844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112027, 0.117960, -0.986679,
		-0.551716, 0.833212, 0.036971,
		0.826474, 0.540225, 0.158423,
		37.228619, 38.472298, 50.365372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519779, 38.746353, 49.895607>,  <36.650085, 38.094139, 50.254475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519779, 38.746353, 49.895607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915619, 38.744022, 49.953114>,  <37.153122, 38.742622, 49.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915619, 38.744022, 49.953114>,  <36.519779, 38.746353, 49.895607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915619, 38.744022, 49.953114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141029, 0.237353, -0.961132,
		-0.028518, 0.971406, 0.235705,
		0.989595, -0.005831, 0.143766,
		37.212498, 38.742271, 49.996243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785767, 39.352901, 49.626076>,  <36.519779, 38.746353, 49.895607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785767, 39.352901, 49.626076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098385, 39.103668, 49.613770>,  <37.285957, 38.954128, 49.606384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098385, 39.103668, 49.613770>,  <36.785767, 39.352901, 49.626076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098385, 39.103668, 49.613770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018645, 0.025970, -0.999489,
		0.623564, 0.781724, 0.008680,
		0.781550, -0.623083, -0.030769,
		37.332851, 38.916744, 49.604538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278503, 39.563229, 49.082268>,  <36.785767, 39.352901, 49.626076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278503, 39.563229, 49.082268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364204, 39.175919, 49.133709>,  <37.415627, 38.943531, 49.164574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364204, 39.175919, 49.133709>,  <37.278503, 39.563229, 49.082268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364204, 39.175919, 49.133709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090123, -0.111503, -0.989669,
		0.972611, 0.223633, 0.063374,
		0.214256, -0.968275, 0.128603,
		37.428482, 38.885437, 49.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793720, 39.481144, 48.676670>,  <37.278503, 39.563229, 49.082268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793720, 39.481144, 48.676670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679955, 39.101585, 48.731369>,  <37.611694, 38.873848, 48.764187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679955, 39.101585, 48.731369>,  <37.793720, 39.481144, 48.676670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679955, 39.101585, 48.731369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065495, -0.161537, -0.984691,
		0.956461, -0.271105, 0.108092,
		-0.284415, -0.948898, 0.136747,
		37.594631, 38.816917, 48.772392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231113, 39.001575, 48.290127>,  <37.793720, 39.481144, 48.676670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231113, 39.001575, 48.290127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909714, 38.777428, 48.370502>,  <37.716873, 38.642937, 48.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909714, 38.777428, 48.370502>,  <38.231113, 39.001575, 48.290127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909714, 38.777428, 48.370502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016752, -0.316124, -0.948570,
		0.595075, -0.765538, 0.244617,
		-0.803495, -0.560373, 0.200942,
		37.668667, 38.609318, 48.430786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355293, 38.273777, 48.047180>,  <38.231113, 39.001575, 48.290127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355293, 38.273777, 48.047180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962059, 38.345181, 48.063564>,  <37.726120, 38.388023, 48.073395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962059, 38.345181, 48.063564>,  <38.355293, 38.273777, 48.047180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962059, 38.345181, 48.063564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108929, -0.390116, -0.914300,
		-0.147230, -0.903297, 0.402962,
		-0.983086, 0.178507, 0.040958,
		37.667133, 38.398731, 48.075851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110504, 37.668583, 47.753685>,  <38.355293, 38.273777, 48.047180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110504, 37.668583, 47.753685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819309, 37.942177, 47.734947>,  <37.644592, 38.106335, 47.723705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819309, 37.942177, 47.734947>,  <38.110504, 37.668583, 47.753685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819309, 37.942177, 47.734947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135837, -0.210867, -0.968031,
		-0.671998, -0.698352, 0.246420,
		-0.727988, 0.683988, -0.046840,
		37.600914, 38.147373, 47.720894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694668, 37.414593, 47.363773>,  <38.110504, 37.668583, 47.753685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694668, 37.414593, 47.363773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597725, 37.802265, 47.346073>,  <37.539558, 38.034866, 47.335453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597725, 37.802265, 47.346073>,  <37.694668, 37.414593, 47.363773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597725, 37.802265, 47.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211946, -0.097398, -0.972416,
		-0.946754, -0.226290, 0.229019,
		-0.242354, 0.969178, -0.044251,
		37.525017, 38.093018, 47.332798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089649, 37.314217, 47.025242>,  <37.694668, 37.414593, 47.363773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089649, 37.314217, 47.025242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238541, 37.683132, 46.983601>,  <37.327873, 37.904480, 46.958614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238541, 37.683132, 46.983601>,  <37.089649, 37.314217, 47.025242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238541, 37.683132, 46.983601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028849, -0.100613, -0.994507,
		-0.927694, 0.373183, -0.010843,
		0.372224, 0.922286, -0.104104,
		37.350208, 37.959820, 46.952370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632954, 37.706688, 46.616398>,  <37.089649, 37.314217, 47.025242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632954, 37.706688, 46.616398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998692, 37.859901, 46.563862>,  <37.218136, 37.951828, 46.532341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998692, 37.859901, 46.563862>,  <36.632954, 37.706688, 46.616398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998692, 37.859901, 46.563862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013113, -0.352201, -0.935832,
		-0.404714, 0.853955, -0.327058,
		0.914349, 0.383034, -0.131343,
		37.272995, 37.974812, 46.524460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648594, 38.036163, 45.930008>,  <36.632954, 37.706688, 46.616398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648594, 38.036163, 45.930008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034519, 37.980347, 46.019150>,  <37.266075, 37.946857, 46.072636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034519, 37.980347, 46.019150>,  <36.648594, 38.036163, 45.930008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034519, 37.980347, 46.019150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178440, -0.275005, -0.944739,
		0.193112, 0.951263, -0.240429,
		0.964814, -0.139539, 0.222850,
		37.323963, 37.938484, 46.086006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084202, 38.445347, 45.477989>,  <36.648594, 38.036163, 45.930008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084202, 38.445347, 45.477989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353428, 38.184570, 45.617683>,  <37.514965, 38.028107, 45.701500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353428, 38.184570, 45.617683>,  <37.084202, 38.445347, 45.477989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353428, 38.184570, 45.617683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385692, -0.093501, -0.917877,
		0.631051, 0.752487, 0.188515,
		0.673064, -0.651937, 0.349232,
		37.555347, 37.988991, 45.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645454, 38.540497, 44.958824>,  <37.084202, 38.445347, 45.477989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645454, 38.540497, 44.958824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658585, 38.189850, 45.150848>,  <37.666462, 37.979462, 45.266064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658585, 38.189850, 45.150848>,  <37.645454, 38.540497, 44.958824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658585, 38.189850, 45.150848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220486, -0.462133, -0.858964,
		0.974838, 0.134043, 0.178113,
		0.032827, -0.876622, 0.480059,
		37.668434, 37.926865, 45.294865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268456, 38.265617, 44.720875>,  <37.645454, 38.540497, 44.958824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268456, 38.265617, 44.720875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048000, 37.972984, 44.881390>,  <37.915726, 37.797405, 44.977699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048000, 37.972984, 44.881390>,  <38.268456, 38.265617, 44.720875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048000, 37.972984, 44.881390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007178, -0.485061, -0.874451,
		0.834380, -0.479066, 0.272589,
		-0.551142, -0.731582, 0.401286,
		37.882656, 37.753510, 45.001774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562542, 37.670395, 44.343281>,  <38.268456, 38.265617, 44.720875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562542, 37.670395, 44.343281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212490, 37.553894, 44.497845>,  <38.002457, 37.483994, 44.590584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212490, 37.553894, 44.497845>,  <38.562542, 37.670395, 44.343281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212490, 37.553894, 44.497845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167538, -0.566792, -0.806646,
		0.453953, -0.770661, 0.447223,
		-0.875133, -0.291252, 0.386412,
		37.949951, 37.466518, 44.613770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634247, 36.999374, 44.160690>,  <38.562542, 37.670395, 44.343281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634247, 36.999374, 44.160690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248970, 37.069756, 44.241974>,  <38.017803, 37.111984, 44.290745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248970, 37.069756, 44.241974>,  <38.634247, 36.999374, 44.160690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248970, 37.069756, 44.241974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264361, -0.483295, -0.834589,
		-0.048640, -0.857593, 0.512023,
		-0.963197, 0.175953, 0.203207,
		37.960011, 37.122543, 44.302937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263931, 36.359043, 44.176743>,  <38.634247, 36.999374, 44.160690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263931, 36.359043, 44.176743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990620, 36.634949, 44.080952>,  <37.826633, 36.800491, 44.023479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990620, 36.634949, 44.080952>,  <38.263931, 36.359043, 44.176743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990620, 36.634949, 44.080952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351419, -0.598161, -0.720214,
		-0.640026, -0.407951, 0.651109,
		-0.683280, 0.689768, -0.239477,
		37.785637, 36.841877, 44.009109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728176, 35.974247, 44.074566>,  <38.263931, 36.359043, 44.176743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728176, 35.974247, 44.074566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640965, 36.317165, 43.888012>,  <37.588638, 36.522915, 43.776081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640965, 36.317165, 43.888012>,  <37.728176, 35.974247, 44.074566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640965, 36.317165, 43.888012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450181, -0.512348, -0.731325,
		-0.865909, 0.050505, 0.497645,
		-0.218032, 0.857292, -0.466383,
		37.575554, 36.574352, 43.748096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110764, 35.811337, 43.727718>,  <37.728176, 35.974247, 44.074566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110764, 35.811337, 43.727718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249752, 36.138649, 43.544556>,  <37.333145, 36.335037, 43.434658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249752, 36.138649, 43.544556>,  <37.110764, 35.811337, 43.727718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249752, 36.138649, 43.544556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300307, -0.365502, -0.881036,
		-0.888300, 0.443651, 0.118732,
		0.347475, 0.818280, -0.457907,
		37.353996, 36.384132, 43.407185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707817, 35.809696, 43.100372>,  <37.110764, 35.811337, 43.727718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707817, 35.809696, 43.100372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023766, 36.046108, 43.034904>,  <37.213337, 36.187954, 42.995625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023766, 36.046108, 43.034904>,  <36.707817, 35.809696, 43.100372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023766, 36.046108, 43.034904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020837, -0.240858, -0.970337,
		-0.612917, 0.769853, -0.177933,
		0.789873, 0.591028, -0.163667,
		37.260727, 36.223415, 42.985806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550072, 36.201939, 42.518238>,  <36.707817, 35.809696, 43.100372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550072, 36.201939, 42.518238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949383, 36.184395, 42.533821>,  <37.188969, 36.173866, 42.543171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949383, 36.184395, 42.533821>,  <36.550072, 36.201939, 42.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949383, 36.184395, 42.533821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042561, 0.084528, -0.995512,
		0.040374, 0.995455, 0.086249,
		0.998278, -0.043863, 0.038955,
		37.248867, 36.171234, 42.545509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770275, 36.745338, 41.986301>,  <36.550072, 36.201939, 42.518238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770275, 36.745338, 41.986301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091274, 36.515549, 42.050770>,  <37.283875, 36.377674, 42.089451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091274, 36.515549, 42.050770>,  <36.770275, 36.745338, 41.986301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091274, 36.515549, 42.050770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247914, 0.075352, -0.965847,
		0.542710, 0.815047, 0.202890,
		0.802499, -0.574474, 0.161167,
		37.332024, 36.343208, 42.099121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308590, 37.039536, 41.479713>,  <36.770275, 36.745338, 41.986301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308590, 37.039536, 41.479713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464146, 36.683083, 41.573223>,  <37.557480, 36.469212, 41.629330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464146, 36.683083, 41.573223>,  <37.308590, 37.039536, 41.479713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464146, 36.683083, 41.573223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408933, -0.060414, -0.910562,
		0.825552, 0.449711, 0.340918,
		0.388894, -0.891129, 0.233776,
		37.580814, 36.415745, 41.643356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991455, 37.116020, 41.329887>,  <37.308590, 37.039536, 41.479713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991455, 37.116020, 41.329887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882343, 36.731194, 41.331665>,  <37.816875, 36.500298, 41.332733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882343, 36.731194, 41.331665>,  <37.991455, 37.116020, 41.329887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882343, 36.731194, 41.331665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540084, -0.156953, -0.826847,
		0.796179, -0.223147, 0.562410,
		-0.272780, -0.962066, 0.004444,
		37.800510, 36.442574, 41.332996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655598, 36.718201, 41.327045>,  <37.991455, 37.116020, 41.329887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655598, 36.718201, 41.327045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364513, 36.467697, 41.215160>,  <38.189865, 36.317394, 41.148029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364513, 36.467697, 41.215160>,  <38.655598, 36.718201, 41.327045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364513, 36.467697, 41.215160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488425, -0.186841, -0.852368,
		0.481544, -0.756893, 0.441847,
		-0.727707, -0.626262, -0.279713,
		38.146202, 36.279819, 41.131245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946365, 36.135937, 41.131222>,  <38.655598, 36.718201, 41.327045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946365, 36.135937, 41.131222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601738, 36.182278, 40.933521>,  <38.394962, 36.210083, 40.814903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601738, 36.182278, 40.933521>,  <38.946365, 36.135937, 41.131222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601738, 36.182278, 40.933521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465830, -0.206514, -0.860438,
		-0.201718, -0.971565, 0.123978,
		-0.861575, 0.115813, -0.494242,
		38.343269, 36.217033, 40.785248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921604, 35.492729, 40.710144>,  <38.946365, 36.135937, 41.131222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921604, 35.492729, 40.710144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663822, 35.752434, 40.548584>,  <38.509151, 35.908257, 40.451649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663822, 35.752434, 40.548584>,  <38.921604, 35.492729, 40.710144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663822, 35.752434, 40.548584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471897, -0.077915, -0.878204,
		-0.601658, -0.756560, -0.256174,
		-0.644454, 0.649266, -0.403897,
		38.470486, 35.947212, 40.427414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651783, 35.275043, 39.978336>,  <38.921604, 35.492729, 40.710144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651783, 35.275043, 39.978336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568329, 35.666241, 39.977524>,  <38.518257, 35.900959, 39.977036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568329, 35.666241, 39.977524>,  <38.651783, 35.275043, 39.978336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568329, 35.666241, 39.977524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194941, 0.039550, -0.980017,
		-0.958368, -0.204861, -0.198902,
		-0.208634, 0.977992, -0.002032,
		38.505737, 35.959637, 39.976913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352726, 35.444733, 39.266396>,  <38.651783, 35.275043, 39.978336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352726, 35.444733, 39.266396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479706, 35.790493, 39.422363>,  <38.555893, 35.997948, 39.515942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479706, 35.790493, 39.422363>,  <38.352726, 35.444733, 39.266396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479706, 35.790493, 39.422363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289717, 0.303113, -0.907847,
		-0.902933, 0.401164, -0.154208,
		0.317453, 0.864402, 0.389915,
		38.574944, 36.049812, 39.539337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195702, 35.929977, 38.753143>,  <38.352726, 35.444733, 39.266396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195702, 35.929977, 38.753143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464005, 36.116089, 38.984180>,  <38.624985, 36.227757, 39.122803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464005, 36.116089, 38.984180>,  <38.195702, 35.929977, 38.753143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464005, 36.116089, 38.984180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333130, 0.506788, -0.795104,
		-0.662657, 0.725731, 0.184933,
		0.670753, 0.465274, 0.577590,
		38.665230, 36.255672, 39.157459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156281, 36.637920, 38.542694>,  <38.195702, 35.929977, 38.753143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156281, 36.637920, 38.542694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506062, 36.603882, 38.733730>,  <38.715931, 36.583458, 38.848354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506062, 36.603882, 38.733730>,  <38.156281, 36.637920, 38.542694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506062, 36.603882, 38.733730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442317, 0.544186, -0.712894,
		-0.199234, 0.834638, 0.513503,
		0.874449, -0.085098, 0.477595,
		38.768394, 36.578354, 38.877010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397083, 37.219494, 38.510883>,  <38.156281, 36.637920, 38.542694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397083, 37.219494, 38.510883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724751, 36.996647, 38.565399>,  <38.921352, 36.862938, 38.598106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724751, 36.996647, 38.565399>,  <38.397083, 37.219494, 38.510883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724751, 36.996647, 38.565399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397041, 0.379353, -0.835733,
		0.413905, 0.738719, 0.531956,
		0.819171, -0.557122, 0.136286,
		38.970501, 36.829510, 38.606285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000130, 37.594486, 38.299450>,  <38.397083, 37.219494, 38.510883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000130, 37.594486, 38.299450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169327, 37.232285, 38.312965>,  <39.270847, 37.014965, 38.321075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169327, 37.232285, 38.312965>,  <39.000130, 37.594486, 38.299450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169327, 37.232285, 38.312965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570179, 0.237004, -0.786590,
		0.704250, 0.351991, 0.616550,
		0.422997, -0.905501, 0.033788,
		39.296227, 36.960636, 38.323101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553730, 37.741570, 37.967651>,  <39.000130, 37.594486, 38.299450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553730, 37.741570, 37.967651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529369, 37.342396, 37.959538>,  <39.514751, 37.102890, 37.954670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529369, 37.342396, 37.959538>,  <39.553730, 37.741570, 37.967651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529369, 37.342396, 37.959538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400752, -0.005838, -0.916168,
		0.914160, -0.063924, 0.400281,
		-0.060901, -0.997938, -0.020281,
		39.511101, 37.043015, 37.953453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236347, 37.528839, 37.857792>,  <39.553730, 37.741570, 37.967651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236347, 37.528839, 37.857792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970966, 37.261181, 37.723873>,  <39.811737, 37.100586, 37.643524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970966, 37.261181, 37.723873>,  <40.236347, 37.528839, 37.857792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970966, 37.261181, 37.723873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510582, -0.077802, -0.856302,
		0.546939, -0.739051, 0.393269,
		-0.663448, -0.669141, -0.334793,
		39.771931, 37.060440, 37.623436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729633, 36.985802, 37.512924>,  <40.236347, 37.528839, 37.857792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729633, 36.985802, 37.512924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361275, 36.895325, 37.385933>,  <40.140259, 36.841038, 37.309738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361275, 36.895325, 37.385933>,  <40.729633, 36.985802, 37.512924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361275, 36.895325, 37.385933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379371, -0.332815, -0.863314,
		0.089618, -0.915461, 0.392300,
		-0.920894, -0.226196, -0.317473,
		40.085007, 36.827465, 37.290691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810219, 36.414368, 37.210495>,  <40.729633, 36.985802, 37.512924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810219, 36.414368, 37.210495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480656, 36.561092, 37.037697>,  <40.282917, 36.649128, 36.934017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480656, 36.561092, 37.037697>,  <40.810219, 36.414368, 37.210495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480656, 36.561092, 37.037697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371185, -0.226738, -0.900451,
		-0.428250, -0.902239, 0.050655,
		-0.823908, 0.366815, -0.431998,
		40.233482, 36.671135, 36.908096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435684, 35.917900, 36.803596>,  <40.810219, 36.414368, 37.210495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435684, 35.917900, 36.803596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366890, 36.285023, 36.660458>,  <40.325615, 36.505295, 36.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366890, 36.285023, 36.660458>,  <40.435684, 35.917900, 36.803596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366890, 36.285023, 36.660458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424808, -0.258653, -0.867547,
		-0.888797, -0.301221, -0.345407,
		-0.171982, 0.917804, -0.357851,
		40.315296, 36.560364, 36.553101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696838, 35.221741, 36.564114>,  <40.435684, 35.917900, 36.803596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696838, 35.221741, 36.564114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885742, 34.882290, 36.659443>,  <40.999084, 34.678619, 36.716640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885742, 34.882290, 36.659443>,  <40.696838, 35.221741, 36.564114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885742, 34.882290, 36.659443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631503, 0.514370, 0.580196,
		-0.614958, -0.123501, 0.778828,
		0.472261, -0.848629, 0.238325,
		41.027420, 34.627701, 36.730942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599712, 35.062546, 37.230732>,  <40.696838, 35.221741, 36.564114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599712, 35.062546, 37.230732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950878, 34.945778, 37.078918>,  <41.161579, 34.875717, 36.987831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950878, 34.945778, 37.078918>,  <40.599712, 35.062546, 37.230732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950878, 34.945778, 37.078918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459226, 0.737726, 0.494845,
		0.135535, -0.608723, 0.781720,
		0.877919, -0.291917, -0.379529,
		41.214252, 34.858204, 36.965061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229374, 34.808662, 37.755959>,  <40.599712, 35.062546, 37.230732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229374, 34.808662, 37.755959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304016, 35.021473, 37.425594>,  <41.348801, 35.149158, 37.227375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304016, 35.021473, 37.425594>,  <41.229374, 34.808662, 37.755959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304016, 35.021473, 37.425594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324901, 0.759952, 0.562951,
		0.927156, -0.373388, -0.031046,
		0.186605, 0.532030, -0.825908,
		41.359997, 35.181084, 37.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895081, 34.874603, 37.531921>,  <41.229374, 34.808662, 37.755959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895081, 34.874603, 37.531921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582771, 35.124317, 37.521637>,  <41.395386, 35.274143, 37.515465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582771, 35.124317, 37.521637>,  <41.895081, 34.874603, 37.531921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582771, 35.124317, 37.521637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413085, 0.546638, 0.728387,
		0.468775, 0.558085, -0.684683,
		-0.780776, 0.624282, -0.025714,
		41.348537, 35.311604, 37.513924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156033, 35.559452, 37.387779>,  <41.895081, 34.874603, 37.531921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156033, 35.559452, 37.387779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809128, 35.561359, 37.586906>,  <41.600983, 35.562504, 37.706383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809128, 35.561359, 37.586906>,  <42.156033, 35.559452, 37.387779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809128, 35.561359, 37.586906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434470, 0.495479, 0.752154,
		-0.243074, 0.868607, -0.431783,
		-0.867266, 0.004768, 0.497822,
		41.548946, 35.562790, 37.736252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537663, 35.286301, 36.836700>,  <42.156033, 35.559452, 37.387779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537663, 35.286301, 36.836700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831120, 35.548943, 36.766682>,  <43.007195, 35.706528, 36.724670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831120, 35.548943, 36.766682>,  <42.537663, 35.286301, 36.836700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831120, 35.548943, 36.766682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647922, -0.753558, -0.111122,
		-0.204871, -0.031892, -0.978269,
		0.733639, 0.656607, -0.175046,
		43.051212, 35.745926, 36.714169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851871, 34.872612, 36.303967>,  <42.537663, 35.286301, 36.836700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851871, 34.872612, 36.303967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201134, 34.695492, 36.385487>,  <43.410690, 34.589218, 36.434399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201134, 34.695492, 36.385487>,  <42.851871, 34.872612, 36.303967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201134, 34.695492, 36.385487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383755, -0.882244, -0.272723,
		0.300559, 0.159922, -0.940260,
		0.873153, -0.442799, 0.203796,
		43.463081, 34.562653, 36.446625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831913, 34.360901, 35.868038>,  <42.851871, 34.872612, 36.303967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831913, 34.360901, 35.868038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124088, 34.238522, 36.112289>,  <43.299393, 34.165092, 36.258839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124088, 34.238522, 36.112289>,  <42.831913, 34.360901, 35.868038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124088, 34.238522, 36.112289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307426, -0.945643, -0.106059,
		0.609880, -0.110253, -0.784787,
		0.730435, -0.305947, 0.610624,
		43.343220, 34.146736, 36.295475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979012, 33.678284, 35.641300>,  <42.831913, 34.360901, 35.868038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979012, 33.678284, 35.641300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127338, 33.701897, 36.012032>,  <43.216335, 33.716064, 36.234470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127338, 33.701897, 36.012032>,  <42.979012, 33.678284, 35.641300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127338, 33.701897, 36.012032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290970, -0.940346, 0.176310,
		0.881949, -0.335058, -0.331516,
		0.370814, 0.059035, 0.926829,
		43.238583, 33.719608, 36.290081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544189, 33.087814, 35.715199>,  <42.979012, 33.678284, 35.641300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544189, 33.087814, 35.715199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451691, 33.173328, 36.094845>,  <43.396191, 33.224636, 36.322632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451691, 33.173328, 36.094845>,  <43.544189, 33.087814, 35.715199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451691, 33.173328, 36.094845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126156, -0.973911, 0.188634,
		0.964681, -0.076116, 0.252183,
		-0.231245, 0.213786, 0.949116,
		43.382317, 33.237465, 36.379581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961983, 32.760815, 36.298565>,  <43.544189, 33.087814, 35.715199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961983, 32.760815, 36.298565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596786, 32.840164, 36.441170>,  <43.377670, 32.887775, 36.526733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.596786, 32.840164, 36.441170>,  <43.961983, 32.760815, 36.298565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596786, 32.840164, 36.441170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089289, -0.949800, 0.299845,
		0.398097, 0.241922, 0.884868,
		-0.912987, 0.198377, 0.356511,
		43.322891, 32.899677, 36.548122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026886, 32.391289, 36.820686>,  <43.961983, 32.760815, 36.298565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026886, 32.391289, 36.820686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634384, 32.466434, 36.803490>,  <43.398884, 32.511524, 36.793171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634384, 32.466434, 36.803490>,  <44.026886, 32.391289, 36.820686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634384, 32.466434, 36.803490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192366, -0.941177, 0.277815,
		0.011730, 0.280877, 0.959672,
		-0.981253, 0.187867, -0.042991,
		43.340008, 32.522793, 36.790592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756687, 32.218964, 37.524307>,  <44.026886, 32.391289, 36.820686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756687, 32.218964, 37.524307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477257, 32.202812, 37.238548>,  <43.309601, 32.193123, 37.067093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477257, 32.202812, 37.238548>,  <43.756687, 32.218964, 37.524307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477257, 32.202812, 37.238548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350780, -0.850878, 0.391101,
		-0.623659, 0.523809, 0.580235,
		-0.698572, -0.040379, -0.714400,
		43.267685, 32.190697, 37.024227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047359, 31.931057, 37.837837>,  <43.756687, 32.218964, 37.524307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047359, 31.931057, 37.837837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997215, 31.886555, 37.443497>,  <42.967129, 31.859854, 37.206890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997215, 31.886555, 37.443497>,  <43.047359, 31.931057, 37.837837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997215, 31.886555, 37.443497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450233, -0.879097, 0.156459,
		-0.884068, 0.463477, 0.060108,
		-0.125356, -0.111258, -0.985854,
		42.959610, 31.853178, 37.147739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273560, 31.711500, 37.680504>,  <43.047359, 31.931057, 37.837837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273560, 31.711500, 37.680504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506824, 31.563150, 37.391403>,  <42.646786, 31.474140, 37.217941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506824, 31.563150, 37.391403>,  <42.273560, 31.711500, 37.680504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506824, 31.563150, 37.391403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438039, -0.892837, 0.104711,
		-0.684135, 0.255530, -0.683128,
		0.583165, -0.370873, -0.722753,
		42.681774, 31.451889, 37.174576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931179, 31.090822, 37.537205>,  <42.273560, 31.711500, 37.680504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931179, 31.090822, 37.537205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257706, 31.021914, 37.316681>,  <42.453621, 30.980568, 37.184364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257706, 31.021914, 37.316681>,  <41.931179, 31.090822, 37.537205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257706, 31.021914, 37.316681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287313, -0.949132, -0.128838,
		-0.501074, 0.263572, -0.824290,
		0.816318, -0.172273, -0.551313,
		42.502602, 30.970232, 37.151287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780674, 30.674610, 36.938232>,  <41.931179, 31.090822, 37.537205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780674, 30.674610, 36.938232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172646, 30.612955, 36.988785>,  <42.407829, 30.575962, 37.019115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172646, 30.612955, 36.988785>,  <41.780674, 30.674610, 36.938232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172646, 30.612955, 36.988785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140358, -0.983795, -0.111564,
		0.141528, 0.091587, -0.985689,
		0.979934, -0.154138, 0.126379,
		42.466625, 30.566713, 37.026699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986649, 30.199940, 36.305485>,  <41.780674, 30.674610, 36.938232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986649, 30.199940, 36.305485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260616, 30.152775, 36.593090>,  <42.424995, 30.124475, 36.765656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260616, 30.152775, 36.593090>,  <41.986649, 30.199940, 36.305485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260616, 30.152775, 36.593090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128554, -0.990894, -0.040041,
		0.717191, -0.065008, -0.693837,
		0.684916, -0.117912, 0.719017,
		42.466091, 30.117401, 36.808796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434296, 29.614429, 36.060127>,  <41.986649, 30.199940, 36.305485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434296, 29.614429, 36.060127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489277, 29.622065, 36.456257>,  <42.522266, 29.626646, 36.693935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489277, 29.622065, 36.456257>,  <42.434296, 29.614429, 36.060127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489277, 29.622065, 36.456257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020122, -0.999554, 0.022060,
		0.990304, -0.022960, -0.137007,
		0.137452, 0.019089, 0.990324,
		42.530514, 29.627790, 36.753353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965416, 29.150957, 36.151279>,  <42.434296, 29.614429, 36.060127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965416, 29.150957, 36.151279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816692, 29.191839, 36.520344>,  <42.727455, 29.216370, 36.741783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816692, 29.191839, 36.520344>,  <42.965416, 29.150957, 36.151279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816692, 29.191839, 36.520344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105419, -0.982842, 0.151354,
		0.922302, 0.153542, 0.354660,
		-0.371814, 0.102206, 0.922664,
		42.705147, 29.222502, 36.797142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398098, 28.790718, 36.463074>,  <42.965416, 29.150957, 36.151279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398098, 28.790718, 36.463074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060081, 28.791000, 36.676952>,  <42.857269, 28.791170, 36.805279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060081, 28.791000, 36.676952>,  <43.398098, 28.790718, 36.463074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060081, 28.791000, 36.676952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084556, -0.987240, 0.134935,
		0.527968, 0.159238, 0.834202,
		-0.845045, 0.000704, 0.534695,
		42.806568, 28.791212, 36.837360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554592, 28.315691, 36.936077>,  <43.398098, 28.790718, 36.463074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554592, 28.315691, 36.936077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157413, 28.349020, 36.969810>,  <42.919106, 28.369017, 36.990051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157413, 28.349020, 36.969810>,  <43.554592, 28.315691, 36.936077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157413, 28.349020, 36.969810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072539, -0.989664, 0.123703,
		0.093773, 0.116713, 0.988729,
		-0.992947, 0.083321, 0.084338,
		42.859528, 28.374016, 36.995113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350651, 27.798594, 37.343620>,  <43.554592, 28.315691, 36.936077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350651, 27.798594, 37.343620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004128, 27.897715, 37.170135>,  <42.796215, 27.957188, 37.066044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004128, 27.897715, 37.170135>,  <43.350651, 27.798594, 37.343620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004128, 27.897715, 37.170135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275151, -0.961401, 0.000289,
		-0.416903, 0.119588, 0.901050,
		-0.866305, 0.247804, -0.433716,
		42.744236, 27.972055, 37.040020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912048, 27.419796, 37.708069>,  <43.350651, 27.798594, 37.343620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912048, 27.419796, 37.708069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741825, 27.529539, 37.363132>,  <42.639690, 27.595385, 37.156170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741825, 27.529539, 37.363132>,  <42.912048, 27.419796, 37.708069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741825, 27.529539, 37.363132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358586, -0.926051, -0.117669,
		-0.830852, 0.259147, 0.492471,
		-0.425559, 0.274359, -0.862337,
		42.614159, 27.611847, 37.104431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204803, 27.164276, 37.739861>,  <42.912048, 27.419796, 37.708069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204803, 27.164276, 37.739861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272339, 27.222334, 37.349903>,  <42.312862, 27.257168, 37.115929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272339, 27.222334, 37.349903>,  <42.204803, 27.164276, 37.739861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272339, 27.222334, 37.349903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332953, -0.922557, -0.195013,
		-0.927704, 0.357522, -0.107439,
		0.168840, 0.145143, -0.974898,
		42.322990, 27.265877, 37.057434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586872, 26.870205, 37.360012>,  <42.204803, 27.164276, 37.739861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586872, 26.870205, 37.360012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858101, 26.876392, 37.066078>,  <42.020836, 26.880104, 36.889717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858101, 26.876392, 37.066078>,  <41.586872, 26.870205, 37.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858101, 26.876392, 37.066078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353268, -0.869866, -0.344289,
		-0.644535, 0.493045, -0.584364,
		0.678068, 0.015469, -0.734836,
		42.061520, 26.881033, 36.845627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263454, 26.734446, 36.754814>,  <41.586872, 26.870205, 37.360012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263454, 26.734446, 36.754814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646450, 26.626045, 36.715271>,  <41.876247, 26.561005, 36.691544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646450, 26.626045, 36.715271>,  <41.263454, 26.734446, 36.754814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646450, 26.626045, 36.715271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286352, -0.851466, -0.439326,
		0.034881, 0.448959, -0.892871,
		0.957489, -0.271000, -0.098860,
		41.933697, 26.544744, 36.685612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339317, 26.387531, 36.114426>,  <41.263454, 26.734446, 36.754814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339317, 26.387531, 36.114426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675285, 26.292944, 36.309818>,  <41.876865, 26.236193, 36.427052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675285, 26.292944, 36.309818>,  <41.339317, 26.387531, 36.114426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675285, 26.292944, 36.309818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151957, -0.966551, -0.206611,
		0.520997, 0.099309, -0.847762,
		0.839923, -0.236467, 0.488479,
		41.927261, 26.222004, 36.456364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900013, 26.071938, 35.642807>,  <41.339317, 26.387531, 36.114426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900013, 26.071938, 35.642807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950455, 25.921400, 36.009949>,  <41.980721, 25.831078, 36.230236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950455, 25.921400, 36.009949>,  <41.900013, 26.071938, 35.642807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950455, 25.921400, 36.009949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041312, -0.922450, -0.383901,
		0.991157, 0.086328, -0.100774,
		0.126100, -0.376343, 0.917859,
		41.988285, 25.808496, 36.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397984, 25.566982, 35.638515>,  <41.900013, 26.071938, 35.642807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397984, 25.566982, 35.638515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615955, 25.480370, 35.314499>,  <41.746738, 25.428402, 35.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615955, 25.480370, 35.314499>,  <41.397984, 25.566982, 35.638515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615955, 25.480370, 35.314499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827897, -0.014069, 0.560704,
		-0.132807, -0.976174, 0.171600,
		0.544931, -0.216532, -0.810040,
		41.779434, 25.415409, 35.071487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230934, 24.924057, 35.598373>,  <41.397984, 25.566982, 35.638515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230934, 24.924057, 35.598373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854168, 24.834208, 35.698246>,  <40.628109, 24.780298, 35.758167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854168, 24.834208, 35.698246>,  <41.230934, 24.924057, 35.598373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854168, 24.834208, 35.698246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031155, -0.798653, -0.600985,
		0.334402, -0.558298, 0.759262,
		-0.941916, -0.224625, 0.249677,
		40.571594, 24.766821, 35.773148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214962, 24.314381, 35.246273>,  <41.230934, 24.924057, 35.598373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214962, 24.314381, 35.246273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854744, 24.399105, 35.398140>,  <40.638611, 24.449940, 35.489262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854744, 24.399105, 35.398140>,  <41.214962, 24.314381, 35.246273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854744, 24.399105, 35.398140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351343, -0.868931, -0.348593,
		0.256073, -0.447320, 0.856932,
		-0.900547, 0.211812, 0.379672,
		40.584579, 24.462648, 35.512043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609558, 24.816212, 34.898571>,  <41.214962, 24.314381, 35.246273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609558, 24.816212, 34.898571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674061, 24.588108, 34.576378>,  <41.712761, 24.451246, 34.383060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674061, 24.588108, 34.576378>,  <41.609558, 24.816212, 34.898571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674061, 24.588108, 34.576378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372246, 0.720738, -0.584782,
		0.914019, 0.394136, -0.096056,
		0.161252, -0.570258, -0.805484,
		41.722435, 24.417030, 34.334732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088085, 25.120527, 34.364002>,  <41.609558, 24.816212, 34.898571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088085, 25.120527, 34.364002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765091, 24.931248, 34.223118>,  <41.571293, 24.817680, 34.138588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765091, 24.931248, 34.223118>,  <42.088085, 25.120527, 34.364002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765091, 24.931248, 34.223118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261662, 0.822452, -0.505079,
		0.528678, -0.315684, -0.787936,
		-0.807485, -0.473197, -0.352210,
		41.522846, 24.789288, 34.117455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474495, 25.768267, 34.181240>,  <42.088085, 25.120527, 34.364002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474495, 25.768267, 34.181240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585392, 25.664274, 33.811256>,  <42.651928, 25.601879, 33.589268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585392, 25.664274, 33.811256>,  <42.474495, 25.768267, 34.181240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585392, 25.664274, 33.811256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954229, 0.037902, -0.296665,
		0.112185, 0.964869, -0.237574,
		0.277239, -0.259982, -0.924958,
		42.668564, 25.586279, 33.533768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038559, 26.175842, 33.630081>,  <42.474495, 25.768267, 34.181240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038559, 26.175842, 33.630081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145786, 25.820465, 33.481052>,  <42.210121, 25.607239, 33.391636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145786, 25.820465, 33.481052>,  <42.038559, 26.175842, 33.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145786, 25.820465, 33.481052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963394, -0.248615, -0.100309,
		-0.003509, 0.385825, -0.922565,
		0.268066, -0.888443, -0.372574,
		42.226208, 25.553932, 33.369282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575401, 26.070177, 33.285110>,  <42.038559, 26.175842, 33.630081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575401, 26.070177, 33.285110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243729, 26.292072, 33.257626>,  <42.044724, 26.425209, 33.241135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243729, 26.292072, 33.257626>,  <42.575401, 26.070177, 33.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243729, 26.292072, 33.257626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558817, 0.819711, -0.125686,
		-0.013400, -0.142613, -0.989688,
		-0.829183, 0.554739, -0.068711,
		41.994972, 26.458494, 33.237011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756580, 26.541199, 32.853657>,  <42.575401, 26.070177, 33.285110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756580, 26.541199, 32.853657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423458, 26.713593, 32.992619>,  <42.223587, 26.817028, 33.075996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423458, 26.713593, 32.992619>,  <42.756580, 26.541199, 32.853657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423458, 26.713593, 32.992619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504490, 0.849241, 0.155818,
		-0.227879, 0.305030, -0.924677,
		-0.832803, 0.430983, 0.347409,
		42.173618, 26.842888, 33.096840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581291, 27.237085, 32.458767>,  <42.756580, 26.541199, 32.853657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581291, 27.237085, 32.458767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432743, 27.225428, 32.829979>,  <42.343613, 27.218433, 33.052704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432743, 27.225428, 32.829979>,  <42.581291, 27.237085, 32.458767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432743, 27.225428, 32.829979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386598, 0.903891, 0.183092,
		-0.844171, 0.426768, -0.324412,
		-0.371371, -0.029143, 0.928027,
		42.321331, 27.216684, 33.108387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233810, 27.834120, 32.508720>,  <42.581291, 27.237085, 32.458767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233810, 27.834120, 32.508720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295475, 27.723900, 32.888260>,  <42.332474, 27.657768, 33.115982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295475, 27.723900, 32.888260>,  <42.233810, 27.834120, 32.508720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295475, 27.723900, 32.888260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265816, 0.936486, 0.228772,
		-0.951617, 0.216950, 0.217618,
		0.154164, -0.275549, 0.948845,
		42.341724, 27.641235, 33.172913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941074, 28.443686, 33.008099>,  <42.233810, 27.834120, 32.508720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941074, 28.443686, 33.008099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195583, 28.227779, 33.228573>,  <42.348289, 28.098236, 33.360859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195583, 28.227779, 33.228573>,  <41.941074, 28.443686, 33.008099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195583, 28.227779, 33.228573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375557, 0.840814, 0.389857,
		-0.673879, -0.041052, 0.737700,
		0.636274, -0.539765, 0.551189,
		42.386467, 28.065849, 33.393929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842827, 28.776302, 33.724003>,  <41.941074, 28.443686, 33.008099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842827, 28.776302, 33.724003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180767, 28.562731, 33.710445>,  <42.383530, 28.434587, 33.702312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180767, 28.562731, 33.710445>,  <41.842827, 28.776302, 33.724003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180767, 28.562731, 33.710445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520093, 0.804805, 0.285992,
		-0.125425, -0.259246, 0.957632,
		0.844850, -0.533929, -0.033889,
		42.434223, 28.402552, 33.700279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224407, 28.760708, 34.329254>,  <41.842827, 28.776302, 33.724003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224407, 28.760708, 34.329254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510647, 28.648775, 34.073250>,  <42.682392, 28.581615, 33.919647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510647, 28.648775, 34.073250>,  <42.224407, 28.760708, 34.329254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510647, 28.648775, 34.073250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573454, 0.758507, 0.309543,
		0.398831, -0.588524, 0.703259,
		0.715601, -0.279831, -0.640008,
		42.725327, 28.564825, 33.881248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774303, 29.000044, 34.808296>,  <42.224407, 28.760708, 34.329254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774303, 29.000044, 34.808296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925365, 28.972744, 34.438927>,  <43.016003, 28.956364, 34.217304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925365, 28.972744, 34.438927>,  <42.774303, 29.000044, 34.808296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925365, 28.972744, 34.438927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600693, 0.777004, 0.188239,
		0.704660, -0.625785, 0.334436,
		0.377655, -0.068249, -0.923428,
		43.038662, 28.952269, 34.161900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519154, 28.756598, 34.852291>,  <42.774303, 29.000044, 34.808296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519154, 28.756598, 34.852291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510273, 28.912031, 34.483833>,  <43.504944, 29.005291, 34.262760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510273, 28.912031, 34.483833>,  <43.519154, 28.756598, 34.852291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510273, 28.912031, 34.483833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674825, 0.685637, 0.272972,
		0.737644, -0.615552, -0.277448,
		-0.022200, 0.388585, -0.921146,
		43.503613, 29.028606, 34.207489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086716, 28.982542, 34.764450>,  <43.519154, 28.756598, 34.852291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086716, 28.982542, 34.764450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903927, 29.193146, 34.477688>,  <43.794254, 29.319508, 34.305630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903927, 29.193146, 34.477688>,  <44.086716, 28.982542, 34.764450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903927, 29.193146, 34.477688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495290, 0.820096, 0.286583,
		0.738823, -0.224116, -0.635541,
		-0.456976, 0.526512, -0.716909,
		43.766834, 29.351099, 34.262615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614677, 29.443748, 34.438847>,  <44.086716, 28.982542, 34.764450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614677, 29.443748, 34.438847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263657, 29.615452, 34.353397>,  <44.053043, 29.718473, 34.302128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263657, 29.615452, 34.353397>,  <44.614677, 29.443748, 34.438847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263657, 29.615452, 34.353397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378829, 0.893838, 0.239880,
		0.293915, 0.129581, -0.947007,
		-0.877555, 0.429258, -0.213623,
		44.000389, 29.744228, 34.289310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750103, 29.957193, 33.978359>,  <44.614677, 29.443748, 34.438847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750103, 29.957193, 33.978359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397694, 30.063648, 34.134808>,  <44.186249, 30.127522, 34.228676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397694, 30.063648, 34.134808>,  <44.750103, 29.957193, 33.978359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397694, 30.063648, 34.134808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345611, 0.926636, 0.147983,
		-0.323044, 0.265551, -0.908364,
		-0.881020, 0.266135, 0.391121,
		44.133389, 30.143488, 34.252144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537598, 30.635872, 33.680809>,  <44.750103, 29.957193, 33.978359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537598, 30.635872, 33.680809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369991, 30.598398, 34.042061>,  <44.269428, 30.575914, 34.258812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369991, 30.598398, 34.042061>,  <44.537598, 30.635872, 33.680809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369991, 30.598398, 34.042061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436945, 0.851112, 0.291012,
		-0.795930, 0.516558, -0.315694,
		-0.419015, -0.093684, 0.903133,
		44.244286, 30.570293, 34.313000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056438, 31.238369, 33.823242>,  <44.537598, 30.635872, 33.680809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056438, 31.238369, 33.823242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124813, 31.069574, 34.179379>,  <44.165836, 30.968298, 34.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.124813, 31.069574, 34.179379>,  <44.056438, 31.238369, 33.823242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124813, 31.069574, 34.179379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255250, 0.891757, 0.373653,
		-0.951645, 0.163390, 0.260144,
		0.170934, -0.421987, 0.890342,
		44.176094, 30.942978, 34.446480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802551, 31.895172, 34.284477>,  <44.056438, 31.238369, 33.823242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802551, 31.895172, 34.284477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005871, 31.617966, 34.488972>,  <44.127861, 31.451641, 34.611668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005871, 31.617966, 34.488972>,  <43.802551, 31.895172, 34.284477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005871, 31.617966, 34.488972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322229, 0.703570, 0.633370,
		-0.798625, -0.157208, 0.580934,
		0.508298, -0.693018, 0.511232,
		44.158360, 31.410061, 34.642342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820137, 32.222435, 34.955135>,  <43.802551, 31.895172, 34.284477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820137, 32.222435, 34.955135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099445, 31.938324, 34.990753>,  <44.267029, 31.767859, 35.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099445, 31.938324, 34.990753>,  <43.820137, 32.222435, 34.955135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099445, 31.938324, 34.990753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555603, 0.616196, 0.558218,
		-0.451359, -0.340312, 0.824902,
		0.698270, -0.710274, 0.089047,
		44.308926, 31.725241, 35.017467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032864, 32.197582, 35.683483>,  <43.820137, 32.222435, 34.955135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032864, 32.197582, 35.683483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331059, 32.032127, 35.474426>,  <44.509975, 31.932856, 35.348991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331059, 32.032127, 35.474426>,  <44.032864, 32.197582, 35.683483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331059, 32.032127, 35.474426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658853, 0.575914, 0.483979,
		0.100806, -0.705144, 0.701862,
		0.745487, -0.413636, -0.522641,
		44.554707, 31.908037, 35.317635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569790, 31.985601, 36.217205>,  <44.032864, 32.197582, 35.683483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569790, 31.985601, 36.217205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754383, 31.999504, 35.862617>,  <44.865139, 32.007847, 35.649864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754383, 31.999504, 35.862617>,  <44.569790, 31.985601, 36.217205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754383, 31.999504, 35.862617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758193, 0.503373, 0.414439,
		0.460630, -0.863370, 0.205944,
		0.461481, 0.034758, -0.886469,
		44.892826, 32.009933, 35.596676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282051, 31.945507, 36.362396>,  <44.569790, 31.985601, 36.217205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282051, 31.945507, 36.362396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261768, 32.110020, 35.998360>,  <45.249599, 32.208729, 35.779938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261768, 32.110020, 35.998360>,  <45.282051, 31.945507, 36.362396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261768, 32.110020, 35.998360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754977, 0.612330, 0.234655,
		0.653788, -0.675202, -0.341559,
		-0.050707, 0.411284, -0.910096,
		45.246555, 32.233406, 35.725330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904396, 32.140537, 36.246250>,  <45.282051, 31.945507, 36.362396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904396, 32.140537, 36.246250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707870, 32.342503, 35.962368>,  <45.589954, 32.463680, 35.792038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707870, 32.342503, 35.962368>,  <45.904396, 32.140537, 36.246250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707870, 32.342503, 35.962368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587521, 0.793652, 0.157912,
		0.642987, -0.339380, -0.686578,
		-0.491311, 0.504914, -0.709701,
		45.560478, 32.493977, 35.749458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446342, 32.419426, 35.804207>,  <45.904396, 32.140537, 36.246250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446342, 32.419426, 35.804207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115242, 32.642929, 35.783745>,  <45.916580, 32.777031, 35.771469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115242, 32.642929, 35.783745>,  <46.446342, 32.419426, 35.804207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115242, 32.642929, 35.783745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560429, 0.818895, -0.123810,
		-0.027289, -0.131153, -0.990986,
		-0.827752, 0.558757, -0.051155,
		45.866917, 32.810555, 35.768398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559944, 32.816570, 35.289822>,  <46.446342, 32.419426, 35.804207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559944, 32.816570, 35.289822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296036, 33.017628, 35.513271>,  <46.137691, 33.138260, 35.647339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296036, 33.017628, 35.513271>,  <46.559944, 32.816570, 35.289822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296036, 33.017628, 35.513271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607092, 0.794629, 0.002018,
		-0.442883, 0.340467, -0.829420,
		-0.659768, 0.502640, 0.558622,
		46.098106, 33.168419, 35.680859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575893, 33.559158, 35.126598>,  <46.559944, 32.816570, 35.289822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575893, 33.559158, 35.126598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453568, 33.529987, 35.506317>,  <46.380173, 33.512486, 35.734146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.453568, 33.529987, 35.506317>,  <46.575893, 33.559158, 35.126598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453568, 33.529987, 35.506317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611737, 0.748968, 0.254608,
		-0.729558, 0.658581, -0.184435,
		-0.305816, -0.072926, 0.949294,
		46.361824, 33.508110, 35.791107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527912, 34.264111, 34.920727>,  <46.575893, 33.559158, 35.126598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527912, 34.264111, 34.920727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670395, 34.603127, 34.763351>,  <46.755886, 34.806538, 34.668926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670395, 34.603127, 34.763351>,  <46.527912, 34.264111, 34.920727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670395, 34.603127, 34.763351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692607, 0.043147, 0.720023,
		0.627224, -0.528974, -0.571644,
		0.356209, 0.847541, -0.393434,
		46.777256, 34.857388, 34.645321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333645, 34.260094, 34.921856>,  <46.527912, 34.264111, 34.920727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333645, 34.260094, 34.921856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226231, 34.644539, 34.947636>,  <47.161781, 34.875206, 34.963104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226231, 34.644539, 34.947636>,  <47.333645, 34.260094, 34.921856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226231, 34.644539, 34.947636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501442, 0.082350, 0.861263,
		0.822464, 0.263593, -0.504056,
		-0.268532, 0.961113, 0.064446,
		47.145672, 34.932873, 34.966969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.002697, 34.613625, 35.093113>,  <47.333645, 34.260094, 34.921856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.002697, 34.613625, 35.093113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671700, 34.803165, 35.213593>,  <47.473103, 34.916889, 35.285881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671700, 34.803165, 35.213593>,  <48.002697, 34.613625, 35.093113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671700, 34.803165, 35.213593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437693, 0.208378, 0.874644,
		0.351690, 0.855593, -0.379834,
		-0.827489, 0.473855, 0.301203,
		47.423454, 34.945320, 35.303955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.849220, 40.512215, 44.145145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.575653, 40.221680, 44.172527>,  <33.411510, 40.047359, 44.188957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.575653, 40.221680, 44.172527>,  <33.849220, 40.512215, 44.145145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575653, 40.221680, 44.172527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254281, -0.325265, -0.910793,
		0.683808, -0.605504, 0.407149,
		-0.683920, -0.726338, 0.068450,
		33.370476, 40.003777, 44.193062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064800, 39.865395, 44.043152>,  <33.849220, 40.512215, 44.145145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064800, 39.865395, 44.043152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684425, 39.765915, 43.969540>,  <33.456200, 39.706226, 43.925373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684425, 39.765915, 43.969540>,  <34.064800, 39.865395, 44.043152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684425, 39.765915, 43.969540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284246, -0.467466, -0.837066,
		0.122148, -0.848307, 0.515223,
		-0.950938, -0.248696, -0.184028,
		33.399143, 39.691307, 43.914330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053257, 39.150940, 43.681725>,  <34.064800, 39.865395, 44.043152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053257, 39.150940, 43.681725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.710285, 39.331955, 43.583717>,  <33.504501, 39.440563, 43.524914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.710285, 39.331955, 43.583717>,  <34.053257, 39.150940, 43.681725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710285, 39.331955, 43.583717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160939, -0.216427, -0.962942,
		-0.488793, -0.865084, 0.112740,
		-0.857426, 0.452535, -0.245014,
		33.453056, 39.467716, 43.510212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743549, 38.733475, 43.201817>,  <34.053257, 39.150940, 43.681725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743549, 38.733475, 43.201817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.565426, 39.085163, 43.134083>,  <33.458549, 39.296177, 43.093441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.565426, 39.085163, 43.134083>,  <33.743549, 38.733475, 43.201817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565426, 39.085163, 43.134083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095129, -0.141593, -0.985344,
		-0.890309, -0.454892, -0.020587,
		-0.445310, 0.879218, -0.169335,
		33.431831, 39.348930, 43.083282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289249, 38.560497, 42.710903>,  <33.743549, 38.733475, 43.201817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289249, 38.560497, 42.710903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330826, 38.957367, 42.683216>,  <33.355774, 39.195488, 42.666603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330826, 38.957367, 42.683216>,  <33.289249, 38.560497, 42.710903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330826, 38.957367, 42.683216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008416, -0.070470, -0.997478,
		-0.994547, 0.103100, -0.015676,
		0.103944, 0.992172, -0.069218,
		33.362011, 39.255020, 42.662449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765186, 38.712723, 42.183140>,  <33.289249, 38.560497, 42.710903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765186, 38.712723, 42.183140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045712, 38.997845, 42.180122>,  <33.214027, 39.168919, 42.178310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045712, 38.997845, 42.180122>,  <32.765186, 38.712723, 42.183140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045712, 38.997845, 42.180122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013114, -0.023488, -0.999638,
		-0.712728, 0.700965, -0.025820,
		0.701317, 0.712809, -0.007548,
		33.256107, 39.211689, 42.177856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561047, 39.087273, 41.603588>,  <32.765186, 38.712723, 42.183140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561047, 39.087273, 41.603588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.937157, 39.196575, 41.684799>,  <33.162823, 39.262157, 41.733528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.937157, 39.196575, 41.684799>,  <32.561047, 39.087273, 41.603588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937157, 39.196575, 41.684799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239756, -0.108157, -0.964790,
		-0.241672, 0.955842, -0.167211,
		0.940272, 0.273253, 0.203030,
		33.219238, 39.278549, 41.745708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747616, 39.640503, 41.127670>,  <32.561047, 39.087273, 41.603588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747616, 39.640503, 41.127670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.073162, 39.443043, 41.250267>,  <33.268490, 39.324566, 41.323826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.073162, 39.443043, 41.250267>,  <32.747616, 39.640503, 41.127670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073162, 39.443043, 41.250267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299129, -0.096252, -0.949346,
		0.498146, 0.864317, 0.069329,
		0.813863, -0.493651, 0.306490,
		33.317322, 39.294949, 41.342213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283726, 39.810017, 40.630775>,  <32.747616, 39.640503, 41.127670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283726, 39.810017, 40.630775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455654, 39.503639, 40.822018>,  <33.558811, 39.319813, 40.936764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455654, 39.503639, 40.822018>,  <33.283726, 39.810017, 40.630775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455654, 39.503639, 40.822018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435679, -0.287853, -0.852833,
		0.790848, 0.574862, 0.209983,
		0.429817, -0.765947, 0.478103,
		33.584599, 39.273853, 40.965450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067810, 39.894756, 40.496128>,  <33.283726, 39.810017, 40.630775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067810, 39.894756, 40.496128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.004051, 39.507336, 40.572552>,  <33.965797, 39.274883, 40.618408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.004051, 39.507336, 40.572552>,  <34.067810, 39.894756, 40.496128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004051, 39.507336, 40.572552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560877, -0.248116, -0.789846,
		0.812410, -0.018735, 0.582785,
		-0.159396, -0.968549, 0.191064,
		33.956234, 39.216770, 40.629871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715614, 39.560852, 40.392189>,  <34.067810, 39.894756, 40.496128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715614, 39.560852, 40.392189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458336, 39.255543, 40.367783>,  <34.303970, 39.072357, 40.353138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458336, 39.255543, 40.367783>,  <34.715614, 39.560852, 40.392189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458336, 39.255543, 40.367783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600257, -0.453141, -0.659056,
		0.475390, -0.460523, 0.749615,
		-0.643192, -0.763270, -0.061013,
		34.265377, 39.026562, 40.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140400, 39.013725, 40.633621>,  <34.715614, 39.560852, 40.392189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140400, 39.013725, 40.633621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853470, 38.881573, 40.388248>,  <34.681313, 38.802280, 40.241024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853470, 38.881573, 40.388248>,  <35.140400, 39.013725, 40.633621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853470, 38.881573, 40.388248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694574, -0.269694, -0.666957,
		0.054908, -0.904498, 0.422928,
		-0.717322, -0.330377, -0.613433,
		34.638271, 38.782459, 40.204220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430271, 38.314594, 40.399834>,  <35.140400, 39.013725, 40.633621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430271, 38.314594, 40.399834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154140, 38.423950, 40.131893>,  <34.988461, 38.489563, 39.971127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.154140, 38.423950, 40.131893>,  <35.430271, 38.314594, 40.399834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154140, 38.423950, 40.131893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611573, -0.274169, -0.742165,
		-0.386557, -0.922001, 0.022065,
		-0.690327, 0.273395, -0.669854,
		34.947041, 38.505970, 39.930939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315254, 37.754417, 39.912800>,  <35.430271, 38.314594, 40.399834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315254, 37.754417, 39.912800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187534, 38.075802, 39.711800>,  <35.110905, 38.268631, 39.591202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187534, 38.075802, 39.711800>,  <35.315254, 37.754417, 39.912800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187534, 38.075802, 39.711800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474879, -0.323217, -0.818548,
		-0.820085, -0.499986, -0.278343,
		-0.319298, 0.803458, -0.502498,
		35.091743, 38.316837, 39.561050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050091, 37.438198, 39.277107>,  <35.315254, 37.754417, 39.912800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050091, 37.438198, 39.277107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093773, 37.821461, 39.171265>,  <35.119984, 38.051418, 39.107761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093773, 37.821461, 39.171265>,  <35.050091, 37.438198, 39.277107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093773, 37.821461, 39.171265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488474, -0.283568, -0.825217,
		-0.865718, -0.039131, -0.499001,
		0.109209, 0.958153, -0.264604,
		35.126537, 38.108906, 39.091885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819580, 37.554966, 38.611370>,  <35.050091, 37.438198, 39.277107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819580, 37.554966, 38.611370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042965, 37.883247, 38.659653>,  <35.176994, 38.080215, 38.688622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042965, 37.883247, 38.659653>,  <34.819580, 37.554966, 38.611370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042965, 37.883247, 38.659653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421684, -0.155558, -0.893300,
		-0.714356, 0.549773, -0.432950,
		0.558461, 0.820701, 0.120707,
		35.210503, 38.129459, 38.695866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634605, 38.007526, 38.087612>,  <34.819580, 37.554966, 38.611370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634605, 38.007526, 38.087612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989082, 38.145760, 38.211048>,  <35.201771, 38.228699, 38.285110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989082, 38.145760, 38.211048>,  <34.634605, 38.007526, 38.087612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989082, 38.145760, 38.211048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405000, -0.254336, -0.878230,
		-0.225012, 0.903265, -0.365351,
		0.886197, 0.345579, 0.308593,
		35.254940, 38.249432, 38.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922108, 38.294296, 37.411129>,  <34.634605, 38.007526, 38.087612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922108, 38.294296, 37.411129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229771, 38.285885, 37.666615>,  <35.414368, 38.280838, 37.819904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229771, 38.285885, 37.666615>,  <34.922108, 38.294296, 37.411129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229771, 38.285885, 37.666615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638883, 0.048828, -0.767752,
		-0.015042, 0.998586, 0.050991,
		0.769156, -0.021029, 0.638714,
		35.460518, 38.279575, 37.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319340, 38.921700, 37.178719>,  <34.922108, 38.294296, 37.411129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319340, 38.921700, 37.178719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554348, 38.658852, 37.367615>,  <35.695354, 38.501144, 37.480953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554348, 38.658852, 37.367615>,  <35.319340, 38.921700, 37.178719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554348, 38.658852, 37.367615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624164, -0.003415, -0.781286,
		0.515010, 0.753780, 0.408143,
		0.587524, -0.657118, 0.472241,
		35.730606, 38.461716, 37.509289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008087, 39.099880, 36.974808>,  <35.319340, 38.921700, 37.178719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008087, 39.099880, 36.974808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055855, 38.732460, 37.125538>,  <36.084515, 38.512009, 37.215977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055855, 38.732460, 37.125538>,  <36.008087, 39.099880, 36.974808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055855, 38.732460, 37.125538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638010, -0.219800, -0.737991,
		0.760711, 0.328550, 0.559798,
		0.119423, -0.918555, 0.376823,
		36.091682, 38.456894, 37.238586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722507, 38.804409, 36.851139>,  <36.008087, 39.099880, 36.974808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722507, 38.804409, 36.851139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506290, 38.471828, 36.902531>,  <36.376560, 38.272282, 36.933365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506290, 38.471828, 36.902531>,  <36.722507, 38.804409, 36.851139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506290, 38.471828, 36.902531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465140, -0.422597, -0.777854,
		0.701041, -0.360701, 0.615171,
		-0.540543, -0.831448, 0.128481,
		36.344128, 38.222393, 36.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178574, 38.197586, 37.034561>,  <36.722507, 38.804409, 36.851139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178574, 38.197586, 37.034561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834511, 38.086769, 36.863274>,  <36.628071, 38.020279, 36.760502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834511, 38.086769, 36.863274>,  <37.178574, 38.197586, 37.034561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834511, 38.086769, 36.863274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509060, -0.414673, -0.754258,
		0.031392, -0.866771, 0.497717,
		-0.860159, -0.277045, -0.428221,
		36.576462, 38.003654, 36.734806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840561, 37.835732, 36.865093>,  <37.178574, 38.197586, 37.034561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840561, 37.835732, 36.865093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.140678, 38.092129, 36.800362>,  <38.320747, 38.245968, 36.761520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.140678, 38.092129, 36.800362>,  <37.840561, 37.835732, 36.865093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140678, 38.092129, 36.800362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182935, 0.436527, 0.880897,
		0.635294, -0.631324, 0.444782,
		0.750291, 0.640995, -0.161832,
		38.365765, 38.284428, 36.751812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342289, 37.779808, 37.438995>,  <37.840561, 37.835732, 36.865093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342289, 37.779808, 37.438995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401421, 38.133213, 37.261208>,  <38.436897, 38.345257, 37.154537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401421, 38.133213, 37.261208>,  <38.342289, 37.779808, 37.438995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401421, 38.133213, 37.261208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103062, 0.433196, 0.895388,
		0.983629, -0.178170, -0.027019,
		0.147827, 0.883514, -0.444467,
		38.445770, 38.398266, 37.127869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982479, 38.044926, 37.663513>,  <38.342289, 37.779808, 37.438995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982479, 38.044926, 37.663513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767017, 38.362843, 37.551685>,  <38.637741, 38.553593, 37.484589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.767017, 38.362843, 37.551685>,  <38.982479, 38.044926, 37.663513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767017, 38.362843, 37.551685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034703, 0.352473, 0.935178,
		0.841813, 0.494035, -0.217442,
		-0.538653, 0.794791, -0.279572,
		38.605423, 38.601280, 37.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296162, 38.613049, 38.010551>,  <38.982479, 38.044926, 37.663513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296162, 38.613049, 38.010551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920788, 38.706078, 37.908375>,  <38.695564, 38.761894, 37.847069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920788, 38.706078, 37.908375>,  <39.296162, 38.613049, 38.010551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920788, 38.706078, 37.908375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184872, 0.286540, 0.940062,
		0.291827, 0.929411, -0.225903,
		-0.938434, 0.232572, -0.255443,
		38.639259, 38.775848, 37.831741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106079, 39.301575, 38.290234>,  <39.296162, 38.613049, 38.010551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106079, 39.301575, 38.290234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752213, 39.132957, 38.210567>,  <38.539894, 39.031788, 38.162769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752213, 39.132957, 38.210567>,  <39.106079, 39.301575, 38.290234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752213, 39.132957, 38.210567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367246, 0.366901, 0.854701,
		-0.287219, 0.829268, -0.479395,
		-0.884667, -0.421542, -0.199165,
		38.486813, 39.006496, 38.150818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589603, 39.827274, 38.307621>,  <39.106079, 39.301575, 38.290234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589603, 39.827274, 38.307621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391701, 39.480412, 38.330456>,  <38.272957, 39.272293, 38.344158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391701, 39.480412, 38.330456>,  <38.589603, 39.827274, 38.307621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391701, 39.480412, 38.330456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508729, 0.342269, 0.789966,
		-0.704562, 0.361800, -0.610486,
		-0.494760, -0.867152, 0.057091,
		38.243271, 39.220264, 38.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020340, 40.091927, 38.542278>,  <38.589603, 39.827274, 38.307621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020340, 40.091927, 38.542278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965637, 39.701771, 38.611465>,  <37.932816, 39.467678, 38.652977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965637, 39.701771, 38.611465>,  <38.020340, 40.091927, 38.542278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965637, 39.701771, 38.611465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412570, 0.214823, 0.885233,
		-0.900602, 0.049699, -0.431793,
		-0.136754, -0.975388, 0.172966,
		37.924610, 39.409153, 38.663357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343925, 40.135983, 38.629745>,  <38.020340, 40.091927, 38.542278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343925, 40.135983, 38.629745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532810, 39.818405, 38.782936>,  <37.646141, 39.627857, 38.874851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532810, 39.818405, 38.782936>,  <37.343925, 40.135983, 38.629745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532810, 39.818405, 38.782936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416221, 0.182160, 0.890830,
		-0.777032, -0.580061, -0.244439,
		0.472209, -0.793944, 0.382978,
		37.674473, 39.580223, 38.897831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838596, 39.818321, 39.140259>,  <37.343925, 40.135983, 38.629745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838596, 39.818321, 39.140259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182018, 39.642178, 39.245308>,  <37.388073, 39.536491, 39.308338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182018, 39.642178, 39.245308>,  <36.838596, 39.818321, 39.140259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182018, 39.642178, 39.245308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229921, 0.127152, 0.964867,
		-0.458277, -0.888774, 0.007920,
		0.858556, -0.440355, 0.262619,
		37.439587, 39.510071, 39.324093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591793, 39.148861, 39.502556>,  <36.838596, 39.818321, 39.140259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591793, 39.148861, 39.502556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965786, 39.245884, 39.606075>,  <37.190182, 39.304100, 39.668186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965786, 39.245884, 39.606075>,  <36.591793, 39.148861, 39.502556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965786, 39.245884, 39.606075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208410, -0.214701, 0.954185,
		0.287013, -0.946080, -0.150189,
		0.934981, 0.242562, 0.258795,
		37.246281, 39.318653, 39.683712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874043, 38.552872, 39.928467>,  <36.591793, 39.148861, 39.502556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874043, 38.552872, 39.928467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061859, 38.896267, 40.010952>,  <37.174549, 39.102303, 40.060444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061859, 38.896267, 40.010952>,  <36.874043, 38.552872, 39.928467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061859, 38.896267, 40.010952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122881, -0.167749, 0.978141,
		0.874316, -0.484621, 0.026727,
		0.469544, 0.858489, 0.206216,
		37.202721, 39.153812, 40.072815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347397, 38.464760, 40.439404>,  <36.874043, 38.552872, 39.928467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347397, 38.464760, 40.439404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309296, 38.862934, 40.442013>,  <37.286434, 39.101837, 40.443577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309296, 38.862934, 40.442013>,  <37.347397, 38.464760, 40.439404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309296, 38.862934, 40.442013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118544, -0.017847, 0.992788,
		0.988369, 0.093794, 0.119702,
		-0.095254, 0.995432, 0.006521,
		37.280720, 39.161564, 40.443970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840294, 38.750637, 41.022419>,  <37.347397, 38.464760, 40.439404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840294, 38.750637, 41.022419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.557114, 39.023537, 40.949371>,  <37.387207, 39.187275, 40.905544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.557114, 39.023537, 40.949371>,  <37.840294, 38.750637, 41.022419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557114, 39.023537, 40.949371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148831, 0.108651, 0.982876,
		0.690404, 0.723005, 0.024620,
		-0.707949, 0.682245, -0.182618,
		37.344730, 39.228210, 40.894585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695396, 38.931499, 41.769463>,  <37.840294, 38.750637, 41.022419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695396, 38.931499, 41.769463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412209, 39.119244, 41.558380>,  <37.242294, 39.231892, 41.431728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412209, 39.119244, 41.558380>,  <37.695396, 38.931499, 41.769463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412209, 39.119244, 41.558380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311087, 0.463561, 0.829660,
		0.634038, 0.751537, -0.182174,
		-0.707969, 0.469364, -0.527709,
		37.199818, 39.260052, 41.400066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661236, 39.693665, 42.020702>,  <37.695396, 38.931499, 41.769463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661236, 39.693665, 42.020702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306164, 39.628300, 41.848503>,  <37.093121, 39.589081, 41.745186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306164, 39.628300, 41.848503>,  <37.661236, 39.693665, 42.020702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306164, 39.628300, 41.848503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430399, 0.626767, 0.649553,
		0.163673, 0.761878, -0.626700,
		-0.887675, -0.163417, -0.430496,
		37.039860, 39.579273, 41.719353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314510, 40.345402, 41.980068>,  <37.661236, 39.693665, 42.020702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314510, 40.345402, 41.980068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009720, 40.086815, 41.964661>,  <36.826847, 39.931664, 41.955418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009720, 40.086815, 41.964661>,  <37.314510, 40.345402, 41.980068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009720, 40.086815, 41.964661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343776, 0.353366, 0.870029,
		-0.548833, 0.676178, -0.491493,
		-0.761972, -0.646464, -0.038515,
		36.781128, 39.892876, 41.953106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815426, 40.685287, 42.201519>,  <37.314510, 40.345402, 41.980068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815426, 40.685287, 42.201519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666569, 40.316235, 42.242020>,  <36.577255, 40.094803, 42.266319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666569, 40.316235, 42.242020>,  <36.815426, 40.685287, 42.201519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666569, 40.316235, 42.242020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539114, 0.303661, 0.785587,
		-0.755556, 0.237768, -0.610412,
		-0.372145, -0.922636, 0.101249,
		36.554924, 40.039444, 42.272396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129723, 40.829529, 42.308750>,  <36.815426, 40.685287, 42.201519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129723, 40.829529, 42.308750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206596, 40.467880, 42.461399>,  <36.252720, 40.250893, 42.552986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206596, 40.467880, 42.461399>,  <36.129723, 40.829529, 42.308750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206596, 40.467880, 42.461399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397244, 0.283914, 0.872691,
		-0.897364, -0.319313, -0.304592,
		0.192184, -0.904120, 0.381619,
		36.264252, 40.196644, 42.575886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.257763, 40.108997, 42.310299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553741, 40.003849, 42.557972>,  <35.731327, 39.940762, 42.706573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553741, 40.003849, 42.557972>,  <35.257763, 40.108997, 42.310299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553741, 40.003849, 42.557972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542917, 0.310071, 0.780447,
		-0.397145, -0.913650, 0.086719,
		0.739944, -0.262869, 0.619179,
		35.775726, 39.924988, 42.743725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969368, 39.734623, 42.933422>,  <35.257763, 40.108997, 42.310299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969368, 39.734623, 42.933422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329975, 39.836926, 43.073051>,  <35.546341, 39.898308, 43.156830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329975, 39.836926, 43.073051>,  <34.969368, 39.734623, 42.933422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329975, 39.836926, 43.073051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423989, 0.360628, 0.830771,
		0.086593, -0.896958, 0.433553,
		0.901518, 0.255760, 0.349073,
		35.600430, 39.913654, 43.177773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888390, 39.478195, 43.612808>,  <34.969368, 39.734623, 42.933422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888390, 39.478195, 43.612808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192410, 39.737587, 43.595840>,  <35.374821, 39.893223, 43.585659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192410, 39.737587, 43.595840>,  <34.888390, 39.478195, 43.612808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192410, 39.737587, 43.595840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199526, 0.294978, 0.934440,
		0.618482, -0.701753, 0.353586,
		0.760046, 0.648484, -0.042421,
		35.420422, 39.932133, 43.583115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163967, 39.416656, 44.330849>,  <34.888390, 39.478195, 43.612808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163967, 39.416656, 44.330849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338428, 39.750191, 44.195503>,  <35.443104, 39.950310, 44.114296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338428, 39.750191, 44.195503>,  <35.163967, 39.416656, 44.330849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338428, 39.750191, 44.195503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118945, 0.426133, 0.896807,
		0.891976, -0.350900, 0.285040,
		0.436154, 0.833834, -0.338363,
		35.469276, 40.000340, 44.093994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720135, 39.438282, 44.620502>,  <35.163967, 39.416656, 44.330849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720135, 39.438282, 44.620502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647598, 39.816360, 44.511894>,  <35.604076, 40.043205, 44.446728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647598, 39.816360, 44.511894>,  <35.720135, 39.438282, 44.620502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647598, 39.816360, 44.511894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066193, 0.287206, 0.955579,
		0.981189, 0.155316, -0.114648,
		-0.181344, 0.945193, -0.271523,
		35.593197, 40.099918, 44.430439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262272, 39.779411, 44.909550>,  <35.720135, 39.438282, 44.620502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262272, 39.779411, 44.909550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993496, 40.066456, 44.836304>,  <35.832230, 40.238682, 44.792355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.993496, 40.066456, 44.836304>,  <36.262272, 39.779411, 44.909550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993496, 40.066456, 44.836304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187048, 0.403673, 0.895579,
		0.716592, 0.567528, -0.405473,
		-0.671944, 0.717608, -0.183113,
		35.791912, 40.281738, 44.781368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442131, 40.293671, 45.337818>,  <36.262272, 39.779411, 44.909550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442131, 40.293671, 45.337818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074928, 40.429024, 45.255108>,  <35.854607, 40.510235, 45.205482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074928, 40.429024, 45.255108>,  <36.442131, 40.293671, 45.337818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074928, 40.429024, 45.255108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038135, 0.443673, 0.895377,
		0.394716, 0.829851, -0.394393,
		-0.918011, 0.338380, -0.206771,
		35.799526, 40.530537, 45.193077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475266, 41.008793, 45.522449>,  <36.442131, 40.293671, 45.337818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475266, 41.008793, 45.522449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.082310, 40.936863, 45.502167>,  <35.846535, 40.893703, 45.489998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.082310, 40.936863, 45.502167>,  <36.475266, 41.008793, 45.522449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082310, 40.936863, 45.502167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102778, 0.293480, 0.950424,
		-0.156031, 0.938899, -0.306794,
		-0.982390, -0.179827, -0.050706,
		35.787594, 40.882915, 45.486954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049873, 41.642601, 45.559345>,  <36.475266, 41.008793, 45.522449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049873, 41.642601, 45.559345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830555, 41.339764, 45.701435>,  <35.698963, 41.158062, 45.786690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830555, 41.339764, 45.701435>,  <36.049873, 41.642601, 45.559345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830555, 41.339764, 45.701435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154702, 0.509260, 0.846594,
		-0.821851, 0.409229, -0.396348,
		-0.548295, -0.757090, 0.355227,
		35.666065, 41.112637, 45.808002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523533, 41.932327, 45.977856>,  <36.049873, 41.642601, 45.559345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523533, 41.932327, 45.977856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515217, 41.547100, 46.085236>,  <35.510227, 41.315964, 46.149662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515217, 41.547100, 46.085236>,  <35.523533, 41.932327, 45.977856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515217, 41.547100, 46.085236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132458, 0.268794, 0.954046,
		-0.990970, -0.015722, -0.133155,
		-0.020791, -0.963069, 0.268449,
		35.508980, 41.258179, 46.165771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046532, 41.984383, 46.465504>,  <35.523533, 41.932327, 45.977856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046532, 41.984383, 46.465504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209900, 41.633133, 46.565182>,  <35.307919, 41.422382, 46.624989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209900, 41.633133, 46.565182>,  <35.046532, 41.984383, 46.465504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209900, 41.633133, 46.565182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106446, 0.225319, 0.968453,
		-0.906568, -0.422057, -0.001449,
		0.408416, -0.878123, 0.249194,
		35.332424, 41.369698, 46.639938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785622, 41.875443, 47.139492>,  <35.046532, 41.984383, 46.465504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785622, 41.875443, 47.139492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059555, 41.584103, 47.148636>,  <35.223915, 41.409298, 47.154121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059555, 41.584103, 47.148636>,  <34.785622, 41.875443, 47.139492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059555, 41.584103, 47.148636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076760, 0.103300, 0.991684,
		-0.724650, -0.677379, 0.126651,
		0.684828, -0.728345, 0.022861,
		35.265003, 41.365601, 47.155495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629086, 41.298038, 47.537373>,  <34.785622, 41.875443, 47.139492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629086, 41.298038, 47.537373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028854, 41.285244, 47.541939>,  <35.268715, 41.277565, 47.544678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.028854, 41.285244, 47.541939>,  <34.629086, 41.298038, 47.537373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028854, 41.285244, 47.541939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018096, -0.217201, 0.975959,
		-0.028742, -0.975603, -0.217654,
		0.999423, -0.031990, 0.011411,
		35.328682, 41.275646, 47.545361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877010, 40.712566, 48.034428>,  <34.629086, 41.298038, 47.537373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877010, 40.712566, 48.034428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176044, 40.975098, 47.993740>,  <35.355465, 41.132614, 47.969326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176044, 40.975098, 47.993740>,  <34.877010, 40.712566, 48.034428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176044, 40.975098, 47.993740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097000, 0.043618, 0.994328,
		0.657041, -0.753215, -0.031056,
		0.747589, 0.656327, -0.101721,
		35.400322, 41.171997, 47.963223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134544, 40.581680, 48.636768>,  <34.877010, 40.712566, 48.034428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134544, 40.581680, 48.636768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334713, 40.909275, 48.524456>,  <35.454815, 41.105831, 48.457069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334713, 40.909275, 48.524456>,  <35.134544, 40.581680, 48.636768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334713, 40.909275, 48.524456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329964, 0.119428, 0.936408,
		0.800441, -0.561244, -0.210473,
		0.500418, 0.818988, -0.280786,
		35.484837, 41.154972, 48.440220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856976, 40.481384, 48.778118>,  <35.134544, 40.581680, 48.636768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856976, 40.481384, 48.778118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766560, 40.871033, 48.777512>,  <35.712311, 41.104820, 48.777149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766560, 40.871033, 48.777512>,  <35.856976, 40.481384, 48.778118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766560, 40.871033, 48.777512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438428, 0.103125, 0.892830,
		0.869878, 0.201148, -0.450390,
		-0.226038, 0.974117, -0.001517,
		35.698750, 41.163269, 48.777058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459568, 40.751446, 48.970169>,  <35.856976, 40.481384, 48.778118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459568, 40.751446, 48.970169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179207, 41.021214, 49.063026>,  <36.010990, 41.183075, 49.118740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179207, 41.021214, 49.063026>,  <36.459568, 40.751446, 48.970169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179207, 41.021214, 49.063026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451995, 0.168204, 0.876018,
		0.551754, 0.718935, -0.422728,
		-0.700905, 0.674418, 0.232148,
		35.968937, 41.223537, 49.132671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856113, 41.279739, 49.236847>,  <36.459568, 40.751446, 48.970169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856113, 41.279739, 49.236847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494041, 41.368820, 49.381649>,  <36.276798, 41.422268, 49.468529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494041, 41.368820, 49.381649>,  <36.856113, 41.279739, 49.236847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494041, 41.368820, 49.381649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386118, 0.074902, 0.919403,
		0.177639, 0.972005, -0.153790,
		-0.905183, 0.222702, 0.362003,
		36.222485, 41.435631, 49.490250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903812, 41.838463, 49.652618>,  <36.856113, 41.279739, 49.236847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903812, 41.838463, 49.652618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569962, 41.659279, 49.780827>,  <36.369652, 41.551769, 49.857754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569962, 41.659279, 49.780827>,  <36.903812, 41.838463, 49.652618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569962, 41.659279, 49.780827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337396, 0.044193, 0.940325,
		-0.435394, 0.892960, 0.114256,
		-0.834623, -0.447961, 0.320522,
		36.319576, 41.524891, 49.876984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810577, 42.093323, 50.393532>,  <36.903812, 41.838463, 49.652618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810577, 42.093323, 50.393532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530315, 41.808300, 50.378834>,  <36.362160, 41.637287, 50.370014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530315, 41.808300, 50.378834>,  <36.810577, 42.093323, 50.393532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530315, 41.808300, 50.378834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012115, -0.063375, 0.997916,
		-0.713401, 0.698746, 0.053037,
		-0.700651, -0.712557, -0.036746,
		36.320122, 41.594532, 50.367809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221020, 42.295532, 50.846153>,  <36.810577, 42.093323, 50.393532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221020, 42.295532, 50.846153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245106, 41.896545, 50.831013>,  <36.259556, 41.657154, 50.821930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245106, 41.896545, 50.831013>,  <36.221020, 42.295532, 50.846153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245106, 41.896545, 50.831013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018929, -0.039052, 0.999058,
		-0.998006, -0.059438, -0.021233,
		0.060211, -0.997468, -0.037849,
		36.263168, 41.597305, 50.819656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822281, 42.045498, 51.427883>,  <36.221020, 42.295532, 50.846153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822281, 42.045498, 51.427883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046730, 41.728088, 51.333683>,  <36.181400, 41.537643, 51.277164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.046730, 41.728088, 51.333683>,  <35.822281, 42.045498, 51.427883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046730, 41.728088, 51.333683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016116, -0.273985, 0.961599,
		-0.827574, -0.543372, -0.140951,
		0.561125, -0.793523, -0.235500,
		36.215069, 41.490032, 51.263035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606777, 41.569038, 51.868362>,  <35.822281, 42.045498, 51.427883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606777, 41.569038, 51.868362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961296, 41.408535, 51.775879>,  <36.174007, 41.312233, 51.720387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961296, 41.408535, 51.775879>,  <35.606777, 41.569038, 51.868362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961296, 41.408535, 51.775879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154580, -0.214302, 0.964458,
		-0.436550, -0.890541, -0.127909,
		0.886301, -0.401263, -0.231213,
		36.227188, 41.288155, 51.706516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559299, 40.740147, 51.861298>,  <35.606777, 41.569038, 51.868362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559299, 40.740147, 51.861298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904278, 40.919399, 51.955414>,  <36.111267, 41.026951, 52.011883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904278, 40.919399, 51.955414>,  <35.559299, 40.740147, 51.861298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904278, 40.919399, 51.955414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099588, -0.305538, 0.946958,
		0.496251, -0.840134, -0.218882,
		0.862448, 0.448131, 0.235291,
		36.163013, 41.053837, 52.026001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846745, 40.768646, 51.683319>,  <35.559299, 40.740147, 51.861298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846745, 40.768646, 51.683319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522099, 40.630592, 51.871853>,  <34.327312, 40.547760, 51.984974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522099, 40.630592, 51.871853>,  <34.846745, 40.768646, 51.683319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522099, 40.630592, 51.871853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312666, -0.424903, -0.849528,
		0.493478, -0.836861, 0.236944,
		-0.811615, -0.345139, 0.471338,
		34.278614, 40.527050, 52.013256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727074, 40.054775, 51.476891>,  <34.846745, 40.768646, 51.683319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727074, 40.054775, 51.476891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371521, 40.191246, 51.599190>,  <34.158188, 40.273129, 51.672569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371521, 40.191246, 51.599190>,  <34.727074, 40.054775, 51.476891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371521, 40.191246, 51.599190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391237, -0.218075, -0.894079,
		-0.238359, -0.914355, 0.327323,
		-0.888886, 0.341172, 0.305749,
		34.104855, 40.293602, 51.690914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285961, 39.499321, 51.280613>,  <34.727074, 40.054775, 51.476891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285961, 39.499321, 51.280613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060520, 39.826912, 51.323742>,  <33.925255, 40.023468, 51.349617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060520, 39.826912, 51.323742>,  <34.285961, 39.499321, 51.280613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060520, 39.826912, 51.323742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421314, -0.172728, -0.890314,
		-0.710527, -0.547207, 0.442397,
		-0.563601, 0.818981, 0.107818,
		33.891441, 40.072605, 51.356087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677349, 39.266396, 51.251625>,  <34.285961, 39.499321, 51.280613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677349, 39.266396, 51.251625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695690, 39.651394, 51.144672>,  <33.706696, 39.882393, 51.080502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695690, 39.651394, 51.144672>,  <33.677349, 39.266396, 51.251625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695690, 39.651394, 51.144672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361594, -0.233526, -0.902616,
		-0.931208, 0.138068, 0.337327,
		0.045848, 0.962498, -0.267386,
		33.709446, 39.940144, 51.064457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971600, 39.426460, 50.878124>,  <33.677349, 39.266396, 51.251625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971600, 39.426460, 50.878124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189659, 39.749466, 50.788021>,  <33.320496, 39.943268, 50.733959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189659, 39.749466, 50.788021>,  <32.971600, 39.426460, 50.878124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189659, 39.749466, 50.788021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294291, -0.067269, -0.953346,
		-0.784990, 0.586004, 0.200972,
		0.545145, 0.807511, -0.225261,
		33.353203, 39.991718, 50.720444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598671, 39.896919, 50.431469>,  <32.971600, 39.426460, 50.878124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598671, 39.896919, 50.431469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972431, 40.010036, 50.344818>,  <33.196686, 40.077908, 50.292828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972431, 40.010036, 50.344818>,  <32.598671, 39.896919, 50.431469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972431, 40.010036, 50.344818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207170, -0.063311, -0.976254,
		-0.289796, 0.957088, -0.000571,
		0.934398, 0.282796, -0.216627,
		33.252750, 40.094875, 50.279831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484222, 40.293091, 49.896805>,  <32.598671, 39.896919, 50.431469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484222, 40.293091, 49.896805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860165, 40.157528, 49.879818>,  <33.085732, 40.076191, 49.869625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860165, 40.157528, 49.879818>,  <32.484222, 40.293091, 49.896805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860165, 40.157528, 49.879818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084322, -0.109730, -0.990378,
		0.330987, 0.934398, -0.131709,
		0.939860, -0.338909, -0.042471,
		33.142124, 40.055855, 49.867077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757805, 40.671890, 49.234997>,  <32.484222, 40.293091, 49.896805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757805, 40.671890, 49.234997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984077, 40.354668, 49.325386>,  <33.119843, 40.164333, 49.379620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984077, 40.354668, 49.325386>,  <32.757805, 40.671890, 49.234997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984077, 40.354668, 49.325386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206426, -0.129120, -0.969905,
		0.798370, 0.595302, 0.090667,
		0.565680, -0.793059, 0.225971,
		33.153782, 40.116749, 49.393177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352135, 40.845558, 48.849186>,  <32.757805, 40.671890, 49.234997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352135, 40.845558, 48.849186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349178, 40.450447, 48.911457>,  <33.347404, 40.213379, 48.948818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349178, 40.450447, 48.911457>,  <33.352135, 40.845558, 48.849186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349178, 40.450447, 48.911457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200769, -0.153975, -0.967462,
		0.979611, 0.024108, 0.199454,
		-0.007387, -0.987781, 0.155676,
		33.346962, 40.154114, 48.958160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844608, 40.591496, 48.425068>,  <33.352135, 40.845558, 48.849186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844608, 40.591496, 48.425068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.654613, 40.253040, 48.521759>,  <33.540615, 40.049965, 48.579773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.654613, 40.253040, 48.521759>,  <33.844608, 40.591496, 48.425068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654613, 40.253040, 48.521759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173210, -0.359219, -0.917039,
		0.862778, -0.393710, 0.317184,
		-0.474986, -0.846141, 0.241731,
		33.512119, 39.999199, 48.594280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264671, 40.012321, 48.274479>,  <33.844608, 40.591496, 48.425068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264671, 40.012321, 48.274479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886974, 39.885361, 48.239464>,  <33.660355, 39.809185, 48.218452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886974, 39.885361, 48.239464>,  <34.264671, 40.012321, 48.274479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886974, 39.885361, 48.239464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171711, -0.247862, -0.953457,
		0.280931, -0.915325, 0.288543,
		-0.944242, -0.317401, -0.087540,
		33.603703, 39.790142, 48.213203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291199, 39.444538, 47.845898>,  <34.264671, 40.012321, 48.274479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291199, 39.444538, 47.845898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906086, 39.547947, 47.814346>,  <33.675018, 39.609993, 47.795414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906086, 39.547947, 47.814346>,  <34.291199, 39.444538, 47.845898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906086, 39.547947, 47.814346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040648, -0.150027, -0.987846,
		-0.267211, -0.954285, 0.133934,
		-0.962780, 0.258519, -0.078879,
		33.617252, 39.625504, 47.790684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206303, 39.009190, 47.385799>,  <34.291199, 39.444538, 47.845898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206303, 39.009190, 47.385799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902828, 39.268711, 47.362305>,  <33.720741, 39.424423, 47.348206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902828, 39.268711, 47.362305>,  <34.206303, 39.009190, 47.385799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902828, 39.268711, 47.362305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045833, -0.036783, -0.998272,
		-0.649840, -0.760069, -0.001830,
		-0.758688, 0.648800, -0.058739,
		33.675220, 39.463352, 47.344685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739010, 38.671928, 46.839764>,  <34.206303, 39.009190, 47.385799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739010, 38.671928, 46.839764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597359, 39.043255, 46.885071>,  <33.512367, 39.266048, 46.912254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597359, 39.043255, 46.885071>,  <33.739010, 38.671928, 46.839764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597359, 39.043255, 46.885071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137087, 0.068283, -0.988203,
		-0.925096, -0.365474, 0.103079,
		-0.354124, 0.928314, 0.113270,
		33.491123, 39.321751, 46.919052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017433, 38.710995, 46.647457>,  <33.739010, 38.671928, 46.839764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017433, 38.710995, 46.647457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154816, 39.085903, 46.623608>,  <33.237244, 39.310848, 46.609299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154816, 39.085903, 46.623608>,  <33.017433, 38.710995, 46.647457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154816, 39.085903, 46.623608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302254, 0.050201, -0.951905,
		-0.889204, 0.344955, 0.300537,
		0.343452, 0.937276, -0.059625,
		33.257851, 39.367085, 46.605721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497395, 39.101112, 46.242451>,  <33.017433, 38.710995, 46.647457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497395, 39.101112, 46.242451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826122, 39.329006, 46.240631>,  <33.023357, 39.465740, 46.239540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.826122, 39.329006, 46.240631>,  <32.497395, 39.101112, 46.242451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826122, 39.329006, 46.240631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205452, 0.288895, -0.935056,
		-0.531417, 0.769380, 0.354471,
		0.821818, 0.569731, -0.004547,
		33.072666, 39.499924, 46.239265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249161, 39.683750, 45.962620>,  <32.497395, 39.101112, 46.242451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249161, 39.683750, 45.962620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639294, 39.719398, 45.881832>,  <32.873371, 39.740788, 45.833359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639294, 39.719398, 45.881832>,  <32.249161, 39.683750, 45.962620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639294, 39.719398, 45.881832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219025, 0.276168, -0.935820,
		-0.027618, 0.956969, 0.288873,
		0.975328, 0.089116, -0.201972,
		32.931892, 39.746132, 45.821239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293270, 40.279495, 45.534981>,  <32.249161, 39.683750, 45.962620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293270, 40.279495, 45.534981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.651321, 40.108582, 45.484127>,  <32.866154, 40.006031, 45.453613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.651321, 40.108582, 45.484127>,  <32.293270, 40.279495, 45.534981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651321, 40.108582, 45.484127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025091, 0.236438, -0.971323,
		0.445093, 0.872652, 0.200923,
		0.895133, -0.427288, -0.127133,
		32.919861, 39.980396, 45.445988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676620, 40.760597, 45.100643>,  <32.293270, 40.279495, 45.534981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676620, 40.760597, 45.100643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860340, 40.409367, 45.046940>,  <32.970570, 40.198627, 45.014717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860340, 40.409367, 45.046940>,  <32.676620, 40.760597, 45.100643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860340, 40.409367, 45.046940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160963, 0.230911, -0.959568,
		0.873578, 0.419115, 0.247394,
		0.459295, -0.878079, -0.134257,
		32.998127, 40.145943, 45.006664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145943, 40.861870, 44.577156>,  <32.676620, 40.760597, 45.100643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145943, 40.861870, 44.577156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134331, 40.462162, 44.587025>,  <33.127361, 40.222336, 44.592945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134331, 40.462162, 44.587025>,  <33.145943, 40.861870, 44.577156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134331, 40.462162, 44.587025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090153, -0.027200, -0.995556,
		0.995504, -0.026681, 0.090877,
		-0.029034, -0.999274, 0.024672,
		33.125622, 40.162380, 44.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.293125, 26.415173, 36.470428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899647, 26.440035, 36.537922>,  <42.663559, 26.454952, 36.578419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899647, 26.440035, 36.537922>,  <43.293125, 26.415173, 36.470428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899647, 26.440035, 36.537922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058615, 0.997945, -0.025882,
		-0.169994, -0.015570, -0.985322,
		-0.983700, 0.062155, 0.168732,
		42.604538, 26.458681, 36.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964458, 26.814114, 35.880863>,  <43.293125, 26.415173, 36.470428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964458, 26.814114, 35.880863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703487, 26.838867, 36.182991>,  <42.546906, 26.853720, 36.364269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703487, 26.838867, 36.182991>,  <42.964458, 26.814114, 35.880863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703487, 26.838867, 36.182991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054883, 0.997902, -0.034350,
		-0.755863, 0.019044, -0.654453,
		-0.652426, 0.061883, 0.755322,
		42.507759, 26.857431, 36.409588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572716, 27.417217, 35.805107>,  <42.964458, 26.814114, 35.880863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572716, 27.417217, 35.805107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487633, 27.363035, 36.192181>,  <42.436584, 27.330526, 36.424423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487633, 27.363035, 36.192181>,  <42.572716, 27.417217, 35.805107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487633, 27.363035, 36.192181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087474, 0.983728, 0.156929,
		-0.973193, 0.118027, -0.197397,
		-0.212707, -0.135456, 0.967681,
		42.423820, 27.322399, 36.482487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049469, 27.874256, 35.940044>,  <42.572716, 27.417217, 35.805107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049469, 27.874256, 35.940044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223629, 27.809353, 36.294243>,  <42.328125, 27.770411, 36.506763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223629, 27.809353, 36.294243>,  <42.049469, 27.874256, 35.940044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223629, 27.809353, 36.294243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003860, 0.983278, 0.182071,
		-0.900231, -0.082691, 0.427488,
		0.435395, -0.162256, 0.885496,
		42.354248, 27.760675, 36.559891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660320, 28.241293, 36.408573>,  <42.049469, 27.874256, 35.940044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660320, 28.241293, 36.408573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.994240, 28.156683, 36.611889>,  <42.194592, 28.105917, 36.733879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.994240, 28.156683, 36.611889>,  <41.660320, 28.241293, 36.408573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994240, 28.156683, 36.611889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069075, 0.875710, 0.477870,
		-0.546198, -0.434038, 0.716435,
		0.834803, -0.211524, 0.508292,
		42.244682, 28.093225, 36.764378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561619, 28.526932, 37.022335>,  <41.660320, 28.241293, 36.408573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561619, 28.526932, 37.022335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958839, 28.479856, 37.023121>,  <42.197170, 28.451612, 37.023594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.958839, 28.479856, 37.023121>,  <41.561619, 28.526932, 37.022335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958839, 28.479856, 37.023121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111529, 0.946160, 0.303879,
		-0.037620, -0.301547, 0.952709,
		0.993049, -0.117686, 0.001963,
		42.256756, 28.444551, 37.023708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729965, 28.860119, 37.584518>,  <41.561619, 28.526932, 37.022335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729965, 28.860119, 37.584518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069984, 28.840555, 37.374748>,  <42.273998, 28.828817, 37.248886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069984, 28.840555, 37.374748>,  <41.729965, 28.860119, 37.584518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069984, 28.840555, 37.374748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114617, 0.988995, 0.093546,
		0.514079, -0.139627, 0.846302,
		0.850051, -0.048911, -0.524425,
		42.325001, 28.825882, 37.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031349, 29.401880, 37.927231>,  <41.729965, 28.860119, 37.584518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031349, 29.401880, 37.927231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248745, 29.334351, 37.598324>,  <42.379181, 29.293833, 37.400978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.248745, 29.334351, 37.598324>,  <42.031349, 29.401880, 37.927231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248745, 29.334351, 37.598324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244494, 0.968932, -0.037335,
		0.803023, -0.180749, 0.567876,
		0.543485, -0.168823, -0.822267,
		42.411789, 29.283703, 37.351643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687160, 29.831057, 38.036827>,  <42.031349, 29.401880, 37.927231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687160, 29.831057, 38.036827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646633, 29.773230, 37.643108>,  <42.622318, 29.738533, 37.406879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.646633, 29.773230, 37.643108>,  <42.687160, 29.831057, 38.036827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646633, 29.773230, 37.643108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227538, 0.959793, -0.164391,
		0.968484, -0.240620, -0.064352,
		-0.101321, -0.144567, -0.984294,
		42.616238, 29.729858, 37.347820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393227, 30.067320, 37.743160>,  <42.687160, 29.831057, 38.036827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393227, 30.067320, 37.743160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119125, 30.091881, 37.452877>,  <42.954662, 30.106617, 37.278706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119125, 30.091881, 37.452877>,  <43.393227, 30.067320, 37.743160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119125, 30.091881, 37.452877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302203, 0.930581, -0.206619,
		0.662645, -0.360899, -0.656242,
		-0.685255, 0.061404, -0.725710,
		42.913548, 30.110302, 37.235165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743160, 30.325634, 37.163219>,  <43.393227, 30.067320, 37.743160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743160, 30.325634, 37.163219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356174, 30.400991, 37.095661>,  <43.123985, 30.446205, 37.055126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356174, 30.400991, 37.095661>,  <43.743160, 30.325634, 37.163219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356174, 30.400991, 37.095661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202313, 0.976870, -0.069246,
		0.151946, -0.101163, -0.983198,
		-0.967462, 0.188392, -0.168898,
		43.065937, 30.457510, 37.044991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720222, 30.727907, 36.624195>,  <43.743160, 30.325634, 37.163219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720222, 30.727907, 36.624195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368454, 30.805626, 36.798035>,  <43.157394, 30.852257, 36.902336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368454, 30.805626, 36.798035>,  <43.720222, 30.727907, 36.624195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368454, 30.805626, 36.798035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147166, 0.979158, -0.139967,
		-0.452733, -0.059131, -0.889683,
		-0.879417, 0.194299, 0.434595,
		43.104630, 30.863916, 36.928413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444492, 31.226547, 36.149406>,  <43.720222, 30.727907, 36.624195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444492, 31.226547, 36.149406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219059, 31.263189, 36.477795>,  <43.083801, 31.285175, 36.674828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219059, 31.263189, 36.477795>,  <43.444492, 31.226547, 36.149406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219059, 31.263189, 36.477795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040877, 0.995707, -0.083043,
		-0.825050, -0.013243, -0.564905,
		-0.563580, 0.091606, 0.820967,
		43.049984, 31.290670, 36.724083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708569, 31.585320, 35.954834>,  <43.444492, 31.226547, 36.149406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708569, 31.585320, 35.954834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842693, 31.660463, 36.324108>,  <42.923168, 31.705549, 36.545673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842693, 31.660463, 36.324108>,  <42.708569, 31.585320, 35.954834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842693, 31.660463, 36.324108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007119, 0.979385, -0.201879,
		-0.942079, 0.074265, 0.327066,
		0.335316, 0.187857, 0.923186,
		42.943287, 31.716820, 36.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263943, 32.161034, 36.127880>,  <42.708569, 31.585320, 35.954834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263943, 32.161034, 36.127880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561958, 32.166332, 36.394638>,  <42.740768, 32.169510, 36.554691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561958, 32.166332, 36.394638>,  <42.263943, 32.161034, 36.127880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561958, 32.166332, 36.394638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072767, 0.992222, -0.101000,
		-0.663043, 0.123776, 0.738277,
		0.745036, 0.013245, 0.666893,
		42.785469, 32.170307, 36.594707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074696, 32.811527, 36.588245>,  <42.263943, 32.161034, 36.127880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074696, 32.811527, 36.588245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456264, 32.706463, 36.646282>,  <42.685204, 32.643425, 36.681103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456264, 32.706463, 36.646282>,  <42.074696, 32.811527, 36.588245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456264, 32.706463, 36.646282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265773, 0.964033, -0.002177,
		-0.139300, 0.040637, 0.989416,
		0.953918, -0.262657, 0.145090,
		42.742439, 32.627666, 36.689808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305359, 33.254745, 37.174675>,  <42.074696, 32.811527, 36.588245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305359, 33.254745, 37.174675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624439, 33.138054, 36.963558>,  <42.815887, 33.068039, 36.836887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624439, 33.138054, 36.963558>,  <42.305359, 33.254745, 37.174675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624439, 33.138054, 36.963558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400268, 0.910753, 0.101563,
		0.451061, -0.292277, 0.843278,
		0.797703, -0.291726, -0.527794,
		42.863750, 33.050537, 36.805222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827175, 33.585491, 37.516048>,  <42.305359, 33.254745, 37.174675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827175, 33.585491, 37.516048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020470, 33.485569, 37.180412>,  <43.136448, 33.425617, 36.979031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020470, 33.485569, 37.180412>,  <42.827175, 33.585491, 37.516048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020470, 33.485569, 37.180412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498173, 0.866595, 0.028912,
		0.719932, -0.431985, 0.543218,
		0.483240, -0.249802, -0.839093,
		43.165443, 33.410629, 36.928684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534187, 33.798710, 37.592388>,  <42.827175, 33.585491, 37.516048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534187, 33.798710, 37.592388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472355, 33.773842, 37.197979>,  <43.435257, 33.758923, 36.961334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472355, 33.773842, 37.197979>,  <43.534187, 33.798710, 37.592388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472355, 33.773842, 37.197979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538376, 0.831522, -0.136829,
		0.828405, -0.552002, -0.095070,
		-0.154583, -0.062166, -0.986022,
		43.425980, 33.755192, 36.902172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132359, 33.734909, 37.238789>,  <43.534187, 33.798710, 37.592388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132359, 33.734909, 37.238789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.913139, 33.877262, 36.936005>,  <43.781609, 33.962673, 36.754333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.913139, 33.877262, 36.936005>,  <44.132359, 33.734909, 37.238789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913139, 33.877262, 36.936005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716022, 0.667414, -0.204622,
		0.432386, -0.654144, -0.620595,
		-0.548046, 0.355884, -0.756962,
		43.748726, 33.984028, 36.708916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604630, 33.845558, 36.651962>,  <44.132359, 33.734909, 37.238789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604630, 33.845558, 36.651962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280693, 34.072472, 36.592178>,  <44.086330, 34.208618, 36.556309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.280693, 34.072472, 36.592178>,  <44.604630, 33.845558, 36.651962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280693, 34.072472, 36.592178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575864, 0.720111, -0.387067,
		-0.111946, -0.399535, -0.909857,
		-0.809845, 0.567285, -0.149464,
		44.037739, 34.242657, 36.547340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159863, 33.732582, 36.311069>,  <44.604630, 33.845558, 36.651962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159863, 33.732582, 36.311069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459686, 33.572632, 36.100067>,  <45.639580, 33.476662, 35.973465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459686, 33.572632, 36.100067>,  <45.159863, 33.732582, 36.311069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459686, 33.572632, 36.100067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598036, -0.750707, -0.280697,
		-0.283757, 0.525865, -0.801840,
		0.749556, -0.399880, -0.527505,
		45.684555, 33.452667, 35.941814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890598, 33.675888, 35.696594>,  <45.159863, 33.732582, 36.311069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890598, 33.675888, 35.696594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.185024, 33.405552, 35.711777>,  <45.361679, 33.243351, 35.720886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.185024, 33.405552, 35.711777>,  <44.890598, 33.675888, 35.696594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185024, 33.405552, 35.711777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605917, -0.682837, -0.408163,
		0.301775, 0.277435, -0.912119,
		0.736068, -0.675842, 0.037961,
		45.405846, 33.202801, 35.723164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923534, 33.256859, 34.955688>,  <44.890598, 33.675888, 35.696594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923534, 33.256859, 34.955688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124912, 33.016212, 35.203754>,  <45.245739, 32.871826, 35.352596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.124912, 33.016212, 35.203754>,  <44.923534, 33.256859, 34.955688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124912, 33.016212, 35.203754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447662, -0.795530, -0.408327,
		0.739017, -0.072057, -0.669822,
		0.503440, -0.601615, 0.620167,
		45.275944, 32.835728, 35.389805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126610, 32.778419, 34.530769>,  <44.923534, 33.256859, 34.955688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126610, 32.778419, 34.530769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170147, 32.604809, 34.888489>,  <45.196270, 32.500641, 35.103119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170147, 32.604809, 34.888489>,  <45.126610, 32.778419, 34.530769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170147, 32.604809, 34.888489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372079, -0.852035, -0.368231,
		0.921797, -0.292669, -0.254234,
		0.108847, -0.434030, 0.894299,
		45.202801, 32.474602, 35.156780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535172, 32.081417, 34.506588>,  <45.126610, 32.778419, 34.530769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535172, 32.081417, 34.506588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318054, 32.082943, 34.842533>,  <45.187782, 32.083858, 35.044098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318054, 32.082943, 34.842533>,  <45.535172, 32.081417, 34.506588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318054, 32.082943, 34.842533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397489, -0.882073, -0.252883,
		0.739851, -0.471097, 0.480299,
		-0.542792, 0.003818, 0.839859,
		45.155216, 32.084087, 35.094490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651981, 31.364359, 34.852409>,  <45.535172, 32.081417, 34.506588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651981, 31.364359, 34.852409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308636, 31.543873, 34.951851>,  <45.102627, 31.651581, 35.011517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308636, 31.543873, 34.951851>,  <45.651981, 31.364359, 34.852409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308636, 31.543873, 34.951851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491341, -0.858538, -0.146616,
		0.147638, -0.248000, 0.957444,
		-0.858363, 0.448786, 0.248605,
		45.051128, 31.678509, 35.026432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271626, 30.825891, 35.061104>,  <45.651981, 31.364359, 34.852409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271626, 30.825891, 35.061104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971485, 31.090267, 35.056465>,  <44.791401, 31.248892, 35.053680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971485, 31.090267, 35.056465>,  <45.271626, 30.825891, 35.061104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971485, 31.090267, 35.056465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558008, -0.642710, -0.524929,
		-0.354398, -0.387411, 0.851067,
		-0.750352, 0.660936, -0.011596,
		44.746380, 31.288548, 35.052986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819103, 30.543837, 35.395210>,  <45.271626, 30.825891, 35.061104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819103, 30.543837, 35.395210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612679, 30.801863, 35.169796>,  <44.488823, 30.956678, 35.034550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612679, 30.801863, 35.169796>,  <44.819103, 30.543837, 35.395210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612679, 30.801863, 35.169796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655721, -0.720816, -0.224620,
		-0.551097, 0.253601, 0.794971,
		-0.516063, 0.645067, -0.563531,
		44.457859, 30.995382, 35.000736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185066, 30.327696, 35.563660>,  <44.819103, 30.543837, 35.395210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185066, 30.327696, 35.563660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192806, 30.529505, 35.218388>,  <44.197449, 30.650591, 35.011223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192806, 30.529505, 35.218388>,  <44.185066, 30.327696, 35.563660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192806, 30.529505, 35.218388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578827, -0.698293, -0.421123,
		-0.815220, 0.507781, 0.278521,
		0.019349, 0.504524, -0.863181,
		44.198612, 30.680862, 34.959435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511261, 30.552340, 35.329384>,  <44.185066, 30.327696, 35.563660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511261, 30.552340, 35.329384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748032, 30.556858, 35.007019>,  <43.890095, 30.559568, 34.813599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.748032, 30.556858, 35.007019>,  <43.511261, 30.552340, 35.329384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748032, 30.556858, 35.007019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554087, -0.720450, -0.417061,
		-0.585333, 0.693415, -0.420191,
		0.591923, 0.011297, -0.805915,
		43.925610, 30.560247, 34.765244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934086, 30.401373, 34.728348>,  <43.511261, 30.552340, 35.329384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934086, 30.401373, 34.728348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281979, 30.379269, 34.532177>,  <43.490715, 30.366007, 34.414474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281979, 30.379269, 34.532177>,  <42.934086, 30.401373, 34.728348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281979, 30.379269, 34.532177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395568, -0.672272, -0.625760,
		-0.295118, 0.738239, -0.606555,
		0.869730, -0.055261, -0.490423,
		43.542896, 30.362690, 34.385052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828056, 30.296068, 34.040878>,  <42.934086, 30.401373, 34.728348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828056, 30.296068, 34.040878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189972, 30.132143, 34.087208>,  <43.407120, 30.033789, 34.115005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.189972, 30.132143, 34.087208>,  <42.828056, 30.296068, 34.040878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189972, 30.132143, 34.087208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291607, -0.794400, -0.532817,
		0.310364, 0.448311, -0.838267,
		0.904787, -0.409812, 0.115823,
		43.461407, 30.009199, 34.121956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126644, 30.009884, 33.353745>,  <42.828056, 30.296068, 34.040878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126644, 30.009884, 33.353745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310314, 29.809036, 33.646877>,  <43.420517, 29.688528, 33.822758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310314, 29.809036, 33.646877>,  <43.126644, 30.009884, 33.353745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310314, 29.809036, 33.646877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284699, -0.864601, -0.414019,
		0.841491, -0.018530, -0.539953,
		0.459172, -0.502117, 0.732829,
		43.448067, 29.658401, 33.866726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626934, 29.472031, 33.013504>,  <43.126644, 30.009884, 33.353745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626934, 29.472031, 33.013504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550106, 29.353388, 33.387699>,  <43.504009, 29.282202, 33.612217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.550106, 29.353388, 33.387699>,  <43.626934, 29.472031, 33.013504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550106, 29.353388, 33.387699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427903, -0.832538, -0.351823,
		0.883181, -0.467871, 0.032987,
		-0.192071, -0.296608, 0.935485,
		43.492485, 29.264406, 33.668346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377464, 28.830448, 32.949253>,  <43.626934, 29.472031, 33.013504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377464, 28.830448, 32.949253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301979, 28.851295, 33.341511>,  <43.256687, 28.863804, 33.576866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301979, 28.851295, 33.341511>,  <43.377464, 28.830448, 32.949253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301979, 28.851295, 33.341511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498972, -0.865173, -0.050036,
		0.845822, -0.498758, 0.189274,
		-0.188711, 0.052121, 0.980649,
		43.245365, 28.866932, 33.635704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629139, 28.118999, 33.126595>,  <43.377464, 28.830448, 32.949253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629139, 28.118999, 33.126595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.344681, 28.300236, 33.341625>,  <43.174007, 28.408978, 33.470642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.344681, 28.300236, 33.341625>,  <43.629139, 28.118999, 33.126595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344681, 28.300236, 33.341625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572285, -0.817207, -0.068287,
		0.408368, -0.356207, 0.840448,
		-0.711144, 0.453090, 0.537573,
		43.131336, 28.436163, 33.502895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534515, 27.677614, 33.643612>,  <43.629139, 28.118999, 33.126595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534515, 27.677614, 33.643612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209137, 27.910227, 33.648174>,  <43.013908, 28.049793, 33.650913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209137, 27.910227, 33.648174>,  <43.534515, 27.677614, 33.643612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209137, 27.910227, 33.648174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571967, -0.803325, 0.165901,
		0.105642, 0.128425, 0.986077,
		-0.813446, 0.581529, 0.011410,
		42.965103, 28.084686, 33.651596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129520, 27.411690, 34.193226>,  <43.534515, 27.677614, 33.643612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129520, 27.411690, 34.193226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863083, 27.603466, 33.964680>,  <42.703220, 27.718533, 33.827553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863083, 27.603466, 33.964680>,  <43.129520, 27.411690, 34.193226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863083, 27.603466, 33.964680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503411, -0.854224, -0.129919,
		-0.550360, 0.201091, 0.810350,
		-0.666094, 0.479441, -0.571362,
		42.663254, 27.747299, 33.793270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479813, 27.244068, 34.414806>,  <43.129520, 27.411690, 34.193226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479813, 27.244068, 34.414806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.410320, 27.367874, 34.040852>,  <42.368626, 27.442158, 33.816479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.410320, 27.367874, 34.040852>,  <42.479813, 27.244068, 34.414806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410320, 27.367874, 34.040852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536450, -0.825856, -0.173731,
		-0.825856, 0.471339, 0.309517,
		0.173731, -0.309517, 0.934889,
		42.358200, 27.460730, 33.760384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746185, 27.271540, 34.265060>,  <42.479813, 27.244068, 34.414806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746185, 27.271540, 34.265060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906281, 27.256947, 33.898788>,  <42.002338, 27.248190, 33.679024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906281, 27.256947, 33.898788>,  <41.746185, 27.271540, 34.265060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906281, 27.256947, 33.898788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623839, -0.742789, -0.243082,
		-0.671291, 0.668531, -0.320056,
		0.400242, -0.036485, -0.915683,
		42.026352, 27.246000, 33.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182426, 27.309801, 33.775307>,  <41.746185, 27.271540, 34.265060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182426, 27.309801, 33.775307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.484585, 27.162712, 33.558365>,  <41.665882, 27.074459, 33.428200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.484585, 27.162712, 33.558365>,  <41.182426, 27.309801, 33.775307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484585, 27.162712, 33.558365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590703, -0.740406, -0.320733,
		-0.283624, 0.562654, -0.776517,
		0.755399, -0.367723, -0.542357,
		41.711205, 27.052395, 33.395657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.325405, 40.420082, 40.600910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296848, 40.023418, 40.557987>,  <37.279713, 39.785419, 40.532234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296848, 40.023418, 40.557987>,  <37.325405, 40.420082, 40.600910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296848, 40.023418, 40.557987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497736, 0.057814, -0.865400,
		0.864385, -0.115195, 0.489457,
		-0.071393, -0.991659, -0.107311,
		37.275429, 39.725922, 40.525795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984718, 40.071114, 40.446659>,  <37.325405, 40.420082, 40.600910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984718, 40.071114, 40.446659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722343, 39.802490, 40.308819>,  <37.564919, 39.641315, 40.226112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722343, 39.802490, 40.308819>,  <37.984718, 40.071114, 40.446659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722343, 39.802490, 40.308819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518602, -0.069233, -0.852208,
		0.548452, -0.737707, 0.393686,
		-0.655936, -0.671562, -0.344605,
		37.525562, 39.601021, 40.205437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444458, 39.484283, 40.140797>,  <37.984718, 40.071114, 40.446659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444458, 39.484283, 40.140797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076832, 39.432644, 39.991852>,  <37.856258, 39.401661, 39.902485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076832, 39.432644, 39.991852>,  <38.444458, 39.484283, 40.140797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076832, 39.432644, 39.991852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393128, -0.233687, -0.889292,
		0.027792, -0.963703, 0.265526,
		-0.919063, -0.129102, -0.372364,
		37.801113, 39.393913, 39.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525646, 38.959225, 39.688808>,  <38.444458, 39.484283, 40.140797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525646, 38.959225, 39.688808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178169, 39.109600, 39.559788>,  <37.969681, 39.199825, 39.482376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178169, 39.109600, 39.559788>,  <38.525646, 38.959225, 39.688808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178169, 39.109600, 39.559788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261587, -0.204803, -0.943201,
		-0.420647, -0.903728, 0.079570,
		-0.868693, 0.375940, -0.322553,
		37.917561, 39.222382, 39.463020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265881, 38.499733, 39.278992>,  <38.525646, 38.959225, 39.688808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265881, 38.499733, 39.278992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045940, 38.819546, 39.182316>,  <37.913975, 39.011433, 39.124310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045940, 38.819546, 39.182316>,  <38.265881, 38.499733, 39.278992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045940, 38.819546, 39.182316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178194, -0.170407, -0.969128,
		-0.816032, -0.575945, -0.048772,
		-0.549853, 0.799530, -0.241688,
		37.880985, 39.059406, 39.109810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769207, 38.119236, 38.902435>,  <38.265881, 38.499733, 39.278992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769207, 38.119236, 38.902435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813046, 38.506985, 38.814514>,  <37.839348, 38.739632, 38.761761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813046, 38.506985, 38.814514>,  <37.769207, 38.119236, 38.902435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813046, 38.506985, 38.814514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247279, -0.240774, -0.938553,
		-0.962727, 0.048505, -0.266091,
		0.109592, 0.969369, -0.219805,
		37.845924, 38.797794, 38.748573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320553, 38.340931, 38.327900>,  <37.769207, 38.119236, 38.902435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320553, 38.340931, 38.327900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632698, 38.590313, 38.347244>,  <37.819984, 38.739941, 38.358852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632698, 38.590313, 38.347244>,  <37.320553, 38.340931, 38.327900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632698, 38.590313, 38.347244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138251, -0.096590, -0.985676,
		-0.609851, 0.775872, -0.161568,
		0.780365, 0.623452, 0.048360,
		37.866806, 38.777348, 38.361752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258533, 38.586277, 37.718842>,  <37.320553, 38.340931, 38.327900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258533, 38.586277, 37.718842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620220, 38.700428, 37.845936>,  <37.837231, 38.768917, 37.922192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620220, 38.700428, 37.845936>,  <37.258533, 38.586277, 37.718842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620220, 38.700428, 37.845936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324159, 0.025770, -0.945652,
		-0.278053, 0.958070, -0.069205,
		0.904217, 0.285374, 0.317732,
		37.891483, 38.786041, 37.941254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420971, 39.075359, 37.284538>,  <37.258533, 38.586277, 37.718842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420971, 39.075359, 37.284538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770866, 39.000240, 37.463230>,  <37.980804, 38.955170, 37.570446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770866, 39.000240, 37.463230>,  <37.420971, 39.075359, 37.284538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770866, 39.000240, 37.463230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468329, 0.090755, -0.878881,
		0.124505, 0.978007, 0.167335,
		0.874738, -0.187793, 0.446729,
		38.033287, 38.943901, 37.597248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872509, 39.564953, 36.984547>,  <37.420971, 39.075359, 37.284538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872509, 39.564953, 36.984547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099895, 39.271965, 37.134388>,  <38.236328, 39.096172, 37.224293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099895, 39.271965, 37.134388>,  <37.872509, 39.564953, 36.984547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099895, 39.271965, 37.134388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447539, -0.106741, -0.887871,
		0.690328, 0.672375, 0.267132,
		0.568468, -0.732474, 0.374601,
		38.270435, 39.052223, 37.246769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661888, 39.631500, 36.752087>,  <37.872509, 39.564953, 36.984547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661888, 39.631500, 36.752087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591671, 39.253933, 36.863945>,  <38.549541, 39.027393, 36.931061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591671, 39.253933, 36.863945>,  <38.661888, 39.631500, 36.752087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591671, 39.253933, 36.863945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246121, -0.317112, -0.915895,
		0.953210, -0.091954, 0.287985,
		-0.175544, -0.943920, 0.279643,
		38.539009, 38.970757, 36.947838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269463, 39.187138, 36.609505>,  <38.661888, 39.631500, 36.752087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269463, 39.187138, 36.609505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946556, 38.951637, 36.625961>,  <38.752811, 38.810337, 36.635834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946556, 38.951637, 36.625961>,  <39.269463, 39.187138, 36.609505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946556, 38.951637, 36.625961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369038, -0.557946, -0.743308,
		0.460577, -0.584866, 0.667683,
		-0.807267, -0.588751, 0.041140,
		38.704376, 38.775013, 36.638302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399353, 38.407356, 36.709778>,  <39.269463, 39.187138, 36.609505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399353, 38.407356, 36.709778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090717, 38.435951, 36.456944>,  <38.905537, 38.453110, 36.305241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090717, 38.435951, 36.456944>,  <39.399353, 38.407356, 36.709778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090717, 38.435951, 36.456944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498941, -0.548369, -0.671081,
		-0.394593, -0.833175, 0.387447,
		-0.771592, 0.071490, -0.632088,
		38.859241, 38.457397, 36.267319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378376, 37.728996, 36.474590>,  <39.399353, 38.407356, 36.709778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378376, 37.728996, 36.474590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208260, 37.963223, 36.198547>,  <39.106190, 38.103756, 36.032921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208260, 37.963223, 36.198547>,  <39.378376, 37.728996, 36.474590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208260, 37.963223, 36.198547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414581, -0.551757, -0.723662,
		-0.804520, -0.593870, -0.008107,
		-0.425289, 0.585562, -0.690107,
		39.080673, 38.138889, 35.991516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137882, 37.095200, 36.463417>,  <39.378376, 37.728996, 36.474590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137882, 37.095200, 36.463417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473789, 36.926888, 36.600666>,  <39.675335, 36.825901, 36.683018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473789, 36.926888, 36.600666>,  <39.137882, 37.095200, 36.463417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473789, 36.926888, 36.600666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423651, -0.112563, 0.898805,
		-0.339579, -0.900151, -0.272792,
		0.839766, -0.420784, 0.343125,
		39.725719, 36.800652, 36.703602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894630, 36.564903, 36.804363>,  <39.137882, 37.095200, 36.463417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894630, 36.564903, 36.804363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257656, 36.636936, 36.956097>,  <39.475471, 36.680157, 37.047138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257656, 36.636936, 36.956097>,  <38.894630, 36.564903, 36.804363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257656, 36.636936, 36.956097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380800, -0.027747, 0.924241,
		0.176963, -0.983260, 0.043392,
		0.907566, 0.180081, 0.379336,
		39.529926, 36.690960, 37.069897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946831, 36.078117, 37.307384>,  <38.894630, 36.564903, 36.804363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946831, 36.078117, 37.307384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201916, 36.371418, 37.401756>,  <39.354965, 36.547398, 37.458382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201916, 36.371418, 37.401756>,  <38.946831, 36.078117, 37.307384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201916, 36.371418, 37.401756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257590, -0.085652, 0.962451,
		0.725930, -0.674537, 0.134258,
		0.637709, 0.733255, 0.235931,
		39.393227, 36.591396, 37.472534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464809, 35.766941, 37.834511>,  <38.946831, 36.078117, 37.307384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464809, 35.766941, 37.834511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492645, 36.161789, 37.892132>,  <39.509346, 36.398697, 37.926704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492645, 36.161789, 37.892132>,  <39.464809, 35.766941, 37.834511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492645, 36.161789, 37.892132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221060, -0.125553, 0.967145,
		0.972775, -0.099145, 0.209476,
		0.069587, 0.987121, 0.144052,
		39.513523, 36.457924, 37.935349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970264, 35.855484, 38.346363>,  <39.464809, 35.766941, 37.834511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970264, 35.855484, 38.346363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727066, 36.173012, 38.340874>,  <39.581146, 36.363529, 38.337582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727066, 36.173012, 38.340874>,  <39.970264, 35.855484, 38.346363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727066, 36.173012, 38.340874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090244, -0.051924, 0.994565,
		0.788797, 0.605927, 0.103207,
		-0.607993, 0.793824, -0.013724,
		39.544666, 36.411160, 38.336758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075680, 36.209518, 38.937725>,  <39.970264, 35.855484, 38.346363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075680, 36.209518, 38.937725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747108, 36.410275, 38.829388>,  <39.549965, 36.530727, 38.764385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747108, 36.410275, 38.829388>,  <40.075680, 36.209518, 38.937725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747108, 36.410275, 38.829388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342278, -0.053977, 0.938047,
		0.456176, 0.863246, 0.216124,
		-0.821431, 0.501889, -0.270847,
		39.500679, 36.560841, 38.748135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922615, 36.520782, 39.474319>,  <40.075680, 36.209518, 38.937725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922615, 36.520782, 39.474319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570831, 36.537010, 39.284622>,  <39.359760, 36.546749, 39.170803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570831, 36.537010, 39.284622>,  <39.922615, 36.520782, 39.474319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570831, 36.537010, 39.284622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475419, -0.123078, 0.871108,
		-0.023025, 0.991567, 0.127532,
		-0.879458, 0.040573, -0.474244,
		39.306995, 36.549183, 39.142349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496693, 36.900234, 39.927116>,  <39.922615, 36.520782, 39.474319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496693, 36.900234, 39.927116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244534, 36.699886, 39.689888>,  <39.093239, 36.579678, 39.547550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244534, 36.699886, 39.689888>,  <39.496693, 36.900234, 39.927116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244534, 36.699886, 39.689888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674014, -0.025858, 0.738266,
		-0.385109, 0.865138, -0.321291,
		-0.630394, -0.500868, -0.593073,
		39.055416, 36.549625, 39.511967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902195, 37.249077, 39.997730>,  <39.496693, 36.900234, 39.927116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902195, 37.249077, 39.997730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806229, 36.883678, 39.866291>,  <38.748650, 36.664440, 39.787430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806229, 36.883678, 39.866291>,  <38.902195, 37.249077, 39.997730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806229, 36.883678, 39.866291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695521, -0.074402, 0.714643,
		-0.677269, 0.399997, -0.617503,
		-0.239912, -0.913492, -0.328596,
		38.734257, 36.609631, 39.767712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138535, 37.204811, 40.021656>,  <38.902195, 37.249077, 39.997730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138535, 37.204811, 40.021656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267212, 36.826077, 40.020630>,  <38.344418, 36.598835, 40.020016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267212, 36.826077, 40.020630>,  <38.138535, 37.204811, 40.021656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267212, 36.826077, 40.020630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706244, -0.241757, 0.665412,
		-0.630658, -0.212249, -0.746472,
		0.321698, -0.946839, -0.002566,
		38.363720, 36.542027, 40.019859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547287, 36.798111, 39.912361>,  <38.138535, 37.204811, 40.021656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547287, 36.798111, 39.912361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821777, 36.544327, 40.054653>,  <37.986473, 36.392056, 40.140030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821777, 36.544327, 40.054653>,  <37.547287, 36.798111, 39.912361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821777, 36.544327, 40.054653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620299, -0.255018, 0.741751,
		-0.379896, -0.729672, -0.568558,
		0.686227, -0.634464, 0.355735,
		38.027645, 36.353989, 40.161373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174328, 36.221703, 40.249538>,  <37.547287, 36.798111, 39.912361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174328, 36.221703, 40.249538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538273, 36.258575, 40.411358>,  <37.756638, 36.280697, 40.508450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538273, 36.258575, 40.411358>,  <37.174328, 36.221703, 40.249538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538273, 36.258575, 40.411358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392987, -0.121350, 0.911501,
		0.133114, -0.988320, -0.074186,
		0.909858, 0.092180, 0.404551,
		37.811230, 36.286228, 40.532722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090164, 35.627048, 40.740807>,  <37.174328, 36.221703, 40.249538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090164, 35.627048, 40.740807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420219, 35.814201, 40.867443>,  <37.618252, 35.926495, 40.943424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420219, 35.814201, 40.867443>,  <37.090164, 35.627048, 40.740807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420219, 35.814201, 40.867443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273731, -0.159095, 0.948557,
		0.494185, -0.869351, -0.003201,
		0.825138, 0.467887, 0.316591,
		37.667759, 35.954567, 40.962421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569061, 35.101963, 41.299019>,  <37.090164, 35.627048, 40.740807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569061, 35.101963, 41.299019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605297, 35.498917, 41.332420>,  <37.627037, 35.737087, 41.352463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605297, 35.498917, 41.332420>,  <37.569061, 35.101963, 41.299019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605297, 35.498917, 41.332420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029341, -0.086475, 0.995822,
		0.995456, -0.087756, -0.036951,
		0.090585, 0.992381, 0.083507,
		37.632473, 35.796631, 41.357471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581852, 34.345566, 41.438709>,  <37.569061, 35.101963, 41.299019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581852, 34.345566, 41.438709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315701, 34.112576, 41.625469>,  <37.156010, 33.972782, 41.737526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315701, 34.112576, 41.625469>,  <37.581852, 34.345566, 41.438709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315701, 34.112576, 41.625469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089059, -0.559041, -0.824343,
		0.741178, -0.590079, 0.320097,
		-0.665375, -0.582477, 0.466901,
		37.116089, 33.937832, 41.765541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783386, 33.648350, 41.216492>,  <37.581852, 34.345566, 41.438709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783386, 33.648350, 41.216492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414333, 33.583141, 41.356308>,  <37.192902, 33.544018, 41.440197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414333, 33.583141, 41.356308>,  <37.783386, 33.648350, 41.216492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414333, 33.583141, 41.356308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247768, -0.444007, -0.861086,
		0.295573, -0.881068, 0.369263,
		-0.922631, -0.163022, 0.349538,
		37.137543, 33.534233, 41.461170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646675, 32.980331, 41.139782>,  <37.783386, 33.648350, 41.216492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646675, 32.980331, 41.139782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282127, 33.144897, 41.144482>,  <37.063396, 33.243637, 41.147301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282127, 33.144897, 41.144482>,  <37.646675, 32.980331, 41.139782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282127, 33.144897, 41.144482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247542, -0.525112, -0.814236,
		-0.328821, -0.744980, 0.580415,
		-0.911372, 0.411415, 0.011746,
		37.008717, 33.268322, 41.148006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200947, 32.434448, 40.924503>,  <37.646675, 32.980331, 41.139782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200947, 32.434448, 40.924503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993042, 32.769733, 40.858471>,  <36.868301, 32.970905, 40.818851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993042, 32.769733, 40.858471>,  <37.200947, 32.434448, 40.924503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993042, 32.769733, 40.858471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367355, -0.393737, -0.842628,
		-0.771299, -0.377321, 0.512569,
		-0.519758, 0.838213, -0.165078,
		36.837116, 33.021198, 40.808949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577396, 32.304832, 40.715824>,  <37.200947, 32.434448, 40.924503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577396, 32.304832, 40.715824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558067, 32.687210, 40.600010>,  <36.546471, 32.916637, 40.530521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558067, 32.687210, 40.600010>,  <36.577396, 32.304832, 40.715824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558067, 32.687210, 40.600010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457179, -0.278896, -0.844514,
		-0.888061, 0.091559, 0.450517,
		-0.048325, 0.955946, -0.289535,
		36.543571, 32.973995, 40.513149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813339, 32.612930, 40.736755>,  <36.577396, 32.304832, 40.715824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813339, 32.612930, 40.736755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055962, 32.787422, 40.470886>,  <36.201534, 32.892117, 40.311363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055962, 32.787422, 40.470886>,  <35.813339, 32.612930, 40.736755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055962, 32.787422, 40.470886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493106, -0.449376, -0.744921,
		-0.623648, 0.779590, -0.057462,
		0.606556, 0.436234, -0.664673,
		36.237926, 32.918293, 40.271484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409100, 32.666458, 40.163551>,  <35.813339, 32.612930, 40.736755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409100, 32.666458, 40.163551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763111, 32.746223, 39.995289>,  <35.975517, 32.794083, 39.894329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763111, 32.746223, 39.995289>,  <35.409100, 32.666458, 40.163551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763111, 32.746223, 39.995289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348184, -0.316257, -0.882468,
		-0.309012, 0.927478, -0.210465,
		0.885031, 0.199412, -0.420661,
		36.028622, 32.806046, 39.869091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098785, 33.083584, 39.620682>,  <35.409100, 32.666458, 40.163551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098785, 33.083584, 39.620682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461937, 32.970276, 39.497063>,  <35.679829, 32.902290, 39.422890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461937, 32.970276, 39.497063>,  <35.098785, 33.083584, 39.620682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461937, 32.970276, 39.497063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322914, -0.002393, -0.946425,
		0.267354, 0.959037, -0.093644,
		0.907881, -0.283269, -0.309046,
		35.734303, 32.885296, 39.404350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408352, 33.556202, 39.060337>,  <35.098785, 33.083584, 39.620682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408352, 33.556202, 39.060337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631729, 33.230423, 38.997318>,  <35.765755, 33.034954, 38.959507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631729, 33.230423, 38.997318>,  <35.408352, 33.556202, 39.060337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631729, 33.230423, 38.997318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226873, 0.032727, -0.973374,
		0.797917, 0.579315, -0.166500,
		0.558441, -0.814447, -0.157544,
		35.799263, 32.986088, 38.950054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562286, 33.631531, 38.355556>,  <35.408352, 33.556202, 39.060337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562286, 33.631531, 38.355556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629585, 33.247936, 38.446796>,  <35.669964, 33.017780, 38.501541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629585, 33.247936, 38.446796>,  <35.562286, 33.631531, 38.355556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629585, 33.247936, 38.446796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297531, -0.270014, -0.915734,
		0.939771, 0.086200, -0.330758,
		0.168245, -0.958990, 0.228104,
		35.680058, 32.960239, 38.515228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098774, 33.328663, 37.927483>,  <35.562286, 33.631531, 38.355556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098774, 33.328663, 37.927483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832485, 33.058285, 38.053921>,  <35.672714, 32.896057, 38.129784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832485, 33.058285, 38.053921>,  <36.098774, 33.328663, 37.927483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832485, 33.058285, 38.053921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132270, -0.310001, -0.941490,
		0.734386, -0.668578, 0.116966,
		-0.665719, -0.675946, 0.316093,
		35.632771, 32.855499, 38.148750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409821, 32.694344, 37.739059>,  <36.098774, 33.328663, 37.927483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409821, 32.694344, 37.739059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010998, 32.719372, 37.756752>,  <35.771702, 32.734390, 37.767368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010998, 32.719372, 37.756752>,  <36.409821, 32.694344, 37.739059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010998, 32.719372, 37.756752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060929, -0.297322, -0.952831,
		-0.046468, -0.952725, 0.300260,
		-0.997060, 0.062570, 0.044233,
		35.711880, 32.738144, 37.770023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.908661, 34.069183, 45.657948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535702, 34.144485, 45.534531>,  <37.311928, 34.189667, 45.460480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535702, 34.144485, 45.534531>,  <37.908661, 34.069183, 45.657948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535702, 34.144485, 45.534531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217326, -0.390084, -0.894765,
		-0.288799, -0.901329, 0.322801,
		-0.932397, 0.188254, -0.308538,
		37.255981, 34.200962, 45.441971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736252, 33.527378, 45.299450>,  <37.908661, 34.069183, 45.657948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736252, 33.527378, 45.299450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472065, 33.803772, 45.181923>,  <37.313553, 33.969608, 45.111404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472065, 33.803772, 45.181923>,  <37.736252, 33.527378, 45.299450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472065, 33.803772, 45.181923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133039, -0.277431, -0.951490,
		-0.738977, -0.667515, 0.091305,
		-0.660465, 0.690982, -0.293821,
		37.273926, 34.011066, 45.093777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179886, 33.165573, 44.767960>,  <37.736252, 33.527378, 45.299450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179886, 33.165573, 44.767960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139263, 33.560734, 44.721062>,  <37.114891, 33.797829, 44.692924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139263, 33.560734, 44.721062>,  <37.179886, 33.165573, 44.767960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139263, 33.560734, 44.721062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098580, -0.127265, -0.986958,
		-0.989933, -0.088675, 0.110312,
		-0.101557, 0.987897, -0.117242,
		37.108795, 33.857101, 44.685890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515320, 33.297291, 44.444920>,  <37.179886, 33.165573, 44.767960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515320, 33.297291, 44.444920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755726, 33.606167, 44.362461>,  <36.899971, 33.791492, 44.312984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755726, 33.606167, 44.362461>,  <36.515320, 33.297291, 44.444920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755726, 33.606167, 44.362461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257166, -0.057372, -0.964663,
		-0.756731, 0.632794, 0.164100,
		0.601019, 0.772191, -0.206148,
		36.936031, 33.837826, 44.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168491, 33.469780, 43.819332>,  <36.515320, 33.297291, 44.444920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168491, 33.469780, 43.819332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501251, 33.691750, 43.819347>,  <36.700909, 33.824932, 43.819355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501251, 33.691750, 43.819347>,  <36.168491, 33.469780, 43.819332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501251, 33.691750, 43.819347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112193, 0.168261, -0.979337,
		-0.543461, 0.814710, 0.202235,
		0.831904, 0.554920, 0.000039,
		36.750824, 33.858227, 43.819359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016441, 34.174007, 43.518097>,  <36.168491, 33.469780, 43.819332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016441, 34.174007, 43.518097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413597, 34.134827, 43.491013>,  <36.651890, 34.111320, 43.474762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.413597, 34.134827, 43.491013>,  <36.016441, 34.174007, 43.518097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413597, 34.134827, 43.491013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070634, -0.026703, -0.997145,
		0.095862, 0.994833, -0.033432,
		0.992885, -0.097950, -0.067709,
		36.711464, 34.105442, 43.470699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176765, 34.576057, 43.006775>,  <36.016441, 34.174007, 43.518097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176765, 34.576057, 43.006775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512783, 34.359669, 43.023163>,  <36.714394, 34.229836, 43.032993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512783, 34.359669, 43.023163>,  <36.176765, 34.576057, 43.006775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512783, 34.359669, 43.023163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035891, -0.019931, -0.999157,
		0.541334, 0.840803, 0.002674,
		0.840041, -0.540974, 0.040967,
		36.764797, 34.197376, 43.035454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731724, 34.915535, 42.626099>,  <36.176765, 34.576057, 43.006775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731724, 34.915535, 42.626099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832550, 34.529453, 42.653919>,  <36.893047, 34.297802, 42.670612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832550, 34.529453, 42.653919>,  <36.731724, 34.915535, 42.626099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832550, 34.529453, 42.653919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103813, -0.098431, -0.989714,
		0.962126, 0.242251, -0.125012,
		0.252064, -0.965208, 0.069554,
		36.908169, 34.239891, 42.674786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189224, 34.791046, 42.035267>,  <36.731724, 34.915535, 42.626099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189224, 34.791046, 42.035267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087864, 34.414696, 42.125198>,  <37.027046, 34.188885, 42.179157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087864, 34.414696, 42.125198>,  <37.189224, 34.791046, 42.035267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087864, 34.414696, 42.125198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007436, -0.230514, -0.973041,
		0.967332, -0.248243, 0.051416,
		-0.253403, -0.940871, 0.224829,
		37.011845, 34.132435, 42.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848785, 35.197578, 41.955517>,  <37.189224, 34.791046, 42.035267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848785, 35.197578, 41.955517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765038, 35.580978, 41.878109>,  <37.714790, 35.811016, 41.831665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765038, 35.580978, 41.878109>,  <37.848785, 35.197578, 41.955517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765038, 35.580978, 41.878109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058666, 0.209861, 0.975970,
		0.976075, 0.192985, -0.100170,
		-0.209369, 0.958496, -0.193518,
		37.702229, 35.868526, 41.820053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314526, 35.488094, 42.387665>,  <37.848785, 35.197578, 41.955517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314526, 35.488094, 42.387665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030807, 35.745922, 42.273521>,  <37.860577, 35.900620, 42.205036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030807, 35.745922, 42.273521>,  <38.314526, 35.488094, 42.387665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030807, 35.745922, 42.273521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098497, 0.310222, 0.945548,
		0.697994, 0.698782, -0.156552,
		-0.709298, 0.644566, -0.285361,
		37.818020, 35.939293, 42.187912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507607, 36.176109, 42.563530>,  <38.314526, 35.488094, 42.387665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507607, 36.176109, 42.563530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108932, 36.195911, 42.537731>,  <37.869728, 36.207794, 42.522251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.108932, 36.195911, 42.537731>,  <38.507607, 36.176109, 42.563530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108932, 36.195911, 42.537731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037137, 0.428508, 0.902774,
		0.072331, 0.902181, -0.425251,
		-0.996689, 0.049507, -0.064499,
		37.809925, 36.210762, 42.518383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300423, 36.951603, 42.719948>,  <38.507607, 36.176109, 42.563530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300423, 36.951603, 42.719948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999146, 36.703930, 42.808784>,  <37.818378, 36.555328, 42.862087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.999146, 36.703930, 42.808784>,  <38.300423, 36.951603, 42.719948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999146, 36.703930, 42.808784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156121, 0.496243, 0.854031,
		-0.639010, 0.608573, -0.470431,
		-0.753188, -0.619179, 0.222092,
		37.773190, 36.518177, 42.875412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899818, 37.407139, 42.829655>,  <38.300423, 36.951603, 42.719948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899818, 37.407139, 42.829655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.728153, 37.090298, 43.003269>,  <37.625153, 36.900192, 43.107437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.728153, 37.090298, 43.003269>,  <37.899818, 37.407139, 42.829655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728153, 37.090298, 43.003269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189461, 0.548798, 0.814202,
		-0.883132, 0.267193, -0.385598,
		-0.429165, -0.792104, 0.434038,
		37.599403, 36.852665, 43.133480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260044, 37.643631, 43.135693>,  <37.899818, 37.407139, 42.829655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260044, 37.643631, 43.135693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376240, 37.311050, 43.325138>,  <37.445957, 37.111504, 43.438805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.376240, 37.311050, 43.325138>,  <37.260044, 37.643631, 43.135693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376240, 37.311050, 43.325138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012350, 0.491657, 0.870701,
		-0.956798, -0.258779, 0.132553,
		0.290490, -0.831448, 0.473613,
		37.463387, 37.061615, 43.467220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818882, 37.638458, 43.716862>,  <37.260044, 37.643631, 43.135693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818882, 37.638458, 43.716862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133102, 37.406452, 43.803108>,  <37.321636, 37.267250, 43.854855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133102, 37.406452, 43.803108>,  <36.818882, 37.638458, 43.716862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133102, 37.406452, 43.803108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044941, 0.294049, 0.954733,
		-0.617158, -0.759685, 0.204925,
		0.785554, -0.580012, 0.215616,
		37.368771, 37.232449, 43.867794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680000, 37.461765, 44.403141>,  <36.818882, 37.638458, 43.716862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680000, 37.461765, 44.403141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061085, 37.343296, 44.375957>,  <37.289738, 37.272217, 44.359650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061085, 37.343296, 44.375957>,  <36.680000, 37.461765, 44.403141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061085, 37.343296, 44.375957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104231, 0.108454, 0.988622,
		-0.285431, -0.948958, 0.134195,
		0.952715, -0.296171, -0.067955,
		37.346901, 37.254444, 44.355572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788818, 36.999123, 44.974636>,  <36.680000, 37.461765, 44.403141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788818, 36.999123, 44.974636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151299, 37.135159, 44.874130>,  <37.368786, 37.216782, 44.813828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151299, 37.135159, 44.874130>,  <36.788818, 36.999123, 44.974636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151299, 37.135159, 44.874130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159309, 0.275828, 0.947913,
		0.391683, -0.899030, 0.195776,
		0.906203, 0.340093, -0.251261,
		37.423161, 37.237186, 44.798752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217865, 36.761402, 45.466774>,  <36.788818, 36.999123, 44.974636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217865, 36.761402, 45.466774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417622, 37.066559, 45.302528>,  <37.537476, 37.249653, 45.203979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417622, 37.066559, 45.302528>,  <37.217865, 36.761402, 45.466774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417622, 37.066559, 45.302528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279187, 0.306961, 0.909851,
		0.820160, -0.569011, -0.059695,
		0.499392, 0.762890, -0.410617,
		37.567440, 37.295425, 45.179344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757515, 36.745640, 45.849892>,  <37.217865, 36.761402, 45.466774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757515, 36.745640, 45.849892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722401, 37.111412, 45.691845>,  <37.701332, 37.330875, 45.597019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722401, 37.111412, 45.691845>,  <37.757515, 36.745640, 45.849892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722401, 37.111412, 45.691845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034516, 0.399200, 0.916214,
		0.995541, 0.066796, -0.066607,
		-0.087789, 0.914428, -0.395114,
		37.696064, 37.385742, 45.573311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244007, 37.102627, 46.265820>,  <37.757515, 36.745640, 45.849892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244007, 37.102627, 46.265820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082939, 37.409748, 46.066490>,  <37.986298, 37.594021, 45.946892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082939, 37.409748, 46.066490>,  <38.244007, 37.102627, 46.265820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082939, 37.409748, 46.066490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143771, 0.484603, 0.862838,
		0.903982, 0.419086, -0.084748,
		-0.402673, 0.767806, -0.498325,
		37.962139, 37.640091, 45.916992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537800, 37.759087, 46.440723>,  <38.244007, 37.102627, 46.265820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537800, 37.759087, 46.440723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165489, 37.836479, 46.316650>,  <37.942101, 37.882915, 46.242207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.165489, 37.836479, 46.316650>,  <38.537800, 37.759087, 46.440723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165489, 37.836479, 46.316650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181352, 0.492349, 0.851295,
		0.317427, 0.848621, -0.423181,
		-0.930780, 0.193479, -0.310184,
		37.886253, 37.894524, 46.223595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523121, 38.340694, 46.565144>,  <38.537800, 37.759087, 46.440723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523121, 38.340694, 46.565144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.146175, 38.207268, 46.554684>,  <37.920010, 38.127213, 46.548409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.146175, 38.207268, 46.554684>,  <38.523121, 38.340694, 46.565144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146175, 38.207268, 46.554684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199942, 0.498738, 0.843376,
		-0.268275, 0.799998, -0.536686,
		-0.942365, -0.333563, -0.026154,
		37.863464, 38.107201, 46.546837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.423792, 36.883144, 45.924248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805302, 36.982151, 45.992424>,  <32.034206, 37.041553, 46.033329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805302, 36.982151, 45.992424>,  <31.423792, 36.883144, 45.924248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805302, 36.982151, 45.992424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156709, 0.074305, -0.984846,
		-0.256428, 0.966031, 0.032083,
		0.953775, 0.247514, 0.170440,
		32.091434, 37.056404, 46.043556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586725, 37.602745, 45.554512>,  <31.423792, 36.883144, 45.924248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586725, 37.602745, 45.554512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908539, 37.368347, 45.593159>,  <32.101627, 37.227707, 45.616344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908539, 37.368347, 45.593159>,  <31.586725, 37.602745, 45.554512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908539, 37.368347, 45.593159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204370, 0.120422, -0.971458,
		0.557639, 0.801314, 0.216644,
		0.804532, -0.585999, 0.096613,
		32.149899, 37.192547, 45.622143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132641, 37.979004, 45.242477>,  <31.586725, 37.602745, 45.554512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132641, 37.979004, 45.242477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287354, 37.610733, 45.263500>,  <32.380180, 37.389771, 45.276112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.287354, 37.610733, 45.263500>,  <32.132641, 37.979004, 45.242477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287354, 37.610733, 45.263500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227669, 0.040107, -0.972912,
		0.893628, 0.388265, 0.225122,
		0.386777, -0.920674, 0.052555,
		32.403385, 37.334530, 45.279266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656895, 38.045944, 44.797249>,  <32.132641, 37.979004, 45.242477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656895, 38.045944, 44.797249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.613876, 37.649193, 44.824387>,  <32.588066, 37.411140, 44.840668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.613876, 37.649193, 44.824387>,  <32.656895, 38.045944, 44.797249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613876, 37.649193, 44.824387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235544, -0.091719, -0.967526,
		0.965895, -0.088076, 0.243496,
		-0.107549, -0.991882, 0.067846,
		32.581612, 37.351627, 44.844742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253643, 37.718643, 44.645237>,  <32.656895, 38.045944, 44.797249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253643, 37.718643, 44.645237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978348, 37.433243, 44.592697>,  <32.813171, 37.262005, 44.561172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978348, 37.433243, 44.592697>,  <33.253643, 37.718643, 44.645237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978348, 37.433243, 44.592697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324082, -0.140380, -0.935556,
		0.649079, -0.686450, 0.327846,
		-0.688235, -0.713499, -0.131348,
		32.771877, 37.219193, 44.553291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583874, 37.167072, 44.172646>,  <33.253643, 37.718643, 44.645237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583874, 37.167072, 44.172646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189445, 37.100937, 44.165409>,  <32.952789, 37.061256, 44.161068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189445, 37.100937, 44.165409>,  <33.583874, 37.167072, 44.172646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189445, 37.100937, 44.165409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045824, -0.165480, -0.985148,
		0.159890, -0.972255, 0.170751,
		-0.986071, -0.165340, -0.018094,
		32.893623, 37.051334, 44.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526310, 36.558907, 43.820602>,  <33.583874, 37.167072, 44.172646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526310, 36.558907, 43.820602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170952, 36.741673, 43.802784>,  <32.957737, 36.851334, 43.792095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170952, 36.741673, 43.802784>,  <33.526310, 36.558907, 43.820602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170952, 36.741673, 43.802784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011765, -0.119653, -0.992746,
		-0.458930, -0.881426, 0.111675,
		-0.888394, 0.456915, -0.044542,
		32.904434, 36.878746, 43.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076546, 36.110558, 43.451469>,  <33.526310, 36.558907, 43.820602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076546, 36.110558, 43.451469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895138, 36.465675, 43.420124>,  <32.786293, 36.678745, 43.401318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895138, 36.465675, 43.420124>,  <33.076546, 36.110558, 43.451469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895138, 36.465675, 43.420124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023332, -0.099725, -0.994741,
		-0.890941, -0.449306, 0.065941,
		-0.453519, 0.887794, -0.078366,
		32.759083, 36.732014, 43.396614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500698, 35.978165, 43.113247>,  <33.076546, 36.110558, 43.451469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500698, 35.978165, 43.113247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566296, 36.371490, 43.081745>,  <32.605656, 36.607487, 43.062843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566296, 36.371490, 43.081745>,  <32.500698, 35.978165, 43.113247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566296, 36.371490, 43.081745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148274, -0.054359, -0.987451,
		-0.975254, 0.173613, 0.136885,
		0.163993, 0.983313, -0.078756,
		32.615494, 36.666485, 43.058117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007294, 36.171719, 42.600037>,  <32.500698, 35.978165, 43.113247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007294, 36.171719, 42.600037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304634, 36.437801, 42.628132>,  <32.483040, 36.597450, 42.644989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.304634, 36.437801, 42.628132>,  <32.007294, 36.171719, 42.600037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304634, 36.437801, 42.628132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009653, 0.115661, -0.993242,
		-0.668831, 0.737651, 0.092398,
		0.743352, 0.665202, 0.070237,
		32.527641, 36.637363, 42.649204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793356, 36.718964, 42.208595>,  <32.007294, 36.171719, 42.600037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793356, 36.718964, 42.208595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190826, 36.756687, 42.232979>,  <32.429310, 36.779320, 42.247608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190826, 36.756687, 42.232979>,  <31.793356, 36.718964, 42.208595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190826, 36.756687, 42.232979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033671, 0.267648, -0.962928,
		-0.107128, 0.958890, 0.262780,
		0.993675, 0.094308, 0.060960,
		32.488930, 36.784981, 42.251266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931845, 37.281654, 41.880913>,  <31.793356, 36.718964, 42.208595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931845, 37.281654, 41.880913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291336, 37.107063, 41.864040>,  <32.507030, 37.002308, 41.853916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291336, 37.107063, 41.864040>,  <31.931845, 37.281654, 41.880913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291336, 37.107063, 41.864040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045936, 0.189368, -0.980831,
		0.436094, 0.879563, 0.190240,
		0.898728, -0.436473, -0.042179,
		32.560955, 36.976120, 41.851387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340916, 37.803802, 41.527897>,  <31.931845, 37.281654, 41.880913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340916, 37.803802, 41.527897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517895, 37.446808, 41.492775>,  <32.624081, 37.232613, 41.471703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517895, 37.446808, 41.492775>,  <32.340916, 37.803802, 41.527897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517895, 37.446808, 41.492775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049524, 0.073446, -0.996069,
		0.895427, 0.445055, -0.011704,
		0.442446, -0.892486, -0.087807,
		32.650627, 37.179062, 41.466434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883926, 37.849014, 40.952400>,  <32.340916, 37.803802, 41.527897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883926, 37.849014, 40.952400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.850647, 37.455284, 41.014595>,  <32.830681, 37.219044, 41.051914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.850647, 37.455284, 41.014595>,  <32.883926, 37.849014, 40.952400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850647, 37.455284, 41.014595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174466, -0.139235, -0.974769,
		0.981142, -0.108228, -0.160147,
		-0.083199, -0.984327, 0.155492,
		32.825687, 37.159985, 41.061241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596775, 37.988022, 40.999222>,  <32.883926, 37.849014, 40.952400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596775, 37.988022, 40.999222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744259, 38.341713, 40.884548>,  <33.832748, 38.553928, 40.815742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.744259, 38.341713, 40.884548>,  <33.596775, 37.988022, 40.999222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744259, 38.341713, 40.884548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350151, 0.417819, 0.838344,
		0.861072, -0.208724, 0.463669,
		0.368712, 0.884229, -0.286688,
		33.854874, 38.606983, 40.798542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083431, 38.244049, 41.544865>,  <33.596775, 37.988022, 40.999222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083431, 38.244049, 41.544865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908840, 38.546204, 41.349361>,  <33.804085, 38.727497, 41.232059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908840, 38.546204, 41.349361>,  <34.083431, 38.244049, 41.544865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908840, 38.546204, 41.349361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267156, 0.409920, 0.872120,
		0.859137, 0.511233, 0.022886,
		-0.436475, 0.755385, -0.488757,
		33.777897, 38.772820, 41.202736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470337, 38.848423, 41.861080>,  <34.083431, 38.244049, 41.544865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470337, 38.848423, 41.861080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134052, 38.986038, 41.693825>,  <33.932281, 39.068607, 41.593472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134052, 38.986038, 41.693825>,  <34.470337, 38.848423, 41.861080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134052, 38.986038, 41.693825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303549, 0.340016, 0.890082,
		0.448398, 0.875229, -0.181423,
		-0.840712, 0.344040, -0.418138,
		33.881840, 39.089249, 41.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482166, 39.584923, 41.906170>,  <34.470337, 38.848423, 41.861080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482166, 39.584923, 41.906170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102016, 39.464134, 41.876205>,  <33.873928, 39.391663, 41.858227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.102016, 39.464134, 41.876205>,  <34.482166, 39.584923, 41.906170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102016, 39.464134, 41.876205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202814, 0.418726, 0.885175,
		-0.235930, 0.856436, -0.459188,
		-0.950370, -0.301969, -0.074907,
		33.816906, 39.373543, 41.853733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096455, 40.166676, 42.114967>,  <34.482166, 39.584923, 41.906170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096455, 40.166676, 42.114967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823730, 39.878284, 42.164490>,  <33.660095, 39.705250, 42.194202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823730, 39.878284, 42.164490>,  <34.096455, 40.166676, 42.114967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823730, 39.878284, 42.164490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243809, 0.383524, 0.890767,
		-0.689709, 0.577145, -0.437270,
		-0.681806, -0.720980, 0.123807,
		33.619190, 39.661991, 42.201633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473438, 40.488312, 42.448078>,  <34.096455, 40.166676, 42.114967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473438, 40.488312, 42.448078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451729, 40.094383, 42.514023>,  <33.438702, 39.858025, 42.553589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451729, 40.094383, 42.514023>,  <33.473438, 40.488312, 42.448078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451729, 40.094383, 42.514023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369413, 0.173195, 0.912983,
		-0.927679, -0.011352, -0.373206,
		-0.054273, -0.984822, 0.164863,
		33.435448, 39.798935, 42.563480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743050, 40.413834, 42.834835>,  <33.473438, 40.488312, 42.448078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743050, 40.413834, 42.834835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952324, 40.082760, 42.916042>,  <33.077888, 39.884117, 42.964767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952324, 40.082760, 42.916042>,  <32.743050, 40.413834, 42.834835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952324, 40.082760, 42.916042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232965, 0.090247, 0.968289,
		-0.819758, -0.553891, -0.145605,
		0.523186, -0.827683, 0.203018,
		33.109280, 39.834454, 42.976948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309700, 40.032345, 43.258591>,  <32.743050, 40.413834, 42.834835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309700, 40.032345, 43.258591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659340, 39.853046, 43.333447>,  <32.869125, 39.745468, 43.378361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659340, 39.853046, 43.333447>,  <32.309700, 40.032345, 43.258591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659340, 39.853046, 43.333447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202618, 0.013674, 0.979162,
		-0.441469, -0.893804, -0.078871,
		0.874100, -0.448250, 0.187138,
		32.921570, 39.718571, 43.389587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195683, 39.509132, 43.719296>,  <32.309700, 40.032345, 43.258591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195683, 39.509132, 43.719296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587662, 39.584290, 43.745800>,  <32.822849, 39.629383, 43.761703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587662, 39.584290, 43.745800>,  <32.195683, 39.509132, 43.719296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587662, 39.584290, 43.745800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063906, -0.018554, 0.997784,
		0.188707, -0.982014, -0.006175,
		0.979952, 0.187894, 0.066258,
		32.881649, 39.640659, 43.765678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399967, 39.148319, 44.180420>,  <32.195683, 39.509132, 43.719296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399967, 39.148319, 44.180420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716221, 39.393158, 44.186531>,  <32.905975, 39.540062, 44.190197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716221, 39.393158, 44.186531>,  <32.399967, 39.148319, 44.180420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716221, 39.393158, 44.186531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100407, 0.104998, 0.989391,
		0.603995, -0.783784, 0.144473,
		0.790638, 0.612093, 0.015279,
		32.953411, 39.576786, 44.191116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873905, 38.908375, 44.606884>,  <32.399967, 39.148319, 44.180420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873905, 38.908375, 44.606884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.975628, 39.294258, 44.579582>,  <33.036659, 39.525787, 44.563202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.975628, 39.294258, 44.579582>,  <32.873905, 38.908375, 44.606884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975628, 39.294258, 44.579582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105731, 0.042423, 0.993489,
		0.961328, -0.259864, -0.091212,
		0.254302, 0.964713, -0.068258,
		33.051918, 39.583672, 44.559105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509563, 38.943272, 44.838982>,  <32.873905, 38.908375, 44.606884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509563, 38.943272, 44.838982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353607, 39.307594, 44.893261>,  <33.260033, 39.526188, 44.925827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353607, 39.307594, 44.893261>,  <33.509563, 38.943272, 44.838982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353607, 39.307594, 44.893261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274899, -0.025518, 0.961134,
		0.878870, 0.412044, -0.240431,
		-0.389894, 0.910807, 0.135697,
		33.236637, 39.580837, 44.933971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969334, 39.239277, 45.212509>,  <33.509563, 38.943272, 44.838982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969334, 39.239277, 45.212509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644787, 39.460148, 45.289234>,  <33.450058, 39.592670, 45.335270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644787, 39.460148, 45.289234>,  <33.969334, 39.239277, 45.212509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644787, 39.460148, 45.289234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314552, 0.135861, 0.939467,
		0.492690, 0.822585, -0.283921,
		-0.811365, 0.552174, 0.191808,
		33.401379, 39.625801, 45.346775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201172, 39.737236, 45.561821>,  <33.969334, 39.239277, 45.212509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201172, 39.737236, 45.561821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811165, 39.730682, 45.650425>,  <33.577160, 39.726749, 45.703587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811165, 39.730682, 45.650425>,  <34.201172, 39.737236, 45.561821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811165, 39.730682, 45.650425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218353, 0.112008, 0.969420,
		-0.040697, 0.993572, -0.105632,
		-0.975021, -0.016387, 0.221508,
		33.518658, 39.725765, 45.716877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598896, 40.361530, 45.486404>,  <34.201172, 39.737236, 45.561821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598896, 40.361530, 45.486404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958076, 40.537521, 45.490608>,  <35.173584, 40.643116, 45.493130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958076, 40.537521, 45.490608>,  <34.598896, 40.361530, 45.486404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958076, 40.537521, 45.490608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087513, -0.155098, -0.984015,
		-0.431315, 0.884514, -0.177773,
		0.897947, 0.439978, 0.010510,
		35.227459, 40.669514, 45.493763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570438, 40.784821, 45.005814>,  <34.598896, 40.361530, 45.486404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570438, 40.784821, 45.005814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957291, 40.699062, 45.060505>,  <35.189404, 40.647606, 45.093319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.957291, 40.699062, 45.060505>,  <34.570438, 40.784821, 45.005814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957291, 40.699062, 45.060505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099705, -0.174912, -0.979523,
		0.233921, 0.960958, -0.147787,
		0.967130, -0.214396, 0.136728,
		35.247429, 40.634743, 45.101524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875641, 41.261745, 44.608627>,  <34.570438, 40.784821, 45.005814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875641, 41.261745, 44.608627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120499, 40.949188, 44.657120>,  <35.267414, 40.761654, 44.686214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120499, 40.949188, 44.657120>,  <34.875641, 41.261745, 44.608627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120499, 40.949188, 44.657120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158198, -0.029189, -0.986976,
		0.774759, 0.623351, 0.105748,
		0.612145, -0.781398, 0.121227,
		35.304142, 40.714767, 44.693489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314404, 41.350342, 44.101376>,  <34.875641, 41.261745, 44.608627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314404, 41.350342, 44.101376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417133, 40.976887, 44.201267>,  <35.478771, 40.752815, 44.261204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417133, 40.976887, 44.201267>,  <35.314404, 41.350342, 44.101376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417133, 40.976887, 44.201267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347173, -0.152029, -0.925396,
		0.901949, 0.324364, 0.285089,
		0.256824, -0.933635, 0.249733,
		35.494179, 40.696796, 44.276188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071842, 41.169872, 43.890430>,  <35.314404, 41.350342, 44.101376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071842, 41.169872, 43.890430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875069, 40.822140, 43.909443>,  <35.757004, 40.613499, 43.920849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875069, 40.822140, 43.909443>,  <36.071842, 41.169872, 43.890430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875069, 40.822140, 43.909443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463089, -0.307500, -0.831259,
		0.737259, -0.386912, 0.553849,
		-0.491933, -0.869335, 0.047533,
		35.727489, 40.561340, 43.923702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538048, 40.722248, 43.737476>,  <36.071842, 41.169872, 43.890430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538048, 40.722248, 43.737476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212570, 40.491901, 43.705784>,  <36.017284, 40.353695, 43.686768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212570, 40.491901, 43.705784>,  <36.538048, 40.722248, 43.737476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212570, 40.491901, 43.705784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417149, -0.483548, -0.769525,
		0.404829, -0.659212, 0.633683,
		-0.813696, -0.575866, -0.079236,
		35.968460, 40.319141, 43.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776058, 40.102974, 43.615063>,  <36.538048, 40.722248, 43.737476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776058, 40.102974, 43.615063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403622, 40.047020, 43.480301>,  <36.180161, 40.013447, 43.399445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.403622, 40.047020, 43.480301>,  <36.776058, 40.102974, 43.615063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403622, 40.047020, 43.480301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358833, -0.517469, -0.776830,
		-0.065672, -0.844191, 0.532004,
		-0.931089, -0.139885, -0.336907,
		36.124294, 40.005054, 43.379230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769043, 39.496307, 43.473488>,  <36.776058, 40.102974, 43.615063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769043, 39.496307, 43.473488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.467010, 39.646938, 43.258812>,  <36.285789, 39.737316, 43.130005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.467010, 39.646938, 43.258812>,  <36.769043, 39.496307, 43.473488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467010, 39.646938, 43.258812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387328, -0.404249, -0.828589,
		-0.528983, -0.833531, 0.159384,
		-0.755085, 0.376575, -0.536691,
		36.240486, 39.759911, 43.097805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516167, 38.942783, 43.054146>,  <36.769043, 39.496307, 43.473488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516167, 38.942783, 43.054146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420765, 39.297573, 42.895958>,  <36.363525, 39.510445, 42.801044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420765, 39.297573, 42.895958>,  <36.516167, 38.942783, 43.054146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420765, 39.297573, 42.895958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330858, -0.308650, -0.891778,
		-0.913045, -0.343534, -0.219849,
		-0.238500, 0.886972, -0.395472,
		36.349216, 39.563663, 42.777317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072487, 38.884686, 42.492611>,  <36.516167, 38.942783, 43.054146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072487, 38.884686, 42.492611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232555, 39.246159, 42.431644>,  <36.328594, 39.463043, 42.395065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.232555, 39.246159, 42.431644>,  <36.072487, 38.884686, 42.492611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232555, 39.246159, 42.431644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216251, -0.254730, -0.942522,
		-0.890563, 0.344206, -0.297356,
		0.400167, 0.903679, -0.152418,
		36.352604, 39.517262, 42.385918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836273, 39.029293, 41.825554>,  <36.072487, 38.884686, 42.492611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836273, 39.029293, 41.825554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.128330, 39.295170, 41.888897>,  <36.303566, 39.454697, 41.926903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.128330, 39.295170, 41.888897>,  <35.836273, 39.029293, 41.825554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128330, 39.295170, 41.888897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345783, -0.159539, -0.924652,
		-0.589341, 0.729888, -0.346325,
		0.730145, 0.664688, 0.158360,
		36.347374, 39.494576, 41.936405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908073, 39.295101, 41.171833>,  <35.836273, 39.029293, 41.825554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908073, 39.295101, 41.171833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261829, 39.366524, 41.344330>,  <36.474083, 39.409378, 41.447826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261829, 39.366524, 41.344330>,  <35.908073, 39.295101, 41.171833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261829, 39.366524, 41.344330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449094, -0.073843, -0.890428,
		-0.127148, 0.981155, -0.145495,
		0.884391, 0.178557, 0.431241,
		36.527145, 39.420090, 41.473701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206791, 39.724014, 40.782219>,  <35.908073, 39.295101, 41.171833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206791, 39.724014, 40.782219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.530785, 39.585587, 40.971603>,  <36.725182, 39.502529, 41.085232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.530785, 39.585587, 40.971603>,  <36.206791, 39.724014, 40.782219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530785, 39.585587, 40.971603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514630, 0.032317, -0.856803,
		0.281210, 0.937653, 0.204272,
		0.809986, -0.346066, 0.473457,
		36.773781, 39.481766, 41.113640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624149, 40.206799, 40.647823>,  <36.206791, 39.724014, 40.782219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624149, 40.206799, 40.647823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828949, 39.879025, 40.750877>,  <36.951828, 39.682358, 40.812710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828949, 39.879025, 40.750877>,  <36.624149, 40.206799, 40.647823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828949, 39.879025, 40.750877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467731, 0.014387, -0.883754,
		0.720475, 0.572987, 0.390642,
		0.512000, -0.819438, 0.257638,
		36.982548, 39.633194, 40.828171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.332998, 40.929974, 30.264650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504248, 40.736889, 29.959051>,  <29.606997, 40.621037, 29.775692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.504248, 40.736889, 29.959051>,  <29.332998, 40.929974, 30.264650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504248, 40.736889, 29.959051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343969, -0.868803, 0.356183,
		-0.835701, 0.110302, -0.537995,
		0.428124, -0.482716, -0.764000,
		29.632685, 40.592075, 29.729851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778934, 40.634281, 29.882673>,  <29.332998, 40.929974, 30.264650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778934, 40.634281, 29.882673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141148, 40.464714, 29.875748>,  <29.358477, 40.362972, 29.871593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141148, 40.464714, 29.875748>,  <28.778934, 40.634281, 29.882673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141148, 40.464714, 29.875748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404561, -0.875037, 0.265784,
		-0.127820, -0.233672, -0.963877,
		0.905535, -0.423920, -0.017313,
		29.412807, 40.337540, 29.870554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745176, 40.091000, 29.431812>,  <28.778934, 40.634281, 29.882673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745176, 40.091000, 29.431812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035234, 40.016590, 29.697008>,  <29.209269, 39.971943, 29.856127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035234, 40.016590, 29.697008>,  <28.745176, 40.091000, 29.431812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035234, 40.016590, 29.697008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435471, -0.869724, 0.232261,
		0.533413, -0.457136, -0.711686,
		0.725145, -0.186028, 0.662992,
		29.252777, 39.960781, 29.895906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999903, 39.379612, 29.283411>,  <28.745176, 40.091000, 29.431812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999903, 39.379612, 29.283411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098068, 39.452141, 29.664335>,  <29.156967, 39.495659, 29.892889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098068, 39.452141, 29.664335>,  <28.999903, 39.379612, 29.283411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098068, 39.452141, 29.664335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437724, -0.855781, 0.275747,
		0.864968, -0.484521, -0.130653,
		0.245416, 0.181322, 0.952310,
		29.171694, 39.506538, 29.950027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073692, 38.702709, 29.576981>,  <28.999903, 39.379612, 29.283411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073692, 38.702709, 29.576981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051594, 38.933056, 29.903250>,  <29.038334, 39.071266, 30.099010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051594, 38.933056, 29.903250>,  <29.073692, 38.702709, 29.576981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051594, 38.933056, 29.903250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428253, -0.751630, 0.501649,
		0.901968, -0.321599, 0.288145,
		-0.055248, 0.575871, 0.815672,
		29.035019, 39.105816, 30.147951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279799, 38.258831, 30.101643>,  <29.073692, 38.702709, 29.576981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279799, 38.258831, 30.101643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101017, 38.546757, 30.314096>,  <28.993748, 38.719513, 30.441568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101017, 38.546757, 30.314096>,  <29.279799, 38.258831, 30.101643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101017, 38.546757, 30.314096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475869, -0.694078, 0.540189,
		0.757482, -0.011309, 0.652758,
		-0.446956, 0.719811, 0.531134,
		28.966930, 38.762699, 30.473436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387203, 38.157829, 30.922546>,  <29.279799, 38.258831, 30.101643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387203, 38.157829, 30.922546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056452, 38.357418, 30.818777>,  <28.858000, 38.477169, 30.756516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056452, 38.357418, 30.818777>,  <29.387203, 38.157829, 30.922546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056452, 38.357418, 30.818777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550138, -0.621960, 0.557237,
		0.116693, 0.603486, 0.788788,
		-0.826880, 0.498968, -0.259422,
		28.808388, 38.507107, 30.740950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096451, 38.119904, 31.575962>,  <29.387203, 38.157829, 30.922546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096451, 38.119904, 31.575962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807882, 38.222275, 31.318573>,  <28.634741, 38.283695, 31.164139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807882, 38.222275, 31.318573>,  <29.096451, 38.119904, 31.575962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807882, 38.222275, 31.318573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670332, -0.491294, 0.556134,
		-0.173807, 0.832546, 0.525983,
		-0.721419, 0.255923, -0.643473,
		28.591457, 38.299053, 31.125530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557625, 38.460411, 31.959257>,  <29.096451, 38.119904, 31.575962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557625, 38.460411, 31.959257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383993, 38.321156, 31.626902>,  <28.279814, 38.237602, 31.427488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383993, 38.321156, 31.626902>,  <28.557625, 38.460411, 31.959257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383993, 38.321156, 31.626902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776450, -0.323129, 0.541030,
		-0.456836, 0.879994, -0.130046,
		-0.434081, -0.348136, -0.830888,
		28.253769, 38.216713, 31.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830282, 38.831356, 31.851603>,  <28.557625, 38.460411, 31.959257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830282, 38.831356, 31.851603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846729, 38.471874, 31.676952>,  <27.856598, 38.256184, 31.572163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846729, 38.471874, 31.676952>,  <27.830282, 38.831356, 31.851603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846729, 38.471874, 31.676952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812617, -0.284337, 0.508729,
		-0.581345, 0.333891, -0.741994,
		0.041116, -0.898704, -0.436623,
		27.859064, 38.202263, 31.545965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179251, 38.641010, 31.910282>,  <27.830282, 38.831356, 31.851603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179251, 38.641010, 31.910282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318460, 38.297737, 31.759336>,  <27.401985, 38.091774, 31.668770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318460, 38.297737, 31.759336>,  <27.179251, 38.641010, 31.910282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318460, 38.297737, 31.759336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622650, -0.512514, 0.591301,
		-0.700848, 0.029179, -0.712714,
		0.348022, -0.858183, -0.377362,
		27.422867, 38.040283, 31.646128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667978, 38.200478, 31.501413>,  <27.179251, 38.641010, 31.910282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667978, 38.200478, 31.501413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956245, 37.957542, 31.635145>,  <27.129206, 37.811779, 31.715384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956245, 37.957542, 31.635145>,  <26.667978, 38.200478, 31.501413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956245, 37.957542, 31.635145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692938, -0.615807, 0.374991,
		-0.021865, -0.501913, -0.864641,
		0.720666, -0.607342, 0.334330,
		27.172445, 37.775341, 31.735445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553289, 37.594845, 31.199718>,  <26.667978, 38.200478, 31.501413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553289, 37.594845, 31.199718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751957, 37.527180, 31.540237>,  <26.871157, 37.486580, 31.744549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.751957, 37.527180, 31.540237>,  <26.553289, 37.594845, 31.199718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751957, 37.527180, 31.540237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771880, -0.534598, 0.344103,
		0.396891, -0.828003, -0.396093,
		0.496668, -0.169165, 0.851295,
		26.900957, 37.476429, 31.795626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209053, 36.948338, 31.441040>,  <26.553289, 37.594845, 31.199718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209053, 36.948338, 31.441040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.440634, 37.040497, 31.753893>,  <26.579582, 37.095791, 31.941605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.440634, 37.040497, 31.753893>,  <26.209053, 36.948338, 31.441040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440634, 37.040497, 31.753893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666609, -0.418628, 0.616752,
		0.469519, -0.878447, -0.088782,
		0.578951, 0.230394, 0.782134,
		26.614319, 37.109615, 31.988533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344305, 36.262314, 31.778954>,  <26.209053, 36.948338, 31.441040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344305, 36.262314, 31.778954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418131, 36.543118, 32.054089>,  <26.462427, 36.711597, 32.219170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.418131, 36.543118, 32.054089>,  <26.344305, 36.262314, 31.778954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418131, 36.543118, 32.054089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541413, -0.511473, 0.667283,
		0.820248, -0.495563, 0.285675,
		0.184566, 0.702006, 0.687839,
		26.473501, 36.753719, 32.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533564, 35.859177, 32.393486>,  <26.344305, 36.262314, 31.778954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533564, 35.859177, 32.393486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.435719, 36.221775, 32.531143>,  <26.377010, 36.439335, 32.613739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.435719, 36.221775, 32.531143>,  <26.533564, 35.859177, 32.393486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435719, 36.221775, 32.531143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593563, -0.420648, 0.686104,
		0.766712, -0.036442, 0.640956,
		-0.244614, 0.906491, 0.344147,
		26.362333, 36.493721, 32.634388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795235, 35.921272, 33.062954>,  <26.533564, 35.859177, 32.393486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795235, 35.921272, 33.062954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484365, 36.170940, 33.030914>,  <26.297844, 36.320740, 33.011692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484365, 36.170940, 33.030914>,  <26.795235, 35.921272, 33.062954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484365, 36.170940, 33.030914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517543, -0.561561, 0.645600,
		0.357987, 0.543194, 0.759464,
		-0.777171, 0.624172, -0.080095,
		26.251215, 36.358192, 33.006886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547592, 36.032967, 33.821873>,  <26.795235, 35.921272, 33.062954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547592, 36.032967, 33.821873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240164, 36.170921, 33.606335>,  <26.055708, 36.253693, 33.477013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240164, 36.170921, 33.606335>,  <26.547592, 36.032967, 33.821873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240164, 36.170921, 33.606335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630984, -0.269546, 0.727465,
		0.105648, 0.899110, 0.424782,
		-0.768569, 0.344886, -0.538847,
		26.009594, 36.274387, 33.444679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153099, 36.420647, 34.301186>,  <26.547592, 36.032967, 33.821873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153099, 36.420647, 34.301186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.891418, 36.317936, 34.016628>,  <25.734409, 36.256310, 33.845894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.891418, 36.317936, 34.016628>,  <26.153099, 36.420647, 34.301186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891418, 36.317936, 34.016628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620475, -0.355630, 0.698955,
		-0.432471, 0.898661, 0.073329,
		-0.654202, -0.256779, -0.711396,
		25.695158, 36.240902, 33.803211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537611, 37.121395, 34.639343>,  <26.153099, 36.420647, 34.301186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537611, 37.121395, 34.639343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.660181, 36.959652, 34.984039>,  <26.733723, 36.862606, 35.190857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.660181, 36.959652, 34.984039>,  <26.537611, 37.121395, 34.639343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660181, 36.959652, 34.984039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810973, 0.584919, -0.013907,
		-0.498426, 0.703110, 0.507157,
		0.306423, -0.404359, 0.861742,
		26.752108, 36.838345, 35.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493204, 37.644543, 35.150841>,  <26.537611, 37.121395, 34.639343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493204, 37.644543, 35.150841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770172, 37.365055, 35.222778>,  <26.936354, 37.197361, 35.265942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770172, 37.365055, 35.222778>,  <26.493204, 37.644543, 35.150841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770172, 37.365055, 35.222778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718269, 0.691108, -0.080374,
		-0.068133, 0.184829, 0.980406,
		0.692422, -0.698719, 0.179844,
		26.977900, 37.155437, 35.276730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994209, 37.957806, 35.662884>,  <26.493204, 37.644543, 35.150841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994209, 37.957806, 35.662884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181143, 37.656898, 35.477112>,  <27.293303, 37.476353, 35.365650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181143, 37.656898, 35.477112>,  <26.994209, 37.957806, 35.662884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181143, 37.656898, 35.477112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792215, 0.589512, -0.157704,
		0.392421, -0.294225, 0.871457,
		0.467334, -0.752268, -0.464427,
		27.321342, 37.431217, 35.337784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576387, 38.239227, 35.657913>,  <26.994209, 37.957806, 35.662884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576387, 38.239227, 35.657913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661358, 37.924191, 35.426544>,  <27.712341, 37.735168, 35.287724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.661358, 37.924191, 35.426544>,  <27.576387, 38.239227, 35.657913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661358, 37.924191, 35.426544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888475, 0.402094, -0.221209,
		0.406801, -0.466919, 0.785175,
		0.212427, -0.787596, -0.578417,
		27.725086, 37.687912, 35.253017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220951, 38.028122, 35.864120>,  <27.576387, 38.239227, 35.657913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220951, 38.028122, 35.864120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143501, 37.930252, 35.484089>,  <28.097031, 37.871532, 35.256069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143501, 37.930252, 35.484089>,  <28.220951, 38.028122, 35.864120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143501, 37.930252, 35.484089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815109, 0.498819, -0.294580,
		0.545992, -0.831454, 0.102850,
		-0.193626, -0.244672, -0.950076,
		28.085413, 37.856850, 35.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907991, 37.926182, 35.585400>,  <28.220951, 38.028122, 35.864120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907991, 37.926182, 35.585400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.689430, 37.936695, 35.250557>,  <28.558292, 37.943001, 35.049652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.689430, 37.936695, 35.250557>,  <28.907991, 37.926182, 35.585400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689430, 37.936695, 35.250557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757620, 0.441566, -0.480657,
		0.357007, -0.896844, -0.261184,
		-0.546404, 0.026281, -0.837109,
		28.525509, 37.944580, 34.999424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211451, 37.492985, 35.109722>,  <28.907991, 37.926182, 35.585400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211451, 37.492985, 35.109722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984175, 37.746296, 34.899532>,  <28.847809, 37.898281, 34.773418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984175, 37.746296, 34.899532>,  <29.211451, 37.492985, 35.109722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984175, 37.746296, 34.899532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775052, 0.197274, -0.600314,
		-0.276501, -0.748363, -0.602909,
		-0.568192, 0.633274, -0.525474,
		28.813717, 37.936279, 34.741890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386726, 37.380894, 34.360725>,  <29.211451, 37.492985, 35.109722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386726, 37.380894, 34.360725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247435, 37.750938, 34.421257>,  <29.163858, 37.972965, 34.457577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.247435, 37.750938, 34.421257>,  <29.386726, 37.380894, 34.360725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247435, 37.750938, 34.421257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792709, 0.376783, -0.479215,
		-0.500348, -0.046915, -0.864552,
		-0.348231, 0.925113, 0.151333,
		29.142965, 38.028473, 34.466656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674768, 37.652145, 33.790951>,  <29.386726, 37.380894, 34.360725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674768, 37.652145, 33.790951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561613, 37.973598, 34.000385>,  <29.493719, 38.166470, 34.126045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561613, 37.973598, 34.000385>,  <29.674768, 37.652145, 33.790951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561613, 37.973598, 34.000385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537865, 0.584893, -0.607126,
		-0.794151, 0.109871, -0.597707,
		-0.282889, 0.803635, 0.523589,
		29.476746, 38.214687, 34.157463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355194, 38.088444, 33.346050>,  <29.674768, 37.652145, 33.790951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355194, 38.088444, 33.346050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488579, 38.320683, 33.643158>,  <29.568609, 38.460026, 33.821423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488579, 38.320683, 33.643158>,  <29.355194, 38.088444, 33.346050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488579, 38.320683, 33.643158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419861, 0.613961, -0.668408,
		-0.844110, 0.534747, -0.039040,
		0.333460, 0.580601, 0.742770,
		29.588617, 38.494862, 33.865990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208460, 38.817455, 33.151447>,  <29.355194, 38.088444, 33.346050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208460, 38.817455, 33.151447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475996, 38.871548, 33.443848>,  <29.636518, 38.904003, 33.619289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475996, 38.871548, 33.443848>,  <29.208460, 38.817455, 33.151447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475996, 38.871548, 33.443848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553883, 0.565214, -0.611349,
		-0.495847, 0.813784, 0.303135,
		0.668842, 0.135234, 0.731001,
		29.676649, 38.912117, 33.663147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232918, 39.491413, 33.199020>,  <29.208460, 38.817455, 33.151447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232918, 39.491413, 33.199020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560013, 39.296196, 33.321083>,  <29.756269, 39.179066, 33.394321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560013, 39.296196, 33.321083>,  <29.232918, 39.491413, 33.199020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560013, 39.296196, 33.321083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557602, 0.540174, -0.630311,
		0.142776, 0.685587, 0.713853,
		0.817738, -0.488039, 0.305160,
		29.805334, 39.149784, 33.412632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667547, 40.005192, 33.084736>,  <29.232918, 39.491413, 33.199020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667547, 40.005192, 33.084736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.928795, 39.707863, 33.142578>,  <30.085545, 39.529465, 33.177284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.928795, 39.707863, 33.142578>,  <29.667547, 40.005192, 33.084736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928795, 39.707863, 33.142578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593655, 0.384044, -0.707167,
		0.470115, 0.547711, 0.692101,
		0.653120, -0.743319, 0.144606,
		30.124731, 39.484867, 33.185959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277065, 40.375389, 33.166481>,  <29.667547, 40.005192, 33.084736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277065, 40.375389, 33.166481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366545, 40.001598, 33.055695>,  <30.420233, 39.777325, 32.989223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366545, 40.001598, 33.055695>,  <30.277065, 40.375389, 33.166481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366545, 40.001598, 33.055695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596053, 0.356000, -0.719712,
		0.771155, -0.004089, 0.636634,
		0.223699, -0.934477, -0.276969,
		30.433655, 39.721256, 32.972603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952990, 40.452827, 33.200840>,  <30.277065, 40.375389, 33.166481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952990, 40.452827, 33.200840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909573, 40.134892, 32.962029>,  <30.883522, 39.944130, 32.818741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909573, 40.134892, 32.962029>,  <30.952990, 40.452827, 33.200840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909573, 40.134892, 32.962029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688518, 0.373096, -0.621886,
		0.717050, -0.478568, 0.506765,
		-0.108543, -0.794841, -0.597031,
		30.877010, 39.896439, 32.782921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640718, 40.188736, 33.062531>,  <30.952990, 40.452827, 33.200840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640718, 40.188736, 33.062531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383144, 40.093681, 32.771633>,  <31.228600, 40.036648, 32.597095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383144, 40.093681, 32.771633>,  <31.640718, 40.188736, 33.062531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383144, 40.093681, 32.771633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646868, 0.338472, -0.683372,
		0.408544, -0.910475, -0.064235,
		-0.643935, -0.237636, -0.727239,
		31.189964, 40.022392, 32.553463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083832, 39.940975, 32.613716>,  <31.640718, 40.188736, 33.062531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083832, 39.940975, 32.613716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.750080, 40.016113, 32.406437>,  <31.549829, 40.061195, 32.282070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.750080, 40.016113, 32.406437>,  <32.083832, 39.940975, 32.613716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750080, 40.016113, 32.406437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546370, 0.405962, -0.732581,
		0.072759, -0.894377, -0.441357,
		-0.834378, 0.187843, -0.518198,
		31.499767, 40.072468, 32.250977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186642, 39.712399, 31.905256>,  <32.083832, 39.940975, 32.613716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186642, 39.712399, 31.905256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889133, 39.967972, 31.826706>,  <31.710629, 40.121315, 31.779575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889133, 39.967972, 31.826706>,  <32.186642, 39.712399, 31.905256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889133, 39.967972, 31.826706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454018, 0.267279, -0.849958,
		-0.490582, -0.721334, -0.488884,
		-0.743772, 0.638936, -0.196376,
		31.666002, 40.159653, 31.767794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270557, 39.765671, 31.222033>,  <32.186642, 39.712399, 31.905256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270557, 39.765671, 31.222033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994373, 40.049568, 31.277924>,  <31.828661, 40.219906, 31.311459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.994373, 40.049568, 31.277924>,  <32.270557, 39.765671, 31.222033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994373, 40.049568, 31.277924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280575, 0.440812, -0.852621,
		-0.666736, -0.549500, -0.503501,
		-0.690464, 0.709743, 0.139730,
		31.787233, 40.262489, 31.319843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981276, 39.900974, 30.531137>,  <32.270557, 39.765671, 31.222033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981276, 39.900974, 30.531137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862989, 40.227047, 30.730349>,  <31.792017, 40.422691, 30.849874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862989, 40.227047, 30.730349>,  <31.981276, 39.900974, 30.531137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862989, 40.227047, 30.730349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359716, 0.577994, -0.732480,
		-0.884961, -0.037458, -0.464156,
		-0.295716, 0.815181, 0.498028,
		31.774275, 40.471600, 30.879757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414101, 40.232857, 30.169035>,  <31.981276, 39.900974, 30.531137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414101, 40.232857, 30.169035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.601498, 40.493584, 30.407578>,  <31.713936, 40.650021, 30.550703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.601498, 40.493584, 30.407578>,  <31.414101, 40.232857, 30.169035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601498, 40.493584, 30.407578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275452, 0.533603, -0.799622,
		-0.839428, 0.538886, 0.070445,
		0.468495, 0.651820, 0.596358,
		31.742046, 40.689129, 30.586485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115719, 40.870338, 30.000584>,  <31.414101, 40.232857, 30.169035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115719, 40.870338, 30.000584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481455, 40.949268, 30.142033>,  <31.700895, 40.996624, 30.226902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481455, 40.949268, 30.142033>,  <31.115719, 40.870338, 30.000584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481455, 40.949268, 30.142033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194430, 0.552095, -0.810795,
		-0.355220, 0.810096, 0.466437,
		0.914339, 0.197322, 0.353622,
		31.755756, 41.008465, 30.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206333, 41.582359, 30.100451>,  <31.115719, 40.870338, 30.000584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206333, 41.582359, 30.100451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.567148, 41.429684, 30.019804>,  <31.783636, 41.338078, 29.971416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.567148, 41.429684, 30.019804>,  <31.206333, 41.582359, 30.100451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567148, 41.429684, 30.019804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177835, 0.754181, -0.632127,
		0.393327, 0.534347, 0.748176,
		0.902036, -0.381685, -0.201614,
		31.837759, 41.315178, 29.959320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.762012, 39.174576, 46.787235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657654, 38.795021, 46.858276>,  <37.595039, 38.567287, 46.900902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.657654, 38.795021, 46.858276>,  <37.762012, 39.174576, 46.787235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657654, 38.795021, 46.858276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281288, 0.250711, 0.926294,
		-0.923478, 0.191708, -0.332320,
		-0.260894, -0.948890, 0.177601,
		37.579384, 38.510353, 46.911556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089825, 39.274765, 47.227432>,  <37.762012, 39.174576, 46.787235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089825, 39.274765, 47.227432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206947, 38.894085, 47.264374>,  <37.277222, 38.665676, 47.286537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.206947, 38.894085, 47.264374>,  <37.089825, 39.274765, 47.227432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206947, 38.894085, 47.264374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268347, 0.010909, 0.963261,
		-0.917743, -0.306833, -0.252192,
		0.292809, -0.951701, 0.092350,
		37.294788, 38.608574, 47.292080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528248, 38.833492, 47.605068>,  <37.089825, 39.274765, 47.227432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528248, 38.833492, 47.605068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873383, 38.638771, 47.659515>,  <37.080463, 38.521938, 47.692184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873383, 38.638771, 47.659515>,  <36.528248, 38.833492, 47.605068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873383, 38.638771, 47.659515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149299, 0.011838, 0.988721,
		-0.482927, -0.873430, -0.062465,
		0.862839, -0.486806, 0.136119,
		37.132233, 38.492729, 47.700352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389709, 38.407890, 48.163124>,  <36.528248, 38.833492, 47.605068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389709, 38.407890, 48.163124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788731, 38.418003, 48.137028>,  <37.028141, 38.424072, 48.121368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788731, 38.418003, 48.137028>,  <36.389709, 38.407890, 48.163124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788731, 38.418003, 48.137028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067714, -0.114101, 0.991159,
		0.017620, -0.993147, -0.115534,
		0.997549, 0.025287, -0.065239,
		37.087994, 38.425591, 48.117455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564365, 37.955956, 48.648586>,  <36.389709, 38.407890, 48.163124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564365, 37.955956, 48.648586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903538, 38.156708, 48.580315>,  <37.107040, 38.277157, 48.539352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903538, 38.156708, 48.580315>,  <36.564365, 37.955956, 48.648586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903538, 38.156708, 48.580315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174609, 0.039583, 0.983842,
		0.500525, -0.864032, -0.054068,
		0.847931, 0.501878, -0.170680,
		37.157917, 38.307270, 48.529110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108032, 37.650501, 48.983543>,  <36.564365, 37.955956, 48.648586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108032, 37.650501, 48.983543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273949, 38.008759, 48.919331>,  <37.373501, 38.223713, 48.880802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.273949, 38.008759, 48.919331>,  <37.108032, 37.650501, 48.983543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273949, 38.008759, 48.919331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105199, 0.128037, 0.986174,
		0.903814, -0.425946, -0.041111,
		0.414794, 0.895643, -0.160530,
		37.398388, 38.277451, 48.871170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657314, 37.661495, 49.430992>,  <37.108032, 37.650501, 48.983543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657314, 37.661495, 49.430992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591801, 38.046932, 49.346455>,  <37.552494, 38.278194, 49.295731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591801, 38.046932, 49.346455>,  <37.657314, 37.661495, 49.430992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591801, 38.046932, 49.346455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229760, 0.245608, 0.941747,
		0.959367, 0.105683, -0.261621,
		-0.163782, 0.963591, -0.211347,
		37.542667, 38.336010, 49.283051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240501, 37.992119, 49.760193>,  <37.657314, 37.661495, 49.430992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240501, 37.992119, 49.760193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960583, 38.274349, 49.715561>,  <37.792633, 38.443687, 49.688782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960583, 38.274349, 49.715561>,  <38.240501, 37.992119, 49.760193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960583, 38.274349, 49.715561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123943, 0.273764, 0.953777,
		0.703506, 0.653622, -0.279030,
		-0.699798, 0.705572, -0.111583,
		37.750645, 38.486019, 49.682087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491032, 38.739605, 50.118488>,  <38.240501, 37.992119, 49.760193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491032, 38.739605, 50.118488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094116, 38.698486, 50.090767>,  <37.855968, 38.673817, 50.074135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094116, 38.698486, 50.090767>,  <38.491032, 38.739605, 50.118488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094116, 38.698486, 50.090767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090918, 0.223387, 0.970480,
		-0.084278, 0.969294, -0.231010,
		-0.992286, -0.102793, -0.069300,
		37.796429, 38.667648, 50.069977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253407, 39.276119, 50.572060>,  <38.491032, 38.739605, 50.118488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253407, 39.276119, 50.572060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960827, 39.008698, 50.518364>,  <37.785278, 38.848244, 50.486149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960827, 39.008698, 50.518364>,  <38.253407, 39.276119, 50.572060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960827, 39.008698, 50.518364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372085, 0.226348, 0.900177,
		-0.571430, 0.708383, -0.414320,
		-0.731451, -0.668551, -0.134236,
		37.741390, 38.808132, 50.478092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811428, 39.632198, 50.909359>,  <38.253407, 39.276119, 50.572060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811428, 39.632198, 50.909359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639278, 39.271759, 50.888222>,  <37.535988, 39.055496, 50.875542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639278, 39.271759, 50.888222>,  <37.811428, 39.632198, 50.909359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639278, 39.271759, 50.888222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347178, 0.111210, 0.931182,
		-0.833214, 0.419101, -0.360705,
		-0.430374, -0.901103, -0.052841,
		37.510166, 39.001427, 50.872368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099503, 39.673321, 50.964531>,  <37.811428, 39.632198, 50.909359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099503, 39.673321, 50.964531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223351, 39.308411, 51.071774>,  <37.297661, 39.089462, 51.136120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223351, 39.308411, 51.071774>,  <37.099503, 39.673321, 50.964531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223351, 39.308411, 51.071774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392930, 0.134006, 0.909752,
		-0.865876, -0.387024, -0.316971,
		0.309620, -0.912280, 0.268106,
		37.316238, 39.034725, 51.152206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288010, 39.910053, 51.735229>,  <37.099503, 39.673321, 50.964531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288010, 39.910053, 51.735229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943352, 39.953518, 51.536930>,  <36.736557, 39.979599, 51.417950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943352, 39.953518, 51.536930>,  <37.288010, 39.910053, 51.735229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943352, 39.953518, 51.536930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173887, -0.854478, -0.489520,
		-0.476800, -0.507995, 0.717358,
		-0.861641, 0.108664, -0.495749,
		36.684860, 39.986118, 51.388206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326241, 40.648254, 51.522785>,  <37.288010, 39.910053, 51.735229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326241, 40.648254, 51.522785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979889, 40.845802, 51.554653>,  <36.772079, 40.964333, 51.573772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979889, 40.845802, 51.554653>,  <37.326241, 40.648254, 51.522785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979889, 40.845802, 51.554653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158475, -0.119742, -0.980075,
		-0.474491, -0.861251, 0.181948,
		-0.865878, 0.493871, 0.079670,
		36.720127, 40.993965, 51.578552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972252, 40.468060, 50.967743>,  <37.326241, 40.648254, 51.522785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972252, 40.468060, 50.967743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752281, 40.789276, 51.059578>,  <36.620300, 40.982006, 51.114677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752281, 40.789276, 51.059578>,  <36.972252, 40.468060, 50.967743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752281, 40.789276, 51.059578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291864, 0.072781, -0.953686,
		-0.782557, -0.591465, 0.194354,
		-0.549927, 0.803039, 0.229583,
		36.587303, 41.030190, 51.128452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241135, 40.289253, 50.834660>,  <36.972252, 40.468060, 50.967743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241135, 40.289253, 50.834660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260288, 40.688118, 50.811409>,  <36.271782, 40.927437, 50.797459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260288, 40.688118, 50.811409>,  <36.241135, 40.289253, 50.834660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260288, 40.688118, 50.811409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268982, -0.043168, -0.962177,
		-0.961954, 0.061712, 0.266151,
		0.047889, 0.997160, -0.058125,
		36.274654, 40.987267, 50.793972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639557, 40.505035, 50.532654>,  <36.241135, 40.289253, 50.834660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639557, 40.505035, 50.532654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839264, 40.847397, 50.478745>,  <35.959087, 41.052814, 50.446400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839264, 40.847397, 50.478745>,  <35.639557, 40.505035, 50.532654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839264, 40.847397, 50.478745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492140, 0.152107, -0.857124,
		-0.713115, 0.494261, 0.497166,
		0.499265, 0.855903, -0.134776,
		35.989044, 41.104168, 50.438313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190464, 40.996353, 50.200352>,  <35.639557, 40.505035, 50.532654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190464, 40.996353, 50.200352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538525, 41.175491, 50.118107>,  <35.747360, 41.282974, 50.068760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538525, 41.175491, 50.118107>,  <35.190464, 40.996353, 50.200352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538525, 41.175491, 50.118107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297235, 0.144185, -0.943855,
		-0.393056, 0.882408, 0.258578,
		0.870148, 0.447847, -0.205610,
		35.799568, 41.309845, 50.056423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976326, 41.613174, 49.906322>,  <35.190464, 40.996353, 50.200352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976326, 41.613174, 49.906322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350204, 41.537651, 49.785862>,  <35.574532, 41.492336, 49.713585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350204, 41.537651, 49.785862>,  <34.976326, 41.613174, 49.906322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350204, 41.537651, 49.785862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274923, 0.153004, -0.949214,
		0.225299, 0.970021, 0.091104,
		0.934697, -0.188810, -0.301153,
		35.630615, 41.481007, 49.695515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113110, 42.138222, 49.321709>,  <34.976326, 41.613174, 49.906322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113110, 42.138222, 49.321709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394390, 41.860668, 49.259693>,  <35.563156, 41.694138, 49.222485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394390, 41.860668, 49.259693>,  <35.113110, 42.138222, 49.321709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394390, 41.860668, 49.259693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088507, 0.130932, -0.987433,
		0.705464, 0.708083, 0.030658,
		0.703198, -0.693884, -0.155038,
		35.605350, 41.652504, 49.213181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646999, 42.429371, 48.891735>,  <35.113110, 42.138222, 49.321709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646999, 42.429371, 48.891735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661827, 42.032028, 48.848160>,  <35.670723, 41.793621, 48.822014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661827, 42.032028, 48.848160>,  <35.646999, 42.429371, 48.891735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661827, 42.032028, 48.848160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182663, 0.100445, -0.978031,
		0.982477, 0.056154, -0.177726,
		0.037069, -0.993357, -0.108942,
		35.672947, 41.734020, 48.815475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968460, 42.373734, 48.180893>,  <35.646999, 42.429371, 48.891735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968460, 42.373734, 48.180893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884445, 41.987164, 48.240089>,  <35.834038, 41.755222, 48.275608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.884445, 41.987164, 48.240089>,  <35.968460, 42.373734, 48.180893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884445, 41.987164, 48.240089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344334, -0.068549, -0.936342,
		0.915052, -0.247622, -0.318376,
		-0.210034, -0.966429, 0.147990,
		35.821434, 41.697235, 48.284485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408409, 41.916855, 47.714970>,  <35.968460, 42.373734, 48.180893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408409, 41.916855, 47.714970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092106, 41.689400, 47.805603>,  <35.902321, 41.552925, 47.859985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092106, 41.689400, 47.805603>,  <36.408409, 41.916855, 47.714970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092106, 41.689400, 47.805603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014603, -0.352537, -0.935684,
		0.611949, -0.743213, 0.270470,
		-0.790763, -0.568641, 0.226587,
		35.854877, 41.518806, 47.873581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612011, 41.345833, 47.358257>,  <36.408409, 41.916855, 47.714970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612011, 41.345833, 47.358257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221264, 41.331455, 47.442585>,  <35.986816, 41.322830, 47.493179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221264, 41.331455, 47.442585>,  <36.612011, 41.345833, 47.358257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221264, 41.331455, 47.442585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178933, -0.402528, -0.897749,
		0.117125, -0.914702, 0.386785,
		-0.976865, -0.035940, 0.210817,
		35.928204, 41.320675, 47.505829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386814, 40.772984, 47.125717>,  <36.612011, 41.345833, 47.358257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386814, 40.772984, 47.125717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025333, 40.944027, 47.134487>,  <35.808445, 41.046654, 47.139748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025333, 40.944027, 47.134487>,  <36.386814, 40.772984, 47.125717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025333, 40.944027, 47.134487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196470, -0.368635, -0.908575,
		-0.380445, -0.825379, 0.417147,
		-0.903693, 0.427619, 0.021917,
		35.754223, 41.072308, 47.141064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958515, 40.239498, 46.963333>,  <36.386814, 40.772984, 47.125717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958515, 40.239498, 46.963333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773418, 40.579899, 46.864006>,  <35.662361, 40.784142, 46.804409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.773418, 40.579899, 46.864006>,  <35.958515, 40.239498, 46.963333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773418, 40.579899, 46.864006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358269, -0.435746, -0.825693,
		-0.810872, -0.293116, 0.506526,
		-0.462741, 0.851004, -0.248320,
		35.634598, 40.835201, 46.789509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563961, 39.970821, 46.381142>,  <35.958515, 40.239498, 46.963333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563961, 39.970821, 46.381142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491631, 40.361614, 46.335888>,  <35.448231, 40.596092, 46.308735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491631, 40.361614, 46.335888>,  <35.563961, 39.970821, 46.381142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491631, 40.361614, 46.335888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174467, -0.145068, -0.973918,
		-0.967916, -0.156374, 0.196684,
		-0.180829, 0.976986, -0.113132,
		35.437382, 40.654709, 46.301949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880714, 40.131073, 46.096642>,  <35.563961, 39.970821, 46.381142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880714, 40.131073, 46.096642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128220, 40.430580, 46.001587>,  <35.276722, 40.610287, 45.944553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128220, 40.430580, 46.001587>,  <34.880714, 40.131073, 46.096642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128220, 40.430580, 46.001587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162351, -0.174088, -0.971254,
		-0.768618, 0.639558, 0.013844,
		0.618763, 0.748772, -0.237640,
		35.313850, 40.655212, 45.930294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159634, 40.264648, 46.061481>,  <34.880714, 40.131073, 46.096642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159634, 40.264648, 46.061481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816483, 40.065620, 46.112804>,  <33.610592, 39.946201, 46.143600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816483, 40.065620, 46.112804>,  <34.159634, 40.264648, 46.061481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816483, 40.065620, 46.112804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029816, 0.201083, 0.979120,
		-0.512984, 0.843794, -0.157669,
		-0.857880, -0.497572, 0.128310,
		33.559120, 39.916348, 46.151299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844921, 40.517197, 46.650211>,  <34.159634, 40.264648, 46.061481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844921, 40.517197, 46.650211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626385, 40.184219, 46.613224>,  <33.495262, 39.984432, 46.591030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626385, 40.184219, 46.613224>,  <33.844921, 40.517197, 46.650211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626385, 40.184219, 46.613224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150490, -0.011043, 0.988550,
		-0.823932, 0.554001, -0.119241,
		-0.546341, -0.832443, -0.092471,
		33.462482, 39.934486, 46.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172939, 40.599800, 46.937775>,  <33.844921, 40.517197, 46.650211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172939, 40.599800, 46.937775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257183, 40.208923, 46.948631>,  <33.307732, 39.974396, 46.955147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257183, 40.208923, 46.948631>,  <33.172939, 40.599800, 46.937775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257183, 40.208923, 46.948631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210229, -0.018158, 0.977484,
		-0.954697, -0.211576, -0.209258,
		0.210612, -0.977193, 0.027144,
		33.320366, 39.915764, 46.956776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656002, 40.241982, 47.318085>,  <33.172939, 40.599800, 46.937775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656002, 40.241982, 47.318085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.976093, 40.002438, 47.330757>,  <33.168148, 39.858711, 47.338360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.976093, 40.002438, 47.330757>,  <32.656002, 40.241982, 47.318085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976093, 40.002438, 47.330757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077353, -0.050683, 0.995715,
		-0.594685, -0.799250, -0.086881,
		0.800228, -0.598858, 0.031684,
		33.216164, 39.822781, 47.340263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366798, 39.811409, 47.770130>,  <32.656002, 40.241982, 47.318085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366798, 39.811409, 47.770130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758671, 39.731693, 47.761089>,  <32.993793, 39.683865, 47.755665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758671, 39.731693, 47.761089>,  <32.366798, 39.811409, 47.770130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758671, 39.731693, 47.761089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006751, -0.079854, 0.996784,
		-0.200455, -0.976681, -0.076886,
		0.979680, -0.199291, -0.022601,
		33.052574, 39.671906, 47.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486153, 39.245804, 48.132244>,  <32.366798, 39.811409, 47.770130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486153, 39.245804, 48.132244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827538, 39.453922, 48.144279>,  <33.032368, 39.578793, 48.151501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827538, 39.453922, 48.144279>,  <32.486153, 39.245804, 48.132244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827538, 39.453922, 48.144279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054953, 0.032430, 0.997962,
		0.518256, -0.853372, 0.056270,
		0.853458, 0.520292, 0.030089,
		33.083576, 39.610008, 48.153305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733727, 38.994572, 48.740822>,  <32.486153, 39.245804, 48.132244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733727, 38.994572, 48.740822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967506, 39.315395, 48.691650>,  <33.107777, 39.507889, 48.662148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967506, 39.315395, 48.691650>,  <32.733727, 38.994572, 48.740822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967506, 39.315395, 48.691650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119224, 0.064964, 0.990740,
		0.802621, -0.593696, -0.057656,
		0.584453, 0.802063, -0.122924,
		33.142841, 39.556015, 48.654774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075672, 38.248913, 48.865337>,  <32.733727, 38.994572, 48.740822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075672, 38.248913, 48.865337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868511, 37.910915, 48.918652>,  <32.744213, 37.708118, 48.950642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868511, 37.910915, 48.918652>,  <33.075672, 38.248913, 48.865337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868511, 37.910915, 48.918652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073528, -0.111262, -0.991067,
		0.852274, -0.523076, -0.004508,
		-0.517902, -0.844993, 0.133287,
		32.713142, 37.657417, 48.958637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346783, 37.805298, 48.319378>,  <33.075672, 38.248913, 48.865337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346783, 37.805298, 48.319378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001896, 37.627502, 48.416546>,  <32.794964, 37.520824, 48.474846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001896, 37.627502, 48.416546>,  <33.346783, 37.805298, 48.319378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001896, 37.627502, 48.416546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161265, -0.213748, -0.963486,
		0.480182, -0.869910, 0.112617,
		-0.862217, -0.444487, 0.242924,
		32.743229, 37.494156, 48.489422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358135, 37.156006, 48.058426>,  <33.346783, 37.805298, 48.319378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358135, 37.156006, 48.058426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967064, 37.227512, 48.102592>,  <32.732422, 37.270416, 48.129093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967064, 37.227512, 48.102592>,  <33.358135, 37.156006, 48.058426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967064, 37.227512, 48.102592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172446, -0.382445, -0.907743,
		-0.120045, -0.906520, 0.404735,
		-0.977677, 0.178765, 0.110415,
		32.673759, 37.281143, 48.135715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149330, 36.539795, 47.761738>,  <33.358135, 37.156006, 48.058426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149330, 36.539795, 47.761738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.861656, 36.817459, 47.749649>,  <32.689053, 36.984058, 47.742393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.861656, 36.817459, 47.749649>,  <33.149330, 36.539795, 47.761738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861656, 36.817459, 47.749649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155485, -0.203181, -0.966717,
		-0.677199, -0.690548, 0.254057,
		-0.719184, 0.694162, -0.030224,
		32.645901, 37.025707, 47.740582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559200, 36.205311, 47.386707>,  <33.149330, 36.539795, 47.761738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559200, 36.205311, 47.386707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484055, 36.597687, 47.366829>,  <32.438969, 36.833111, 47.354900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484055, 36.597687, 47.366829>,  <32.559200, 36.205311, 47.386707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484055, 36.597687, 47.366829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194729, -0.086794, -0.977009,
		-0.962698, -0.173868, 0.207323,
		-0.187865, 0.980937, -0.049699,
		32.427696, 36.891968, 47.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967648, 36.207710, 46.977009>,  <32.559200, 36.205311, 47.386707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967648, 36.207710, 46.977009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131306, 36.572269, 46.959324>,  <32.229500, 36.791004, 46.948715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131306, 36.572269, 46.959324>,  <31.967648, 36.207710, 46.977009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131306, 36.572269, 46.959324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084472, -0.010409, -0.996371,
		-0.908551, 0.411394, 0.072729,
		0.409145, 0.911398, -0.044208,
		32.254047, 36.845688, 46.946060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797010, 36.352188, 46.292042>,  <31.967648, 36.207710, 46.977009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797010, 36.352188, 46.292042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047180, 36.645714, 46.398140>,  <32.197281, 36.821831, 46.461800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047180, 36.645714, 46.398140>,  <31.797010, 36.352188, 46.292042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047180, 36.645714, 46.398140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098463, 0.262998, -0.959759,
		-0.774047, 0.626374, 0.092231,
		0.625425, 0.733817, 0.265248,
		32.234806, 36.865860, 46.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.618904, 35.763367, 52.274792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800240, 36.033745, 52.042385>,  <36.909042, 36.195972, 51.902943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800240, 36.033745, 52.042385>,  <36.618904, 35.763367, 52.274792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800240, 36.033745, 52.042385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068624, -0.623446, -0.778849,
		-0.888692, 0.392956, -0.236248,
		0.453341, 0.675944, -0.581017,
		36.936241, 36.236526, 51.868080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149658, 35.946915, 51.742825>,  <36.618904, 35.763367, 52.274792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149658, 35.946915, 51.742825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.522614, 36.023907, 51.620441>,  <36.746387, 36.070103, 51.547012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.522614, 36.023907, 51.620441>,  <36.149658, 35.946915, 51.742825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522614, 36.023907, 51.620441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151140, -0.561290, -0.813701,
		-0.328349, 0.804926, -0.494248,
		0.932386, 0.192477, -0.305956,
		36.802330, 36.081650, 51.528656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121330, 36.193123, 51.008259>,  <36.149658, 35.946915, 51.742825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121330, 36.193123, 51.008259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473198, 36.028545, 51.103676>,  <36.684319, 35.929798, 51.160927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473198, 36.028545, 51.103676>,  <36.121330, 36.193123, 51.008259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473198, 36.028545, 51.103676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060589, -0.400531, -0.914278,
		0.471720, 0.818711, -0.327404,
		0.879664, -0.411446, 0.238543,
		36.737099, 35.905113, 51.175240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690838, 36.527885, 50.503822>,  <36.121330, 36.193123, 51.008259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690838, 36.527885, 50.503822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.815674, 36.173866, 50.641975>,  <36.890575, 35.961456, 50.724869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.815674, 36.173866, 50.641975>,  <36.690838, 36.527885, 50.503822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815674, 36.173866, 50.641975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020749, -0.369803, -0.928878,
		0.949827, 0.282725, -0.133775,
		0.312088, -0.885049, 0.345383,
		36.909302, 35.908352, 50.745590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287457, 36.411564, 50.111580>,  <36.690838, 36.527885, 50.503822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287457, 36.411564, 50.111580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.154583, 36.063732, 50.257721>,  <37.074860, 35.855034, 50.345406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.154583, 36.063732, 50.257721>,  <37.287457, 36.411564, 50.111580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154583, 36.063732, 50.257721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088160, -0.414274, -0.905873,
		0.939087, -0.268704, 0.214276,
		-0.332180, -0.869584, 0.365351,
		37.054928, 35.802856, 50.367325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630394, 35.952579, 49.678741>,  <37.287457, 36.411564, 50.111580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630394, 35.952579, 49.678741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.339046, 35.732449, 49.842014>,  <37.164238, 35.600368, 49.939980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.339046, 35.732449, 49.842014>,  <37.630394, 35.952579, 49.678741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339046, 35.732449, 49.842014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064907, -0.648471, -0.758467,
		0.682103, -0.525950, 0.508047,
		-0.728370, -0.550328, 0.408186,
		37.120537, 35.567348, 49.964470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907978, 35.234375, 49.867455>,  <37.630394, 35.952579, 49.678741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907978, 35.234375, 49.867455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510979, 35.213593, 49.823204>,  <37.272778, 35.201122, 49.796654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.510979, 35.213593, 49.823204>,  <37.907978, 35.234375, 49.867455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510979, 35.213593, 49.823204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121834, -0.492668, -0.861647,
		-0.009735, -0.868665, 0.495304,
		-0.992503, -0.051957, -0.110629,
		37.213226, 35.198006, 49.790016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871571, 34.793674, 49.319393>,  <37.907978, 35.234375, 49.867455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871571, 34.793674, 49.319393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.481213, 34.874493, 49.352417>,  <37.246998, 34.922981, 49.372231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.481213, 34.874493, 49.352417>,  <37.871571, 34.793674, 49.319393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481213, 34.874493, 49.352417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162173, -0.418059, -0.893827,
		-0.146075, -0.885666, 0.440746,
		-0.975890, 0.202043, 0.082563,
		37.188446, 34.935104, 49.377186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594730, 34.201271, 49.178322>,  <37.871571, 34.793674, 49.319393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594730, 34.201271, 49.178322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328651, 34.485252, 49.085815>,  <37.169003, 34.655640, 49.030312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328651, 34.485252, 49.085815>,  <37.594730, 34.201271, 49.178322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328651, 34.485252, 49.085815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045531, -0.347720, -0.936492,
		-0.745277, -0.612423, 0.263628,
		-0.665198, 0.709949, -0.231263,
		37.129093, 34.698238, 49.016438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130543, 33.849926, 48.803841>,  <37.594730, 34.201271, 49.178322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130543, 33.849926, 48.803841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082359, 34.234776, 48.706017>,  <37.053448, 34.465683, 48.647320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082359, 34.234776, 48.706017>,  <37.130543, 33.849926, 48.803841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082359, 34.234776, 48.706017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027211, -0.249464, -0.968002,
		-0.992345, -0.109953, 0.056232,
		-0.120462, 0.962122, -0.244563,
		37.046219, 34.523411, 48.632648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564301, 33.745106, 48.440102>,  <37.130543, 33.849926, 48.803841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564301, 33.745106, 48.440102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719086, 34.104156, 48.355690>,  <36.811954, 34.319588, 48.305042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719086, 34.104156, 48.355690>,  <36.564301, 33.745106, 48.440102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719086, 34.104156, 48.355690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271682, -0.107708, -0.956341,
		-0.881164, 0.427398, 0.202190,
		0.386961, 0.897624, -0.211025,
		36.835175, 34.373444, 48.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054268, 34.179298, 48.035236>,  <36.564301, 33.745106, 48.440102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054268, 34.179298, 48.035236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426880, 34.298958, 47.952530>,  <36.650448, 34.370754, 47.902905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426880, 34.298958, 47.952530>,  <36.054268, 34.179298, 48.035236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426880, 34.298958, 47.952530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197749, -0.060466, -0.978386,
		-0.305189, 0.952287, 0.002831,
		0.931534, 0.299153, -0.206767,
		36.706341, 34.388702, 47.890499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347874, 34.435223, 48.062592>,  <36.054268, 34.179298, 48.035236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347874, 34.435223, 48.062592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978062, 34.282833, 48.066555>,  <34.756172, 34.191399, 48.068932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978062, 34.282833, 48.066555>,  <35.347874, 34.435223, 48.062592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978062, 34.282833, 48.066555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023214, 0.082242, 0.996342,
		-0.380397, 0.920920, -0.084879,
		-0.924532, -0.380976, 0.009906,
		34.700703, 34.168541, 48.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086185, 34.932629, 48.540100>,  <35.347874, 34.435223, 48.062592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086185, 34.932629, 48.540100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.829472, 34.626595, 48.519077>,  <34.675442, 34.442974, 48.506462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.829472, 34.626595, 48.519077>,  <35.086185, 34.932629, 48.540100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829472, 34.626595, 48.519077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389880, 0.266492, 0.881462,
		-0.660384, 0.586201, -0.469321,
		-0.641784, -0.765082, -0.052561,
		34.636936, 34.397068, 48.503307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371490, 35.173527, 48.627739>,  <35.086185, 34.932629, 48.540100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371490, 35.173527, 48.627739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352268, 34.787533, 48.730892>,  <34.340736, 34.555939, 48.792786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352268, 34.787533, 48.730892>,  <34.371490, 35.173527, 48.627739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352268, 34.787533, 48.730892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302595, 0.260112, 0.916940,
		-0.951907, -0.033973, -0.304497,
		-0.048052, -0.964981, 0.257882,
		34.337852, 34.498039, 48.808258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746689, 35.137665, 48.943489>,  <34.371490, 35.173527, 48.627739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746689, 35.137665, 48.943489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956158, 34.815834, 49.055504>,  <34.081841, 34.622734, 49.122711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956158, 34.815834, 49.055504>,  <33.746689, 35.137665, 48.943489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956158, 34.815834, 49.055504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372974, 0.079006, 0.924472,
		-0.765935, -0.588566, -0.258714,
		0.523673, -0.804579, 0.280033,
		34.113258, 34.574459, 49.139515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351761, 34.758247, 49.411366>,  <33.746689, 35.137665, 48.943489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351761, 34.758247, 49.411366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.724960, 34.636169, 49.487648>,  <33.948879, 34.562923, 49.533417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.724960, 34.636169, 49.487648>,  <33.351761, 34.758247, 49.411366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724960, 34.636169, 49.487648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180142, 0.062676, 0.981642,
		-0.311546, -0.950225, 0.003498,
		0.932999, -0.305196, 0.190702,
		34.004860, 34.544609, 49.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221020, 34.380386, 49.985493>,  <33.351761, 34.758247, 49.411366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221020, 34.380386, 49.985493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605640, 34.486710, 49.957897>,  <33.836414, 34.550503, 49.941341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.605640, 34.486710, 49.957897>,  <33.221020, 34.380386, 49.985493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605640, 34.486710, 49.957897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002081, 0.244143, 0.969737,
		0.274617, -0.932596, 0.234203,
		0.961552, 0.265819, -0.068987,
		33.894108, 34.566452, 49.937202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523266, 34.101265, 50.640408>,  <33.221020, 34.380386, 49.985493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523266, 34.101265, 50.640408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.799862, 34.364586, 50.521431>,  <33.965820, 34.522579, 50.450047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.799862, 34.364586, 50.521431>,  <33.523266, 34.101265, 50.640408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799862, 34.364586, 50.521431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115100, 0.306085, 0.945021,
		0.713156, -0.687709, 0.135884,
		0.691491, 0.658307, -0.297442,
		34.007309, 34.562077, 50.432198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127598, 34.078930, 51.110859>,  <33.523266, 34.101265, 50.640408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127598, 34.078930, 51.110859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.175652, 34.431095, 50.927368>,  <34.204483, 34.642395, 50.817272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.175652, 34.431095, 50.927368>,  <34.127598, 34.078930, 51.110859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175652, 34.431095, 50.927368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107547, 0.447817, 0.887634,
		0.986915, -0.155974, -0.040886,
		0.120138, 0.880416, -0.458731,
		34.211693, 34.695221, 50.789749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693680, 34.455231, 51.530334>,  <34.127598, 34.078930, 51.110859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693680, 34.455231, 51.530334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522285, 34.747223, 51.317345>,  <34.419449, 34.922417, 51.189548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522285, 34.747223, 51.317345>,  <34.693680, 34.455231, 51.530334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522285, 34.747223, 51.317345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101692, 0.624534, 0.774348,
		0.897810, 0.277645, -0.341835,
		-0.428481, 0.729980, -0.532479,
		34.393742, 34.966217, 51.157600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048801, 35.134327, 51.689232>,  <34.693680, 34.455231, 51.530334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048801, 35.134327, 51.689232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694424, 35.261852, 51.554493>,  <34.481796, 35.338367, 51.473648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.694424, 35.261852, 51.554493>,  <35.048801, 35.134327, 51.689232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694424, 35.261852, 51.554493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058934, 0.643016, 0.763582,
		0.460039, 0.696340, -0.550885,
		-0.885941, 0.318811, -0.336850,
		34.428642, 35.357494, 51.453438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108253, 35.796833, 51.655846>,  <35.048801, 35.134327, 51.689232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108253, 35.796833, 51.655846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715206, 35.725399, 51.676086>,  <34.479378, 35.682541, 51.688232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715206, 35.725399, 51.676086>,  <35.108253, 35.796833, 51.655846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715206, 35.725399, 51.676086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099699, 0.737765, 0.667655,
		-0.156564, 0.651008, -0.742749,
		-0.982623, -0.178582, 0.050602,
		34.420418, 35.671825, 51.691269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734440, 36.425697, 51.596306>,  <35.108253, 35.796833, 51.655846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734440, 36.425697, 51.596306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.490005, 36.166901, 51.778725>,  <34.343346, 36.011623, 51.888176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.490005, 36.166901, 51.778725>,  <34.734440, 36.425697, 51.596306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490005, 36.166901, 51.778725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136047, 0.653406, 0.744682,
		-0.779782, 0.393024, -0.487310,
		-0.611089, -0.646988, 0.456045,
		34.306679, 35.972805, 51.915539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998955, 36.786316, 51.795891>,  <34.734440, 36.425697, 51.596306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998955, 36.786316, 51.795891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.091904, 36.471252, 52.024136>,  <34.147675, 36.282215, 52.161083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.091904, 36.471252, 52.024136>,  <33.998955, 36.786316, 51.795891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091904, 36.471252, 52.024136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135583, 0.554711, 0.820922,
		-0.963130, -0.268128, 0.022108,
		0.232376, -0.787657, 0.570612,
		34.161617, 36.234955, 52.195320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455093, 37.124454, 52.111397>,  <33.998955, 36.786316, 51.795891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455093, 37.124454, 52.111397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064053, 37.197826, 52.070126>,  <32.829430, 37.241848, 52.045364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064053, 37.197826, 52.070126>,  <33.455093, 37.124454, 52.111397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064053, 37.197826, 52.070126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154217, 0.290758, -0.944286,
		-0.143212, -0.939049, -0.312534,
		-0.977603, 0.183431, -0.103177,
		32.770771, 37.252857, 52.039173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275002, 36.737400, 51.573311>,  <33.455093, 37.124454, 52.111397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275002, 36.737400, 51.573311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006596, 37.031807, 51.609135>,  <32.845554, 37.208450, 51.630627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006596, 37.031807, 51.609135>,  <33.275002, 36.737400, 51.573311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006596, 37.031807, 51.609135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062782, 0.176755, -0.982251,
		-0.738784, -0.653478, -0.164813,
		-0.671011, 0.736019, 0.089557,
		32.805294, 37.252613, 51.636002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701553, 36.630699, 51.148640>,  <33.275002, 36.737400, 51.573311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701553, 36.630699, 51.148640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.732155, 37.025410, 51.205799>,  <32.750515, 37.262238, 51.240093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.732155, 37.025410, 51.205799>,  <32.701553, 36.630699, 51.148640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732155, 37.025410, 51.205799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190588, 0.155149, -0.969332,
		-0.978685, 0.046920, 0.199937,
		0.076501, 0.986776, 0.142900,
		32.755104, 37.321442, 51.248669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127350, 36.917690, 50.872780>,  <32.701553, 36.630699, 51.148640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127350, 36.917690, 50.872780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379517, 37.226879, 50.901325>,  <32.530815, 37.412392, 50.918453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.379517, 37.226879, 50.901325>,  <32.127350, 36.917690, 50.872780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379517, 37.226879, 50.901325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240734, 0.282075, -0.928698,
		-0.737987, 0.568285, 0.363905,
		0.630414, 0.772972, 0.071362,
		32.568642, 37.458771, 50.922733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721001, 37.439587, 50.643356>,  <32.127350, 36.917690, 50.872780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721001, 37.439587, 50.643356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.102993, 37.543961, 50.586899>,  <32.332188, 37.606586, 50.553024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.102993, 37.543961, 50.586899>,  <31.721001, 37.439587, 50.643356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102993, 37.543961, 50.586899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209392, 0.255819, -0.943775,
		-0.210158, 0.930843, 0.298940,
		0.954981, 0.260937, -0.141148,
		32.389488, 37.622242, 50.544556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669085, 37.922741, 50.114128>,  <31.721001, 37.439587, 50.643356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669085, 37.922741, 50.114128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059826, 37.837696, 50.123589>,  <32.294270, 37.786671, 50.129265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.059826, 37.837696, 50.123589>,  <31.669085, 37.922741, 50.114128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059826, 37.837696, 50.123589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092203, 0.318712, -0.943357,
		0.193030, 0.923699, 0.330937,
		0.976851, -0.212609, 0.023647,
		32.352882, 37.773914, 50.130684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056526, 38.379623, 49.776512>,  <31.669085, 37.922741, 50.114128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056526, 38.379623, 49.776512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.317814, 38.077751, 49.751945>,  <32.474586, 37.896629, 49.737206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.317814, 38.077751, 49.751945>,  <32.056526, 38.379623, 49.776512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317814, 38.077751, 49.751945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148422, 0.207163, -0.966982,
		0.742483, 0.622531, 0.247333,
		0.653215, -0.754677, -0.061418,
		32.513779, 37.851349, 49.733521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680691, 38.539032, 49.407990>,  <32.056526, 38.379623, 49.776512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680691, 38.539032, 49.407990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.614204, 38.145161, 49.386860>,  <32.574314, 37.908840, 49.374184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.614204, 38.145161, 49.386860>,  <32.680691, 38.539032, 49.407990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614204, 38.145161, 49.386860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031433, 0.048252, -0.998340,
		0.985589, -0.167599, 0.022931,
		-0.166214, -0.984674, -0.052825,
		32.564339, 37.849758, 49.371014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343094, 38.911087, 49.335815>,  <32.680691, 38.539032, 49.407990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343094, 38.911087, 49.335815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366432, 39.292057, 49.216164>,  <33.380436, 39.520638, 49.144371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366432, 39.292057, 49.216164>,  <33.343094, 38.911087, 49.335815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366432, 39.292057, 49.216164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252230, 0.275858, 0.927514,
		0.965907, -0.129565, -0.224136,
		0.058343, 0.952426, -0.299134,
		33.383934, 39.577785, 49.126423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062778, 39.140724, 49.509003>,  <33.343094, 38.911087, 49.335815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062778, 39.140724, 49.509003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.805908, 39.446457, 49.485626>,  <33.651787, 39.629894, 49.471600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.805908, 39.446457, 49.485626>,  <34.062778, 39.140724, 49.509003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805908, 39.446457, 49.485626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285051, 0.308871, 0.907383,
		0.711589, 0.566040, -0.416221,
		-0.642174, 0.764328, -0.058439,
		33.613255, 39.675755, 49.468094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427036, 39.743694, 49.701321>,  <34.062778, 39.140724, 49.509003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427036, 39.743694, 49.701321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044502, 39.846050, 49.757801>,  <33.814980, 39.907463, 49.791687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044502, 39.846050, 49.757801>,  <34.427036, 39.743694, 49.701321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044502, 39.846050, 49.757801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246759, 0.448074, 0.859267,
		0.156609, 0.856593, -0.491653,
		-0.956339, 0.255889, 0.141199,
		33.757599, 39.922817, 49.800159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499928, 40.301140, 50.068169>,  <34.427036, 39.743694, 49.701321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499928, 40.301140, 50.068169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106846, 40.236107, 50.103645>,  <33.870998, 40.197086, 50.124931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106846, 40.236107, 50.103645>,  <34.499928, 40.301140, 50.068169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106846, 40.236107, 50.103645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025762, 0.354243, 0.934798,
		-0.183404, 0.920911, -0.343926,
		-0.982700, -0.162586, 0.088694,
		33.812035, 40.187332, 50.130253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163982, 41.003597, 50.337410>,  <34.499928, 40.301140, 50.068169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163982, 41.003597, 50.337410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915367, 40.709244, 50.444862>,  <33.766197, 40.532631, 50.509335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915367, 40.709244, 50.444862>,  <34.163982, 41.003597, 50.337410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915367, 40.709244, 50.444862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029206, 0.320911, 0.946659,
		-0.782836, 0.596234, -0.177967,
		-0.621542, -0.735881, 0.268634,
		33.728905, 40.488480, 50.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678665, 41.248230, 50.804466>,  <34.163982, 41.003597, 50.337410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678665, 41.248230, 50.804466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621613, 40.860916, 50.886517>,  <33.587379, 40.628529, 50.935745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621613, 40.860916, 50.886517>,  <33.678665, 41.248230, 50.804466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621613, 40.860916, 50.886517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021802, 0.204117, 0.978704,
		-0.989536, 0.144066, -0.008003,
		-0.142632, -0.968288, 0.205122,
		33.578823, 40.570431, 50.948051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151367, 41.129738, 51.409016>,  <33.678665, 41.248230, 50.804466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151367, 41.129738, 51.409016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398689, 40.815376, 51.411690>,  <33.547085, 40.626759, 51.413292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.398689, 40.815376, 51.411690>,  <33.151367, 41.129738, 51.409016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398689, 40.815376, 51.411690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103968, 0.090215, 0.990481,
		-0.779030, -0.611727, 0.137490,
		0.618307, -0.785909, 0.006681,
		33.584183, 40.579605, 51.413692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909924, 40.696766, 52.074764>,  <33.151367, 41.129738, 51.409016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909924, 40.696766, 52.074764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275402, 40.581139, 51.960499>,  <33.494690, 40.511761, 51.891937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275402, 40.581139, 51.960499>,  <32.909924, 40.696766, 52.074764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275402, 40.581139, 51.960499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270624, -0.091643, 0.958313,
		-0.303197, -0.952912, -0.005505,
		0.913692, -0.289069, -0.285667,
		33.549511, 40.494419, 51.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079979, 40.122074, 52.443920>,  <32.909924, 40.696766, 52.074764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079979, 40.122074, 52.443920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442150, 40.252880, 52.335655>,  <33.659454, 40.331364, 52.270695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442150, 40.252880, 52.335655>,  <33.079979, 40.122074, 52.443920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442150, 40.252880, 52.335655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357014, -0.241685, 0.902291,
		0.229645, -0.913592, -0.335577,
		0.905431, 0.327012, -0.270663,
		33.713779, 40.350983, 52.254456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.404617, 37.398792, 36.458576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757717, 37.574829, 36.524384>,  <35.969578, 37.680450, 36.563869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757717, 37.574829, 36.524384>,  <35.404617, 37.398792, 36.458576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757717, 37.574829, 36.524384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246041, 0.134689, 0.959856,
		0.400267, -0.887793, 0.227178,
		0.882751, 0.440093, 0.164522,
		36.022541, 37.706856, 36.573742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722485, 37.090698, 37.094948>,  <35.404617, 37.398792, 36.458576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722485, 37.090698, 37.094948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906445, 37.444191, 37.060276>,  <36.016819, 37.656288, 37.039474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906445, 37.444191, 37.060276>,  <35.722485, 37.090698, 37.094948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906445, 37.444191, 37.060276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210857, 0.203506, 0.956099,
		0.862574, -0.421432, 0.279933,
		0.459898, 0.883731, -0.086677,
		36.044415, 37.709309, 37.034271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169598, 37.171478, 37.701378>,  <35.722485, 37.090698, 37.094948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169598, 37.171478, 37.701378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141113, 37.541676, 37.552574>,  <36.124023, 37.763794, 37.463291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141113, 37.541676, 37.552574>,  <36.169598, 37.171478, 37.701378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141113, 37.541676, 37.552574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004058, 0.373226, 0.927732,
		0.997453, 0.064552, -0.030332,
		-0.071207, 0.925492, -0.372013,
		36.119751, 37.819324, 37.440971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543930, 37.577259, 38.127724>,  <36.169598, 37.171478, 37.701378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543930, 37.577259, 38.127724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284863, 37.822388, 37.946629>,  <36.129421, 37.969467, 37.837971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284863, 37.822388, 37.946629>,  <36.543930, 37.577259, 38.127724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284863, 37.822388, 37.946629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339122, 0.300244, 0.891543,
		0.682293, 0.730957, 0.013364,
		-0.647667, 0.612825, -0.452738,
		36.090561, 38.006237, 37.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503151, 38.198860, 38.558479>,  <36.543930, 37.577259, 38.127724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503151, 38.198860, 38.558479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169189, 38.224075, 38.339771>,  <35.968811, 38.239204, 38.208546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169189, 38.224075, 38.339771>,  <36.503151, 38.198860, 38.558479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169189, 38.224075, 38.339771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499219, 0.331583, 0.800520,
		0.231761, 0.941318, -0.245372,
		-0.834905, 0.063035, -0.546772,
		35.918716, 38.242985, 38.175739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333805, 38.853092, 38.732212>,  <36.503151, 38.198860, 38.558479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333805, 38.853092, 38.732212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006882, 38.670895, 38.591053>,  <35.810730, 38.561577, 38.506359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006882, 38.670895, 38.591053>,  <36.333805, 38.853092, 38.732212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006882, 38.670895, 38.591053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504812, 0.270756, 0.819668,
		-0.277808, 0.848065, -0.451230,
		-0.817305, -0.455497, -0.352895,
		35.761692, 38.534245, 38.485184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845375, 39.272343, 38.850426>,  <36.333805, 38.853092, 38.732212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845375, 39.272343, 38.850426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652790, 38.924641, 38.805531>,  <35.537239, 38.716019, 38.778595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652790, 38.924641, 38.805531>,  <35.845375, 39.272343, 38.850426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652790, 38.924641, 38.805531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630889, 0.254810, 0.732838,
		-0.608422, 0.423640, -0.671082,
		-0.481458, -0.869253, -0.112238,
		35.508354, 38.663864, 38.771858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133820, 39.372860, 38.837399>,  <35.845375, 39.272343, 38.850426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133820, 39.372860, 38.837399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134647, 38.977711, 38.899494>,  <35.135143, 38.740620, 38.936752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134647, 38.977711, 38.899494>,  <35.133820, 39.372860, 38.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134647, 38.977711, 38.899494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729492, 0.104688, 0.675930,
		-0.683986, -0.114646, -0.720430,
		0.002072, -0.987875, 0.155239,
		35.135269, 38.681347, 38.946064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460339, 39.179272, 38.893005>,  <35.133820, 39.372860, 38.837399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460339, 39.179272, 38.893005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644207, 38.894459, 39.105309>,  <34.754528, 38.723572, 39.232693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644207, 38.894459, 39.105309>,  <34.460339, 39.179272, 38.893005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644207, 38.894459, 39.105309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790644, -0.055930, 0.609717,
		-0.404454, -0.699913, -0.588675,
		0.459673, -0.712034, 0.530761,
		34.782108, 38.680847, 39.264538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934887, 38.742561, 39.098236>,  <34.460339, 39.179272, 38.893005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934887, 38.742561, 39.098236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244392, 38.679752, 39.343716>,  <34.430096, 38.642067, 39.491005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244392, 38.679752, 39.343716>,  <33.934887, 38.742561, 39.098236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244392, 38.679752, 39.343716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619717, 0.013163, 0.784715,
		-0.131294, -0.987508, -0.087122,
		0.773765, -0.157020, 0.613703,
		34.476521, 38.632648, 39.527828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706387, 38.182034, 39.552166>,  <33.934887, 38.742561, 39.098236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706387, 38.182034, 39.552166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998528, 38.372044, 39.748508>,  <34.173813, 38.486050, 39.866314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998528, 38.372044, 39.748508>,  <33.706387, 38.182034, 39.552166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998528, 38.372044, 39.748508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623989, 0.171622, 0.762354,
		0.277900, -0.863072, 0.421757,
		0.730349, 0.475030, 0.490853,
		34.217632, 38.514553, 39.895763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759258, 37.838741, 40.206253>,  <33.706387, 38.182034, 39.552166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759258, 37.838741, 40.206253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893906, 38.208588, 40.277557>,  <33.974693, 38.430496, 40.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893906, 38.208588, 40.277557>,  <33.759258, 37.838741, 40.206253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893906, 38.208588, 40.277557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488004, 0.009399, 0.872791,
		0.805319, -0.380789, 0.454380,
		0.336619, 0.924614, 0.178257,
		33.994892, 38.485973, 40.331036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201061, 37.422432, 40.217274>,  <33.759258, 37.838741, 40.206253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201061, 37.422432, 40.217274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004013, 37.137653, 40.417458>,  <32.885784, 36.966785, 40.537567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004013, 37.137653, 40.417458>,  <33.201061, 37.422432, 40.217274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004013, 37.137653, 40.417458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232311, -0.446628, -0.864034,
		0.838663, -0.541905, 0.054626,
		-0.492622, -0.711943, 0.500461,
		32.856228, 36.924072, 40.567596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372604, 36.751728, 39.949715>,  <33.201061, 37.422432, 40.217274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372604, 36.751728, 39.949715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022312, 36.678188, 40.128281>,  <32.812138, 36.634064, 40.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022312, 36.678188, 40.128281>,  <33.372604, 36.751728, 39.949715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022312, 36.678188, 40.128281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239617, -0.637229, -0.732477,
		0.419134, -0.748425, 0.513991,
		-0.875734, -0.183846, 0.446420,
		32.759590, 36.623035, 40.262207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411991, 36.052170, 40.151024>,  <33.372604, 36.751728, 39.949715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411991, 36.052170, 40.151024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046043, 36.203068, 40.093468>,  <32.826477, 36.293606, 40.058933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046043, 36.203068, 40.093468>,  <33.411991, 36.052170, 40.151024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046043, 36.203068, 40.093468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211177, -0.750830, -0.625826,
		-0.344124, -0.542163, 0.766576,
		-0.914868, 0.377245, -0.143886,
		32.771584, 36.316242, 40.050301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142601, 35.519806, 39.936741>,  <33.411991, 36.052170, 40.151024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142601, 35.519806, 39.936741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896816, 35.812649, 39.819126>,  <32.749344, 35.988354, 39.748558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896816, 35.812649, 39.819126>,  <33.142601, 35.519806, 39.936741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896816, 35.812649, 39.819126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295320, -0.559031, -0.774771,
		-0.731589, -0.389233, 0.559709,
		-0.614461, 0.732108, -0.294033,
		32.712479, 36.032280, 39.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386780, 35.218445, 39.748886>,  <33.142601, 35.519806, 39.936741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386780, 35.218445, 39.748886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384911, 35.587692, 39.595093>,  <32.383789, 35.809242, 39.502815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384911, 35.587692, 39.595093>,  <32.386780, 35.218445, 39.748886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384911, 35.587692, 39.595093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626198, -0.302470, -0.718601,
		-0.779650, 0.237409, 0.579468,
		-0.004669, 0.923119, -0.384486,
		32.383511, 35.864628, 39.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722872, 35.346615, 39.666840>,  <32.386780, 35.218445, 39.748886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722872, 35.346615, 39.666840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902523, 35.587219, 39.402576>,  <32.010315, 35.731583, 39.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902523, 35.587219, 39.402576>,  <31.722872, 35.346615, 39.666840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902523, 35.587219, 39.402576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526735, -0.419009, -0.739582,
		-0.721688, 0.680159, 0.128647,
		0.449129, 0.601511, -0.660657,
		32.037262, 35.767673, 39.204380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173904, 35.670776, 39.197712>,  <31.722872, 35.346615, 39.666840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173904, 35.670776, 39.197712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525774, 35.681576, 39.007790>,  <31.736897, 35.688057, 38.893837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525774, 35.681576, 39.007790>,  <31.173904, 35.670776, 39.197712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525774, 35.681576, 39.007790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418090, -0.431907, -0.799160,
		-0.226652, 0.901514, -0.368649,
		0.879676, 0.027003, -0.474806,
		31.789677, 35.689678, 38.865349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957689, 35.944241, 38.549313>,  <31.173904, 35.670776, 39.197712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957689, 35.944241, 38.549313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316734, 35.775604, 38.497841>,  <31.532162, 35.674423, 38.466957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316734, 35.775604, 38.497841>,  <30.957689, 35.944241, 38.549313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316734, 35.775604, 38.497841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342430, -0.483122, -0.805813,
		0.277554, 0.767370, -0.578020,
		0.897611, -0.421588, -0.128678,
		31.586018, 35.649128, 38.459236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150694, 35.978481, 37.774975>,  <30.957689, 35.944241, 38.549313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150694, 35.978481, 37.774975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388041, 35.691395, 37.920742>,  <31.530449, 35.519142, 38.008202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388041, 35.691395, 37.920742>,  <31.150694, 35.978481, 37.774975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388041, 35.691395, 37.920742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251374, -0.595315, -0.763158,
		0.764675, 0.361226, -0.533655,
		0.593366, -0.717715, 0.364420,
		31.566050, 35.476082, 38.030067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471045, 35.704514, 37.156773>,  <31.150694, 35.978481, 37.774975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471045, 35.704514, 37.156773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527189, 35.415756, 37.427818>,  <31.560875, 35.242500, 37.590446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527189, 35.415756, 37.427818>,  <31.471045, 35.704514, 37.156773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527189, 35.415756, 37.427818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104421, -0.691368, -0.714917,
		0.984579, 0.029589, -0.172422,
		0.140361, -0.721897, 0.677616,
		31.569298, 35.199188, 37.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943054, 35.251286, 36.856766>,  <31.471045, 35.704514, 37.156773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943054, 35.251286, 36.856766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752489, 35.038712, 37.136940>,  <31.638149, 34.911167, 37.305042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752489, 35.038712, 37.136940>,  <31.943054, 35.251286, 36.856766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752489, 35.038712, 37.136940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009381, -0.799677, -0.600358,
		0.879171, -0.279447, 0.385962,
		-0.476413, -0.531438, 0.700431,
		31.609566, 34.879280, 37.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404606, 34.629986, 36.894314>,  <31.943054, 35.251286, 36.856766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404606, 34.629986, 36.894314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065205, 34.483124, 37.046757>,  <31.861565, 34.395008, 37.138222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065205, 34.483124, 37.046757>,  <32.404606, 34.629986, 36.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065205, 34.483124, 37.046757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130608, -0.843180, -0.521525,
		0.512824, -0.392738, 0.763392,
		-0.848500, -0.367156, 0.381108,
		31.810654, 34.372978, 37.161091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552158, 33.948288, 37.098129>,  <32.404606, 34.629986, 36.894314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552158, 33.948288, 37.098129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152546, 33.948627, 37.080536>,  <31.912779, 33.948830, 37.069981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152546, 33.948627, 37.080536>,  <32.552158, 33.948288, 37.098129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152546, 33.948627, 37.080536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017516, -0.909467, -0.415406,
		-0.040352, -0.415774, 0.908572,
		-0.999032, 0.000847, -0.043981,
		31.852837, 33.948883, 37.067341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364677, 33.333450, 37.332794>,  <32.552158, 33.948288, 37.098129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364677, 33.333450, 37.332794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048347, 33.453026, 37.119164>,  <31.858551, 33.524773, 36.990986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048347, 33.453026, 37.119164>,  <32.364677, 33.333450, 37.332794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048347, 33.453026, 37.119164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026189, -0.855277, -0.517509,
		-0.611485, -0.423244, 0.668543,
		-0.790822, 0.298940, -0.534073,
		31.811100, 33.542709, 36.958942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906347, 32.810070, 37.276051>,  <32.364677, 33.333450, 37.332794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906347, 32.810070, 37.276051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838974, 33.050266, 36.963375>,  <31.798550, 33.194382, 36.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838974, 33.050266, 36.963375>,  <31.906347, 32.810070, 37.276051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838974, 33.050266, 36.963375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061857, -0.797899, -0.599610,
		-0.983771, -0.052640, 0.171535,
		-0.168431, 0.600489, -0.781693,
		31.788445, 33.230412, 36.728867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605412, 32.615627, 37.443569>,  <31.906347, 32.810070, 37.276051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605412, 32.615627, 37.443569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680027, 32.228378, 37.510441>,  <32.724796, 31.996029, 37.550564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680027, 32.228378, 37.510441>,  <32.605412, 32.615627, 37.443569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680027, 32.228378, 37.510441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309530, 0.219415, 0.925229,
		-0.932413, -0.120843, 0.340591,
		0.186538, -0.968119, 0.167181,
		32.735989, 31.937943, 37.560596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240795, 32.433319, 38.137547>,  <32.605412, 32.615627, 37.443569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240795, 32.433319, 38.137547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545986, 32.194691, 38.037964>,  <32.729099, 32.051514, 37.978214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545986, 32.194691, 38.037964>,  <32.240795, 32.433319, 38.137547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545986, 32.194691, 38.037964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367320, 0.083194, 0.926366,
		-0.531928, -0.798239, 0.282606,
		0.762973, -0.596567, -0.248956,
		32.774879, 32.015720, 37.963276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276909, 31.840528, 38.615826>,  <32.240795, 32.433319, 38.137547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276909, 31.840528, 38.615826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612480, 32.040367, 38.529476>,  <32.813824, 32.160271, 38.477665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612480, 32.040367, 38.529476>,  <32.276909, 31.840528, 38.615826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612480, 32.040367, 38.529476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255014, -0.010431, 0.966881,
		0.480797, -0.866196, -0.136154,
		0.838929, 0.499595, -0.215877,
		32.864159, 32.190247, 38.464714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811493, 31.491699, 38.981487>,  <32.276909, 31.840528, 38.615826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811493, 31.491699, 38.981487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957333, 31.859520, 38.922844>,  <33.044838, 32.080212, 38.887657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957333, 31.859520, 38.922844>,  <32.811493, 31.491699, 38.981487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957333, 31.859520, 38.922844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259676, 0.050788, 0.964360,
		0.894224, -0.389674, -0.220268,
		0.364599, 0.919552, -0.146605,
		33.066711, 32.135384, 38.878864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521179, 31.473246, 39.272572>,  <32.811493, 31.491699, 38.981487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521179, 31.473246, 39.272572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393723, 31.852371, 39.268276>,  <33.317249, 32.079845, 39.265697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393723, 31.852371, 39.268276>,  <33.521179, 31.473246, 39.272572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393723, 31.852371, 39.268276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311946, 0.115558, 0.943046,
		0.895072, 0.297148, -0.332488,
		-0.318646, 0.947813, -0.010738,
		33.298130, 32.136715, 39.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042496, 31.833727, 39.686142>,  <33.521179, 31.473246, 39.272572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042496, 31.833727, 39.686142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756214, 32.108849, 39.637661>,  <33.584446, 32.273922, 39.608574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756214, 32.108849, 39.637661>,  <34.042496, 31.833727, 39.686142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756214, 32.108849, 39.637661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298447, 0.458100, 0.837301,
		0.631423, 0.563089, -0.533138,
		-0.715706, 0.687805, -0.121203,
		33.541504, 32.315189, 39.601299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358826, 32.478291, 39.802013>,  <34.042496, 31.833727, 39.686142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358826, 32.478291, 39.802013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966911, 32.513737, 39.873760>,  <33.731762, 32.535004, 39.916809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966911, 32.513737, 39.873760>,  <34.358826, 32.478291, 39.802013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966911, 32.513737, 39.873760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200033, 0.449563, 0.870563,
		-0.003493, 0.888842, -0.458200,
		-0.979783, 0.088615, 0.179368,
		33.672977, 32.540321, 39.927570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314861, 33.099251, 40.071911>,  <34.358826, 32.478291, 39.802013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314861, 33.099251, 40.071911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989021, 32.903851, 40.196999>,  <33.793518, 32.786610, 40.272049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989021, 32.903851, 40.196999>,  <34.314861, 33.099251, 40.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989021, 32.903851, 40.196999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133755, 0.366408, 0.920790,
		-0.564388, 0.791905, -0.233137,
		-0.814602, -0.488500, 0.312717,
		33.744640, 32.757301, 40.290813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016293, 33.549225, 40.403214>,  <34.314861, 33.099251, 40.071911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016293, 33.549225, 40.403214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812096, 33.240894, 40.555645>,  <33.689579, 33.055897, 40.647102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812096, 33.240894, 40.555645>,  <34.016293, 33.549225, 40.403214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812096, 33.240894, 40.555645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004755, 0.445697, 0.895171,
		-0.859869, 0.455166, -0.231191,
		-0.510492, -0.770830, 0.381077,
		33.658947, 33.009644, 40.669968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322121, 33.694386, 40.640514>,  <34.016293, 33.549225, 40.403214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322121, 33.694386, 40.640514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387283, 33.358982, 40.848499>,  <33.426380, 33.157738, 40.973289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387283, 33.358982, 40.848499>,  <33.322121, 33.694386, 40.640514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387283, 33.358982, 40.848499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118502, 0.506560, 0.854023,
		-0.979500, -0.200739, -0.016845,
		0.162902, -0.838511, 0.519963,
		33.436153, 33.107430, 41.004490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852833, 33.741970, 41.142914>,  <33.322121, 33.694386, 40.640514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852833, 33.741970, 41.142914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120319, 33.475071, 41.274120>,  <33.280811, 33.314930, 41.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120319, 33.475071, 41.274120>,  <32.852833, 33.741970, 41.142914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120319, 33.475071, 41.274120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144262, 0.316349, 0.937609,
		-0.729387, -0.674317, 0.115289,
		0.668717, -0.667248, 0.328019,
		33.320934, 33.274895, 41.372524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550179, 33.387001, 41.818127>,  <32.852833, 33.741970, 41.142914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550179, 33.387001, 41.818127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944580, 33.320457, 41.822704>,  <33.181221, 33.280533, 41.825451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944580, 33.320457, 41.822704>,  <32.550179, 33.387001, 41.818127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944580, 33.320457, 41.822704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046768, 0.341754, 0.938625,
		-0.160057, -0.924949, 0.344749,
		0.986000, -0.166357, 0.011442,
		33.240379, 33.270550, 41.826138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620434, 33.105484, 42.465473>,  <32.550179, 33.387001, 41.818127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620434, 33.105484, 42.465473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994091, 33.194614, 42.353958>,  <33.218285, 33.248093, 42.287048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994091, 33.194614, 42.353958>,  <32.620434, 33.105484, 42.465473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994091, 33.194614, 42.353958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258008, 0.118069, 0.958901,
		0.246587, -0.967681, 0.052802,
		0.934145, 0.222830, -0.278784,
		33.274334, 33.261463, 42.270325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063728, 32.651138, 42.779037>,  <32.620434, 33.105484, 42.465473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063728, 32.651138, 42.779037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279064, 32.980518, 42.707348>,  <33.408268, 33.178146, 42.664333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279064, 32.980518, 42.707348>,  <33.063728, 32.651138, 42.779037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279064, 32.980518, 42.707348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263381, 0.037614, 0.963958,
		0.800512, -0.566142, -0.196632,
		0.538341, 0.823449, -0.179222,
		33.440567, 33.227554, 42.653580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800617, 32.577023, 43.103374>,  <33.063728, 32.651138, 42.779037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800617, 32.577023, 43.103374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746170, 32.970085, 43.052998>,  <33.713501, 33.205921, 43.022770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746170, 32.970085, 43.052998>,  <33.800617, 32.577023, 43.103374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746170, 32.970085, 43.052998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512741, 0.178654, 0.839750,
		0.847684, 0.049733, -0.528166,
		-0.136122, 0.982654, -0.125941,
		33.705334, 33.264881, 43.015217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313641, 32.724396, 43.523701>,  <33.800617, 32.577023, 43.103374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313641, 32.724396, 43.523701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129181, 33.072506, 43.454468>,  <34.018505, 33.281372, 43.412930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129181, 33.072506, 43.454468>,  <34.313641, 32.724396, 43.523701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129181, 33.072506, 43.454468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268814, 0.322912, 0.907451,
		0.845626, 0.371941, -0.382854,
		-0.461146, 0.870280, -0.173079,
		33.990837, 33.333591, 43.402542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689674, 33.260429, 43.610638>,  <34.313641, 32.724396, 43.523701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689674, 33.260429, 43.610638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339146, 33.451797, 43.633190>,  <34.128830, 33.566616, 43.646721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339146, 33.451797, 43.633190>,  <34.689674, 33.260429, 43.610638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339146, 33.451797, 43.633190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324533, 0.499812, 0.803036,
		0.356007, 0.722014, -0.593257,
		-0.876320, 0.478418, 0.056380,
		34.076248, 33.595322, 43.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805199, 33.941486, 43.878437>,  <34.689674, 33.260429, 43.610638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805199, 33.941486, 43.878437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409988, 33.920486, 43.936474>,  <34.172863, 33.907887, 43.971298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409988, 33.920486, 43.936474>,  <34.805199, 33.941486, 43.878437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409988, 33.920486, 43.936474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089256, 0.572603, 0.814960,
		-0.125865, 0.818150, -0.561060,
		-0.988024, -0.052497, 0.145095,
		34.113583, 33.904736, 43.980003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629803, 34.617119, 44.235023>,  <34.805199, 33.941486, 43.878437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629803, 34.617119, 44.235023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362640, 34.328369, 44.307465>,  <34.202343, 34.155117, 44.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362640, 34.328369, 44.307465>,  <34.629803, 34.617119, 44.235023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362640, 34.328369, 44.307465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090841, 0.162447, 0.982527,
		-0.738683, 0.672685, -0.042923,
		-0.667904, -0.721876, 0.181105,
		34.162270, 34.111805, 44.361797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018139, 34.927998, 44.723133>,  <34.629803, 34.617119, 44.235023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018139, 34.927998, 44.723133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022549, 34.531673, 44.777046>,  <34.025192, 34.293877, 44.809395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022549, 34.531673, 44.777046>,  <34.018139, 34.927998, 44.723133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022549, 34.531673, 44.777046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113251, 0.135162, 0.984330,
		-0.993505, 0.004417, 0.113700,
		0.011020, -0.990814, 0.134784,
		34.025856, 34.234428, 44.817482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636047, 34.853657, 45.381187>,  <34.018139, 34.927998, 44.723133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636047, 34.853657, 45.381187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813160, 34.496571, 45.347702>,  <33.919430, 34.282318, 45.327610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813160, 34.496571, 45.347702>,  <33.636047, 34.853657, 45.381187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813160, 34.496571, 45.347702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100152, -0.043543, 0.994019,
		-0.891017, -0.448520, 0.070127,
		0.442784, -0.892711, -0.083718,
		33.945995, 34.228756, 45.322586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254730, 34.327461, 45.943813>,  <33.636047, 34.853657, 45.381187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254730, 34.327461, 45.943813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619743, 34.206749, 45.833385>,  <33.838753, 34.134323, 45.767128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619743, 34.206749, 45.833385>,  <33.254730, 34.327461, 45.943813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619743, 34.206749, 45.833385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264580, -0.079172, 0.961108,
		-0.311898, -0.950085, 0.007597,
		0.912533, -0.301778, -0.276067,
		33.893505, 34.116215, 45.750565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398346, 33.756714, 46.410149>,  <33.254730, 34.327461, 45.943813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398346, 33.756714, 46.410149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760944, 33.859772, 46.276348>,  <33.978504, 33.921604, 46.196068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760944, 33.859772, 46.276348>,  <33.398346, 33.756714, 46.410149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760944, 33.859772, 46.276348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376001, -0.132210, 0.917139,
		0.192070, -0.957152, -0.216721,
		0.906494, 0.257642, -0.334497,
		34.032894, 33.937065, 46.175999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874825, 33.184563, 46.513603>,  <33.398346, 33.756714, 46.410149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874825, 33.184563, 46.513603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086609, 33.523155, 46.491196>,  <34.213680, 33.726311, 46.477753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086609, 33.523155, 46.491196>,  <33.874825, 33.184563, 46.513603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086609, 33.523155, 46.491196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373894, -0.173568, 0.911086,
		0.761498, -0.503325, -0.408392,
		0.529456, 0.846486, -0.056019,
		34.245445, 33.777100, 46.474388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357063, 33.158638, 47.068317>,  <33.874825, 33.184563, 46.513603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357063, 33.158638, 47.068317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358604, 33.543034, 46.957695>,  <34.359528, 33.773670, 46.891319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358604, 33.543034, 46.957695>,  <34.357063, 33.158638, 47.068317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358604, 33.543034, 46.957695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362444, 0.256413, 0.896039,
		0.931998, -0.103690, -0.347316,
		0.003854, 0.960989, -0.276558,
		34.359760, 33.831329, 46.874729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071133, 33.412743, 47.089008>,  <34.357063, 33.158638, 47.068317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071133, 33.412743, 47.089008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799763, 33.697376, 47.162106>,  <34.636940, 33.868156, 47.205963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799763, 33.697376, 47.162106>,  <35.071133, 33.412743, 47.089008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799763, 33.697376, 47.162106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322700, 0.065165, 0.944255,
		0.660005, 0.699576, -0.273836,
		-0.678424, 0.711580, 0.182744,
		34.596237, 33.910851, 47.216930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396072, 33.967953, 47.486851>,  <35.071133, 33.412743, 47.089008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396072, 33.967953, 47.486851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001213, 33.996937, 47.543827>,  <34.764297, 34.014328, 47.578011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001213, 33.996937, 47.543827>,  <35.396072, 33.967953, 47.486851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001213, 33.996937, 47.543827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147836, 0.075549, 0.986122,
		0.060696, 0.994506, -0.085291,
		-0.987148, 0.072463, 0.142439,
		34.705070, 34.018677, 47.586559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918121, 34.525734, 47.415657>,  <35.396072, 33.967953, 47.486851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918121, 34.525734, 47.415657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317738, 34.530846, 47.398922>,  <36.557507, 34.533913, 47.388882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317738, 34.530846, 47.398922>,  <35.918121, 34.525734, 47.415657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317738, 34.530846, 47.398922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042075, 0.019079, -0.998932,
		-0.011970, 0.999736, 0.019599,
		0.999043, 0.012782, -0.041836,
		36.617451, 34.534679, 47.386372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065945, 35.155766, 46.908745>,  <35.918121, 34.525734, 47.415657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065945, 35.155766, 46.908745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384010, 34.916904, 46.950943>,  <36.574848, 34.773590, 46.976261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384010, 34.916904, 46.950943>,  <36.065945, 35.155766, 46.908745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384010, 34.916904, 46.950943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100825, -0.041359, -0.994044,
		0.597955, 0.801064, 0.027321,
		0.795163, -0.597148, 0.105498,
		36.622559, 34.737759, 46.982594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536640, 35.381130, 46.334835>,  <36.065945, 35.155766, 46.908745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536640, 35.381130, 46.334835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635326, 35.011616, 46.451965>,  <36.694538, 34.789906, 46.522243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635326, 35.011616, 46.451965>,  <36.536640, 35.381130, 46.334835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635326, 35.011616, 46.451965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262964, -0.227011, -0.937718,
		0.932727, 0.308356, 0.186915,
		0.246719, -0.923787, 0.292826,
		36.709343, 34.734478, 46.539814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275520, 35.241222, 46.085484>,  <36.536640, 35.381130, 46.334835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275520, 35.241222, 46.085484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074661, 34.895565, 46.098717>,  <36.954144, 34.688171, 46.106655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074661, 34.895565, 46.098717>,  <37.275520, 35.241222, 46.085484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074661, 34.895565, 46.098717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381795, -0.255860, -0.888127,
		0.775937, -0.433342, 0.458407,
		-0.502150, -0.864147, 0.033084,
		36.924015, 34.636322, 46.108643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737572, 34.810268, 45.842728>,  <37.275520, 35.241222, 46.085484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737572, 34.810268, 45.842728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393585, 34.606750, 45.826756>,  <37.187195, 34.484642, 45.817173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393585, 34.606750, 45.826756>,  <37.737572, 34.810268, 45.842728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393585, 34.606750, 45.826756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269180, -0.385706, -0.882481,
		0.433595, -0.769651, 0.468650,
		-0.859964, -0.508791, -0.039934,
		37.135597, 34.454113, 45.814774>
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
