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
	<24.652767, 35.021324, 35.160896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276529, 35.108608, 35.056847>,  <24.050787, 35.160976, 34.994415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276529, 35.108608, 35.056847>,  <24.652767, 35.021324, 35.160896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276529, 35.108608, 35.056847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086362, 0.587184, 0.804833,
		0.328364, 0.779487, -0.533458,
		-0.940595, 0.218208, -0.260128,
		23.994350, 35.174072, 34.978809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522297, 35.608761, 35.494747>,  <24.652767, 35.021324, 35.160896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522297, 35.608761, 35.494747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150415, 35.516041, 35.380260>,  <23.927286, 35.460407, 35.311569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150415, 35.516041, 35.380260>,  <24.522297, 35.608761, 35.494747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150415, 35.516041, 35.380260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367867, 0.622391, 0.690871,
		0.017990, 0.747594, -0.663912,
		-0.929704, -0.231803, -0.286212,
		23.871504, 35.446499, 35.294395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552290, 36.407387, 35.297508>,  <24.522297, 35.608761, 35.494747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552290, 36.407387, 35.297508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926498, 36.275921, 35.349323>,  <25.151024, 36.197041, 35.380413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926498, 36.275921, 35.349323>,  <24.552290, 36.407387, 35.297508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926498, 36.275921, 35.349323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269418, 0.900940, 0.340177,
		-0.228507, -0.283344, 0.931397,
		0.935520, -0.328668, 0.129533,
		25.207155, 36.177319, 35.388184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800005, 36.624252, 35.998909>,  <24.552290, 36.407387, 35.297508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800005, 36.624252, 35.998909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117369, 36.587761, 35.758183>,  <25.307787, 36.565868, 35.613747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117369, 36.587761, 35.758183>,  <24.800005, 36.624252, 35.998909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117369, 36.587761, 35.758183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405030, 0.817166, 0.410110,
		0.454367, -0.569137, 0.685298,
		0.793411, -0.091226, -0.601811,
		25.355392, 36.560394, 35.577641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536785, 36.562939, 36.333092>,  <24.800005, 36.624252, 35.998909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536785, 36.562939, 36.333092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563349, 36.727436, 35.969452>,  <25.579287, 36.826134, 35.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563349, 36.727436, 35.969452>,  <25.536785, 36.562939, 36.333092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563349, 36.727436, 35.969452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308075, 0.858147, 0.410700,
		0.949042, -0.307346, -0.069706,
		0.066409, 0.411246, -0.909102,
		25.583271, 36.850811, 35.696720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710876, 35.959305, 35.961784>,  <25.536785, 36.562939, 36.333092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710876, 35.959305, 35.961784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342651, 35.835670, 35.866264>,  <25.121716, 35.761490, 35.808952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342651, 35.835670, 35.866264>,  <25.710876, 35.959305, 35.961784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342651, 35.835670, 35.866264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278400, -0.090417, -0.956200,
		0.273961, -0.946725, 0.169286,
		-0.920565, -0.309090, -0.238797,
		25.066483, 35.742943, 35.794624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839928, 35.461277, 35.387413>,  <25.710876, 35.959305, 35.961784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839928, 35.461277, 35.387413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444357, 35.520626, 35.388947>,  <25.207014, 35.556236, 35.389866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444357, 35.520626, 35.388947>,  <25.839928, 35.461277, 35.387413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444357, 35.520626, 35.388947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042634, -0.259207, -0.964880,
		-0.142161, -0.954358, 0.262661,
		-0.988925, 0.148367, 0.003839,
		25.147680, 35.565136, 35.390099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438484, 35.867428, 35.656635>,  <25.839928, 35.461277, 35.387413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438484, 35.867428, 35.656635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827662, 35.922791, 35.582634>,  <27.061169, 35.956009, 35.538235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827662, 35.922791, 35.582634>,  <26.438484, 35.867428, 35.656635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827662, 35.922791, 35.582634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205980, 0.882333, -0.423156,
		0.104665, 0.449814, 0.886968,
		0.972943, 0.138408, -0.185002,
		27.119545, 35.964314, 35.527134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446657, 36.577663, 35.570000>,  <26.438484, 35.867428, 35.656635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446657, 36.577663, 35.570000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825972, 36.493752, 35.474716>,  <27.053560, 36.443405, 35.417545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825972, 36.493752, 35.474716>,  <26.446657, 36.577663, 35.570000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825972, 36.493752, 35.474716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014580, 0.778466, -0.627518,
		0.317082, 0.591593, 0.741267,
		0.948286, -0.209782, -0.238212,
		27.110458, 36.430817, 35.403252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859785, 37.142998, 35.623680>,  <26.446657, 36.577663, 35.570000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859785, 37.142998, 35.623680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067085, 36.918789, 35.365307>,  <27.191465, 36.784264, 35.210281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067085, 36.918789, 35.365307>,  <26.859785, 37.142998, 35.623680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067085, 36.918789, 35.365307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014343, 0.760865, -0.648752,
		0.855108, 0.326952, 0.402358,
		0.518251, -0.560524, -0.645932,
		27.222561, 36.750633, 35.171528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416525, 37.557392, 35.285519>,  <26.859785, 37.142998, 35.623680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416525, 37.557392, 35.285519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354971, 37.260189, 35.024979>,  <27.318039, 37.081867, 34.868652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354971, 37.260189, 35.024979>,  <27.416525, 37.557392, 35.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354971, 37.260189, 35.024979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063008, 0.665242, -0.743965,
		0.986078, -0.073443, -0.149185,
		-0.153883, -0.743007, -0.651353,
		27.308805, 37.037289, 34.829575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941475, 37.731346, 34.781178>,  <27.416525, 37.557392, 35.285519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941475, 37.731346, 34.781178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674000, 37.486301, 34.612625>,  <27.513515, 37.339275, 34.511494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674000, 37.486301, 34.612625>,  <27.941475, 37.731346, 34.781178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674000, 37.486301, 34.612625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108167, 0.640837, -0.760018,
		0.735636, -0.462633, -0.494783,
		-0.668685, -0.612616, -0.421381,
		27.473394, 37.302517, 34.486210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192982, 37.590866, 34.128899>,  <27.941475, 37.731346, 34.781178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192982, 37.590866, 34.128899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806383, 37.493847, 34.095299>,  <27.574425, 37.435635, 34.075138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806383, 37.493847, 34.095299>,  <28.192982, 37.590866, 34.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806383, 37.493847, 34.095299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093582, 0.637690, -0.764588,
		0.239011, -0.731111, -0.639023,
		-0.966497, -0.242546, -0.083996,
		27.516434, 37.421082, 34.070099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085575, 37.493786, 33.464741>,  <28.192982, 37.590866, 34.128899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085575, 37.493786, 33.464741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721405, 37.579201, 33.606457>,  <27.502903, 37.630451, 33.691486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721405, 37.579201, 33.606457>,  <28.085575, 37.493786, 33.464741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721405, 37.579201, 33.606457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139631, 0.647557, -0.749115,
		-0.389391, -0.731485, -0.559737,
		-0.910428, 0.213542, 0.354291,
		27.448277, 37.643265, 33.712746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651299, 37.455643, 32.849472>,  <28.085575, 37.493786, 33.464741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651299, 37.455643, 32.849472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437952, 37.666370, 33.114193>,  <27.309944, 37.792809, 33.273026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437952, 37.666370, 33.114193>,  <27.651299, 37.455643, 32.849472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437952, 37.666370, 33.114193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325939, 0.593968, -0.735504,
		-0.780568, -0.607998, -0.145090,
		-0.533364, 0.526820, 0.661803,
		27.277943, 37.824417, 33.312733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029959, 37.659149, 32.564701>,  <27.651299, 37.455643, 32.849472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029959, 37.659149, 32.564701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992941, 37.921974, 32.863953>,  <26.970730, 38.079670, 33.043503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992941, 37.921974, 32.863953>,  <27.029959, 37.659149, 32.564701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992941, 37.921974, 32.863953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499155, 0.619513, -0.605844,
		-0.861557, -0.429502, 0.270645,
		-0.092543, 0.657063, 0.748134,
		26.965178, 38.119095, 33.088394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320808, 37.907516, 32.563522>,  <27.029959, 37.659149, 32.564701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320808, 37.907516, 32.563522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543743, 38.169300, 32.767899>,  <26.677504, 38.326370, 32.890526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543743, 38.169300, 32.767899>,  <26.320808, 37.907516, 32.563522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543743, 38.169300, 32.767899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447134, 0.755104, -0.479467,
		-0.699606, 0.038765, 0.713477,
		0.557336, 0.654458, 0.510942,
		26.710943, 38.365639, 32.921181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860962, 38.357342, 32.850609>,  <26.320808, 37.907516, 32.563522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860962, 38.357342, 32.850609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213213, 38.546356, 32.836704>,  <26.424564, 38.659763, 32.828362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213213, 38.546356, 32.836704>,  <25.860962, 38.357342, 32.850609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213213, 38.546356, 32.836704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439363, 0.786947, -0.433214,
		-0.177354, 0.396772, 0.900621,
		0.880628, 0.472532, -0.034759,
		26.477402, 38.688114, 32.826275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730806, 39.067223, 33.058777>,  <25.860962, 38.357342, 32.850609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730806, 39.067223, 33.058777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084404, 39.074039, 32.871899>,  <26.296562, 39.078129, 32.759773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084404, 39.074039, 32.871899>,  <25.730806, 39.067223, 33.058777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084404, 39.074039, 32.871899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282419, 0.815843, -0.504617,
		0.372556, 0.578021, 0.726012,
		0.883992, 0.017041, -0.467192,
		26.349602, 39.079151, 32.731743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031858, 39.846954, 33.065510>,  <25.730806, 39.067223, 33.058777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031858, 39.846954, 33.065510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203773, 39.636818, 32.771763>,  <26.306923, 39.510738, 32.595512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203773, 39.636818, 32.771763>,  <26.031858, 39.846954, 33.065510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203773, 39.636818, 32.771763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315536, 0.674658, -0.667288,
		0.846002, 0.518513, 0.124197,
		0.429788, -0.525338, -0.734372,
		26.332710, 39.479218, 32.551453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577484, 40.264938, 32.772861>,  <26.031858, 39.846954, 33.065510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577484, 40.264938, 32.772861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472599, 39.994240, 32.497688>,  <26.409668, 39.831821, 32.332584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472599, 39.994240, 32.497688>,  <26.577484, 40.264938, 32.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472599, 39.994240, 32.497688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002352, 0.712429, -0.701740,
		0.965008, -0.185622, -0.185215,
		-0.262211, -0.676749, -0.687936,
		26.393936, 39.791214, 32.291306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019497, 40.364941, 32.216808>,  <26.577484, 40.264938, 32.772861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019497, 40.364941, 32.216808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715094, 40.177830, 32.037006>,  <26.532452, 40.065563, 31.929127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715094, 40.177830, 32.037006>,  <27.019497, 40.364941, 32.216808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715094, 40.177830, 32.037006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018706, 0.676770, -0.735957,
		0.648473, -0.568478, -0.506277,
		-0.761008, -0.467778, -0.449500,
		26.486792, 40.037495, 31.902157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184515, 40.269199, 31.469027>,  <27.019497, 40.364941, 32.216808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184515, 40.269199, 31.469027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796700, 40.305195, 31.560150>,  <26.564011, 40.326794, 31.614824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796700, 40.305195, 31.560150>,  <27.184515, 40.269199, 31.469027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796700, 40.305195, 31.560150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140846, 0.556098, -0.819095,
		-0.200397, -0.826230, -0.526483,
		-0.969537, 0.089992, 0.227811,
		26.505838, 40.332191, 31.628494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934364, 40.305889, 30.885355>,  <27.184515, 40.269199, 31.469027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934364, 40.305889, 30.885355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651524, 40.464043, 31.119852>,  <26.481819, 40.558933, 31.260550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651524, 40.464043, 31.119852>,  <26.934364, 40.305889, 30.885355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651524, 40.464043, 31.119852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161783, 0.716617, -0.678444,
		-0.688355, -0.574574, -0.442755,
		-0.707102, 0.395380, 0.586243,
		26.439392, 40.582657, 31.295725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374067, 40.296528, 30.508198>,  <26.934364, 40.305889, 30.885355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374067, 40.296528, 30.508198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293196, 40.569530, 30.789141>,  <26.244673, 40.733334, 30.957706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293196, 40.569530, 30.789141>,  <26.374067, 40.296528, 30.508198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293196, 40.569530, 30.789141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248656, 0.657892, -0.710878,
		-0.947256, -0.318369, 0.036699,
		-0.202178, 0.682509, 0.702357,
		26.232542, 40.774284, 30.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651808, 40.635063, 30.587872>,  <26.374067, 40.296528, 30.508198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651808, 40.635063, 30.587872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916437, 40.903614, 30.721481>,  <26.075214, 41.064743, 30.801647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916437, 40.903614, 30.721481>,  <25.651808, 40.635063, 30.587872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916437, 40.903614, 30.721481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173072, 0.570117, -0.803127,
		-0.729633, 0.473518, 0.493372,
		0.661575, 0.671377, 0.334024,
		26.114910, 41.105026, 30.821688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335602, 41.256416, 30.631819>,  <25.651808, 40.635063, 30.587872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335602, 41.256416, 30.631819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729912, 41.310593, 30.592007>,  <25.966497, 41.343098, 30.568119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729912, 41.310593, 30.592007>,  <25.335602, 41.256416, 30.631819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729912, 41.310593, 30.592007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161414, 0.597782, -0.785240,
		-0.046856, 0.790134, 0.611140,
		0.985774, 0.135440, -0.099529,
		26.025644, 41.351223, 30.562149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591202, 41.959778, 30.725330>,  <25.335602, 41.256416, 30.631819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591202, 41.959778, 30.725330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835024, 41.812824, 30.444340>,  <25.981318, 41.724651, 30.275745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835024, 41.812824, 30.444340>,  <25.591202, 41.959778, 30.725330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835024, 41.812824, 30.444340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221898, 0.771639, -0.596100,
		0.761053, 0.519234, 0.388837,
		0.609557, -0.367381, -0.702475,
		26.017891, 41.702610, 30.233597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645931, 42.574322, 31.205622>,  <25.591202, 41.959778, 30.725330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645931, 42.574322, 31.205622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884935, 42.271896, 31.312471>,  <26.028337, 42.090443, 31.376581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884935, 42.271896, 31.312471>,  <25.645931, 42.574322, 31.205622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884935, 42.271896, 31.312471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801858, 0.562360, -0.201929,
		0.002450, 0.334852, 0.942267,
		0.597510, -0.756059, 0.267126,
		26.064188, 42.045078, 31.392609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174767, 42.919849, 31.701563>,  <25.645931, 42.574322, 31.205622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174767, 42.919849, 31.701563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293222, 42.608021, 31.480812>,  <26.364296, 42.420925, 31.348362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293222, 42.608021, 31.480812>,  <26.174767, 42.919849, 31.701563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293222, 42.608021, 31.480812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842884, 0.485075, -0.232915,
		0.449276, -0.396194, 0.800738,
		0.296138, -0.779572, -0.551878,
		26.382063, 42.374149, 31.315248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920284, 42.730801, 31.500519>,  <26.174767, 42.919849, 31.701563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920284, 42.730801, 31.500519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123215, 43.069122, 31.434513>,  <27.244972, 43.272118, 31.394909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123215, 43.069122, 31.434513>,  <26.920284, 42.730801, 31.500519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123215, 43.069122, 31.434513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849232, -0.523226, -0.070981,
		-0.146376, -0.104126, -0.983734,
		0.507325, 0.845809, -0.165015,
		27.275412, 43.322865, 31.385008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300747, 42.981419, 30.877897>,  <26.920284, 42.730801, 31.500519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300747, 42.981419, 30.877897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439846, 43.345081, 30.969557>,  <27.523306, 43.563278, 31.024553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439846, 43.345081, 30.969557>,  <27.300747, 42.981419, 30.877897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439846, 43.345081, 30.969557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048218, -0.226739, 0.972761,
		0.936348, -0.349323, -0.035010,
		0.347746, 0.909155, 0.229150,
		27.544170, 43.617828, 31.038301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845470, 42.809254, 31.421124>,  <27.300747, 42.981419, 30.877897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845470, 42.809254, 31.421124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766594, 43.201397, 31.422045>,  <27.719269, 43.436684, 31.422598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766594, 43.201397, 31.422045>,  <27.845470, 42.809254, 31.421124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766594, 43.201397, 31.422045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333082, 0.064784, 0.940670,
		0.922048, 0.186260, -0.339316,
		-0.197191, 0.980362, 0.002305,
		27.707438, 43.495506, 31.422737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417212, 43.266060, 31.820427>,  <27.845470, 42.809254, 31.421124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417212, 43.266060, 31.820427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050224, 43.425140, 31.816662>,  <27.830032, 43.520588, 31.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050224, 43.425140, 31.816662>,  <28.417212, 43.266060, 31.820427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050224, 43.425140, 31.816662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062595, 0.167681, 0.983852,
		0.392859, 0.902062, -0.178736,
		-0.917466, 0.397703, -0.009411,
		27.774984, 43.544453, 31.813839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421898, 43.990757, 32.059517>,  <28.417212, 43.266060, 31.820427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421898, 43.990757, 32.059517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083523, 43.790638, 32.133377>,  <27.880497, 43.670567, 32.177692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083523, 43.790638, 32.133377>,  <28.421898, 43.990757, 32.059517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083523, 43.790638, 32.133377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149744, 0.109480, 0.982645,
		-0.511826, 0.858907, -0.017697,
		-0.845938, -0.500293, 0.184651,
		27.829742, 43.640549, 32.188774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091984, 44.299450, 32.331432>,  <28.421898, 43.990757, 32.059517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091984, 44.299450, 32.331432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189739, 44.445286, 32.690842>,  <29.248392, 44.532787, 32.906487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189739, 44.445286, 32.690842>,  <29.091984, 44.299450, 32.331432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189739, 44.445286, 32.690842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315234, -0.906163, 0.281951,
		0.917007, 0.214340, -0.336388,
		0.244389, 0.364592, 0.898525,
		29.263056, 44.554665, 32.960400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822618, 44.163170, 32.505234>,  <29.091984, 44.299450, 32.331432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822618, 44.163170, 32.505234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611391, 44.210548, 32.841595>,  <29.484655, 44.238976, 33.043411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611391, 44.210548, 32.841595>,  <29.822618, 44.163170, 32.505234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611391, 44.210548, 32.841595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325064, -0.886613, 0.329015,
		0.784525, 0.447088, 0.429689,
		-0.528067, 0.118444, 0.840902,
		29.452971, 44.246082, 33.093864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279743, 44.003731, 32.981747>,  <29.822618, 44.163170, 32.505234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279743, 44.003731, 32.981747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937849, 43.977005, 33.187645>,  <29.732712, 43.960968, 33.311184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937849, 43.977005, 33.187645>,  <30.279743, 44.003731, 32.981747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937849, 43.977005, 33.187645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364523, -0.783255, 0.503622,
		0.369526, 0.618100, 0.693832,
		-0.854736, -0.066817, 0.514745,
		29.681429, 43.956959, 33.342068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461784, 43.783230, 33.671242>,  <30.279743, 44.003731, 32.981747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461784, 43.783230, 33.671242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070780, 43.699055, 33.676781>,  <29.836178, 43.648552, 33.680103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070780, 43.699055, 33.676781>,  <30.461784, 43.783230, 33.671242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070780, 43.699055, 33.676781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207324, -0.946881, 0.245832,
		-0.038617, 0.243175, 0.969214,
		-0.977510, -0.210434, 0.013851,
		29.777527, 43.635925, 33.680935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326090, 43.415245, 34.303989>,  <30.461784, 43.783230, 33.671242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326090, 43.415245, 34.303989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027178, 43.333706, 34.051003>,  <29.847830, 43.284782, 33.899208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.027178, 43.333706, 34.051003>,  <30.326090, 43.415245, 34.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027178, 43.333706, 34.051003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170644, -0.978736, 0.113827,
		-0.642226, -0.022867, 0.766174,
		-0.747280, -0.203845, -0.632471,
		29.802994, 43.272552, 33.861259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893122, 42.928719, 34.652927>,  <30.326090, 43.415245, 34.303989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893122, 42.928719, 34.652927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815687, 42.903275, 34.261318>,  <29.769226, 42.888008, 34.026352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815687, 42.903275, 34.261318>,  <29.893122, 42.928719, 34.652927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815687, 42.903275, 34.261318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093052, -0.992207, 0.082868,
		-0.976661, 0.107141, 0.186157,
		-0.193585, -0.063611, -0.979019,
		29.757612, 42.884190, 33.967613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324858, 42.413708, 34.674839>,  <29.893122, 42.928719, 34.652927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324858, 42.413708, 34.674839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467152, 42.419514, 34.301048>,  <29.552528, 42.422997, 34.076775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467152, 42.419514, 34.301048>,  <29.324858, 42.413708, 34.674839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467152, 42.419514, 34.301048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063109, -0.997224, -0.039519,
		-0.932454, 0.073031, -0.353831,
		0.355735, 0.014520, -0.934474,
		29.573872, 42.423870, 34.020706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858582, 42.065468, 34.272007>,  <29.324858, 42.413708, 34.674839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858582, 42.065468, 34.272007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185289, 42.056232, 34.041405>,  <29.381313, 42.050690, 33.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185289, 42.056232, 34.041405>,  <28.858582, 42.065468, 34.272007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185289, 42.056232, 34.041405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106891, -0.987957, -0.111873,
		-0.566975, 0.152997, -0.809402,
		0.816770, -0.023089, -0.576501,
		29.430321, 42.049305, 33.868454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565273, 41.738781, 33.752285>,  <28.858582, 42.065468, 34.272007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565273, 41.738781, 33.752285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964211, 41.709934, 33.748199>,  <29.203573, 41.692627, 33.745747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964211, 41.709934, 33.748199>,  <28.565273, 41.738781, 33.752285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964211, 41.709934, 33.748199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072838, -0.988200, -0.134746,
		-0.000378, 0.135132, -0.990828,
		0.997344, -0.072119, -0.010216,
		29.263414, 41.688297, 33.745136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664497, 41.115471, 33.387680>,  <28.565273, 41.738781, 33.752285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664497, 41.115471, 33.387680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033930, 41.142651, 33.538616>,  <29.255589, 41.158958, 33.629177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033930, 41.142651, 33.538616>,  <28.664497, 41.115471, 33.387680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033930, 41.142651, 33.538616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112155, -0.989002, -0.096419,
		0.366638, 0.131371, -0.921042,
		0.923579, 0.067949, 0.377340,
		29.311003, 41.163036, 33.651817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072496, 40.862743, 32.881432>,  <28.664497, 41.115471, 33.387680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072496, 40.862743, 32.881432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265558, 40.841240, 33.231094>,  <29.381395, 40.828339, 33.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265558, 40.841240, 33.231094>,  <29.072496, 40.862743, 32.881432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265558, 40.841240, 33.231094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238657, -0.952269, -0.190330,
		0.842668, 0.300488, -0.446786,
		0.482652, -0.053756, 0.874161,
		29.410355, 40.825111, 33.493343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682972, 40.526085, 32.771599>,  <29.072496, 40.862743, 32.881432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682972, 40.526085, 32.771599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645090, 40.485630, 33.167740>,  <29.622362, 40.461357, 33.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645090, 40.485630, 33.167740>,  <29.682972, 40.526085, 32.771599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645090, 40.485630, 33.167740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215754, -0.973266, -0.078759,
		0.971844, 0.206215, 0.113991,
		-0.094703, -0.101135, 0.990355,
		29.616680, 40.455288, 33.464848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370535, 40.210155, 33.077644>,  <29.682972, 40.526085, 32.771599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370535, 40.210155, 33.077644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061838, 40.128975, 33.318718>,  <29.876621, 40.080265, 33.463364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061838, 40.128975, 33.318718>,  <30.370535, 40.210155, 33.077644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061838, 40.128975, 33.318718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210396, -0.975823, -0.059194,
		0.600125, 0.081120, 0.795782,
		-0.771741, -0.202953, 0.602683,
		29.830317, 40.068089, 33.499523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578175, 39.683670, 33.594841>,  <30.370535, 40.210155, 33.077644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578175, 39.683670, 33.594841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181639, 39.640514, 33.624790>,  <29.943718, 39.614620, 33.642757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181639, 39.640514, 33.624790>,  <30.578175, 39.683670, 33.594841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181639, 39.640514, 33.624790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100997, -0.990771, -0.090399,
		0.083932, -0.082054, 0.993087,
		-0.991340, -0.107887, 0.074870,
		29.884237, 39.608147, 33.647251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462824, 39.128536, 33.916233>,  <30.578175, 39.683670, 33.594841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462824, 39.128536, 33.916233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082832, 39.175270, 33.800381>,  <29.854837, 39.203308, 33.730869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082832, 39.175270, 33.800381>,  <30.462824, 39.128536, 33.916233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082832, 39.175270, 33.800381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116829, -0.993000, -0.017365,
		-0.289634, 0.017341, 0.956980,
		-0.949980, 0.116833, -0.289632,
		29.797838, 39.210320, 33.713490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032822, 38.890976, 34.510002>,  <30.462824, 39.128536, 33.916233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032822, 38.890976, 34.510002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851572, 38.860275, 34.154747>,  <29.742823, 38.841854, 33.941593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851572, 38.860275, 34.154747>,  <30.032822, 38.890976, 34.510002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851572, 38.860275, 34.154747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080816, -0.988647, 0.126674,
		-0.887776, 0.129174, 0.441778,
		-0.453125, -0.076755, -0.888136,
		29.715635, 38.837250, 33.888306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421347, 38.464027, 34.623280>,  <30.032822, 38.890976, 34.510002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421347, 38.464027, 34.623280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462173, 38.447952, 34.225693>,  <29.486670, 38.438305, 33.987141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462173, 38.447952, 34.225693>,  <29.421347, 38.464027, 34.623280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462173, 38.447952, 34.225693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012572, -0.999156, 0.039110,
		-0.994698, 0.008504, -0.102486,
		0.102067, -0.040191, -0.993965,
		29.492794, 38.435894, 33.927502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909494, 37.969353, 34.368183>,  <29.421347, 38.464027, 34.623280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909494, 37.969353, 34.368183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177162, 37.999378, 34.072460>,  <29.337763, 38.017395, 33.895027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177162, 37.999378, 34.072460>,  <28.909494, 37.969353, 34.368183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177162, 37.999378, 34.072460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062903, -0.997036, -0.044297,
		-0.740444, -0.016863, -0.671907,
		0.669169, 0.075065, -0.739310,
		29.377913, 38.021896, 33.850666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913088, 37.306763, 34.104450>,  <28.909494, 37.969353, 34.368183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913088, 37.306763, 34.104450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237530, 37.465195, 33.932297>,  <29.432196, 37.560253, 33.829006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237530, 37.465195, 33.932297>,  <28.913088, 37.306763, 34.104450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237530, 37.465195, 33.932297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300540, -0.913485, -0.274265,
		-0.501778, 0.093111, -0.859970,
		0.811107, 0.396075, -0.430384,
		29.480862, 37.584019, 33.803181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000641, 37.050537, 33.367573>,  <28.913088, 37.306763, 34.104450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000641, 37.050537, 33.367573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336123, 37.160194, 33.555794>,  <29.537411, 37.225990, 33.668728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336123, 37.160194, 33.555794>,  <29.000641, 37.050537, 33.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336123, 37.160194, 33.555794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394102, -0.901860, -0.177009,
		0.375847, 0.333904, -0.864434,
		0.838703, 0.274147, 0.470554,
		29.587734, 37.242439, 33.696960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433634, 36.617771, 33.008099>,  <29.000641, 37.050537, 33.367573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433634, 36.617771, 33.008099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635017, 36.756618, 33.324589>,  <29.755848, 36.839928, 33.514484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635017, 36.756618, 33.324589>,  <29.433634, 36.617771, 33.008099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635017, 36.756618, 33.324589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502788, -0.862432, 0.058432,
		0.702660, 0.368400, -0.608728,
		0.503461, 0.347119, 0.791224,
		29.786057, 36.860756, 33.561954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105457, 36.344799, 32.959358>,  <29.433634, 36.617771, 33.008099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105457, 36.344799, 32.959358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074469, 36.436993, 33.347355>,  <30.055876, 36.492310, 33.580151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074469, 36.436993, 33.347355>,  <30.105457, 36.344799, 32.959358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074469, 36.436993, 33.347355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474891, -0.846922, 0.239168,
		0.876628, 0.479167, -0.043843,
		-0.077470, 0.230482, 0.969988,
		30.051228, 36.506138, 33.638351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788349, 36.259838, 33.220566>,  <30.105457, 36.344799, 32.959358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788349, 36.259838, 33.220566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515432, 36.221050, 33.510414>,  <30.351683, 36.197777, 33.684322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515432, 36.221050, 33.510414>,  <30.788349, 36.259838, 33.220566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515432, 36.221050, 33.510414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316483, -0.932654, 0.173189,
		0.659029, 0.347496, 0.667029,
		-0.682290, -0.096967, 0.724622,
		30.310745, 36.191959, 33.727802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165661, 36.149139, 33.885616>,  <30.788349, 36.259838, 33.220566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165661, 36.149139, 33.885616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796936, 35.994373, 33.895096>,  <30.575701, 35.901512, 33.900784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796936, 35.994373, 33.895096>,  <31.165661, 36.149139, 33.885616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796936, 35.994373, 33.895096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387149, -0.915844, 0.106510,
		-0.019508, 0.107356, 0.994029,
		-0.921811, -0.386916, 0.023696,
		30.520393, 35.878300, 33.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341955, 35.402481, 33.857971>,  <31.165661, 36.149139, 33.885616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341955, 35.402481, 33.857971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941988, 35.397388, 33.858433>,  <30.702007, 35.394333, 33.858707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941988, 35.397388, 33.858433>,  <31.341955, 35.402481, 33.857971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941988, 35.397388, 33.858433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012749, -0.999809, 0.014791,
		0.000962, 0.014805, 0.999890,
		-0.999918, -0.012734, 0.001151,
		30.642012, 35.393570, 33.858776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208153, 34.742008, 34.106277>,  <31.341955, 35.402481, 33.857971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208153, 34.742008, 34.106277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850479, 34.856201, 33.968330>,  <30.635876, 34.924717, 33.885563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850479, 34.856201, 33.968330>,  <31.208153, 34.742008, 34.106277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850479, 34.856201, 33.968330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318669, -0.946918, 0.042392,
		-0.314463, 0.147806, 0.937692,
		-0.894183, 0.285483, -0.344872,
		30.582224, 34.941845, 33.864868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902094, 34.490173, 34.004097>,  <31.208153, 34.742008, 34.106277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902094, 34.490173, 34.004097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267513, 34.650188, 34.033501>,  <32.486763, 34.746197, 34.051144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267513, 34.650188, 34.033501>,  <31.902094, 34.490173, 34.004097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267513, 34.650188, 34.033501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367667, 0.734911, 0.569848,
		0.173934, -0.547611, 0.818455,
		0.913547, 0.400035, 0.073513,
		32.541576, 34.770199, 34.055553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246078, 34.591614, 34.720638>,  <31.902094, 34.490173, 34.004097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246078, 34.591614, 34.720638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329651, 34.860611, 34.436638>,  <32.379795, 35.022011, 34.266239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329651, 34.860611, 34.436638>,  <32.246078, 34.591614, 34.720638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329651, 34.860611, 34.436638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464017, 0.707262, 0.533355,
		0.860833, 0.218015, 0.459821,
		0.208935, 0.672495, -0.709998,
		32.392330, 35.062359, 34.223640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703106, 35.201004, 34.983124>,  <32.246078, 34.591614, 34.720638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703106, 35.201004, 34.983124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485821, 35.314159, 34.666920>,  <32.355450, 35.382053, 34.477200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485821, 35.314159, 34.666920>,  <32.703106, 35.201004, 34.983124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485821, 35.314159, 34.666920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500333, 0.647021, 0.575352,
		0.674234, 0.708052, -0.209930,
		-0.543208, 0.282887, -0.790506,
		32.322857, 35.399025, 34.429768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863754, 35.971588, 34.777473>,  <32.703106, 35.201004, 34.983124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863754, 35.971588, 34.777473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504097, 35.824921, 34.681889>,  <32.288303, 35.736919, 34.624538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504097, 35.824921, 34.681889>,  <32.863754, 35.971588, 34.777473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504097, 35.824921, 34.681889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424990, 0.601054, 0.676844,
		-0.104550, 0.710132, -0.696262,
		-0.899140, -0.366669, -0.238959,
		32.234356, 35.714920, 34.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177502, 36.245049, 35.347839>,  <32.863754, 35.971588, 34.777473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177502, 36.245049, 35.347839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534958, 36.065708, 35.355827>,  <33.749432, 35.958103, 35.360619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534958, 36.065708, 35.355827>,  <33.177502, 36.245049, 35.347839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534958, 36.065708, 35.355827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192992, 0.424075, 0.884824,
		-0.405177, -0.786857, 0.465496,
		0.893636, -0.448348, 0.019968,
		33.803047, 35.931206, 35.361816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243961, 35.900883, 36.018555>,  <33.177502, 36.245049, 35.347839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243961, 35.900883, 36.018555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618038, 35.890194, 35.877304>,  <33.842484, 35.883781, 35.792553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618038, 35.890194, 35.877304>,  <33.243961, 35.900883, 36.018555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618038, 35.890194, 35.877304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350995, -0.062499, 0.934289,
		-0.047039, -0.997687, -0.049069,
		0.935195, -0.026726, -0.353123,
		33.898598, 35.882175, 35.771366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515266, 35.333069, 36.411755>,  <33.243961, 35.900883, 36.018555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515266, 35.333069, 36.411755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833225, 35.542015, 36.288292>,  <34.024002, 35.667385, 36.214214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833225, 35.542015, 36.288292>,  <33.515266, 35.333069, 36.411755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833225, 35.542015, 36.288292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377029, -0.026676, 0.925818,
		0.475385, -0.852302, -0.218153,
		0.794896, 0.522369, -0.308661,
		34.071693, 35.698727, 36.195694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127026, 35.035553, 36.705009>,  <33.515266, 35.333069, 36.411755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127026, 35.035553, 36.705009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226910, 35.410480, 36.607788>,  <34.286839, 35.635437, 36.549454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226910, 35.410480, 36.607788>,  <34.127026, 35.035553, 36.705009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226910, 35.410480, 36.607788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326569, 0.154783, 0.932413,
		0.911591, -0.312205, -0.267449,
		0.249708, 0.937321, -0.243055,
		34.301823, 35.691677, 36.534870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738258, 35.189407, 37.105652>,  <34.127026, 35.035553, 36.705009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738258, 35.189407, 37.105652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599251, 35.547306, 36.993462>,  <34.515846, 35.762043, 36.926147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599251, 35.547306, 36.993462>,  <34.738258, 35.189407, 37.105652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599251, 35.547306, 36.993462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266232, 0.380961, 0.885431,
		0.899084, 0.233030, -0.370599,
		-0.347516, 0.894743, -0.280476,
		34.494995, 35.815727, 36.909317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265968, 35.851337, 37.251316>,  <34.738258, 35.189407, 37.105652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265968, 35.851337, 37.251316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882572, 35.962482, 37.225723>,  <34.652534, 36.029167, 37.210369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882572, 35.962482, 37.225723>,  <35.265968, 35.851337, 37.251316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882572, 35.962482, 37.225723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041937, 0.359328, 0.932269,
		0.282030, 0.890886, -0.356064,
		-0.958488, 0.277860, -0.063980,
		34.595024, 36.045841, 37.206528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403641, 36.572250, 37.343269>,  <35.265968, 35.851337, 37.251316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403641, 36.572250, 37.343269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021107, 36.482609, 37.418324>,  <34.791588, 36.428825, 37.463356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021107, 36.482609, 37.418324>,  <35.403641, 36.572250, 37.343269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021107, 36.482609, 37.418324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090129, 0.384586, 0.918678,
		-0.278042, 0.895473, -0.347594,
		-0.956331, -0.224103, 0.187639,
		34.734207, 36.415379, 37.474617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065922, 37.190235, 37.703091>,  <35.403641, 36.572250, 37.343269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065922, 37.190235, 37.703091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793663, 36.905384, 37.771900>,  <34.630310, 36.734474, 37.813187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793663, 36.905384, 37.771900>,  <35.065922, 37.190235, 37.703091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793663, 36.905384, 37.771900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082967, 0.308227, 0.947688,
		-0.727900, 0.630766, -0.268876,
		-0.680645, -0.712130, 0.172026,
		34.589470, 36.691746, 37.823509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420975, 37.543659, 37.982052>,  <35.065922, 37.190235, 37.703091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420975, 37.543659, 37.982052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452129, 37.160866, 38.093845>,  <34.470821, 36.931190, 38.160923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452129, 37.160866, 38.093845>,  <34.420975, 37.543659, 37.982052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452129, 37.160866, 38.093845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139451, 0.267120, 0.953520,
		-0.987161, -0.113244, -0.112647,
		0.077891, -0.956986, 0.279483,
		34.475498, 36.873772, 38.177689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936943, 37.421761, 38.354324>,  <34.420975, 37.543659, 37.982052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936943, 37.421761, 38.354324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181179, 37.122421, 38.457973>,  <34.327721, 36.942818, 38.520161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181179, 37.122421, 38.457973>,  <33.936943, 37.421761, 38.354324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181179, 37.122421, 38.457973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256982, 0.122261, 0.958651,
		-0.749090, -0.651936, -0.117661,
		0.610594, -0.748353, 0.259120,
		34.364357, 36.897915, 38.535709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544464, 37.065498, 38.750217>,  <33.936943, 37.421761, 38.354324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544464, 37.065498, 38.750217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913998, 36.961338, 38.862442>,  <34.135719, 36.898842, 38.929775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913998, 36.961338, 38.862442>,  <33.544464, 37.065498, 38.750217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913998, 36.961338, 38.862442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305841, -0.061388, 0.950101,
		-0.230188, -0.963546, -0.136355,
		0.923837, -0.260405, 0.280562,
		34.191151, 36.883217, 38.946609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375763, 36.506992, 39.169544>,  <33.544464, 37.065498, 38.750217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375763, 36.506992, 39.169544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752399, 36.589054, 39.276360>,  <33.978382, 36.638290, 39.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752399, 36.589054, 39.276360>,  <33.375763, 36.506992, 39.169544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752399, 36.589054, 39.276360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209884, -0.262607, 0.941800,
		0.263339, -0.942842, -0.204212,
		0.941595, 0.205152, 0.267042,
		34.034878, 36.650600, 39.356472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573753, 35.946556, 39.590141>,  <33.375763, 36.506992, 39.169544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573753, 35.946556, 39.590141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817776, 36.245762, 39.694679>,  <33.964188, 36.425285, 39.757404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817776, 36.245762, 39.694679>,  <33.573753, 35.946556, 39.590141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817776, 36.245762, 39.694679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154411, -0.211280, 0.965152,
		0.777168, -0.629151, -0.013390,
		0.610055, 0.748017, 0.261348,
		34.000793, 36.470165, 39.773083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022606, 35.678478, 39.952877>,  <33.573753, 35.946556, 39.590141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022606, 35.678478, 39.952877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062969, 36.058723, 40.070282>,  <34.087189, 36.286873, 40.140724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062969, 36.058723, 40.070282>,  <34.022606, 35.678478, 39.952877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062969, 36.058723, 40.070282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108536, -0.282737, 0.953037,
		0.988958, -0.128027, 0.074645,
		0.100910, 0.950615, 0.293510,
		34.093243, 36.343906, 40.158337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528694, 35.730568, 40.542450>,  <34.022606, 35.678478, 39.952877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528694, 35.730568, 40.542450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286617, 36.047291, 40.575413>,  <34.141373, 36.237324, 40.595192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286617, 36.047291, 40.575413>,  <34.528694, 35.730568, 40.542450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286617, 36.047291, 40.575413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003955, -0.100523, 0.994927,
		0.796073, 0.602443, 0.057704,
		-0.605188, 0.791806, 0.082406,
		34.105061, 36.284832, 40.600136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612350, 35.939320, 41.211739>,  <34.528694, 35.730568, 40.542450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612350, 35.939320, 41.211739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333103, 36.214062, 41.130890>,  <34.165554, 36.378906, 41.082378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333103, 36.214062, 41.130890>,  <34.612350, 35.939320, 41.211739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333103, 36.214062, 41.130890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095008, 0.190937, 0.976994,
		0.709650, 0.701261, -0.068039,
		-0.698119, 0.686860, -0.202124,
		34.123669, 36.420120, 41.070251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759365, 36.532139, 41.630737>,  <34.612350, 35.939320, 41.211739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759365, 36.532139, 41.630737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374737, 36.564125, 41.525681>,  <34.143959, 36.583317, 41.462646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374737, 36.564125, 41.525681>,  <34.759365, 36.532139, 41.630737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374737, 36.564125, 41.525681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254486, 0.099361, 0.961958,
		0.103024, 0.991833, -0.075192,
		-0.961573, 0.079969, -0.262644,
		34.086266, 36.588116, 41.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528675, 37.183277, 41.813732>,  <34.759365, 36.532139, 41.630737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528675, 37.183277, 41.813732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195744, 36.961979, 41.827290>,  <33.995983, 36.829201, 41.835426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195744, 36.961979, 41.827290>,  <34.528675, 37.183277, 41.813732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195744, 36.961979, 41.827290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118323, 0.237090, 0.964255,
		-0.541504, 0.798568, -0.262798,
		-0.832330, -0.553243, 0.033896,
		33.946045, 36.796005, 41.837460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945328, 37.655853, 41.983826>,  <34.528675, 37.183277, 41.813732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945328, 37.655853, 41.983826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852844, 37.276085, 42.068813>,  <33.797356, 37.048225, 42.119804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852844, 37.276085, 42.068813>,  <33.945328, 37.655853, 41.983826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852844, 37.276085, 42.068813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136243, 0.247826, 0.959177,
		-0.963318, 0.192821, -0.186651,
		-0.231206, -0.949422, 0.212465,
		33.783482, 36.991257, 42.132553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165291, 37.638821, 42.253872>,  <33.945328, 37.655853, 41.983826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165291, 37.638821, 42.253872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354595, 37.318607, 42.400936>,  <33.468178, 37.126480, 42.489174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354595, 37.318607, 42.400936>,  <33.165291, 37.638821, 42.253872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354595, 37.318607, 42.400936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449655, 0.139370, 0.882262,
		-0.757522, -0.582856, -0.294006,
		0.473256, -0.800534, 0.367660,
		33.496571, 37.078445, 42.511234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607891, 37.295689, 42.677753>,  <33.165291, 37.638821, 42.253872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607891, 37.295689, 42.677753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956009, 37.140244, 42.798798>,  <33.164879, 37.046978, 42.871426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956009, 37.140244, 42.798798>,  <32.607891, 37.295689, 42.677753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956009, 37.140244, 42.798798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278117, 0.119336, 0.953105,
		-0.406500, -0.913641, -0.004223,
		0.870292, -0.388612, 0.302609,
		33.217098, 37.023659, 42.889580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432041, 36.893898, 43.151337>,  <32.607891, 37.295689, 42.677753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432041, 36.893898, 43.151337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823219, 36.938015, 43.222279>,  <33.057926, 36.964485, 43.264843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823219, 36.938015, 43.222279>,  <32.432041, 36.893898, 43.151337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823219, 36.938015, 43.222279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170796, -0.066359, 0.983069,
		0.120193, -0.991682, -0.046059,
		0.977948, 0.110291, 0.177351,
		33.116604, 36.971104, 43.275482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623081, 36.422546, 43.703819>,  <32.432041, 36.893898, 43.151337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623081, 36.422546, 43.703819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901047, 36.710163, 43.700508>,  <33.067825, 36.882732, 43.698521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901047, 36.710163, 43.700508>,  <32.623081, 36.422546, 43.703819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901047, 36.710163, 43.700508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102645, 0.110578, 0.988553,
		0.711726, -0.686113, 0.150649,
		0.694918, 0.719042, -0.008275,
		33.109524, 36.925877, 43.698025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026676, 36.268677, 44.283520>,  <32.623081, 36.422546, 43.703819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026676, 36.268677, 44.283520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068092, 36.656925, 44.196644>,  <33.092941, 36.889874, 44.144520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068092, 36.656925, 44.196644>,  <33.026676, 36.268677, 44.283520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068092, 36.656925, 44.196644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074526, 0.225322, 0.971430,
		0.991829, -0.084394, 0.095666,
		0.103538, 0.970622, -0.217191,
		33.099155, 36.948112, 44.131485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447334, 36.593967, 44.798046>,  <33.026676, 36.268677, 44.283520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447334, 36.593967, 44.798046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264133, 36.908329, 44.631870>,  <33.154213, 37.096947, 44.532166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264133, 36.908329, 44.631870>,  <33.447334, 36.593967, 44.798046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264133, 36.908329, 44.631870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081377, 0.428304, 0.899963,
		0.885217, 0.445995, -0.132212,
		-0.458006, 0.785903, -0.415435,
		33.126732, 37.144100, 44.507240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765293, 37.218731, 45.136517>,  <33.447334, 36.593967, 44.798046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765293, 37.218731, 45.136517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428238, 37.357124, 44.971466>,  <33.226006, 37.440159, 44.872437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428238, 37.357124, 44.971466>,  <33.765293, 37.218731, 45.136517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428238, 37.357124, 44.971466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187958, 0.529106, 0.827477,
		0.504615, 0.774819, -0.380814,
		-0.842636, 0.345981, -0.412628,
		33.175446, 37.460918, 44.847679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815449, 37.866287, 45.294445>,  <33.765293, 37.218731, 45.136517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815449, 37.866287, 45.294445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428356, 37.787468, 45.231628>,  <33.196098, 37.740177, 45.193939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428356, 37.787468, 45.231628>,  <33.815449, 37.866287, 45.294445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428356, 37.787468, 45.231628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228825, 0.426370, 0.875127,
		-0.105483, 0.882826, -0.457703,
		-0.967736, -0.197045, -0.157037,
		33.138035, 37.728355, 45.184517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480011, 38.539536, 45.364372>,  <33.815449, 37.866287, 45.294445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480011, 38.539536, 45.364372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197876, 38.258110, 45.398998>,  <33.028595, 38.089256, 45.419773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197876, 38.258110, 45.398998>,  <33.480011, 38.539536, 45.364372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197876, 38.258110, 45.398998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345648, 0.447970, 0.824530,
		-0.618890, 0.551651, -0.559156,
		-0.705339, -0.703565, 0.086567,
		32.986275, 38.047039, 45.424969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836441, 38.897820, 45.521469>,  <33.480011, 38.539536, 45.364372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836441, 38.897820, 45.521469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758156, 38.531883, 45.662762>,  <32.711185, 38.312321, 45.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758156, 38.531883, 45.662762>,  <32.836441, 38.897820, 45.521469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758156, 38.531883, 45.662762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431373, 0.403785, 0.806769,
		-0.880690, 0.005519, -0.473661,
		-0.195710, -0.914837, 0.353228,
		32.699444, 38.257431, 45.768730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139633, 38.891933, 45.775478>,  <32.836441, 38.897820, 45.521469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139633, 38.891933, 45.775478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264931, 38.552532, 45.946083>,  <32.340107, 38.348892, 46.048447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264931, 38.552532, 45.946083>,  <32.139633, 38.891933, 45.775478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264931, 38.552532, 45.946083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652357, 0.134135, 0.745948,
		-0.690153, -0.511902, -0.511513,
		0.313240, -0.848507, 0.426516,
		32.358902, 38.297981, 46.074039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603590, 38.558018, 46.006203>,  <32.139633, 38.891933, 45.775478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603590, 38.558018, 46.006203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890488, 38.401150, 46.236595>,  <32.062626, 38.307030, 46.374832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890488, 38.401150, 46.236595>,  <31.603590, 38.558018, 46.006203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890488, 38.401150, 46.236595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484115, 0.314081, 0.816692,
		-0.501190, -0.864612, 0.035417,
		0.717246, -0.392172, 0.575986,
		32.105663, 38.283497, 46.409389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225283, 38.334820, 46.581921>,  <31.603590, 38.558018, 46.006203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225283, 38.334820, 46.581921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608688, 38.337296, 46.695911>,  <31.838732, 38.338783, 46.764305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608688, 38.337296, 46.695911>,  <31.225283, 38.334820, 46.581921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608688, 38.337296, 46.695911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264376, 0.393085, 0.880675,
		-0.106570, -0.919481, 0.378414,
		0.958514, 0.006191, 0.284980,
		31.896242, 38.339153, 46.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210386, 38.022034, 47.273403>,  <31.225283, 38.334820, 46.581921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210386, 38.022034, 47.273403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521862, 38.268902, 47.228249>,  <31.708748, 38.417023, 47.201157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521862, 38.268902, 47.228249>,  <31.210386, 38.022034, 47.273403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521862, 38.268902, 47.228249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269594, 0.491601, 0.828039,
		0.566536, -0.614351, 0.549189,
		0.778688, 0.617172, -0.112884,
		31.755468, 38.454052, 47.194386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499132, 37.974701, 47.907589>,  <31.210386, 38.022034, 47.273403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499132, 37.974701, 47.907589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588173, 38.325623, 47.737514>,  <31.641598, 38.536175, 47.635471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588173, 38.325623, 47.737514>,  <31.499132, 37.974701, 47.907589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588173, 38.325623, 47.737514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452033, 0.479290, 0.752294,
		0.863780, 0.024736, 0.503262,
		0.222600, 0.877308, -0.425183,
		31.654953, 38.588814, 47.609959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936901, 38.140434, 48.361080>,  <31.499132, 37.974701, 47.907589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936901, 38.140434, 48.361080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743986, 38.423923, 48.155125>,  <31.628237, 38.594017, 48.031551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743986, 38.423923, 48.155125>,  <31.936901, 38.140434, 48.361080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743986, 38.423923, 48.155125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286370, 0.427913, 0.857253,
		0.827884, 0.560890, -0.003418,
		-0.482287, 0.708727, -0.514884,
		31.599300, 38.636543, 48.000660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078442, 38.755753, 48.802216>,  <31.936901, 38.140434, 48.361080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078442, 38.755753, 48.802216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765272, 38.831913, 48.565308>,  <31.577372, 38.877609, 48.423164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765272, 38.831913, 48.565308>,  <32.078442, 38.755753, 48.802216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765272, 38.831913, 48.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534903, 0.280104, 0.797133,
		0.317674, 0.940897, -0.117451,
		-0.782919, 0.190403, -0.592270,
		31.530396, 38.889034, 48.387627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660595, 39.304680, 49.215496>,  <32.078442, 38.755753, 48.802216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660595, 39.304680, 49.215496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403170, 39.173630, 48.938805>,  <31.248714, 39.095001, 48.772789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403170, 39.173630, 48.938805>,  <31.660595, 39.304680, 49.215496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403170, 39.173630, 48.938805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765307, 0.261731, 0.588050,
		-0.011612, 0.907832, -0.419173,
		-0.643561, -0.327624, -0.691731,
		31.210102, 39.075344, 48.731285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146709, 39.893936, 49.184319>,  <31.660595, 39.304680, 49.215496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146709, 39.893936, 49.184319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998688, 39.554760, 49.032501>,  <30.909876, 39.351254, 48.941410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998688, 39.554760, 49.032501>,  <31.146709, 39.893936, 49.184319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998688, 39.554760, 49.032501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728365, 0.011212, 0.685098,
		-0.576667, 0.529971, -0.621760,
		-0.370053, -0.847942, -0.379547,
		30.887672, 39.300377, 48.918636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384207, 39.898098, 49.094677>,  <31.146709, 39.893936, 49.184319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384207, 39.898098, 49.094677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491072, 39.515305, 49.139961>,  <30.555191, 39.285629, 49.167130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491072, 39.515305, 49.139961>,  <30.384207, 39.898098, 49.094677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491072, 39.515305, 49.139961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728838, -0.123809, 0.673399,
		-0.630413, -0.262416, -0.730560,
		0.267160, -0.956979, 0.113209,
		30.571220, 39.228210, 49.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807451, 39.360210, 49.091690>,  <30.384207, 39.898098, 49.094677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807451, 39.360210, 49.091690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097038, 39.191933, 49.310371>,  <30.270790, 39.090965, 49.441582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097038, 39.191933, 49.310371>,  <29.807451, 39.360210, 49.091690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097038, 39.191933, 49.310371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630478, -0.081901, 0.771874,
		-0.279949, -0.903497, -0.324534,
		0.723966, -0.420697, 0.546706,
		30.314228, 39.065723, 49.474384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587221, 38.724617, 49.468624>,  <29.807451, 39.360210, 49.091690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587221, 38.724617, 49.468624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875463, 38.907497, 49.677124>,  <30.048409, 39.017223, 49.802223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875463, 38.907497, 49.677124>,  <29.587221, 38.724617, 49.468624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875463, 38.907497, 49.677124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599461, 0.033078, 0.799720,
		0.348389, -0.888750, 0.297908,
		0.720605, 0.457197, 0.521247,
		30.091644, 39.044655, 49.833500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900780, 38.354431, 50.221592>,  <29.587221, 38.724617, 49.468624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900780, 38.354431, 50.221592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865707, 38.747513, 50.156342>,  <29.844664, 38.983360, 50.117191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865707, 38.747513, 50.156342>,  <29.900780, 38.354431, 50.221592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865707, 38.747513, 50.156342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791779, 0.030622, 0.610040,
		0.604482, 0.182651, 0.775397,
		-0.087680, 0.982701, -0.163130,
		29.839403, 39.042324, 50.107403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926163, 38.554581, 50.848259>,  <29.900780, 38.354431, 50.221592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926163, 38.554581, 50.848259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712687, 38.778206, 50.594452>,  <29.584600, 38.912380, 50.442165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712687, 38.778206, 50.594452>,  <29.926163, 38.554581, 50.848259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712687, 38.778206, 50.594452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777425, -0.029031, 0.628306,
		0.332844, 0.828614, 0.450126,
		-0.533690, 0.559067, -0.634522,
		29.552580, 38.945927, 50.404095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044800, 39.286278, 50.741001>,  <29.926163, 38.554581, 50.848259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044800, 39.286278, 50.741001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254850, 39.025543, 50.959854>,  <30.380880, 38.869102, 51.091164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254850, 39.025543, 50.959854>,  <30.044800, 39.286278, 50.741001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254850, 39.025543, 50.959854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787711, 0.128956, -0.602397,
		0.322110, 0.747313, 0.581178,
		0.525126, -0.651838, 0.547129,
		30.412388, 38.829990, 51.123993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690207, 39.558628, 50.911224>,  <30.044800, 39.286278, 50.741001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690207, 39.558628, 50.911224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677364, 39.163010, 50.853596>,  <30.669659, 38.925640, 50.819019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677364, 39.163010, 50.853596>,  <30.690207, 39.558628, 50.911224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677364, 39.163010, 50.853596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608774, 0.094974, -0.787638,
		0.792694, -0.112995, 0.599056,
		-0.032104, -0.989046, -0.144074,
		30.667732, 38.866295, 50.810375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373573, 39.302750, 50.951839>,  <30.690207, 39.558628, 50.911224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373573, 39.302750, 50.951839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147272, 39.094700, 50.695904>,  <31.011492, 38.969868, 50.542343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147272, 39.094700, 50.695904>,  <31.373573, 39.302750, 50.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147272, 39.094700, 50.695904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729073, 0.046954, -0.682823,
		0.385198, -0.852797, 0.352647,
		-0.565751, -0.520128, -0.639838,
		30.977547, 38.938660, 50.503952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708248, 38.665092, 50.720924>,  <31.373573, 39.302750, 50.951839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708248, 38.665092, 50.720924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458082, 38.803715, 50.441280>,  <31.307983, 38.886887, 50.273495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458082, 38.803715, 50.441280>,  <31.708248, 38.665092, 50.720924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458082, 38.803715, 50.441280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722611, -0.080840, -0.686511,
		-0.294429, -0.934540, -0.199865,
		-0.625415, 0.346554, -0.699111,
		31.270458, 38.907681, 50.231548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792431, 38.120094, 50.186405>,  <31.708248, 38.665092, 50.720924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792431, 38.120094, 50.186405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727051, 38.477367, 50.018829>,  <31.687822, 38.691730, 49.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727051, 38.477367, 50.018829>,  <31.792431, 38.120094, 50.186405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727051, 38.477367, 50.018829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928994, -0.003576, -0.370077,
		-0.332045, -0.449682, -0.829176,
		-0.163452, 0.893182, -0.418940,
		31.678015, 38.745323, 49.893147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887182, 37.463974, 50.625427>,  <31.792431, 38.120094, 50.186405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887182, 37.463974, 50.625427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565046, 37.250919, 50.729527>,  <31.371765, 37.123089, 50.791985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565046, 37.250919, 50.729527>,  <31.887182, 37.463974, 50.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565046, 37.250919, 50.729527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287680, -0.734989, -0.614029,
		0.518330, -0.419636, 0.745144,
		-0.805341, -0.532633, 0.260246,
		31.323444, 37.091129, 50.807602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954809, 37.046818, 49.977283>,  <31.887182, 37.463974, 50.625427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954809, 37.046818, 49.977283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602488, 36.872040, 50.050240>,  <31.391094, 36.767174, 50.094013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602488, 36.872040, 50.050240>,  <31.954809, 37.046818, 49.977283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602488, 36.872040, 50.050240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135118, -0.601148, -0.787632,
		0.453796, -0.669104, 0.588531,
		-0.880802, -0.436945, 0.182391,
		31.338247, 36.740955, 50.104958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964436, 36.299946, 50.004337>,  <31.954809, 37.046818, 49.977283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964436, 36.299946, 50.004337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601612, 36.383732, 49.858257>,  <31.383919, 36.434002, 49.770611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601612, 36.383732, 49.858257>,  <31.964436, 36.299946, 50.004337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601612, 36.383732, 49.858257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191366, -0.567525, -0.800809,
		-0.374997, -0.796268, 0.474695,
		-0.907059, 0.209460, -0.365199,
		31.329494, 36.446571, 49.748699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534534, 35.707733, 49.834888>,  <31.964436, 36.299946, 50.004337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534534, 35.707733, 49.834888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423555, 36.012722, 49.601082>,  <31.356968, 36.195717, 49.460800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423555, 36.012722, 49.601082>,  <31.534534, 35.707733, 49.834888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423555, 36.012722, 49.601082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166605, -0.560998, -0.810879,
		-0.946185, -0.322359, 0.028615,
		-0.277447, 0.762474, -0.584514,
		31.340321, 36.241463, 49.425728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999659, 35.542801, 49.182858>,  <31.534534, 35.707733, 49.834888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999659, 35.542801, 49.182858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223991, 35.865517, 49.108498>,  <31.358591, 36.059147, 49.063881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.223991, 35.865517, 49.108498>,  <30.999659, 35.542801, 49.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223991, 35.865517, 49.108498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202633, -0.351469, -0.914007,
		-0.802749, 0.474935, -0.360598,
		0.560833, 0.806787, -0.185904,
		31.392241, 36.107552, 49.052727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754004, 35.919567, 48.606258>,  <30.999659, 35.542801, 49.182858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754004, 35.919567, 48.606258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133242, 36.043945, 48.632877>,  <31.360785, 36.118572, 48.648849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133242, 36.043945, 48.632877>,  <30.754004, 35.919567, 48.606258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133242, 36.043945, 48.632877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152009, -0.259359, -0.953743,
		-0.279301, 0.914355, -0.293164,
		0.948095, 0.310945, 0.066551,
		31.417669, 36.137230, 48.652843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934271, 36.227951, 47.923370>,  <30.754004, 35.919567, 48.606258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934271, 36.227951, 47.923370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294998, 36.163643, 48.083809>,  <31.511435, 36.125057, 48.180073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294998, 36.163643, 48.083809>,  <30.934271, 36.227951, 47.923370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294998, 36.163643, 48.083809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325185, -0.358786, -0.874944,
		0.284569, 0.919471, -0.271281,
		0.901818, -0.160766, 0.401097,
		31.565544, 36.115414, 48.204140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358622, 36.592117, 47.478249>,  <30.934271, 36.227951, 47.923370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358622, 36.592117, 47.478249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574886, 36.315979, 47.670544>,  <31.704645, 36.150295, 47.785923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574886, 36.315979, 47.670544>,  <31.358622, 36.592117, 47.478249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574886, 36.315979, 47.670544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451032, -0.244509, -0.858362,
		0.710110, 0.680913, 0.179170,
		0.540661, -0.690343, 0.480742,
		31.737085, 36.108875, 47.814766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175549, 36.732605, 47.332256>,  <31.358622, 36.592117, 47.478249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175549, 36.732605, 47.332256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142979, 36.357052, 47.466042>,  <32.123436, 36.131718, 47.546314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142979, 36.357052, 47.466042>,  <32.175549, 36.732605, 47.332256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142979, 36.357052, 47.466042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531634, -0.324765, -0.782236,
		0.843051, 0.114116, 0.525588,
		-0.081427, -0.938885, 0.334462,
		32.118549, 36.075386, 47.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841900, 36.423729, 47.166088>,  <32.175549, 36.732605, 47.332256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841900, 36.423729, 47.166088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614506, 36.101086, 47.230839>,  <32.478069, 35.907497, 47.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614506, 36.101086, 47.230839>,  <32.841900, 36.423729, 47.166088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614506, 36.101086, 47.230839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372192, -0.427631, -0.823775,
		0.733689, -0.408055, 0.543316,
		-0.568484, -0.806612, 0.161873,
		32.443962, 35.859100, 47.279400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240791, 35.821796, 47.011845>,  <32.841900, 36.423729, 47.166088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240791, 35.821796, 47.011845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877460, 35.656620, 46.985256>,  <32.659462, 35.557514, 46.969303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877460, 35.656620, 46.985256>,  <33.240791, 35.821796, 47.011845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877460, 35.656620, 46.985256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298517, -0.528740, -0.794557,
		0.292956, -0.741563, 0.603540,
		-0.908330, -0.412938, -0.066472,
		32.604961, 35.532738, 46.965313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325703, 35.081436, 46.923988>,  <33.240791, 35.821796, 47.011845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325703, 35.081436, 46.923988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951668, 35.125916, 46.789383>,  <32.727245, 35.152603, 46.708622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951668, 35.125916, 46.789383>,  <33.325703, 35.081436, 46.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951668, 35.125916, 46.789383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198243, -0.622942, -0.756731,
		-0.293777, -0.774323, 0.560462,
		-0.935091, 0.111202, -0.336510,
		32.671139, 35.159275, 46.688431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905422, 34.319309, 46.824760>,  <33.325703, 35.081436, 46.923988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905422, 34.319309, 46.824760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715420, 34.595871, 46.607018>,  <32.601418, 34.761810, 46.476372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715420, 34.595871, 46.607018>,  <32.905422, 34.319309, 46.824760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715420, 34.595871, 46.607018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244500, -0.490552, -0.836409,
		-0.845336, -0.530393, 0.063964,
		-0.475003, 0.691406, -0.544361,
		32.572918, 34.803291, 46.443710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865803, 33.962566, 46.348316>,  <32.905422, 34.319309, 46.824760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865803, 33.962566, 46.348316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753315, 34.296093, 46.158295>,  <32.685822, 34.496208, 46.044281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753315, 34.296093, 46.158295>,  <32.865803, 33.962566, 46.348316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753315, 34.296093, 46.158295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358597, -0.367864, -0.857954,
		-0.890127, -0.411622, -0.195553,
		-0.281216, 0.833812, -0.475052,
		32.668949, 34.546238, 46.015778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457165, 33.750332, 45.765591>,  <32.865803, 33.962566, 46.348316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457165, 33.750332, 45.765591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618587, 34.107231, 45.684555>,  <32.715443, 34.321369, 45.635933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618587, 34.107231, 45.684555>,  <32.457165, 33.750332, 45.765591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618587, 34.107231, 45.684555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327007, -0.347447, -0.878833,
		-0.854522, 0.288412, -0.431985,
		0.403558, 0.892244, -0.202588,
		32.739655, 34.374905, 45.623779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245586, 33.862686, 45.096424>,  <32.457165, 33.750332, 45.765591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245586, 33.862686, 45.096424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575611, 34.081333, 45.153679>,  <32.773624, 34.212521, 45.188030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575611, 34.081333, 45.153679>,  <32.245586, 33.862686, 45.096424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575611, 34.081333, 45.153679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287303, -0.187699, -0.939269,
		-0.486556, 0.816074, -0.311908,
		0.825058, 0.546619, 0.143135,
		32.823128, 34.245319, 45.196621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256527, 34.330502, 44.514297>,  <32.245586, 33.862686, 45.096424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256527, 34.330502, 44.514297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632004, 34.327213, 44.652157>,  <32.857292, 34.325241, 44.734875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632004, 34.327213, 44.652157>,  <32.256527, 34.330502, 44.514297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632004, 34.327213, 44.652157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344701, 0.005737, -0.938695,
		0.005737, 0.999950, 0.008219,
		0.938695, -0.008219, 0.344651,
		32.913612, 34.324749, 44.755550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624207, 34.729191, 44.123699>,  <32.256527, 34.330502, 44.514297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624207, 34.729191, 44.123699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914146, 34.504913, 44.283810>,  <33.088108, 34.370346, 44.379875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914146, 34.504913, 44.283810>,  <32.624207, 34.729191, 44.123699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914146, 34.504913, 44.283810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293825, -0.273913, -0.915772,
		0.623109, 0.781405, -0.033799,
		0.724847, -0.560694, 0.400274,
		33.131599, 34.336704, 44.403893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208138, 34.850246, 43.709869>,  <32.624207, 34.729191, 44.123699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208138, 34.850246, 43.709869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323509, 34.521183, 43.905842>,  <33.392735, 34.323746, 44.023426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323509, 34.521183, 43.905842>,  <33.208138, 34.850246, 43.709869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323509, 34.521183, 43.905842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534511, -0.286195, -0.795230,
		0.794421, 0.491245, 0.357174,
		0.288432, -0.822661, 0.489935,
		33.410038, 34.274384, 44.052822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875492, 34.744530, 43.552795>,  <33.208138, 34.850246, 43.709869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875492, 34.744530, 43.552795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753220, 34.378799, 43.659054>,  <33.679855, 34.159359, 43.722809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753220, 34.378799, 43.659054>,  <33.875492, 34.744530, 43.552795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753220, 34.378799, 43.659054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484651, -0.389565, -0.783168,
		0.819558, -0.110653, 0.562211,
		-0.305678, -0.914328, 0.265643,
		33.661518, 34.104500, 43.738747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474541, 34.195095, 43.326939>,  <33.875492, 34.744530, 43.552795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474541, 34.195095, 43.326939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102615, 34.051849, 43.360870>,  <33.879459, 33.965900, 43.381229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102615, 34.051849, 43.360870>,  <34.474541, 34.195095, 43.326939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102615, 34.051849, 43.360870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055291, -0.363803, -0.929833,
		0.363847, -0.859884, 0.358071,
		-0.929816, -0.358115, 0.084825,
		33.823669, 33.944416, 43.386318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533501, 33.511799, 43.048607>,  <34.474541, 34.195095, 43.326939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533501, 33.511799, 43.048607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133629, 33.521885, 43.048229>,  <33.893703, 33.527939, 43.048000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133629, 33.521885, 43.048229>,  <34.533501, 33.511799, 43.048607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133629, 33.521885, 43.048229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012097, -0.511799, -0.859020,
		-0.022148, -0.858735, 0.511941,
		-0.999682, 0.025219, -0.000947,
		33.833725, 33.529449, 43.047947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342632, 32.867550, 42.719524>,  <34.533501, 33.511799, 43.048607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342632, 32.867550, 42.719524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012173, 33.092384, 42.703838>,  <33.813896, 33.227287, 42.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012173, 33.092384, 42.703838>,  <34.342632, 32.867550, 42.719524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012173, 33.092384, 42.703838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208794, -0.370038, -0.905250,
		-0.523343, -0.739680, 0.423067,
		-0.826146, 0.562090, -0.039216,
		33.764328, 33.261009, 42.692074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815948, 32.446053, 42.413715>,  <34.342632, 32.867550, 42.719524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815948, 32.446053, 42.413715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679310, 32.815735, 42.345409>,  <33.597324, 33.037544, 42.304428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679310, 32.815735, 42.345409>,  <33.815948, 32.446053, 42.413715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679310, 32.815735, 42.345409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143346, -0.230799, -0.962384,
		-0.928849, -0.304273, 0.211322,
		-0.341601, 0.924202, -0.170761,
		33.576828, 33.092995, 42.294182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171238, 32.365089, 41.939644>,  <33.815948, 32.446053, 42.413715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171238, 32.365089, 41.939644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310177, 32.739193, 41.912403>,  <33.393539, 32.963657, 41.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310177, 32.739193, 41.912403>,  <33.171238, 32.365089, 41.939644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310177, 32.739193, 41.912403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131399, -0.023367, -0.991054,
		-0.928486, 0.353185, 0.114776,
		0.347344, 0.935262, -0.068104,
		33.414379, 33.019772, 41.891972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746498, 32.687565, 41.473907>,  <33.171238, 32.365089, 41.939644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746498, 32.687565, 41.473907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060726, 32.934753, 41.486507>,  <33.249264, 33.083069, 41.494068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060726, 32.934753, 41.486507>,  <32.746498, 32.687565, 41.473907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060726, 32.934753, 41.486507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028544, 0.014668, -0.999485,
		-0.618117, 0.786062, -0.006117,
		0.785567, 0.617974, 0.031504,
		33.296398, 33.120144, 41.495960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542706, 33.294559, 41.114323>,  <32.746498, 32.687565, 41.473907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542706, 33.294559, 41.114323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941898, 33.271667, 41.103367>,  <33.181416, 33.257935, 41.096794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941898, 33.271667, 41.103367>,  <32.542706, 33.294559, 41.114323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941898, 33.271667, 41.103367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025807, 0.028142, -0.999271,
		0.057954, 0.997965, 0.026609,
		0.997986, -0.057225, -0.027385,
		33.241295, 33.254501, 41.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818329, 33.779434, 40.584141>,  <32.542706, 33.294559, 41.114323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818329, 33.779434, 40.584141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098793, 33.494591, 40.598392>,  <33.267071, 33.323685, 40.606945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098793, 33.494591, 40.598392>,  <32.818329, 33.779434, 40.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098793, 33.494591, 40.598392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048319, -0.002403, -0.998829,
		0.711360, 0.702065, 0.032723,
		0.701165, -0.712108, 0.035633,
		33.309143, 33.280960, 40.609081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201263, 34.027401, 39.987934>,  <32.818329, 33.779434, 40.584141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201263, 34.027401, 39.987934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343525, 33.669773, 40.096851>,  <33.428883, 33.455196, 40.162201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343525, 33.669773, 40.096851>,  <33.201263, 34.027401, 39.987934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343525, 33.669773, 40.096851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382091, -0.126793, -0.915385,
		0.852946, 0.429601, 0.296524,
		0.355653, -0.894073, 0.272294,
		33.450222, 33.401550, 40.178539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819778, 34.028790, 39.489128>,  <33.201263, 34.027401, 39.987934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819778, 34.028790, 39.489128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804501, 33.656818, 39.635429>,  <33.795334, 33.433636, 39.723209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804501, 33.656818, 39.635429>,  <33.819778, 34.028790, 39.489128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804501, 33.656818, 39.635429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302290, -0.359623, -0.882775,
		0.952450, 0.076843, 0.294844,
		-0.038198, -0.929928, 0.365752,
		33.793041, 33.377838, 39.745155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499237, 33.643940, 39.521095>,  <33.819778, 34.028790, 39.489128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499237, 33.643940, 39.521095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234230, 33.344322, 39.519897>,  <34.075226, 33.164551, 39.519180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234230, 33.344322, 39.519897>,  <34.499237, 33.643940, 39.521095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234230, 33.344322, 39.519897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413331, -0.362250, -0.835423,
		0.624683, -0.554719, 0.549599,
		-0.662517, -0.749041, -0.002991,
		34.035477, 33.119610, 39.519001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874840, 33.090202, 39.399261>,  <34.499237, 33.643940, 39.521095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874840, 33.090202, 39.399261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506546, 32.996029, 39.274803>,  <34.285568, 32.939526, 39.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506546, 32.996029, 39.274803>,  <34.874840, 33.090202, 39.399261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506546, 32.996029, 39.274803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382250, -0.384282, -0.840364,
		0.078281, -0.892691, 0.443817,
		-0.920737, -0.235434, -0.311150,
		34.230324, 32.925400, 39.181458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952274, 32.468281, 39.209087>,  <34.874840, 33.090202, 39.399261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952274, 32.468281, 39.209087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614922, 32.596558, 39.036640>,  <34.412510, 32.673523, 38.933170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614922, 32.596558, 39.036640>,  <34.952274, 32.468281, 39.209087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614922, 32.596558, 39.036640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300273, -0.384077, -0.873110,
		-0.445582, -0.865819, 0.227629,
		-0.843382, 0.320691, -0.431119,
		34.361908, 32.692764, 38.907303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864223, 31.992058, 38.794178>,  <34.952274, 32.468281, 39.209087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864223, 31.992058, 38.794178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641354, 32.291569, 38.650578>,  <34.507629, 32.471275, 38.564415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641354, 32.291569, 38.650578>,  <34.864223, 31.992058, 38.794178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641354, 32.291569, 38.650578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309877, -0.213616, -0.926469,
		-0.770408, -0.627456, -0.113007,
		-0.557178, 0.748777, -0.359006,
		34.474201, 32.516201, 38.542877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512547, 31.718111, 38.194164>,  <34.864223, 31.992058, 38.794178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512547, 31.718111, 38.194164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531670, 32.114323, 38.142677>,  <34.543144, 32.352051, 38.111786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531670, 32.114323, 38.142677>,  <34.512547, 31.718111, 38.194164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531670, 32.114323, 38.142677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210794, -0.135965, -0.968029,
		-0.976361, 0.019147, -0.215297,
		0.047807, 0.990529, -0.128715,
		34.546013, 32.411480, 38.104061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094036, 31.815432, 37.558754>,  <34.512547, 31.718111, 38.194164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094036, 31.815432, 37.558754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348778, 32.120312, 37.605175>,  <34.501621, 32.303242, 37.633026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348778, 32.120312, 37.605175>,  <34.094036, 31.815432, 37.558754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348778, 32.120312, 37.605175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257652, -0.068532, -0.963804,
		-0.726661, 0.643701, -0.240028,
		0.636852, 0.762202, 0.116051,
		34.539833, 32.348972, 37.639992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105335, 32.077999, 36.874325>,  <34.094036, 31.815432, 37.558754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105335, 32.077999, 36.874325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411236, 32.266392, 37.050201>,  <34.594776, 32.379425, 37.155727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411236, 32.266392, 37.050201>,  <34.105335, 32.077999, 36.874325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411236, 32.266392, 37.050201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496803, 0.003527, -0.867856,
		-0.410293, 0.882137, -0.231287,
		0.764752, 0.470980, 0.439695,
		34.640663, 32.407684, 37.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228580, 32.599052, 36.460136>,  <34.105335, 32.077999, 36.874325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228580, 32.599052, 36.460136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569813, 32.537823, 36.659664>,  <34.774551, 32.501087, 36.779381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569813, 32.537823, 36.659664>,  <34.228580, 32.599052, 36.460136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569813, 32.537823, 36.659664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513844, 0.080401, -0.854108,
		0.090634, 0.984939, 0.147244,
		0.853083, -0.153071, 0.498818,
		34.825737, 32.491901, 36.809311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700439, 33.118080, 36.277332>,  <34.228580, 32.599052, 36.460136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700439, 33.118080, 36.277332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954235, 32.841068, 36.414635>,  <35.106514, 32.674862, 36.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954235, 32.841068, 36.414635>,  <34.700439, 33.118080, 36.277332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954235, 32.841068, 36.414635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419036, -0.064963, -0.905643,
		0.649484, 0.718457, 0.248977,
		0.634491, -0.692531, 0.343252,
		35.144581, 32.633308, 36.517609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248291, 33.314430, 35.999710>,  <34.700439, 33.118080, 36.277332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248291, 33.314430, 35.999710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326023, 32.929436, 36.075459>,  <35.372662, 32.698441, 36.120907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326023, 32.929436, 36.075459>,  <35.248291, 33.314430, 35.999710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326023, 32.929436, 36.075459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301692, -0.125047, -0.945170,
		0.933391, 0.240805, 0.266073,
		0.194330, -0.962484, 0.189367,
		35.384323, 32.640690, 36.132267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896374, 33.229359, 35.752968>,  <35.248291, 33.314430, 35.999710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896374, 33.229359, 35.752968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780701, 32.847645, 35.783203>,  <35.711296, 32.618618, 35.801346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780701, 32.847645, 35.783203>,  <35.896374, 33.229359, 35.752968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780701, 32.847645, 35.783203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211752, -0.140773, -0.967132,
		0.933561, -0.263668, 0.242781,
		-0.289179, -0.954286, 0.075588,
		35.693947, 32.561359, 35.805878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342590, 33.924313, 35.515621>,  <35.896374, 33.229359, 35.752968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342590, 33.924313, 35.515621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147266, 34.260067, 35.420139>,  <36.030071, 34.461521, 35.362850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147266, 34.260067, 35.420139>,  <36.342590, 33.924313, 35.515621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147266, 34.260067, 35.420139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677464, 0.192194, -0.710003,
		-0.550092, -0.508414, -0.662506,
		-0.488305, 0.839391, -0.238707,
		36.000774, 34.511883, 35.348526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746159, 33.343819, 35.714222>,  <36.342590, 33.924313, 35.515621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746159, 33.343819, 35.714222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130287, 33.265362, 35.793526>,  <37.360764, 33.218288, 35.841106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130287, 33.265362, 35.793526>,  <36.746159, 33.343819, 35.714222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130287, 33.265362, 35.793526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179213, 0.110678, 0.977565,
		-0.213685, -0.974309, 0.071136,
		0.960324, -0.196142, 0.198259,
		37.418385, 33.206520, 35.853004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793232, 32.754810, 36.209412>,  <36.746159, 33.343819, 35.714222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793232, 32.754810, 36.209412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094334, 33.018082, 36.204399>,  <37.274994, 33.176044, 36.201389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094334, 33.018082, 36.204399>,  <36.793232, 32.754810, 36.209412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094334, 33.018082, 36.204399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160152, 0.201567, 0.966293,
		0.638518, -0.725378, 0.257140,
		0.752759, 0.658177, -0.012534,
		37.320160, 33.215534, 36.200638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297836, 32.586872, 36.753059>,  <36.793232, 32.754810, 36.209412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297836, 32.586872, 36.753059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311676, 32.979374, 36.677223>,  <37.319981, 33.214874, 36.631721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311676, 32.979374, 36.677223>,  <37.297836, 32.586872, 36.753059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311676, 32.979374, 36.677223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099432, 0.192143, 0.976316,
		0.994443, -0.014924, 0.104215,
		0.034595, 0.981253, -0.189591,
		37.322056, 33.273750, 36.620346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776524, 32.803360, 37.207634>,  <37.297836, 32.586872, 36.753059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776524, 32.803360, 37.207634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627518, 33.163525, 37.117756>,  <37.538113, 33.379623, 37.063828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627518, 33.163525, 37.117756>,  <37.776524, 32.803360, 37.207634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627518, 33.163525, 37.117756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101068, 0.280046, 0.954651,
		0.922506, 0.332913, -0.195325,
		-0.372516, 0.900413, -0.224697,
		37.515762, 33.433647, 37.050346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221779, 33.269810, 37.522434>,  <37.776524, 32.803360, 37.207634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221779, 33.269810, 37.522434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870274, 33.446114, 37.449226>,  <37.659370, 33.551895, 37.405300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870274, 33.446114, 37.449226>,  <38.221779, 33.269810, 37.522434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870274, 33.446114, 37.449226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111952, 0.182416, 0.976827,
		0.463936, 0.878892, -0.110957,
		-0.878766, 0.440764, -0.183023,
		37.606644, 33.578342, 37.394318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181450, 33.694008, 38.009365>,  <38.221779, 33.269810, 37.522434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181450, 33.694008, 38.009365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796669, 33.721684, 37.903645>,  <37.565800, 33.738289, 37.840214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796669, 33.721684, 37.903645>,  <38.181450, 33.694008, 38.009365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796669, 33.721684, 37.903645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260017, 0.065053, 0.963410,
		0.083854, 0.995480, -0.044587,
		-0.961956, 0.069192, -0.264297,
		37.508083, 33.742443, 37.824356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967144, 34.345222, 38.400562>,  <38.181450, 33.694008, 38.009365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967144, 34.345222, 38.400562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653687, 34.107983, 38.326653>,  <37.465614, 33.965637, 38.282307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653687, 34.107983, 38.326653>,  <37.967144, 34.345222, 38.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653687, 34.107983, 38.326653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236106, 0.009247, 0.971683,
		-0.574598, 0.805075, -0.147282,
		-0.783640, -0.593101, -0.184770,
		37.418594, 33.930054, 38.271221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364227, 34.723278, 38.733711>,  <37.967144, 34.345222, 38.400562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364227, 34.723278, 38.733711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248894, 34.343704, 38.682510>,  <37.179695, 34.115959, 38.651791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248894, 34.343704, 38.682510>,  <37.364227, 34.723278, 38.733711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248894, 34.343704, 38.682510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289912, -0.040891, 0.956179,
		-0.912587, 0.312808, -0.263317,
		-0.288333, -0.948936, -0.128004,
		37.162395, 34.059025, 38.644108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727169, 34.776726, 39.015465>,  <37.364227, 34.723278, 38.733711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727169, 34.776726, 39.015465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797554, 34.383259, 39.000340>,  <36.839787, 34.147179, 38.991264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797554, 34.383259, 39.000340>,  <36.727169, 34.776726, 39.015465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797554, 34.383259, 39.000340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460353, -0.116177, 0.880101,
		-0.870122, -0.137458, -0.473279,
		0.175961, -0.983671, -0.037809,
		36.850342, 34.088158, 38.988998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029854, 34.428471, 39.213554>,  <36.727169, 34.776726, 39.015465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029854, 34.428471, 39.213554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354900, 34.205563, 39.281784>,  <36.549931, 34.071815, 39.322720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354900, 34.205563, 39.281784>,  <36.029854, 34.428471, 39.213554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354900, 34.205563, 39.281784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262940, -0.089378, 0.960663,
		-0.520106, -0.825505, -0.219160,
		0.812621, -0.557273, 0.170572,
		36.598686, 34.038380, 39.332954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841793, 34.041142, 39.800442>,  <36.029854, 34.428471, 39.213554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841793, 34.041142, 39.800442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233257, 33.959927, 39.813034>,  <36.468136, 33.911198, 39.820591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233257, 33.959927, 39.813034>,  <35.841793, 34.041142, 39.800442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233257, 33.959927, 39.813034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092319, -0.297667, 0.950195,
		-0.183556, -0.932829, -0.310061,
		0.978664, -0.203039, 0.031480,
		36.526855, 33.899014, 39.822479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789680, 33.507423, 40.181015>,  <35.841793, 34.041142, 39.800442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789680, 33.507423, 40.181015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165901, 33.641006, 40.205757>,  <36.391636, 33.721157, 40.220604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165901, 33.641006, 40.205757>,  <35.789680, 33.507423, 40.181015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165901, 33.641006, 40.205757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039539, -0.073224, 0.996531,
		0.337330, -0.939739, -0.055667,
		0.940556, 0.333959, 0.061857,
		36.448067, 33.741196, 40.224316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264832, 32.973759, 40.577652>,  <35.789680, 33.507423, 40.181015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264832, 32.973759, 40.577652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382893, 33.354393, 40.612011>,  <36.453728, 33.582771, 40.632626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382893, 33.354393, 40.612011>,  <36.264832, 32.973759, 40.577652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382893, 33.354393, 40.612011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117531, -0.053064, 0.991651,
		0.948195, -0.302780, 0.096178,
		0.295149, 0.951582, 0.085901,
		36.471436, 33.639866, 40.637783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589352, 32.938431, 41.149307>,  <36.264832, 32.973759, 40.577652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589352, 32.938431, 41.149307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587440, 33.336662, 41.111767>,  <36.586292, 33.575600, 41.089245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587440, 33.336662, 41.111767>,  <36.589352, 32.938431, 41.149307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587440, 33.336662, 41.111767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010991, 0.093896, 0.995521,
		0.999928, 0.003725, -0.011391,
		-0.004778, 0.995575, -0.093849,
		36.586006, 33.635334, 41.083611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005848, 33.195400, 41.682400>,  <36.589352, 32.938431, 41.149307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005848, 33.195400, 41.682400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775429, 33.497608, 41.557590>,  <36.637177, 33.678932, 41.482704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775429, 33.497608, 41.557590>,  <37.005848, 33.195400, 41.682400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775429, 33.497608, 41.557590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078542, 0.328791, 0.941131,
		0.813631, 0.566648, -0.130061,
		-0.576052, 0.755518, -0.312020,
		36.602612, 33.724262, 41.463985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361019, 33.692127, 42.070557>,  <37.005848, 33.195400, 41.682400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361019, 33.692127, 42.070557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985020, 33.788860, 41.974289>,  <36.759418, 33.846901, 41.916527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985020, 33.788860, 41.974289>,  <37.361019, 33.692127, 42.070557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985020, 33.788860, 41.974289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122195, 0.419983, 0.899268,
		0.318546, 0.874719, -0.365233,
		-0.939998, 0.241829, -0.240670,
		36.703022, 33.861408, 41.902088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366829, 34.357632, 42.408089>,  <37.361019, 33.692127, 42.070557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366829, 34.357632, 42.408089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992214, 34.237843, 42.335190>,  <36.767445, 34.165970, 42.291451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992214, 34.237843, 42.335190>,  <37.366829, 34.357632, 42.408089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992214, 34.237843, 42.335190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239508, 0.166979, 0.956428,
		-0.255995, 0.939379, -0.228109,
		-0.936538, -0.299474, -0.182243,
		36.711254, 34.147999, 42.280518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973808, 34.887287, 42.772446>,  <37.366829, 34.357632, 42.408089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973808, 34.887287, 42.772446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730839, 34.579147, 42.694889>,  <36.585056, 34.394264, 42.648357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730839, 34.579147, 42.694889>,  <36.973808, 34.887287, 42.772446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730839, 34.579147, 42.694889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330482, 0.023113, 0.943529,
		-0.722367, 0.637201, -0.268627,
		-0.607426, -0.770351, -0.193888,
		36.548611, 34.348042, 42.636723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232643, 35.055988, 43.091866>,  <36.973808, 34.887287, 42.772446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232643, 35.055988, 43.091866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266232, 34.658787, 43.058655>,  <36.286385, 34.420467, 43.038727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266232, 34.658787, 43.058655>,  <36.232643, 35.055988, 43.091866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266232, 34.658787, 43.058655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380098, -0.108939, 0.918509,
		-0.921127, -0.045565, -0.386586,
		0.083966, -0.993004, -0.083027,
		36.291420, 34.360886, 43.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632030, 34.818996, 43.417641>,  <36.232643, 35.055988, 43.091866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632030, 34.818996, 43.417641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860649, 34.490929, 43.427818>,  <35.997822, 34.294086, 43.433926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860649, 34.490929, 43.427818>,  <35.632030, 34.818996, 43.417641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860649, 34.490929, 43.427818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300807, -0.180568, 0.936435,
		-0.763442, -0.542875, -0.349917,
		0.571551, -0.820172, 0.025447,
		36.032116, 34.244877, 43.435452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236794, 34.364037, 43.673931>,  <35.632030, 34.818996, 43.417641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236794, 34.364037, 43.673931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585381, 34.187859, 43.760239>,  <35.794533, 34.082153, 43.812023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585381, 34.187859, 43.760239>,  <35.236794, 34.364037, 43.673931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585381, 34.187859, 43.760239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351965, -0.255234, 0.900542,
		-0.341567, -0.860735, -0.377448,
		0.871466, -0.440444, 0.215769,
		35.846821, 34.055725, 43.824970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030861, 33.698498, 44.008453>,  <35.236794, 34.364037, 43.673931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030861, 33.698498, 44.008453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406670, 33.793533, 44.107121>,  <35.632156, 33.850555, 44.166321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406670, 33.793533, 44.107121>,  <35.030861, 33.698498, 44.008453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406670, 33.793533, 44.107121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265452, 0.050071, 0.962823,
		0.216407, -0.970074, 0.110112,
		0.939523, 0.237591, 0.246673,
		35.688526, 33.864811, 44.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142738, 33.267029, 44.699821>,  <35.030861, 33.698498, 44.008453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142738, 33.267029, 44.699821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427525, 33.547852, 44.705917>,  <35.598396, 33.716343, 44.709576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427525, 33.547852, 44.705917>,  <35.142738, 33.267029, 44.699821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427525, 33.547852, 44.705917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196968, 0.178823, 0.963964,
		0.674029, -0.689306, 0.265597,
		0.711961, 0.702054, 0.015240,
		35.641113, 33.758469, 44.710491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581654, 33.058815, 45.286163>,  <35.142738, 33.267029, 44.699821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581654, 33.058815, 45.286163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587284, 33.448128, 45.194489>,  <35.590664, 33.681717, 45.139484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587284, 33.448128, 45.194489>,  <35.581654, 33.058815, 45.286163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587284, 33.448128, 45.194489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079825, 0.229568, 0.970014,
		0.996709, 0.004641, 0.080924,
		0.014075, 0.973281, -0.229183,
		35.591507, 33.740112, 45.125732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644997, 33.399899, 45.941742>,  <35.581654, 33.058815, 45.286163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644997, 33.399899, 45.941742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599037, 33.725277, 45.713673>,  <35.571461, 33.920506, 45.576832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599037, 33.725277, 45.713673>,  <35.644997, 33.399899, 45.941742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599037, 33.725277, 45.713673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123248, 0.557865, 0.820729,
		0.985701, 0.164577, 0.036156,
		-0.114903, 0.813450, -0.570172,
		35.564568, 33.969311, 45.542622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102062, 33.877369, 46.257004>,  <35.644997, 33.399899, 45.941742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102062, 33.877369, 46.257004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827103, 34.044266, 46.019215>,  <35.662128, 34.144402, 45.876541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827103, 34.044266, 46.019215>,  <36.102062, 33.877369, 46.257004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827103, 34.044266, 46.019215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161711, 0.710039, 0.685342,
		0.708049, 0.567236, -0.420607,
		-0.687398, 0.417239, -0.594471,
		35.620884, 34.169437, 45.840874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326969, 34.539749, 46.124001>,  <36.102062, 33.877369, 46.257004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326969, 34.539749, 46.124001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929390, 34.551792, 46.081749>,  <35.690842, 34.559017, 46.056396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929390, 34.551792, 46.081749>,  <36.326969, 34.539749, 46.124001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929390, 34.551792, 46.081749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055368, 0.693245, 0.718572,
		0.094859, 0.720073, -0.687384,
		-0.993950, 0.030104, -0.105630,
		35.631207, 34.560822, 46.050060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213943, 35.212589, 46.201553>,  <36.326969, 34.539749, 46.124001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213943, 35.212589, 46.201553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860611, 35.043186, 46.281925>,  <35.648613, 34.941544, 46.330151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860611, 35.043186, 46.281925>,  <36.213943, 35.212589, 46.201553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860611, 35.043186, 46.281925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135547, 0.641106, 0.755387,
		-0.448733, 0.640017, -0.623712,
		-0.883327, -0.423509, 0.200933,
		35.595612, 34.916134, 46.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819992, 35.756779, 46.429577>,  <36.213943, 35.212589, 46.201553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819992, 35.756779, 46.429577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592503, 35.446430, 46.538807>,  <35.456009, 35.260220, 46.604347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592503, 35.446430, 46.538807>,  <35.819992, 35.756779, 46.429577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592503, 35.446430, 46.538807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412939, 0.556456, 0.720997,
		-0.711357, 0.297287, -0.636860,
		-0.568728, -0.775872, 0.273078,
		35.421883, 35.213669, 46.620731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405220, 36.168434, 46.670105>,  <35.819992, 35.756779, 46.429577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405220, 36.168434, 46.670105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316563, 35.799229, 46.795910>,  <35.263371, 35.577705, 46.871395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316563, 35.799229, 46.795910>,  <35.405220, 36.168434, 46.670105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316563, 35.799229, 46.795910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435582, 0.382283, 0.814940,
		-0.872436, 0.043625, -0.486778,
		-0.221639, -0.923015, 0.314515,
		35.250072, 35.522324, 46.890263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715408, 36.169342, 46.898754>,  <35.405220, 36.168434, 46.670105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715408, 36.169342, 46.898754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896378, 35.890816, 47.121628>,  <35.004959, 35.723698, 47.255352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896378, 35.890816, 47.121628>,  <34.715408, 36.169342, 46.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896378, 35.890816, 47.121628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431250, 0.376056, 0.820125,
		-0.780600, -0.611329, -0.130151,
		0.452423, -0.696318, 0.557185,
		35.032104, 35.681919, 47.288784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205647, 35.891762, 47.360683>,  <34.715408, 36.169342, 46.898754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205647, 35.891762, 47.360683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568165, 35.833984, 47.519562>,  <34.785675, 35.799320, 47.614887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568165, 35.833984, 47.519562>,  <34.205647, 35.891762, 47.360683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568165, 35.833984, 47.519562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307408, 0.419654, 0.854044,
		-0.290043, -0.896118, 0.335929,
		0.906298, -0.144442, 0.397191,
		34.840054, 35.790653, 47.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006123, 35.739159, 47.987335>,  <34.205647, 35.891762, 47.360683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006123, 35.739159, 47.987335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398254, 35.794830, 48.043320>,  <34.633533, 35.828232, 48.076912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398254, 35.794830, 48.043320>,  <34.006123, 35.739159, 47.987335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398254, 35.794830, 48.043320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195944, 0.600675, 0.775110,
		0.023804, -0.787286, 0.616128,
		0.980326, 0.139177, 0.139965,
		34.692352, 35.836582, 48.085308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105301, 35.679173, 48.698898>,  <34.006123, 35.739159, 47.987335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105301, 35.679173, 48.698898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426311, 35.871101, 48.557068>,  <34.618916, 35.986259, 48.471970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426311, 35.871101, 48.557068>,  <34.105301, 35.679173, 48.698898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426311, 35.871101, 48.557068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107818, 0.701162, 0.704803,
		0.586800, -0.527390, 0.614432,
		0.802522, 0.479825, -0.354579,
		34.667068, 36.015049, 48.450695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575848, 35.787632, 49.308857>,  <34.105301, 35.679173, 48.698898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575848, 35.787632, 49.308857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693310, 36.059639, 49.040127>,  <34.763786, 36.222843, 48.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693310, 36.059639, 49.040127>,  <34.575848, 35.787632, 49.308857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693310, 36.059639, 49.040127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034769, 0.709941, 0.703402,
		0.955278, -0.183201, 0.232123,
		0.293657, 0.680016, -0.671822,
		34.781406, 36.263645, 48.838581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040638, 36.261700, 49.718033>,  <34.575848, 35.787632, 49.308857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040638, 36.261700, 49.718033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949192, 36.487812, 49.401001>,  <34.894325, 36.623482, 49.210781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949192, 36.487812, 49.401001>,  <35.040638, 36.261700, 49.718033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949192, 36.487812, 49.401001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144883, 0.785322, 0.601895,
		0.962675, 0.252435, -0.097639,
		-0.228618, 0.565283, -0.792584,
		34.880608, 36.657398, 49.163227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311649, 36.887836, 49.974003>,  <35.040638, 36.261700, 49.718033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311649, 36.887836, 49.974003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046398, 36.968006, 49.685532>,  <34.887249, 37.016106, 49.512451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046398, 36.968006, 49.685532>,  <35.311649, 36.887836, 49.974003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046398, 36.968006, 49.685532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455894, 0.656008, 0.601510,
		0.593651, 0.727658, -0.343647,
		-0.663129, 0.200420, -0.721174,
		34.847458, 37.028133, 49.469181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059593, 37.477005, 50.389820>,  <35.311649, 36.887836, 49.974003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059593, 37.477005, 50.389820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133945, 37.855564, 50.284157>,  <35.178555, 38.082699, 50.220760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133945, 37.855564, 50.284157>,  <35.059593, 37.477005, 50.389820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133945, 37.855564, 50.284157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752692, -0.309958, -0.580845,
		-0.631589, -0.090864, -0.769961,
		0.185878, 0.946398, -0.264158,
		35.189709, 38.139484, 50.204910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938030, 37.663071, 49.659935>,  <35.059593, 37.477005, 50.389820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938030, 37.663071, 49.659935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236244, 37.891399, 49.797535>,  <35.415173, 38.028397, 49.880096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236244, 37.891399, 49.797535>,  <34.938030, 37.663071, 49.659935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236244, 37.891399, 49.797535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595743, -0.339403, -0.727940,
		-0.298768, 0.747643, -0.593100,
		0.745539, 0.570820, 0.344000,
		35.459908, 38.062645, 49.900734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059902, 38.155533, 49.063663>,  <34.938030, 37.663071, 49.659935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059902, 38.155533, 49.063663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387444, 38.138096, 49.292603>,  <35.583969, 38.127632, 49.429966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387444, 38.138096, 49.292603>,  <35.059902, 38.155533, 49.063663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387444, 38.138096, 49.292603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563329, -0.130379, -0.815881,
		0.110191, 0.990505, -0.082202,
		0.818852, -0.043596, 0.572347,
		35.633099, 38.125015, 49.464306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473614, 38.571690, 48.796299>,  <35.059902, 38.155533, 49.063663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473614, 38.571690, 48.796299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738945, 38.375942, 49.022755>,  <35.898144, 38.258495, 49.158630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738945, 38.375942, 49.022755>,  <35.473614, 38.571690, 48.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738945, 38.375942, 49.022755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613420, -0.077743, -0.785921,
		0.428616, 0.868607, 0.248618,
		0.663328, -0.489366, 0.566143,
		35.937943, 38.229134, 49.192596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156883, 38.882721, 48.787624>,  <35.473614, 38.571690, 48.796299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156883, 38.882721, 48.787624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271515, 38.511806, 48.883961>,  <36.340294, 38.289257, 48.941761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271515, 38.511806, 48.883961>,  <36.156883, 38.882721, 48.787624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271515, 38.511806, 48.883961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639048, -0.002271, -0.769164,
		0.713784, 0.374338, 0.591932,
		0.286583, -0.927289, 0.240841,
		36.357491, 38.233620, 48.956211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833710, 38.833839, 48.635876>,  <36.156883, 38.882721, 48.787624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833710, 38.833839, 48.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768497, 38.442516, 48.687008>,  <36.729370, 38.207722, 48.717686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768497, 38.442516, 48.687008>,  <36.833710, 38.833839, 48.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768497, 38.442516, 48.687008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747854, -0.207046, -0.630750,
		0.643533, -0.007233, 0.765384,
		-0.163031, -0.978305, 0.127832,
		36.719589, 38.149025, 48.725357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500793, 38.533440, 48.610542>,  <36.833710, 38.833839, 48.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500793, 38.533440, 48.610542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243572, 38.234573, 48.543335>,  <37.089241, 38.055256, 48.503010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243572, 38.234573, 48.543335>,  <37.500793, 38.533440, 48.610542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243572, 38.234573, 48.543335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622032, -0.381603, -0.683707,
		0.446723, -0.544174, 0.710150,
		-0.643051, -0.747164, -0.168023,
		37.050655, 38.010426, 48.492928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933517, 38.124428, 48.252430>,  <37.500793, 38.533440, 48.610542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933517, 38.124428, 48.252430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580044, 37.939285, 48.224525>,  <37.367958, 37.828201, 48.207783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580044, 37.939285, 48.224525>,  <37.933517, 38.124428, 48.252430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580044, 37.939285, 48.224525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353378, -0.561945, -0.747891,
		0.306963, -0.685552, 0.660145,
		-0.883684, -0.462856, -0.069763,
		37.314938, 37.800430, 48.203598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078842, 37.406734, 48.149292>,  <37.933517, 38.124428, 48.252430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078842, 37.406734, 48.149292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716068, 37.460209, 47.989491>,  <37.498405, 37.492294, 47.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716068, 37.460209, 47.989491>,  <38.078842, 37.406734, 48.149292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716068, 37.460209, 47.989491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299057, -0.463598, -0.834051,
		-0.296711, -0.875902, 0.380472,
		-0.906933, 0.133690, -0.399499,
		37.443989, 37.500317, 47.869640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759941, 36.716568, 47.953659>,  <38.078842, 37.406734, 48.149292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759941, 36.716568, 47.953659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598564, 37.010830, 47.736015>,  <37.501740, 37.187386, 47.605431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598564, 37.010830, 47.736015>,  <37.759941, 36.716568, 47.953659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598564, 37.010830, 47.736015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321094, -0.443006, -0.837045,
		-0.856818, -0.512404, -0.057489,
		-0.403438, 0.735655, -0.544105,
		37.477531, 37.231525, 47.572784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470932, 36.322720, 47.371922>,  <37.759941, 36.716568, 47.953659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470932, 36.322720, 47.371922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481396, 36.704147, 47.251907>,  <37.487675, 36.933002, 47.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481396, 36.704147, 47.251907>,  <37.470932, 36.322720, 47.371922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481396, 36.704147, 47.251907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178642, -0.299771, -0.937136,
		-0.983566, -0.029082, -0.178190,
		0.026163, 0.953568, -0.300040,
		37.489246, 36.990219, 47.161896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043495, 36.379063, 46.708530>,  <37.470932, 36.322720, 47.371922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043495, 36.379063, 46.708530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263042, 36.713379, 46.714119>,  <37.394772, 36.913971, 46.717472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263042, 36.713379, 46.714119>,  <37.043495, 36.379063, 46.708530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263042, 36.713379, 46.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094325, -0.045317, -0.994510,
		-0.830571, 0.547170, -0.103710,
		0.548866, 0.835794, 0.013973,
		37.427704, 36.964115, 46.718311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833118, 36.826622, 46.153263>,  <37.043495, 36.379063, 46.708530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833118, 36.826622, 46.153263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200676, 36.973457, 46.211071>,  <37.421211, 37.061558, 46.245754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200676, 36.973457, 46.211071>,  <36.833118, 36.826622, 46.153263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200676, 36.973457, 46.211071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207105, -0.137073, -0.968668,
		-0.335775, 0.920032, -0.201980,
		0.918892, 0.367086, 0.144518,
		37.476345, 37.083584, 46.254425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943810, 37.325150, 45.634026>,  <36.833118, 36.826622, 46.153263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943810, 37.325150, 45.634026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303791, 37.211372, 45.766193>,  <37.519779, 37.143105, 45.845493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303791, 37.211372, 45.766193>,  <36.943810, 37.325150, 45.634026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303791, 37.211372, 45.766193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275784, -0.215589, -0.936731,
		0.337686, 0.934137, -0.115574,
		0.899951, -0.284447, 0.330421,
		37.573776, 37.126038, 45.865318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450130, 37.720596, 45.340725>,  <36.943810, 37.325150, 45.634026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450130, 37.720596, 45.340725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641438, 37.381401, 45.432095>,  <37.756222, 37.177883, 45.486916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641438, 37.381401, 45.432095>,  <37.450130, 37.720596, 45.340725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641438, 37.381401, 45.432095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340948, -0.060409, -0.938139,
		0.809331, 0.526559, 0.260229,
		0.478266, -0.847990, 0.228420,
		37.784916, 37.127003, 45.500622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172245, 37.778053, 45.099663>,  <37.450130, 37.720596, 45.340725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172245, 37.778053, 45.099663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101437, 37.385048, 45.122772>,  <38.058952, 37.149246, 45.136639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101437, 37.385048, 45.122772>,  <38.172245, 37.778053, 45.099663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101437, 37.385048, 45.122772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355368, -0.118552, -0.927178,
		0.917810, -0.143602, 0.370139,
		-0.177025, -0.982509, 0.057777,
		38.048328, 37.090294, 45.140106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556480, 37.549454, 44.555260>,  <38.172245, 37.778053, 45.099663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556480, 37.549454, 44.555260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377445, 37.203968, 44.647911>,  <38.270023, 36.996677, 44.703503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377445, 37.203968, 44.647911>,  <38.556480, 37.549454, 44.555260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377445, 37.203968, 44.647911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239130, -0.365199, -0.899693,
		0.861672, -0.347305, 0.370001,
		-0.447592, -0.863718, 0.231631,
		38.243168, 36.944851, 44.717400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970535, 36.976192, 44.253708>,  <38.556480, 37.549454, 44.555260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970535, 36.976192, 44.253708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618176, 36.795704, 44.310867>,  <38.406761, 36.687412, 44.345165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618176, 36.795704, 44.310867>,  <38.970535, 36.976192, 44.253708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618176, 36.795704, 44.310867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082062, -0.442950, -0.892783,
		0.466141, -0.774722, 0.427221,
		-0.880896, -0.451222, 0.142903,
		38.353909, 36.660336, 44.353737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067314, 36.195034, 44.282726>,  <38.970535, 36.976192, 44.253708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067314, 36.195034, 44.282726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701595, 36.295319, 44.155472>,  <38.482166, 36.355488, 44.079121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701595, 36.295319, 44.155472>,  <39.067314, 36.195034, 44.282726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701595, 36.295319, 44.155472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168435, -0.478971, -0.861520,
		-0.368368, -0.841268, 0.395693,
		-0.914295, 0.250707, -0.318137,
		38.427307, 36.370533, 44.060032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687057, 35.558304, 44.063923>,  <39.067314, 36.195034, 44.282726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687057, 35.558304, 44.063923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486080, 35.851265, 43.880127>,  <38.365494, 36.027042, 43.769852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486080, 35.851265, 43.880127>,  <38.687057, 35.558304, 44.063923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486080, 35.851265, 43.880127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077362, -0.491225, -0.867590,
		-0.861141, -0.471464, 0.190154,
		-0.502446, 0.732407, -0.459488,
		38.335346, 36.070988, 43.742279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267334, 35.208675, 43.522949>,  <38.687057, 35.558304, 44.063923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267334, 35.208675, 43.522949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262989, 35.590996, 43.405426>,  <38.260384, 35.820389, 43.334911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262989, 35.590996, 43.405426>,  <38.267334, 35.208675, 43.522949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262989, 35.590996, 43.405426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059524, -0.293923, -0.953974,
		-0.998168, 0.007126, 0.060086,
		-0.010863, 0.955802, -0.293808,
		38.259731, 35.877735, 43.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638420, 35.302292, 43.169044>,  <38.267334, 35.208675, 43.522949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638420, 35.302292, 43.169044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875610, 35.600060, 43.046261>,  <38.017925, 35.778721, 42.972591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875610, 35.600060, 43.046261>,  <37.638420, 35.302292, 43.169044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875610, 35.600060, 43.046261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238193, -0.201987, -0.949982,
		-0.769186, 0.636429, 0.057542,
		0.592973, 0.744419, -0.306958,
		38.053501, 35.823383, 42.954174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271744, 35.639984, 42.616055>,  <37.638420, 35.302292, 43.169044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271744, 35.639984, 42.616055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654373, 35.738041, 42.552963>,  <37.883949, 35.796875, 42.515110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654373, 35.738041, 42.552963>,  <37.271744, 35.639984, 42.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654373, 35.738041, 42.552963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098019, -0.239077, -0.966041,
		-0.274526, 0.939546, -0.204665,
		0.956571, 0.245142, -0.157727,
		37.941345, 35.811584, 42.505646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294765, 35.972042, 41.949310>,  <37.271744, 35.639984, 42.616055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294765, 35.972042, 41.949310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672382, 35.861664, 42.021576>,  <37.898952, 35.795437, 42.064938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672382, 35.861664, 42.021576>,  <37.294765, 35.972042, 41.949310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672382, 35.861664, 42.021576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153794, -0.116286, -0.981237,
		0.291774, 0.954114, -0.067340,
		0.944042, -0.275943, 0.180666,
		37.955593, 35.778881, 42.075775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779411, 36.370029, 41.468033>,  <37.294765, 35.972042, 41.949310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779411, 36.370029, 41.468033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953205, 36.025864, 41.574551>,  <38.057480, 35.819363, 41.638462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953205, 36.025864, 41.574551>,  <37.779411, 36.370029, 41.468033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953205, 36.025864, 41.574551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337939, -0.118325, -0.933700,
		0.834879, 0.495666, 0.239358,
		0.434481, -0.860416, 0.266292,
		38.083549, 35.767738, 41.654438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459152, 36.423325, 41.236820>,  <37.779411, 36.370029, 41.468033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459152, 36.423325, 41.236820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386936, 36.032658, 41.283337>,  <38.343605, 35.798256, 41.311245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386936, 36.032658, 41.283337>,  <38.459152, 36.423325, 41.236820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386936, 36.032658, 41.283337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459766, -0.188324, -0.867842,
		0.869494, -0.103215, 0.483040,
		-0.180543, -0.976668, 0.116291,
		38.332775, 35.739658, 41.318226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026390, 36.144535, 41.030098>,  <38.459152, 36.423325, 41.236820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026390, 36.144535, 41.030098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798523, 35.815819, 41.034885>,  <38.661804, 35.618591, 41.037758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798523, 35.815819, 41.034885>,  <39.026390, 36.144535, 41.030098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798523, 35.815819, 41.034885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471371, -0.338617, -0.814339,
		0.673268, -0.458259, 0.580267,
		-0.569667, -0.821789, 0.011970,
		38.627625, 35.569283, 41.038475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461288, 35.587189, 41.023258>,  <39.026390, 36.144535, 41.030098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461288, 35.587189, 41.023258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105137, 35.468945, 40.884785>,  <38.891445, 35.397999, 40.801701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105137, 35.468945, 40.884785>,  <39.461288, 35.587189, 41.023258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105137, 35.468945, 40.884785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426064, -0.273337, -0.862413,
		0.160312, -0.915370, 0.369322,
		-0.890376, -0.295610, -0.346187,
		38.838024, 35.380260, 40.780930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581482, 34.967419, 40.706928>,  <39.461288, 35.587189, 41.023258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581482, 34.967419, 40.706928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237225, 35.118622, 40.570457>,  <39.030670, 35.209343, 40.488575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237225, 35.118622, 40.570457>,  <39.581482, 34.967419, 40.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237225, 35.118622, 40.570457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261005, -0.247821, -0.932985,
		-0.437230, -0.892016, 0.114623,
		-0.860643, 0.378011, -0.341175,
		38.979031, 35.232025, 40.468105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535118, 34.573143, 40.127846>,  <39.581482, 34.967419, 40.706928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535118, 34.573143, 40.127846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289867, 34.875210, 40.035069>,  <39.142715, 35.056450, 39.979404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289867, 34.875210, 40.035069>,  <39.535118, 34.573143, 40.127846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289867, 34.875210, 40.035069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333493, -0.018730, -0.942566,
		-0.716141, -0.655263, -0.240360,
		-0.613127, 0.755169, -0.231939,
		39.105930, 35.101761, 39.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083443, 34.354347, 39.574963>,  <39.535118, 34.573143, 40.127846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083443, 34.354347, 39.574963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129517, 34.751652, 39.569832>,  <39.157162, 34.990036, 39.566753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129517, 34.751652, 39.569832>,  <39.083443, 34.354347, 39.574963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129517, 34.751652, 39.569832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173294, -0.032806, -0.984324,
		-0.978111, 0.111161, -0.175905,
		0.115189, 0.993261, -0.012824,
		39.164074, 35.049629, 39.565983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996410, 34.460957, 38.856453>,  <39.083443, 34.354347, 39.574963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996410, 34.460957, 38.856453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169434, 34.796734, 38.988049>,  <39.273247, 34.998199, 39.067005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169434, 34.796734, 38.988049>,  <38.996410, 34.460957, 38.856453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169434, 34.796734, 38.988049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332359, 0.190738, -0.923665,
		-0.838111, 0.508882, -0.196490,
		0.432558, 0.839439, 0.328991,
		39.299202, 35.048565, 39.086746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793655, 34.975414, 38.296276>,  <38.996410, 34.460957, 38.856453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793655, 34.975414, 38.296276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077579, 35.148251, 38.518795>,  <39.247936, 35.251953, 38.652306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077579, 35.148251, 38.518795>,  <38.793655, 34.975414, 38.296276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077579, 35.148251, 38.518795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397703, 0.405994, -0.822801,
		-0.581376, 0.805275, 0.116336,
		0.709813, 0.432089, 0.556295,
		39.290524, 35.277878, 38.685684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788429, 35.650047, 38.066433>,  <38.793655, 34.975414, 38.296276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788429, 35.650047, 38.066433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139133, 35.578518, 38.245014>,  <39.349556, 35.535599, 38.352161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139133, 35.578518, 38.245014>,  <38.788429, 35.650047, 38.066433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139133, 35.578518, 38.245014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479969, 0.384061, -0.788750,
		-0.030415, 0.905825, 0.422560,
		0.876758, -0.178826, 0.446449,
		39.402161, 35.524872, 38.378948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184864, 36.236267, 37.910053>,  <38.788429, 35.650047, 38.066433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184864, 36.236267, 37.910053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454208, 35.960594, 38.017094>,  <39.615814, 35.795189, 38.081318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454208, 35.960594, 38.017094>,  <39.184864, 36.236267, 37.910053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454208, 35.960594, 38.017094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609436, 0.312533, -0.728636,
		0.418529, 0.653722, 0.630461,
		0.673365, -0.689181, 0.267598,
		39.656219, 35.753841, 38.097374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768150, 36.575314, 38.220360>,  <39.184864, 36.236267, 37.910053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768150, 36.575314, 38.220360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909935, 36.237339, 38.060143>,  <39.995007, 36.034554, 37.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909935, 36.237339, 38.060143>,  <39.768150, 36.575314, 38.220360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909935, 36.237339, 38.060143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440388, 0.528720, -0.725613,
		0.824875, 0.080804, 0.559510,
		0.354457, -0.844941, -0.400543,
		40.016273, 35.983856, 37.939980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532497, 36.749855, 38.064548>,  <39.768150, 36.575314, 38.220360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532497, 36.749855, 38.064548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441727, 36.411785, 37.870979>,  <40.387264, 36.208942, 37.754837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441727, 36.411785, 37.870979>,  <40.532497, 36.749855, 38.064548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441727, 36.411785, 37.870979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596062, 0.272427, -0.755310,
		0.770203, -0.459851, 0.441955,
		-0.226930, -0.845175, -0.483924,
		40.373650, 36.158234, 37.725803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090710, 36.415775, 38.051708>,  <40.532497, 36.749855, 38.064548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090710, 36.415775, 38.051708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870220, 36.264492, 37.754223>,  <40.737926, 36.173721, 37.575729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870220, 36.264492, 37.754223>,  <41.090710, 36.415775, 38.051708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870220, 36.264492, 37.754223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726662, 0.220418, -0.650675,
		0.410018, -0.899097, 0.153328,
		-0.551224, -0.378206, -0.743715,
		40.704853, 36.151031, 37.531109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562954, 35.998169, 37.713005>,  <41.090710, 36.415775, 38.051708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562954, 35.998169, 37.713005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265339, 36.058701, 37.452694>,  <41.086769, 36.095020, 37.296509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265339, 36.058701, 37.452694>,  <41.562954, 35.998169, 37.713005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265339, 36.058701, 37.452694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667537, 0.209792, -0.714410,
		0.028416, -0.965964, -0.257111,
		-0.744034, 0.151330, -0.650779,
		41.042130, 36.104099, 37.257462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684704, 35.477898, 37.217896>,  <41.562954, 35.998169, 37.713005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684704, 35.477898, 37.217896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493134, 35.796268, 37.069775>,  <41.378189, 35.987289, 36.980900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493134, 35.796268, 37.069775>,  <41.684704, 35.477898, 37.217896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493134, 35.796268, 37.069775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849733, 0.314412, -0.423200,
		-0.220408, -0.517344, -0.826907,
		-0.478930, 0.795927, -0.370305,
		41.349453, 36.035046, 36.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563538, 35.331810, 36.527855>,  <41.684704, 35.477898, 37.217896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563538, 35.331810, 36.527855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534542, 35.727993, 36.574741>,  <41.517143, 35.965702, 36.602875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534542, 35.727993, 36.574741>,  <41.563538, 35.331810, 36.527855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534542, 35.727993, 36.574741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782530, 0.129349, -0.609028,
		-0.618378, 0.047578, -0.784439,
		-0.072490, 0.990457, 0.117218,
		41.512794, 36.025131, 36.609905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380562, 35.755592, 35.881405>,  <41.563538, 35.331810, 36.527855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380562, 35.755592, 35.881405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618290, 35.939129, 36.145599>,  <41.760929, 36.049252, 36.304115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618290, 35.939129, 36.145599>,  <41.380562, 35.755592, 35.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618290, 35.939129, 36.145599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745127, -0.005161, -0.666903,
		-0.302597, 0.888501, -0.344965,
		0.594324, 0.458846, 0.660484,
		41.796589, 36.076782, 36.343746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662533, 36.358238, 35.577324>,  <41.380562, 35.755592, 35.881405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662533, 36.358238, 35.577324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906460, 36.190472, 35.846310>,  <42.052818, 36.089813, 36.007702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906460, 36.190472, 35.846310>,  <41.662533, 36.358238, 35.577324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906460, 36.190472, 35.846310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692791, -0.129993, -0.709325,
		0.384917, 0.898440, 0.211294,
		0.609820, -0.419413, 0.672467,
		42.089405, 36.064648, 36.048050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341095, 36.788761, 35.714226>,  <41.662533, 36.358238, 35.577324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341095, 36.788761, 35.714226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331467, 36.389545, 35.737331>,  <42.325691, 36.150017, 35.751194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331467, 36.389545, 35.737331>,  <42.341095, 36.788761, 35.714226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331467, 36.389545, 35.737331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576522, -0.061061, -0.814797,
		0.816727, 0.013689, 0.576862,
		-0.024070, -0.998040, 0.057762,
		42.324245, 36.090134, 35.754662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066967, 36.446560, 35.658936>,  <42.341095, 36.788761, 35.714226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066967, 36.446560, 35.658936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765675, 36.205582, 35.553326>,  <42.584900, 36.060993, 35.489960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765675, 36.205582, 35.553326>,  <43.066967, 36.446560, 35.658936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765675, 36.205582, 35.553326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492887, -0.251157, -0.833056,
		0.435560, -0.757614, 0.486116,
		-0.753226, -0.602446, -0.264025,
		42.539707, 36.024849, 35.474117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406189, 35.834003, 35.282497>,  <43.066967, 36.446560, 35.658936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406189, 35.834003, 35.282497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040920, 35.997013, 35.279938>,  <42.821758, 36.094818, 35.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040920, 35.997013, 35.279938>,  <43.406189, 35.834003, 35.282497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040920, 35.997013, 35.279938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010369, 0.007528, -0.999918,
		-0.407444, -0.913163, -0.011099,
		-0.913171, 0.407526, -0.006401,
		42.766968, 36.119270, 35.278019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944901, 35.458080, 34.752209>,  <43.406189, 35.834003, 35.282497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944901, 35.458080, 34.752209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818695, 35.829224, 34.831741>,  <42.742970, 36.051910, 34.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818695, 35.829224, 34.831741>,  <42.944901, 35.458080, 34.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818695, 35.829224, 34.831741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041724, 0.195764, -0.979763,
		-0.948003, -0.317426, -0.023053,
		-0.315515, 0.927856, 0.198829,
		42.724041, 36.107582, 34.891392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261368, 35.681862, 34.466270>,  <42.944901, 35.458080, 34.752209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261368, 35.681862, 34.466270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460537, 36.027824, 34.491589>,  <42.580040, 36.235401, 34.506779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460537, 36.027824, 34.491589>,  <42.261368, 35.681862, 34.466270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460537, 36.027824, 34.491589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117645, 0.004946, -0.993043,
		-0.859205, 0.501905, -0.099289,
		0.497922, 0.864909, 0.063297,
		42.609913, 36.287296, 34.510578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888790, 36.195011, 34.088207>,  <42.261368, 35.681862, 34.466270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888790, 36.195011, 34.088207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277573, 36.289082, 34.088425>,  <42.510841, 36.345524, 34.088554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277573, 36.289082, 34.088425>,  <41.888790, 36.195011, 34.088207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277573, 36.289082, 34.088425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025595, 0.108095, -0.993811,
		-0.233784, 0.965922, 0.111082,
		0.971952, 0.235180, 0.000548,
		42.569157, 36.359634, 34.088589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950481, 36.858536, 33.912380>,  <41.888790, 36.195011, 34.088207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950481, 36.858536, 33.912380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292843, 36.681030, 33.806168>,  <42.498260, 36.574528, 33.742439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292843, 36.681030, 33.806168>,  <41.950481, 36.858536, 33.912380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292843, 36.681030, 33.806168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077656, 0.397346, -0.914377,
		0.511270, 0.803240, 0.305629,
		0.855905, -0.443760, -0.265527,
		42.549614, 36.547901, 33.726509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244411, 37.331753, 33.484196>,  <41.950481, 36.858536, 33.912380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244411, 37.331753, 33.484196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455177, 37.006199, 33.386261>,  <42.581638, 36.810867, 33.327499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455177, 37.006199, 33.386261>,  <42.244411, 37.331753, 33.484196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455177, 37.006199, 33.386261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123657, 0.358425, -0.925333,
		0.840872, 0.457299, 0.289503,
		0.526919, -0.813885, -0.244841,
		42.613255, 36.762032, 33.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864353, 37.574520, 33.076073>,  <42.244411, 37.331753, 33.484196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864353, 37.574520, 33.076073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867012, 37.184765, 32.986160>,  <42.868607, 36.950912, 32.932213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867012, 37.184765, 32.986160>,  <42.864353, 37.574520, 33.076073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867012, 37.184765, 32.986160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297840, 0.216510, -0.929739,
		0.954593, -0.060765, 0.291651,
		0.006649, -0.974387, -0.224777,
		42.869007, 36.892448, 32.918728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465927, 37.440796, 32.751778>,  <42.864353, 37.574520, 33.076073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465927, 37.440796, 32.751778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229012, 37.137573, 32.642570>,  <43.086861, 36.955639, 32.577045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229012, 37.137573, 32.642570>,  <43.465927, 37.440796, 32.751778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229012, 37.137573, 32.642570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368160, 0.046779, -0.928585,
		0.716695, -0.650503, 0.251382,
		-0.592288, -0.758061, -0.273016,
		43.051327, 36.910156, 32.560665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869701, 36.878181, 32.365620>,  <43.465927, 37.440796, 32.751778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869701, 36.878181, 32.365620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486450, 36.822182, 32.265713>,  <43.256500, 36.788582, 32.205769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486450, 36.822182, 32.265713>,  <43.869701, 36.878181, 32.365620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486450, 36.822182, 32.265713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262606, -0.082028, -0.961410,
		0.114108, -0.986748, 0.115358,
		-0.958132, -0.139998, -0.249766,
		43.199009, 36.780182, 32.190784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858425, 36.347321, 31.805254>,  <43.869701, 36.878181, 32.365620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858425, 36.347321, 31.805254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508087, 36.531082, 31.746130>,  <43.297886, 36.641338, 31.710655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508087, 36.531082, 31.746130>,  <43.858425, 36.347321, 31.805254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508087, 36.531082, 31.746130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164025, -0.004675, -0.986445,
		-0.453872, -0.888213, -0.071260,
		-0.875841, 0.459408, -0.147811,
		43.245335, 36.668903, 31.701786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453320, 35.995968, 31.226515>,  <43.858425, 36.347321, 31.805254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453320, 35.995968, 31.226515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284477, 36.355392, 31.274534>,  <43.183174, 36.571049, 31.303347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284477, 36.355392, 31.274534>,  <43.453320, 35.995968, 31.226515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284477, 36.355392, 31.274534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067448, 0.163186, -0.984287,
		-0.904035, -0.407374, -0.129488,
		-0.422103, 0.898564, 0.120050,
		43.157845, 36.624962, 31.310549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743671, 35.982857, 30.869762>,  <43.453320, 35.995968, 31.226515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743671, 35.982857, 30.869762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885548, 36.356277, 30.890484>,  <42.970673, 36.580330, 30.902916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885548, 36.356277, 30.890484>,  <42.743671, 35.982857, 30.869762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885548, 36.356277, 30.890484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056581, 0.033874, -0.997823,
		-0.933271, 0.356847, -0.040807,
		0.354688, 0.933549, 0.051804,
		42.991955, 36.636341, 30.906025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413876, 36.353420, 30.303360>,  <42.743671, 35.982857, 30.869762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413876, 36.353420, 30.303360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721893, 36.592777, 30.391863>,  <42.906704, 36.736393, 30.444965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721893, 36.592777, 30.391863>,  <42.413876, 36.353420, 30.303360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721893, 36.592777, 30.391863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254421, 0.030010, -0.966628,
		-0.585065, 0.800639, -0.129135,
		0.770045, 0.598395, 0.221257,
		42.952908, 36.772297, 30.458241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184772, 36.995190, 29.957729>,  <42.413876, 36.353420, 30.303360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184772, 36.995190, 29.957729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577213, 36.950787, 30.021128>,  <42.812675, 36.924145, 30.059168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577213, 36.950787, 30.021128>,  <42.184772, 36.995190, 29.957729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577213, 36.950787, 30.021128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127239, -0.247032, -0.960617,
		0.145785, 0.962629, -0.228239,
		0.981100, -0.111003, 0.158497,
		42.871544, 36.917484, 30.068676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506443, 37.315895, 29.351112>,  <42.184772, 36.995190, 29.957729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506443, 37.315895, 29.351112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800400, 37.088665, 29.499289>,  <42.976772, 36.952328, 29.588194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800400, 37.088665, 29.499289>,  <42.506443, 37.315895, 29.351112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800400, 37.088665, 29.499289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217243, -0.320257, -0.922085,
		0.642448, 0.758109, -0.111944,
		0.734892, -0.568072, 0.370442,
		43.020866, 36.918243, 29.610422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893356, 37.361950, 28.761721>,  <42.506443, 37.315895, 29.351112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893356, 37.361950, 28.761721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044449, 37.072292, 28.992521>,  <43.135105, 36.898499, 29.131002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044449, 37.072292, 28.992521>,  <42.893356, 37.361950, 28.761721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044449, 37.072292, 28.992521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190607, -0.549007, -0.813793,
		0.906083, 0.417377, -0.069351,
		0.377732, -0.724146, 0.577001,
		43.157768, 36.855049, 29.165621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627220, 37.252224, 28.541225>,  <42.893356, 37.361950, 28.761721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627220, 37.252224, 28.541225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483883, 36.916153, 28.704050>,  <43.397881, 36.714512, 28.801744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483883, 36.916153, 28.704050>,  <43.627220, 37.252224, 28.541225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483883, 36.916153, 28.704050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457330, -0.538090, -0.708031,
		0.813905, -0.067555, 0.577056,
		-0.358339, -0.840176, 0.407060,
		43.376381, 36.664101, 28.826168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187878, 36.735321, 28.558104>,  <43.627220, 37.252224, 28.541225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187878, 36.735321, 28.558104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838924, 36.539791, 28.557615>,  <43.629555, 36.422474, 28.557322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838924, 36.539791, 28.557615>,  <44.187878, 36.735321, 28.558104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838924, 36.539791, 28.557615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351669, -0.625869, -0.696144,
		0.339529, -0.607732, 0.717901,
		-0.872382, -0.488825, -0.001220,
		43.577209, 36.393143, 28.557249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269588, 35.951599, 28.418001>,  <44.187878, 36.735321, 28.558104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269588, 35.951599, 28.418001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872707, 35.962856, 28.369450>,  <43.634579, 35.969612, 28.340319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872707, 35.962856, 28.369450>,  <44.269588, 35.951599, 28.418001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872707, 35.962856, 28.369450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066682, -0.702958, -0.708099,
		-0.105253, -0.710674, 0.695603,
		-0.992207, 0.028146, -0.121378,
		43.575047, 35.971298, 28.333036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147682, 35.304810, 28.411486>,  <44.269588, 35.951599, 28.418001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147682, 35.304810, 28.411486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825188, 35.451153, 28.225527>,  <43.631691, 35.538960, 28.113951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825188, 35.451153, 28.225527>,  <44.147682, 35.304810, 28.411486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825188, 35.451153, 28.225527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002875, -0.788255, -0.615342,
		-0.591586, -0.494775, 0.636572,
		-0.806237, 0.365857, -0.464898,
		43.583317, 35.560909, 28.086058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730125, 34.705513, 28.244053>,  <44.147682, 35.304810, 28.411486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730125, 34.705513, 28.244053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625988, 35.010490, 28.007105>,  <43.563507, 35.193478, 27.864937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625988, 35.010490, 28.007105>,  <43.730125, 34.705513, 28.244053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625988, 35.010490, 28.007105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015345, -0.610179, -0.792115,
		-0.965395, -0.215309, 0.147154,
		-0.260340, 0.762446, -0.592368,
		43.547886, 35.239223, 27.829395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211193, 34.470036, 27.817984>,  <43.730125, 34.705513, 28.244053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211193, 34.470036, 27.817984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313274, 34.797882, 27.612808>,  <43.374523, 34.994591, 27.489704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313274, 34.797882, 27.612808>,  <43.211193, 34.470036, 27.817984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313274, 34.797882, 27.612808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106000, -0.551022, -0.827731,
		-0.961060, 0.156867, -0.227501,
		0.255202, 0.819614, -0.512937,
		43.389835, 35.043766, 27.458927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783504, 34.428421, 27.249611>,  <43.211193, 34.470036, 27.817984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783504, 34.428421, 27.249611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078346, 34.677204, 27.143890>,  <43.255249, 34.826473, 27.080458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078346, 34.677204, 27.143890>,  <42.783504, 34.428421, 27.249611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078346, 34.677204, 27.143890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154280, -0.535652, -0.830226,
		-0.657935, 0.571184, -0.490785,
		0.737101, 0.621953, -0.264302,
		43.299477, 34.863789, 27.064600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685604, 34.552483, 26.577089>,  <42.783504, 34.428421, 27.249611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685604, 34.552483, 26.577089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071266, 34.644794, 26.629475>,  <43.302662, 34.700180, 26.660906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071266, 34.644794, 26.629475>,  <42.685604, 34.552483, 26.577089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071266, 34.644794, 26.629475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235160, -0.514515, -0.824605,
		-0.122918, 0.825843, -0.550341,
		0.964153, 0.230777, 0.130962,
		43.360512, 34.714027, 26.668762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966805, 34.869053, 25.961468>,  <42.685604, 34.552483, 26.577089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966805, 34.869053, 25.961468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246178, 34.666325, 26.163586>,  <43.413799, 34.544685, 26.284857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246178, 34.666325, 26.163586>,  <42.966805, 34.869053, 25.961468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246178, 34.666325, 26.163586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190113, -0.549283, -0.813723,
		0.689966, 0.664392, -0.287282,
		0.698430, -0.506825, 0.505296,
		43.455708, 34.514278, 26.315174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321190, 34.168964, 25.872324>,  <42.966805, 34.869053, 25.961468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321190, 34.168964, 25.872324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000137, 34.275604, 25.658892>,  <42.807507, 34.339588, 25.530832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000137, 34.275604, 25.658892>,  <43.321190, 34.168964, 25.872324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000137, 34.275604, 25.658892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146110, 0.779422, 0.609223,
		0.578305, 0.566942, -0.586634,
		-0.802630, 0.266604, -0.533580,
		42.759350, 34.355587, 25.498817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098110, 33.702984, 25.307964>,  <43.321190, 34.168964, 25.872324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098110, 33.702984, 25.307964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925995, 33.562035, 25.640394>,  <42.822723, 33.477467, 25.839851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925995, 33.562035, 25.640394>,  <43.098110, 33.702984, 25.307964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925995, 33.562035, 25.640394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415773, -0.739825, -0.528953,
		0.801237, -0.573142, 0.171833,
		-0.430292, -0.352373, 0.831073,
		42.796906, 33.456322, 25.889715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744537, 33.604229, 24.901739>,  <43.098110, 33.702984, 25.307964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744537, 33.604229, 24.901739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114983, 33.631710, 25.050114>,  <44.337250, 33.648197, 25.139137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114983, 33.631710, 25.050114>,  <43.744537, 33.604229, 24.901739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114983, 33.631710, 25.050114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213448, -0.906176, -0.365081,
		0.311051, 0.417282, -0.853887,
		0.926114, 0.068702, 0.370935,
		44.392818, 33.652321, 25.161394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289074, 33.398174, 24.450279>,  <43.744537, 33.604229, 24.901739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289074, 33.398174, 24.450279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403740, 33.304035, 24.821749>,  <44.472538, 33.247551, 25.044630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403740, 33.304035, 24.821749>,  <44.289074, 33.398174, 24.450279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403740, 33.304035, 24.821749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161718, -0.943559, -0.289041,
		0.944284, 0.233040, -0.232421,
		0.286661, -0.235350, 0.928674,
		44.489738, 33.233429, 25.100351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028561, 33.255299, 24.556559>,  <44.289074, 33.398174, 24.450279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028561, 33.255299, 24.556559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794827, 33.010857, 24.770140>,  <44.654587, 32.864193, 24.898289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794827, 33.010857, 24.770140>,  <45.028561, 33.255299, 24.556559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794827, 33.010857, 24.770140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325124, -0.779148, -0.535931,
		0.743538, -0.139562, 0.653968,
		-0.584334, -0.611106, 0.533951,
		44.619526, 32.827526, 24.930325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.486259, 32.890728, 24.989849>,  <45.028561, 33.255299, 24.556559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.486259, 32.890728, 24.989849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163021, 32.672405, 24.901243>,  <44.969078, 32.541412, 24.848080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163021, 32.672405, 24.901243>,  <45.486259, 32.890728, 24.989849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163021, 32.672405, 24.901243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586090, -0.707408, -0.395060,
		0.058925, -0.449075, 0.891549,
		-0.808100, -0.545807, -0.221514,
		44.920589, 32.508663, 24.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.557426, 32.294815, 25.358204>,  <45.486259, 32.890728, 24.989849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.557426, 32.294815, 25.358204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355759, 32.280800, 25.013046>,  <45.234756, 32.272388, 24.805952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355759, 32.280800, 25.013046>,  <45.557426, 32.294815, 25.358204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355759, 32.280800, 25.013046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751609, -0.509890, -0.418445,
		-0.425318, -0.859525, 0.283409,
		-0.504171, -0.035041, -0.862892,
		45.204506, 32.270287, 24.754179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120613, 32.189331, 25.825100>,  <45.557426, 32.294815, 25.358204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120613, 32.189331, 25.825100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976677, 32.562256, 25.839548>,  <45.890316, 32.786011, 25.848217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976677, 32.562256, 25.839548>,  <46.120613, 32.189331, 25.825100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976677, 32.562256, 25.839548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287740, 0.074067, 0.954840,
		0.887535, 0.353986, -0.294916,
		-0.359844, 0.932313, 0.036119,
		45.868725, 32.841949, 25.850384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.573883, 32.420231, 26.376749>,  <46.120613, 32.189331, 25.825100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.573883, 32.420231, 26.376749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287231, 32.692471, 26.315779>,  <46.115242, 32.855816, 26.279196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287231, 32.692471, 26.315779>,  <46.573883, 32.420231, 26.376749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287231, 32.692471, 26.315779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076369, 0.293801, 0.952811,
		0.693265, 0.671167, -0.262522,
		-0.716625, 0.680599, -0.152426,
		46.072243, 32.896652, 26.270050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776272, 33.028225, 26.749716>,  <46.573883, 32.420231, 26.376749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776272, 33.028225, 26.749716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377850, 33.030380, 26.714272>,  <46.138798, 33.031673, 26.693005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.377850, 33.030380, 26.714272>,  <46.776272, 33.028225, 26.749716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377850, 33.030380, 26.714272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084980, 0.230781, 0.969288,
		0.025669, 0.972991, -0.229412,
		-0.996052, 0.005385, -0.088608,
		46.079033, 33.031994, 26.687689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420998, 33.644737, 27.102716>,  <46.776272, 33.028225, 26.749716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420998, 33.644737, 27.102716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093884, 33.415642, 27.080135>,  <45.897614, 33.278183, 27.066586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093884, 33.415642, 27.080135>,  <46.420998, 33.644737, 27.102716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093884, 33.415642, 27.080135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139338, 0.101864, 0.984992,
		-0.558395, 0.813382, -0.163108,
		-0.817789, -0.572742, -0.056455,
		45.848545, 33.243820, 27.063198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916775, 34.000763, 27.573215>,  <46.420998, 33.644737, 27.102716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916775, 34.000763, 27.573215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756474, 33.637997, 27.521206>,  <45.660294, 33.420338, 27.490000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756474, 33.637997, 27.521206>,  <45.916775, 34.000763, 27.573215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756474, 33.637997, 27.521206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457628, 0.075200, 0.885958,
		-0.793709, 0.414553, -0.445166,
		-0.400753, -0.906913, -0.130024,
		45.636250, 33.365921, 27.482199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222137, 34.052967, 27.591618>,  <45.916775, 34.000763, 27.573215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222137, 34.052967, 27.591618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332359, 33.687134, 27.710011>,  <45.398491, 33.467632, 27.781046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332359, 33.687134, 27.710011>,  <45.222137, 34.052967, 27.591618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332359, 33.687134, 27.710011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372690, 0.182179, 0.909897,
		-0.886100, -0.361035, -0.290657,
		0.275553, -0.914585, 0.295983,
		45.415024, 33.412758, 27.798805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735302, 33.969646, 28.057251>,  <45.222137, 34.052967, 27.591618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735302, 33.969646, 28.057251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970890, 33.655396, 28.133036>,  <45.112244, 33.466843, 28.178507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970890, 33.655396, 28.133036>,  <44.735302, 33.969646, 28.057251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970890, 33.655396, 28.133036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257810, 0.039536, 0.965386,
		-0.765929, -0.617430, -0.179258,
		0.588971, -0.785632, 0.189462,
		45.147583, 33.419704, 28.189875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335724, 33.494839, 28.321651>,  <44.735302, 33.969646, 28.057251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335724, 33.494839, 28.321651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708946, 33.426804, 28.448446>,  <44.932880, 33.385983, 28.524523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708946, 33.426804, 28.448446>,  <44.335724, 33.494839, 28.321651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708946, 33.426804, 28.448446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323211, -0.009486, 0.946280,
		-0.157943, -0.985383, -0.063825,
		0.933054, -0.170087, 0.316988,
		44.988861, 33.375778, 28.543543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212685, 33.316166, 29.004726>,  <44.335724, 33.494839, 28.321651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212685, 33.316166, 29.004726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611454, 33.344215, 29.018782>,  <44.850716, 33.361046, 29.027214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611454, 33.344215, 29.018782>,  <44.212685, 33.316166, 29.004726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611454, 33.344215, 29.018782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054190, 0.291909, 0.954910,
		0.056702, -0.953872, 0.294810,
		0.996920, 0.070121, 0.035139,
		44.910530, 33.365253, 29.029324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389313, 33.029903, 29.624634>,  <44.212685, 33.316166, 29.004726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389313, 33.029903, 29.624634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719307, 33.242165, 29.546869>,  <44.917305, 33.369522, 29.500210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719307, 33.242165, 29.546869>,  <44.389313, 33.029903, 29.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719307, 33.242165, 29.546869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059446, 0.423576, 0.903908,
		0.562015, -0.734156, 0.380991,
		0.824988, 0.530658, -0.194414,
		44.966805, 33.401363, 29.488544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759979, 32.921486, 30.238419>,  <44.389313, 33.029903, 29.624634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759979, 32.921486, 30.238419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939636, 33.225643, 30.050770>,  <45.047432, 33.408138, 29.938181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.939636, 33.225643, 30.050770>,  <44.759979, 32.921486, 30.238419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939636, 33.225643, 30.050770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108720, 0.474648, 0.873435,
		0.886819, -0.443303, 0.130517,
		0.449146, 0.760389, -0.469122,
		45.074379, 33.453758, 29.910032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366760, 33.062565, 30.632990>,  <44.759979, 32.921486, 30.238419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366760, 33.062565, 30.632990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263454, 33.396652, 30.438787>,  <45.201469, 33.597103, 30.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263454, 33.396652, 30.438787>,  <45.366760, 33.062565, 30.632990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263454, 33.396652, 30.438787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020088, 0.507089, 0.861659,
		0.965865, 0.212784, -0.147742,
		-0.258266, 0.835214, -0.485505,
		45.185974, 33.647217, 30.293137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920715, 33.579960, 30.678040>,  <45.366760, 33.062565, 30.632990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920715, 33.579960, 30.678040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579807, 33.776524, 30.606312>,  <45.375263, 33.894463, 30.563274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579807, 33.776524, 30.606312>,  <45.920715, 33.579960, 30.678040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579807, 33.776524, 30.606312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175277, 0.591247, 0.787213,
		0.492869, 0.639484, -0.590033,
		-0.852266, 0.491413, -0.179321,
		45.324127, 33.923946, 30.552515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134972, 34.266197, 30.769911>,  <45.920715, 33.579960, 30.678040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134972, 34.266197, 30.769911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736553, 34.274551, 30.804451>,  <45.497501, 34.279564, 30.825174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736553, 34.274551, 30.804451>,  <46.134972, 34.266197, 30.769911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736553, 34.274551, 30.804451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085532, 0.488192, 0.868535,
		-0.024018, 0.872486, -0.488048,
		-0.996046, 0.020884, 0.086351,
		45.437740, 34.280815, 30.830357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913013, 35.030594, 30.954779>,  <46.134972, 34.266197, 30.769911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913013, 35.030594, 30.954779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596230, 34.812389, 31.064484>,  <45.406158, 34.681465, 31.130306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.596230, 34.812389, 31.064484>,  <45.913013, 35.030594, 30.954779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.596230, 34.812389, 31.064484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086526, 0.544926, 0.834008,
		-0.604414, 0.636768, -0.478759,
		-0.791958, -0.545511, 0.274264,
		45.358643, 34.648735, 31.146763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592976, 35.540627, 31.200632>,  <45.913013, 35.030594, 30.954779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592976, 35.540627, 31.200632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405003, 35.209400, 31.322918>,  <45.292217, 35.010662, 31.396290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405003, 35.209400, 31.322918>,  <45.592976, 35.540627, 31.200632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.405003, 35.209400, 31.322918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247655, 0.456116, 0.854766,
		-0.847247, 0.325974, -0.419421,
		-0.469936, -0.828070, 0.305713,
		45.264023, 34.960979, 31.414633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986687, 35.776596, 31.367189>,  <45.592976, 35.540627, 31.200632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986687, 35.776596, 31.367189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035168, 35.426247, 31.554016>,  <45.064255, 35.216038, 31.666113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035168, 35.426247, 31.554016>,  <44.986687, 35.776596, 31.367189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035168, 35.426247, 31.554016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382395, 0.393020, 0.836247,
		-0.916016, -0.279958, -0.287296,
		0.121201, -0.875876, 0.467067,
		45.071529, 35.163483, 31.694136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335438, 35.693020, 31.716846>,  <44.986687, 35.776596, 31.367189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335438, 35.693020, 31.716846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625607, 35.476334, 31.886694>,  <44.799709, 35.346321, 31.988604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625607, 35.476334, 31.886694>,  <44.335438, 35.693020, 31.716846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625607, 35.476334, 31.886694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258512, 0.357315, 0.897495,
		-0.637910, -0.760835, 0.119166,
		0.725425, -0.541716, 0.424620,
		44.843235, 35.313820, 32.014080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022335, 35.663300, 32.388779>,  <44.335438, 35.693020, 31.716846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022335, 35.663300, 32.388779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383564, 35.499226, 32.439720>,  <44.600300, 35.400784, 32.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383564, 35.499226, 32.439720>,  <44.022335, 35.663300, 32.388779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383564, 35.499226, 32.439720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045046, 0.204434, 0.977843,
		-0.427128, -0.888796, 0.166141,
		0.903068, -0.410181, 0.127357,
		44.654484, 35.376171, 32.477928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970852, 35.200676, 32.966488>,  <44.022335, 35.663300, 32.388779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970852, 35.200676, 32.966488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340717, 35.342152, 32.910057>,  <44.562637, 35.427036, 32.876198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340717, 35.342152, 32.910057>,  <43.970852, 35.200676, 32.966488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340717, 35.342152, 32.910057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013416, 0.339990, 0.940333,
		0.380557, -0.871381, 0.309630,
		0.924660, 0.353697, -0.141076,
		44.618114, 35.448261, 32.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443222, 34.912415, 33.586742>,  <43.970852, 35.200676, 32.966488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443222, 34.912415, 33.586742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631104, 35.222271, 33.417362>,  <44.743832, 35.408184, 33.315735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631104, 35.222271, 33.417362>,  <44.443222, 34.912415, 33.586742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631104, 35.222271, 33.417362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229863, 0.355800, 0.905853,
		0.852373, -0.522820, -0.010940,
		0.469705, 0.774639, -0.423451,
		44.772015, 35.454662, 33.290325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238991, 34.889194, 33.871037>,  <44.443222, 34.912415, 33.586742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238991, 34.889194, 33.871037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082710, 35.247231, 33.785091>,  <44.988941, 35.462051, 33.733524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082710, 35.247231, 33.785091>,  <45.238991, 34.889194, 33.871037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082710, 35.247231, 33.785091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147949, 0.291436, 0.945080,
		0.908551, 0.337456, -0.246292,
		-0.390701, 0.895091, -0.214858,
		44.965500, 35.515759, 33.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673481, 35.342049, 34.213699>,  <45.238991, 34.889194, 33.871037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673481, 35.342049, 34.213699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302025, 35.479179, 34.156994>,  <45.079151, 35.561459, 34.122971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302025, 35.479179, 34.156994>,  <45.673481, 35.342049, 34.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302025, 35.479179, 34.156994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035462, 0.298341, 0.953800,
		0.369280, 0.890765, -0.264895,
		-0.928641, 0.342826, -0.141759,
		45.023434, 35.582027, 34.114468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094532, 34.740612, 34.362896>,  <45.673481, 35.342049, 34.213699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094532, 34.740612, 34.362896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174316, 34.606369, 34.731155>,  <46.222187, 34.525826, 34.952110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174316, 34.606369, 34.731155>,  <46.094532, 34.740612, 34.362896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174316, 34.606369, 34.731155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861517, 0.507726, -0.001569,
		-0.466909, 0.793464, 0.390400,
		0.199462, -0.335603, 0.920644,
		46.234154, 34.505688, 35.007347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440739, 35.240566, 34.672195>,  <46.094532, 34.740612, 34.362896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440739, 35.240566, 34.672195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544605, 34.912632, 34.876331>,  <46.606926, 34.715874, 34.998814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544605, 34.912632, 34.876331>,  <46.440739, 35.240566, 34.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544605, 34.912632, 34.876331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963820, 0.187079, -0.189877,
		0.060194, 0.541182, 0.838749,
		0.259670, -0.819832, 0.510340,
		46.622505, 34.666683, 35.029434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046703, 35.371281, 35.065788>,  <46.440739, 35.240566, 34.672195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046703, 35.371281, 35.065788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030792, 34.974453, 35.018082>,  <47.021248, 34.736359, 34.989456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030792, 34.974453, 35.018082>,  <47.046703, 35.371281, 35.065788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030792, 34.974453, 35.018082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997765, -0.033018, -0.058094,
		0.053695, -0.121314, 0.991161,
		-0.039774, -0.992065, -0.119270,
		47.018860, 34.676834, 34.982300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.724880, 35.199070, 35.040268>,  <47.046703, 35.371281, 35.065788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.724880, 35.199070, 35.040268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567562, 34.837280, 34.974239>,  <47.473171, 34.620209, 34.934624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567562, 34.837280, 34.974239>,  <47.724880, 35.199070, 35.040268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567562, 34.837280, 34.974239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919403, -0.386114, -0.074921,
		0.004028, -0.181233, 0.983432,
		-0.393295, -0.904472, -0.165071,
		47.449574, 34.565937, 34.924717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.853970, 40.439255, 43.736790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491653, 40.379932, 43.578018>,  <35.274265, 40.344337, 43.482754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491653, 40.379932, 43.578018>,  <35.853970, 40.439255, 43.736790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491653, 40.379932, 43.578018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421548, -0.410367, -0.808638,
		-0.042960, -0.899780, 0.434224,
		-0.905788, -0.148307, -0.396930,
		35.219917, 40.335442, 43.458939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997486, 39.763924, 43.491486>,  <35.853970, 40.439255, 43.736790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997486, 39.763924, 43.491486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655151, 39.878868, 43.319454>,  <35.449749, 39.947834, 43.216236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655151, 39.878868, 43.319454>,  <35.997486, 39.763924, 43.491486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655151, 39.878868, 43.319454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285189, -0.431516, -0.855839,
		-0.431516, -0.855114, 0.287358,
		0.855839, -0.287358, 0.430075,
		35.398399, 39.965076, 43.190430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608383, 39.166695, 43.318668>,  <35.997486, 39.763924, 43.491486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608383, 39.166695, 43.318668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473980, 39.459656, 43.081791>,  <35.393337, 39.635433, 42.939667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473980, 39.459656, 43.081791>,  <35.608383, 39.166695, 43.318668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473980, 39.459656, 43.081791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261394, -0.531534, -0.805695,
		-0.904859, -0.425517, -0.012843,
		-0.336010, 0.732398, -0.592191,
		35.373177, 39.679375, 42.904133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181587, 38.799103, 42.814175>,  <35.608383, 39.166695, 43.318668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181587, 38.799103, 42.814175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272015, 39.143459, 42.631855>,  <35.326271, 39.350075, 42.522461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272015, 39.143459, 42.631855>,  <35.181587, 38.799103, 42.814175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272015, 39.143459, 42.631855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156995, -0.494000, -0.855170,
		-0.961377, 0.121768, -0.246833,
		0.226068, 0.860893, -0.455803,
		35.339836, 39.401726, 42.495113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780430, 38.753433, 42.269646>,  <35.181587, 38.799103, 42.814175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780430, 38.753433, 42.269646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074577, 39.007206, 42.174370>,  <35.251064, 39.159470, 42.117203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074577, 39.007206, 42.174370>,  <34.780430, 38.753433, 42.269646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074577, 39.007206, 42.174370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061995, -0.412993, -0.908622,
		-0.674828, 0.653403, -0.343033,
		0.735366, 0.634430, -0.238191,
		35.295189, 39.197536, 42.102913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582680, 38.982166, 41.548489>,  <34.780430, 38.753433, 42.269646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582680, 38.982166, 41.548489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962681, 39.099583, 41.591057>,  <35.190681, 39.170033, 41.616600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.962681, 39.099583, 41.591057>,  <34.582680, 38.982166, 41.548489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962681, 39.099583, 41.591057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174413, -0.216173, -0.960651,
		-0.258986, 0.931183, -0.256562,
		0.950004, 0.293542, 0.106425,
		35.247681, 39.187645, 41.622986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691021, 39.251534, 40.864487>,  <34.582680, 38.982166, 41.548489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691021, 39.251534, 40.864487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047638, 39.180477, 41.031151>,  <35.261608, 39.137844, 41.131149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047638, 39.180477, 41.031151>,  <34.691021, 39.251534, 40.864487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047638, 39.180477, 41.031151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340792, -0.342867, -0.875387,
		0.298363, 0.922434, -0.245140,
		0.891538, -0.177641, 0.416658,
		35.315098, 39.127186, 41.156147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184196, 39.628246, 40.542969>,  <34.691021, 39.251534, 40.864487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184196, 39.628246, 40.542969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396664, 39.330875, 40.705532>,  <35.524143, 39.152454, 40.803070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396664, 39.330875, 40.705532>,  <35.184196, 39.628246, 40.542969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396664, 39.330875, 40.705532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266669, -0.308604, -0.913045,
		0.804204, 0.593361, 0.034327,
		0.531172, -0.743428, 0.406412,
		35.556015, 39.107845, 40.827457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795944, 39.491474, 40.126789>,  <35.184196, 39.628246, 40.542969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795944, 39.491474, 40.126789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.835476, 39.155094, 40.339592>,  <35.859196, 38.953266, 40.467274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.835476, 39.155094, 40.339592>,  <35.795944, 39.491474, 40.126789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835476, 39.155094, 40.339592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450442, -0.438910, -0.777470,
		0.887319, 0.316471, 0.335426,
		0.098825, -0.840954, 0.532005,
		35.865124, 38.902809, 40.499195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428429, 39.244446, 39.983246>,  <35.795944, 39.491474, 40.126789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428429, 39.244446, 39.983246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262432, 38.917904, 40.143921>,  <36.162834, 38.721977, 40.240326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.262432, 38.917904, 40.143921>,  <36.428429, 39.244446, 39.983246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262432, 38.917904, 40.143921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694099, -0.569505, -0.440329,
		0.588227, 0.096079, 0.802968,
		-0.414988, -0.816353, 0.401687,
		36.137936, 38.672997, 40.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970554, 38.932892, 40.339371>,  <36.428429, 39.244446, 39.983246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970554, 38.932892, 40.339371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684326, 38.677670, 40.225639>,  <36.512589, 38.524536, 40.157402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684326, 38.677670, 40.225639>,  <36.970554, 38.932892, 40.339371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684326, 38.677670, 40.225639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654044, -0.469041, -0.593487,
		0.245314, -0.610647, 0.752948,
		-0.715575, -0.638052, -0.284328,
		36.469654, 38.486256, 40.140343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180325, 38.237259, 40.369610>,  <36.970554, 38.932892, 40.339371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180325, 38.237259, 40.369610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891693, 38.245682, 40.092804>,  <36.718513, 38.250736, 39.926720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891693, 38.245682, 40.092804>,  <37.180325, 38.237259, 40.369610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891693, 38.245682, 40.092804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616482, -0.435348, -0.656066,
		-0.315079, -0.900016, 0.301157,
		-0.721578, 0.021055, -0.692013,
		36.675220, 38.251999, 39.885201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258186, 37.555332, 40.062309>,  <37.180325, 38.237259, 40.369610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258186, 37.555332, 40.062309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038734, 37.791821, 39.825848>,  <36.907063, 37.933716, 39.683971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038734, 37.791821, 39.825848>,  <37.258186, 37.555332, 40.062309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038734, 37.791821, 39.825848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491840, -0.343545, -0.800044,
		-0.676094, -0.729678, -0.102311,
		-0.548626, 0.591225, -0.591153,
		36.874146, 37.969189, 39.648502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250671, 37.167133, 39.529739>,  <37.258186, 37.555332, 40.062309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250671, 37.167133, 39.529739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143898, 37.526539, 39.390362>,  <37.079834, 37.742184, 39.306736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.143898, 37.526539, 39.390362>,  <37.250671, 37.167133, 39.529739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143898, 37.526539, 39.390362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562199, -0.148477, -0.813564,
		-0.782737, -0.413065, -0.465510,
		-0.266938, 0.898516, -0.348443,
		37.063816, 37.796093, 39.285828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008011, 37.001297, 38.907997>,  <37.250671, 37.167133, 39.529739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008011, 37.001297, 38.907997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068398, 37.395752, 38.880463>,  <37.104630, 37.632427, 38.863941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068398, 37.395752, 38.880463>,  <37.008011, 37.001297, 38.907997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068398, 37.395752, 38.880463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365425, -0.120372, -0.923025,
		-0.918517, 0.114193, -0.378533,
		0.150967, 0.986139, -0.068834,
		37.113689, 37.691593, 38.859814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711346, 37.243191, 38.278481>,  <37.008011, 37.001297, 38.907997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711346, 37.243191, 38.278481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974331, 37.530857, 38.368408>,  <37.132122, 37.703457, 38.422367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974331, 37.530857, 38.368408>,  <36.711346, 37.243191, 38.278481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974331, 37.530857, 38.368408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233348, 0.089371, -0.968278,
		-0.716442, 0.689070, -0.109057,
		0.657464, 0.719163, 0.224823,
		37.171570, 37.746605, 38.435856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570023, 37.741241, 37.828865>,  <36.711346, 37.243191, 38.278481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570023, 37.741241, 37.828865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932289, 37.825268, 37.976185>,  <37.149647, 37.875683, 38.064575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932289, 37.825268, 37.976185>,  <36.570023, 37.741241, 37.828865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932289, 37.825268, 37.976185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378331, -0.008237, -0.925634,
		-0.191410, 0.977653, -0.086934,
		0.905664, 0.210066, 0.368300,
		37.203987, 37.888287, 38.086674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844177, 38.289440, 37.408508>,  <36.570023, 37.741241, 37.828865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844177, 38.289440, 37.408508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139835, 38.077976, 37.575451>,  <37.317230, 37.951099, 37.675617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139835, 38.077976, 37.575451>,  <36.844177, 38.289440, 37.408508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139835, 38.077976, 37.575451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560285, 0.138688, -0.816607,
		0.373824, 0.837428, 0.398710,
		0.739146, -0.528658, 0.417354,
		37.361580, 37.919380, 37.700657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539829, 38.576180, 37.074448>,  <36.844177, 38.289440, 37.408508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539829, 38.576180, 37.074448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694855, 38.246399, 37.239407>,  <37.787868, 38.048531, 37.338383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694855, 38.246399, 37.239407>,  <37.539829, 38.576180, 37.074448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694855, 38.246399, 37.239407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710008, -0.018358, -0.703954,
		0.587950, 0.565629, 0.578255,
		0.387561, -0.824455, 0.412395,
		37.811123, 37.999062, 37.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246243, 38.659863, 37.195194>,  <37.539829, 38.576180, 37.074448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246243, 38.659863, 37.195194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178379, 38.266712, 37.166454>,  <38.137661, 38.030823, 37.149208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178379, 38.266712, 37.166454>,  <38.246243, 38.659863, 37.195194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178379, 38.266712, 37.166454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695669, -0.067801, -0.715156,
		0.698041, -0.171317, 0.695262,
		-0.169658, -0.982880, -0.071852,
		38.127483, 37.971848, 37.144897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938850, 38.341919, 36.922863>,  <38.246243, 38.659863, 37.195194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938850, 38.341919, 36.922863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672871, 38.053501, 36.844959>,  <38.513283, 37.880451, 36.798218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672871, 38.053501, 36.844959>,  <38.938850, 38.341919, 36.922863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672871, 38.053501, 36.844959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539357, -0.283199, -0.793027,
		0.516654, -0.632370, 0.577215,
		-0.664953, -0.721046, -0.194757,
		38.473385, 37.837189, 36.786533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294422, 37.679634, 36.852165>,  <38.938850, 38.341919, 36.922863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294422, 37.679634, 36.852165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951397, 37.650169, 36.648537>,  <38.745583, 37.632492, 36.526360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.951397, 37.650169, 36.648537>,  <39.294422, 37.679634, 36.852165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951397, 37.650169, 36.648537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482478, -0.458268, -0.746462,
		-0.178306, -0.885756, 0.428535,
		-0.857567, -0.073660, -0.509070,
		38.694126, 37.628071, 36.495815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009689, 37.787411, 36.902287>,  <39.294422, 37.679634, 36.852165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009689, 37.787411, 36.902287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.376572, 37.851410, 37.048237>,  <40.596703, 37.889809, 37.135807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.376572, 37.851410, 37.048237>,  <40.009689, 37.787411, 36.902287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376572, 37.851410, 37.048237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394454, 0.493468, 0.775174,
		-0.056029, -0.854921, 0.515723,
		0.917206, 0.159997, 0.364876,
		40.651733, 37.899410, 37.157700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906551, 37.623631, 37.552139>,  <40.009689, 37.787411, 36.902287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906551, 37.623631, 37.552139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236938, 37.848953, 37.560711>,  <40.435169, 37.984146, 37.565853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.236938, 37.848953, 37.560711>,  <39.906551, 37.623631, 37.552139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236938, 37.848953, 37.560711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340846, 0.468774, 0.814908,
		0.448990, -0.680398, 0.579194,
		0.825973, 0.563302, 0.021436,
		40.484730, 38.017948, 37.567139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031742, 37.687393, 38.218357>,  <39.906551, 37.623631, 37.552139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031742, 37.687393, 38.218357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265896, 37.986641, 38.093361>,  <40.406387, 38.166191, 38.018364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265896, 37.986641, 38.093361>,  <40.031742, 37.687393, 38.218357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265896, 37.986641, 38.093361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185976, 0.499051, 0.846381,
		0.789141, -0.437339, 0.431267,
		0.585379, 0.748119, -0.312487,
		40.441509, 38.211075, 37.999615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341835, 37.819359, 38.739494>,  <40.031742, 37.687393, 38.218357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341835, 37.819359, 38.739494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.374210, 38.158722, 38.530251>,  <40.393635, 38.362339, 38.404705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.374210, 38.158722, 38.530251>,  <40.341835, 37.819359, 38.739494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374210, 38.158722, 38.530251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194512, 0.528188, 0.826548,
		0.977555, 0.034851, 0.207778,
		0.080940, 0.848412, -0.523112,
		40.398491, 38.413246, 38.373318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780121, 38.276115, 39.076984>,  <40.341835, 37.819359, 38.739494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780121, 38.276115, 39.076984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548405, 38.491291, 38.832024>,  <40.409374, 38.620396, 38.685047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548405, 38.491291, 38.832024>,  <40.780121, 38.276115, 39.076984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548405, 38.491291, 38.832024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173545, 0.652685, 0.737485,
		0.796431, 0.533499, -0.284738,
		-0.579292, 0.537941, -0.612405,
		40.374619, 38.652672, 38.648300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962639, 38.933506, 39.146080>,  <40.780121, 38.276115, 39.076984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962639, 38.933506, 39.146080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603363, 38.984722, 38.977863>,  <40.387798, 39.015453, 38.876934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603363, 38.984722, 38.977863>,  <40.962639, 38.933506, 39.146080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603363, 38.984722, 38.977863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245032, 0.648420, 0.720771,
		0.364977, 0.750437, -0.551032,
		-0.898193, 0.128044, -0.420540,
		40.333904, 39.023136, 38.851700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805679, 39.701370, 39.206551>,  <40.962639, 38.933506, 39.146080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805679, 39.701370, 39.206551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453983, 39.517616, 39.156116>,  <40.242966, 39.407364, 39.125854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453983, 39.517616, 39.156116>,  <40.805679, 39.701370, 39.206551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453983, 39.517616, 39.156116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419005, 0.619853, 0.663488,
		-0.226640, 0.636199, -0.737486,
		-0.879243, -0.459384, -0.126087,
		40.190208, 39.379803, 39.118290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246841, 40.267410, 39.044910>,  <40.805679, 39.701370, 39.206551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246841, 40.267410, 39.044910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.069988, 39.937618, 39.186188>,  <39.963875, 39.739742, 39.270954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.069988, 39.937618, 39.186188>,  <40.246841, 40.267410, 39.044910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069988, 39.937618, 39.186188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483187, 0.550687, 0.680643,
		-0.755678, 0.130276, -0.641856,
		-0.442134, -0.824483, 0.353194,
		39.937347, 39.690273, 39.292145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489525, 40.433739, 38.998856>,  <40.246841, 40.267410, 39.044910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489525, 40.433739, 38.998856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529285, 40.127190, 39.252720>,  <39.553143, 39.943260, 39.405037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.529285, 40.127190, 39.252720>,  <39.489525, 40.433739, 38.998856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529285, 40.127190, 39.252720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563926, 0.482113, 0.670488,
		-0.819821, -0.424548, -0.384255,
		0.099400, -0.766372, 0.634660,
		39.559105, 39.897278, 39.443119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862442, 40.361485, 39.290432>,  <39.489525, 40.433739, 38.998856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862442, 40.361485, 39.290432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117348, 40.190475, 39.546906>,  <39.270290, 40.087872, 39.700790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117348, 40.190475, 39.546906>,  <38.862442, 40.361485, 39.290432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117348, 40.190475, 39.546906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485199, 0.423825, 0.764823,
		-0.598729, -0.798498, 0.062656,
		0.637264, -0.427520, 0.641187,
		39.308529, 40.062218, 39.739262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451542, 40.163956, 39.815994>,  <38.862442, 40.361485, 39.290432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451542, 40.163956, 39.815994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809792, 40.150806, 39.993435>,  <39.024742, 40.142918, 40.099899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809792, 40.150806, 39.993435>,  <38.451542, 40.163956, 39.815994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809792, 40.150806, 39.993435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430147, 0.189984, 0.882542,
		-0.113288, -0.981237, 0.156013,
		0.895622, -0.032873, 0.443599,
		39.078480, 40.140945, 40.126514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277752, 39.906567, 40.504322>,  <38.451542, 40.163956, 39.815994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277752, 39.906567, 40.504322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631241, 40.093353, 40.516869>,  <38.843334, 40.205425, 40.524395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631241, 40.093353, 40.516869>,  <38.277752, 39.906567, 40.504322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631241, 40.093353, 40.516869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263325, 0.440697, 0.858165,
		0.386907, -0.766638, 0.512416,
		0.883721, 0.466962, 0.031366,
		38.896358, 40.233444, 40.526279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564083, 39.713379, 41.103569>,  <38.277752, 39.906567, 40.504322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564083, 39.713379, 41.103569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721931, 40.066849, 41.002857>,  <38.816639, 40.278931, 40.942429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721931, 40.066849, 41.002857>,  <38.564083, 39.713379, 41.103569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721931, 40.066849, 41.002857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304855, 0.384412, 0.871373,
		0.866800, -0.267101, 0.421089,
		0.394616, 0.883677, -0.251781,
		38.840317, 40.331951, 40.927322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135921, 39.850922, 41.480850>,  <38.564083, 39.713379, 41.103569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135921, 39.850922, 41.480850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964828, 40.195286, 41.370667>,  <38.862171, 40.401905, 41.304558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.964828, 40.195286, 41.370667>,  <39.135921, 39.850922, 41.480850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964828, 40.195286, 41.370667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222131, 0.195280, 0.955261,
		0.876185, 0.469785, 0.107707,
		-0.427735, 0.860911, -0.275455,
		38.836510, 40.453560, 41.288029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317268, 40.230263, 42.029179>,  <39.135921, 39.850922, 41.480850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317268, 40.230263, 42.029179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018589, 40.430355, 41.853809>,  <38.839382, 40.550411, 41.748589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018589, 40.430355, 41.853809>,  <39.317268, 40.230263, 42.029179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018589, 40.430355, 41.853809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228150, 0.426518, 0.875231,
		0.624814, 0.753557, -0.204351,
		-0.746696, 0.500235, -0.438419,
		38.794579, 40.580425, 41.722282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278667, 40.820648, 42.380245>,  <39.317268, 40.230263, 42.029179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278667, 40.820648, 42.380245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913353, 40.841187, 42.218620>,  <38.694164, 40.853508, 42.121647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913353, 40.841187, 42.218620>,  <39.278667, 40.820648, 42.380245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913353, 40.841187, 42.218620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384727, 0.216998, 0.897161,
		0.133747, 0.974821, -0.178427,
		-0.913289, 0.051347, -0.404062,
		38.639366, 40.856590, 42.097401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036438, 41.307415, 42.776867>,  <39.278667, 40.820648, 42.380245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036438, 41.307415, 42.776867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.720814, 41.183083, 42.564915>,  <38.531441, 41.108482, 42.437744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.720814, 41.183083, 42.564915>,  <39.036438, 41.307415, 42.776867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720814, 41.183083, 42.564915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586067, 0.122324, 0.800976,
		-0.184152, 0.942561, -0.278689,
		-0.789059, -0.310831, -0.529878,
		38.484097, 41.089832, 42.405952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426342, 41.851051, 42.822933>,  <39.036438, 41.307415, 42.776867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426342, 41.851051, 42.822933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279419, 41.485859, 42.751881>,  <38.191265, 41.266743, 42.709248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279419, 41.485859, 42.751881>,  <38.426342, 41.851051, 42.822933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279419, 41.485859, 42.751881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644375, 0.112063, 0.756454,
		-0.670720, 0.392317, -0.629462,
		-0.367309, -0.912978, -0.177636,
		38.169228, 41.211964, 42.698589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.667168, 41.928574, 42.990429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735386, 41.534435, 42.991428>,  <37.776318, 41.297951, 42.992027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735386, 41.534435, 42.991428>,  <37.667168, 41.928574, 42.990429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735386, 41.534435, 42.991428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441318, -0.074115, 0.894285,
		-0.880995, -0.153623, -0.447491,
		0.170549, -0.985346, 0.002502,
		37.786552, 41.238831, 42.992180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076260, 41.596107, 43.248081>,  <37.667168, 41.928574, 42.990429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076260, 41.596107, 43.248081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364113, 41.326344, 43.314171>,  <37.536823, 41.164486, 43.353825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364113, 41.326344, 43.314171>,  <37.076260, 41.596107, 43.248081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364113, 41.326344, 43.314171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446984, -0.267864, 0.853495,
		-0.531351, -0.688053, -0.494215,
		0.719632, -0.674412, 0.165220,
		37.580002, 41.124020, 43.363735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726604, 41.137634, 43.553223>,  <37.076260, 41.596107, 43.248081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726604, 41.137634, 43.553223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097427, 41.011909, 43.634972>,  <37.319923, 40.936474, 43.684021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097427, 41.011909, 43.634972>,  <36.726604, 41.137634, 43.553223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097427, 41.011909, 43.634972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311539, -0.342567, 0.886336,
		-0.208571, -0.885357, -0.415500,
		0.927061, -0.314309, 0.204374,
		37.375546, 40.917618, 43.696285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634811, 40.486225, 43.807079>,  <36.726604, 41.137634, 43.553223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634811, 40.486225, 43.807079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996418, 40.572163, 43.954910>,  <37.213383, 40.623726, 44.043610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996418, 40.572163, 43.954910>,  <36.634811, 40.486225, 43.807079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996418, 40.572163, 43.954910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335099, -0.180660, 0.924700,
		0.265431, -0.959794, -0.091328,
		0.904021, 0.214841, 0.369579,
		37.267624, 40.636616, 44.065784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823376, 39.915657, 44.256786>,  <36.634811, 40.486225, 43.807079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823376, 39.915657, 44.256786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037971, 40.230114, 44.379528>,  <37.166729, 40.418789, 44.453171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037971, 40.230114, 44.379528>,  <36.823376, 39.915657, 44.256786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037971, 40.230114, 44.379528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177219, -0.250549, 0.951745,
		0.825088, -0.564983, 0.004902,
		0.536491, 0.786142, 0.306851,
		37.198917, 40.465958, 44.471584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266876, 39.640667, 44.817120>,  <36.823376, 39.915657, 44.256786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266876, 39.640667, 44.817120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217026, 40.035202, 44.860226>,  <37.187115, 40.271923, 44.886089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217026, 40.035202, 44.860226>,  <37.266876, 39.640667, 44.817120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217026, 40.035202, 44.860226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338252, -0.144337, 0.929921,
		0.932767, 0.079442, 0.351617,
		-0.124626, 0.986334, 0.107762,
		37.179638, 40.331104, 44.892555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485920, 39.791756, 45.487057>,  <37.266876, 39.640667, 44.817120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485920, 39.791756, 45.487057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289330, 40.122456, 45.377552>,  <37.171375, 40.320873, 45.311852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289330, 40.122456, 45.377552>,  <37.485920, 39.791756, 45.487057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289330, 40.122456, 45.377552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249482, 0.167513, 0.953781,
		0.834394, 0.537056, 0.123930,
		-0.491473, 0.826747, -0.273757,
		37.141888, 40.370480, 45.295425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737446, 40.337654, 45.828304>,  <37.485920, 39.791756, 45.487057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737446, 40.337654, 45.828304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373386, 40.467255, 45.725040>,  <37.154949, 40.545013, 45.663082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373386, 40.467255, 45.725040>,  <37.737446, 40.337654, 45.828304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373386, 40.467255, 45.725040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190068, 0.227132, 0.955136,
		0.368102, 0.918387, -0.145142,
		-0.910151, 0.324001, -0.258163,
		37.100342, 40.564453, 45.647591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623638, 40.933334, 46.260685>,  <37.737446, 40.337654, 45.828304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623638, 40.933334, 46.260685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253345, 40.847267, 46.136288>,  <37.031170, 40.795628, 46.061649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253345, 40.847267, 46.136288>,  <37.623638, 40.933334, 46.260685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253345, 40.847267, 46.136288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365067, 0.293847, 0.883391,
		-0.098690, 0.931320, -0.350574,
		-0.925735, -0.215165, -0.310995,
		36.975624, 40.782719, 46.042988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218632, 41.518852, 46.351391>,  <37.623638, 40.933334, 46.260685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218632, 41.518852, 46.351391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951523, 41.221218, 46.359520>,  <36.791256, 41.042637, 46.364399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951523, 41.221218, 46.359520>,  <37.218632, 41.518852, 46.351391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951523, 41.221218, 46.359520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399370, 0.381190, 0.833785,
		-0.628154, 0.548665, -0.551715,
		-0.667777, -0.744084, 0.020325,
		36.751190, 40.997993, 46.365616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756248, 41.748135, 46.667614>,  <37.218632, 41.518852, 46.351391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756248, 41.748135, 46.667614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638939, 41.366676, 46.694592>,  <36.568554, 41.137802, 46.710777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638939, 41.366676, 46.694592>,  <36.756248, 41.748135, 46.667614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638939, 41.366676, 46.694592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277997, 0.152564, 0.948389,
		-0.914716, 0.259392, -0.309855,
		-0.293277, -0.953646, 0.067442,
		36.550957, 41.080582, 46.714825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102242, 41.772495, 46.878292>,  <36.756248, 41.748135, 46.667614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102242, 41.772495, 46.878292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.216358, 41.399483, 46.966827>,  <36.284828, 41.175674, 47.019947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.216358, 41.399483, 46.966827>,  <36.102242, 41.772495, 46.878292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216358, 41.399483, 46.966827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387381, 0.099041, 0.916584,
		-0.876666, -0.347238, -0.332990,
		0.285293, -0.932533, 0.221340,
		36.301945, 41.119724, 47.033230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518681, 41.389629, 47.144653>,  <36.102242, 41.772495, 46.878292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518681, 41.389629, 47.144653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850670, 41.212925, 47.280884>,  <36.049862, 41.106903, 47.362621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850670, 41.212925, 47.280884>,  <35.518681, 41.389629, 47.144653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850670, 41.212925, 47.280884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384809, -0.011450, 0.922925,
		-0.403816, -0.897058, -0.179499,
		0.829973, -0.441764, 0.340572,
		36.099663, 41.080395, 47.383057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249451, 40.809258, 47.580612>,  <35.518681, 41.389629, 47.144653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249451, 40.809258, 47.580612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624477, 40.881027, 47.699795>,  <35.849491, 40.924091, 47.771305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624477, 40.881027, 47.699795>,  <35.249451, 40.809258, 47.580612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624477, 40.881027, 47.699795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300609, -0.012879, 0.953660,
		0.174954, -0.983686, 0.041863,
		0.937564, 0.179431, 0.297958,
		35.905746, 40.934856, 47.789181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276829, 40.298149, 48.099083>,  <35.249451, 40.809258, 47.580612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276829, 40.298149, 48.099083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564964, 40.561737, 48.185684>,  <35.737846, 40.719891, 48.237644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.564964, 40.561737, 48.185684>,  <35.276829, 40.298149, 48.099083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564964, 40.561737, 48.185684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240715, -0.055236, 0.969023,
		0.650513, -0.750140, 0.118835,
		0.720339, 0.658967, 0.216502,
		35.781067, 40.759426, 48.250633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539150, 40.018070, 48.661839>,  <35.276829, 40.298149, 48.099083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539150, 40.018070, 48.661839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677067, 40.392937, 48.640526>,  <35.759819, 40.617855, 48.627739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677067, 40.392937, 48.640526>,  <35.539150, 40.018070, 48.661839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677067, 40.392937, 48.640526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204684, 0.130456, 0.970096,
		0.916090, -0.323578, 0.236804,
		0.344794, 0.937165, -0.053278,
		35.780506, 40.674088, 48.624542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976627, 40.083862, 49.290951>,  <35.539150, 40.018070, 48.661839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976627, 40.083862, 49.290951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909782, 40.469421, 49.208027>,  <35.869675, 40.700756, 49.158272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909782, 40.469421, 49.208027>,  <35.976627, 40.083862, 49.290951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909782, 40.469421, 49.208027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226014, 0.167217, 0.959665,
		0.959684, 0.207223, 0.189911,
		-0.167108, 0.963897, -0.207310,
		35.859650, 40.758591, 49.145832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312523, 40.411674, 49.817711>,  <35.976627, 40.083862, 49.290951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312523, 40.411674, 49.817711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059128, 40.682808, 49.668453>,  <35.907089, 40.845486, 49.578899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059128, 40.682808, 49.668453>,  <36.312523, 40.411674, 49.817711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059128, 40.682808, 49.668453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227691, 0.297593, 0.927144,
		0.739491, 0.672298, -0.034186,
		-0.633491, 0.677830, -0.373143,
		35.869080, 40.886158, 49.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413383, 41.028748, 50.154591>,  <36.312523, 40.411674, 49.817711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413383, 41.028748, 50.154591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041218, 41.001202, 50.010593>,  <35.817921, 40.984673, 49.924194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041218, 41.001202, 50.010593>,  <36.413383, 41.028748, 50.154591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041218, 41.001202, 50.010593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366455, 0.156249, 0.917222,
		-0.006920, 0.985314, -0.170613,
		-0.930410, -0.068869, -0.359992,
		35.762096, 40.980541, 49.902596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062626, 41.584724, 50.449512>,  <36.413383, 41.028748, 50.154591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062626, 41.584724, 50.449512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768822, 41.332153, 50.350079>,  <35.592541, 41.180611, 50.290417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768822, 41.332153, 50.350079>,  <36.062626, 41.584724, 50.449512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768822, 41.332153, 50.350079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356133, 0.046858, 0.933260,
		-0.577642, 0.774014, -0.259291,
		-0.734506, -0.631432, -0.248585,
		35.548470, 41.142723, 50.275501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477577, 41.829643, 50.787220>,  <36.062626, 41.584724, 50.449512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477577, 41.829643, 50.787220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320377, 41.480976, 50.670094>,  <35.226059, 41.271774, 50.599815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320377, 41.480976, 50.670094>,  <35.477577, 41.829643, 50.787220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320377, 41.480976, 50.670094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478534, -0.078053, 0.874593,
		-0.785213, 0.483837, -0.386449,
		-0.392997, -0.871671, -0.292820,
		35.202477, 41.219475, 50.582249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716534, 41.880039, 50.874683>,  <35.477577, 41.829643, 50.787220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716534, 41.880039, 50.874683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828262, 41.495975, 50.871071>,  <34.895298, 41.265537, 50.868904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828262, 41.495975, 50.871071>,  <34.716534, 41.880039, 50.874683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828262, 41.495975, 50.871071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308170, -0.098554, 0.946213,
		-0.909401, -0.261515, -0.323420,
		0.279322, -0.960155, -0.009034,
		34.912060, 41.207928, 50.868362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134212, 41.431618, 51.095131>,  <34.716534, 41.880039, 50.874683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134212, 41.431618, 51.095131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462479, 41.224178, 51.191101>,  <34.659439, 41.099716, 51.248684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462479, 41.224178, 51.191101>,  <34.134212, 41.431618, 51.095131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462479, 41.224178, 51.191101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354284, -0.132373, 0.925721,
		-0.448316, -0.844710, -0.292365,
		0.820668, -0.518596, 0.239923,
		34.708679, 41.068600, 51.263077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727047, 40.988213, 51.488060>,  <34.134212, 41.431618, 51.095131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727047, 40.988213, 51.488060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408760, 40.750473, 51.441441>,  <33.217789, 40.607830, 51.413471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408760, 40.750473, 51.441441>,  <33.727047, 40.988213, 51.488060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408760, 40.750473, 51.441441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134913, 0.013657, -0.990763,
		0.590449, -0.804093, 0.069317,
		-0.795719, -0.594347, -0.116546,
		33.170044, 40.572170, 51.406475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879086, 40.447151, 50.993435>,  <33.727047, 40.988213, 51.488060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879086, 40.447151, 50.993435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480610, 40.472046, 50.968971>,  <33.241524, 40.486980, 50.954292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480610, 40.472046, 50.968971>,  <33.879086, 40.447151, 50.993435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480610, 40.472046, 50.968971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041661, -0.276615, -0.960077,
		-0.076667, -0.958963, 0.272967,
		-0.996186, 0.062234, -0.061159,
		33.181755, 40.490715, 50.950623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620792, 39.824890, 50.605766>,  <33.879086, 40.447151, 50.993435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620792, 39.824890, 50.605766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316383, 40.084164, 50.595119>,  <33.133739, 40.239727, 50.588730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316383, 40.084164, 50.595119>,  <33.620792, 39.824890, 50.605766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316383, 40.084164, 50.595119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176718, -0.246611, -0.952866,
		-0.624194, -0.720447, 0.302222,
		-0.761021, 0.648182, -0.026617,
		33.088078, 40.278618, 50.587135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980827, 39.519325, 50.305599>,  <33.620792, 39.824890, 50.605766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980827, 39.519325, 50.305599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980717, 39.912613, 50.232639>,  <32.980648, 40.148586, 50.188862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.980717, 39.912613, 50.232639>,  <32.980827, 39.519325, 50.305599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980717, 39.912613, 50.232639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102400, -0.181472, -0.978050,
		-0.994743, 0.018404, 0.100733,
		-0.000280, 0.983224, -0.182402,
		32.980633, 40.207581, 50.177917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478157, 39.595406, 49.772900>,  <32.980827, 39.519325, 50.305599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478157, 39.595406, 49.772900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667896, 39.947239, 49.758354>,  <32.781742, 40.158340, 49.749626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667896, 39.947239, 49.758354>,  <32.478157, 39.595406, 49.772900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667896, 39.947239, 49.758354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201340, 0.068189, -0.977145,
		-0.857001, 0.470832, 0.209441,
		0.474353, 0.879584, -0.036359,
		32.810204, 40.211113, 49.747448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118633, 39.973396, 49.220119>,  <32.478157, 39.595406, 49.772900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118633, 39.973396, 49.220119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484478, 40.129906, 49.260899>,  <32.703983, 40.223812, 49.285366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484478, 40.129906, 49.260899>,  <32.118633, 39.973396, 49.220119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484478, 40.129906, 49.260899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090249, 0.048229, -0.994751,
		-0.394135, 0.919010, 0.008799,
		0.914611, 0.391272, 0.101949,
		32.758862, 40.247288, 49.291485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062965, 40.465622, 48.689152>,  <32.118633, 39.973396, 49.220119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062965, 40.465622, 48.689152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454845, 40.431244, 48.761589>,  <32.689976, 40.410618, 48.805050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454845, 40.431244, 48.761589>,  <32.062965, 40.465622, 48.689152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454845, 40.431244, 48.761589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192962, 0.159679, -0.968126,
		0.054290, 0.983420, 0.173023,
		0.979703, -0.085946, 0.181094,
		32.748756, 40.405460, 48.815918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303448, 40.968548, 48.282196>,  <32.062965, 40.465622, 48.689152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303448, 40.968548, 48.282196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618469, 40.740490, 48.375744>,  <32.807484, 40.603657, 48.431873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618469, 40.740490, 48.375744>,  <32.303448, 40.968548, 48.282196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618469, 40.740490, 48.375744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382909, 0.155391, -0.910623,
		0.482843, 0.806717, 0.340691,
		0.787555, -0.570142, 0.233870,
		32.854736, 40.569447, 48.445904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956688, 41.294659, 47.953659>,  <32.303448, 40.968548, 48.282196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956688, 41.294659, 47.953659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013519, 40.905415, 48.026180>,  <33.047619, 40.671867, 48.069695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.013519, 40.905415, 48.026180>,  <32.956688, 41.294659, 47.953659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013519, 40.905415, 48.026180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467417, -0.095501, -0.878864,
		0.872545, 0.209616, 0.441279,
		0.142081, -0.973109, 0.181307,
		33.056145, 40.613483, 48.080574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644676, 41.244877, 48.099865>,  <32.956688, 41.294659, 47.953659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644676, 41.244877, 48.099865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488605, 40.904800, 47.958481>,  <33.394962, 40.700752, 47.873650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.488605, 40.904800, 47.958481>,  <33.644676, 41.244877, 48.099865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488605, 40.904800, 47.958481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542032, 0.098230, -0.834597,
		0.744290, -0.517226, 0.422505,
		-0.390173, -0.850193, -0.353465,
		33.371555, 40.649742, 47.852440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223381, 40.921524, 47.682682>,  <33.644676, 41.244877, 48.099865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223381, 40.921524, 47.682682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895630, 40.729610, 47.557182>,  <33.698978, 40.614464, 47.481884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895630, 40.729610, 47.557182>,  <34.223381, 40.921524, 47.682682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895630, 40.729610, 47.557182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404972, -0.097075, -0.909161,
		0.405740, -0.872002, 0.273838,
		-0.819374, -0.479780, -0.313749,
		33.649818, 40.585678, 47.463058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473385, 40.394878, 47.300262>,  <34.223381, 40.921524, 47.682682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473385, 40.394878, 47.300262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096382, 40.413818, 47.167934>,  <33.870182, 40.425182, 47.088539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096382, 40.413818, 47.167934>,  <34.473385, 40.394878, 47.300262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096382, 40.413818, 47.167934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321202, -0.144926, -0.935856,
		-0.092256, -0.988309, 0.121386,
		-0.942506, 0.047349, -0.330817,
		33.813629, 40.428024, 47.068687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491600, 39.953350, 46.852631>,  <34.473385, 40.394878, 47.300262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491600, 39.953350, 46.852631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176182, 40.186802, 46.775097>,  <33.986931, 40.326874, 46.728577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.176182, 40.186802, 46.775097>,  <34.491600, 39.953350, 46.852631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176182, 40.186802, 46.775097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315149, 0.112846, -0.942310,
		-0.528088, -0.804140, -0.272915,
		-0.788546, 0.583631, -0.193831,
		33.939617, 40.361893, 46.716946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317776, 39.741920, 46.232384>,  <34.491600, 39.953350, 46.852631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317776, 39.741920, 46.232384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131390, 40.095688, 46.242760>,  <34.019558, 40.307949, 46.248985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131390, 40.095688, 46.242760>,  <34.317776, 39.741920, 46.232384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131390, 40.095688, 46.242760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270060, 0.170080, -0.947703,
		-0.842582, -0.434591, -0.318098,
		-0.465965, 0.884423, 0.025941,
		33.991600, 40.361015, 46.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940777, 39.652412, 45.682716>,  <34.317776, 39.741920, 46.232384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940777, 39.652412, 45.682716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991837, 40.040443, 45.765327>,  <34.022472, 40.273262, 45.814896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991837, 40.040443, 45.765327>,  <33.940777, 39.652412, 45.682716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991837, 40.040443, 45.765327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407960, 0.138447, -0.902442,
		-0.904031, 0.199457, -0.378080,
		0.127654, 0.970077, 0.206531,
		34.030132, 40.331467, 45.827286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576515, 39.977985, 45.196297>,  <33.940777, 39.652412, 45.682716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576515, 39.977985, 45.196297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848694, 40.233971, 45.339092>,  <34.012001, 40.387562, 45.424770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.848694, 40.233971, 45.339092>,  <33.576515, 39.977985, 45.196297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848694, 40.233971, 45.339092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166433, 0.339464, -0.925778,
		-0.713650, 0.689355, 0.124475,
		0.680444, 0.639964, 0.356990,
		34.052826, 40.425961, 45.446190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443401, 40.564514, 44.846222>,  <33.576515, 39.977985, 45.196297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443401, 40.564514, 44.846222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809303, 40.646622, 44.985416>,  <34.028843, 40.695889, 45.068932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809303, 40.646622, 44.985416>,  <33.443401, 40.564514, 44.846222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809303, 40.646622, 44.985416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257341, 0.367946, -0.893527,
		-0.311454, 0.906906, 0.283755,
		0.914752, 0.205271, 0.347983,
		34.083729, 40.708202, 45.089809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612095, 41.175442, 44.496971>,  <33.443401, 40.564514, 44.846222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612095, 41.175442, 44.496971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955643, 41.022396, 44.633175>,  <34.161774, 40.930569, 44.714897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.955643, 41.022396, 44.633175>,  <33.612095, 41.175442, 44.496971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955643, 41.022396, 44.633175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368598, 0.000111, -0.929589,
		0.355634, 0.923909, 0.141125,
		0.858872, -0.382612, 0.340511,
		34.213303, 40.907612, 44.735329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076702, 41.422340, 44.036388>,  <33.612095, 41.175442, 44.496971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076702, 41.422340, 44.036388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259857, 41.116371, 44.217598>,  <34.369751, 40.932789, 44.326324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259857, 41.116371, 44.217598>,  <34.076702, 41.422340, 44.036388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259857, 41.116371, 44.217598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472881, -0.221953, -0.852714,
		0.752810, 0.604674, 0.260088,
		0.457887, -0.764922, 0.453027,
		34.397224, 40.886894, 44.353508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792328, 41.489441, 44.017498>,  <34.076702, 41.422340, 44.036388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792328, 41.489441, 44.017498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733414, 41.093864, 44.024410>,  <34.698067, 40.856518, 44.028557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733414, 41.093864, 44.024410>,  <34.792328, 41.489441, 44.017498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733414, 41.093864, 44.024410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464416, -0.084570, -0.881570,
		0.873284, -0.121819, 0.471737,
		-0.147287, -0.988943, 0.017279,
		34.689228, 40.797180, 44.029594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438549, 41.246460, 43.797722>,  <34.792328, 41.489441, 44.017498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438549, 41.246460, 43.797722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184906, 40.939369, 43.760830>,  <35.032722, 40.755116, 43.738693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184906, 40.939369, 43.760830>,  <35.438549, 41.246460, 43.797722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184906, 40.939369, 43.760830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511126, -0.326655, -0.795014,
		0.580227, -0.551262, 0.599539,
		-0.634103, -0.767728, -0.092231,
		34.994675, 40.709049, 43.733162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.624905, 34.928471, 26.738890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227478, 34.894920, 26.708448>,  <43.989021, 34.874790, 26.690184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227478, 34.894920, 26.708448>,  <44.624905, 34.928471, 26.738890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227478, 34.894920, 26.708448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112806, 0.792608, 0.599206,
		0.010063, 0.603936, -0.796970,
		-0.993566, -0.083874, -0.076103,
		43.929409, 34.869759, 26.685617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295307, 35.601498, 26.583693>,  <44.624905, 34.928471, 26.738890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295307, 35.601498, 26.583693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.006161, 35.383217, 26.753242>,  <43.832672, 35.252247, 26.854973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.006161, 35.383217, 26.753242>,  <44.295307, 35.601498, 26.583693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006161, 35.383217, 26.753242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206033, 0.755754, 0.621599,
		-0.659553, 0.362003, -0.658744,
		-0.722870, -0.545701, 0.423876,
		43.789299, 35.219505, 26.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768677, 36.077011, 26.795668>,  <44.295307, 35.601498, 26.583693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768677, 36.077011, 26.795668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632523, 35.760864, 26.999418>,  <43.550831, 35.571178, 27.121668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632523, 35.760864, 26.999418>,  <43.768677, 36.077011, 26.795668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632523, 35.760864, 26.999418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293855, 0.604006, 0.740828,
		-0.893189, 0.102486, -0.437848,
		-0.340387, -0.790363, 0.509375,
		43.530407, 35.523754, 27.152231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177197, 36.270927, 27.127306>,  <43.768677, 36.077011, 26.795668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177197, 36.270927, 27.127306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295464, 35.945709, 27.327921>,  <43.366425, 35.750580, 27.448290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295464, 35.945709, 27.327921>,  <43.177197, 36.270927, 27.127306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295464, 35.945709, 27.327921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386668, 0.378226, 0.841090,
		-0.873539, -0.442609, -0.202551,
		0.295664, -0.813045, 0.501538,
		43.384163, 35.701797, 27.478382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537010, 36.009384, 27.538681>,  <43.177197, 36.270927, 27.127306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537010, 36.009384, 27.538681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871639, 35.877892, 27.713985>,  <43.072418, 35.798996, 27.819168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.871639, 35.877892, 27.713985>,  <42.537010, 36.009384, 27.538681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871639, 35.877892, 27.713985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319554, 0.356981, 0.877753,
		-0.445000, -0.874355, 0.193593,
		0.836576, -0.328736, 0.438261,
		43.122612, 35.779270, 27.845463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353867, 35.726955, 28.150259>,  <42.537010, 36.009384, 27.538681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353867, 35.726955, 28.150259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737778, 35.819153, 28.214375>,  <42.968124, 35.874470, 28.252844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737778, 35.819153, 28.214375>,  <42.353867, 35.726955, 28.150259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737778, 35.819153, 28.214375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233497, 0.338369, 0.911584,
		0.155879, -0.912348, 0.378580,
		0.959782, 0.230494, 0.160287,
		43.025711, 35.888302, 28.262461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580585, 35.574368, 28.852966>,  <42.353867, 35.726955, 28.150259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580585, 35.574368, 28.852966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860207, 35.834728, 28.734543>,  <43.027981, 35.990944, 28.663488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860207, 35.834728, 28.734543>,  <42.580585, 35.574368, 28.852966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860207, 35.834728, 28.734543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062979, 0.468464, 0.881235,
		0.712288, -0.597387, 0.368475,
		0.699056, 0.650899, -0.296059,
		43.069923, 36.029999, 28.645725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968632, 35.491539, 29.457777>,  <42.580585, 35.574368, 28.852966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968632, 35.491539, 29.457777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092686, 35.829258, 29.282972>,  <43.167118, 36.031887, 29.178089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092686, 35.829258, 29.282972>,  <42.968632, 35.491539, 29.457777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092686, 35.829258, 29.282972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172577, 0.402044, 0.899210,
		0.934897, -0.354297, -0.021017,
		0.310137, 0.844296, -0.437013,
		43.185726, 36.082546, 29.151869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510674, 35.741238, 29.879553>,  <42.968632, 35.491539, 29.457777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510674, 35.741238, 29.879553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417637, 36.066711, 29.666454>,  <43.361813, 36.261997, 29.538595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417637, 36.066711, 29.666454>,  <43.510674, 35.741238, 29.879553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417637, 36.066711, 29.666454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173358, 0.573682, 0.800523,
		0.956999, 0.093842, -0.274495,
		-0.232596, 0.813685, -0.532744,
		43.347858, 36.310818, 29.506632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030239, 36.281475, 30.095888>,  <43.510674, 35.741238, 29.879553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030239, 36.281475, 30.095888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704479, 36.462471, 29.950556>,  <43.509022, 36.571068, 29.863356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.704479, 36.462471, 29.950556>,  <44.030239, 36.281475, 30.095888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704479, 36.462471, 29.950556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041743, 0.578803, 0.814399,
		0.578803, 0.678411, -0.452488,
		-0.814399, 0.452488, -0.363331,
		43.460159, 36.598217, 29.841557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139587, 36.942318, 30.210165>,  <44.030239, 36.281475, 30.095888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139587, 36.942318, 30.210165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742027, 36.911110, 30.178968>,  <43.503490, 36.892387, 30.160252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742027, 36.911110, 30.178968>,  <44.139587, 36.942318, 30.210165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742027, 36.911110, 30.178968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106503, 0.494404, 0.862683,
		-0.028745, 0.865724, -0.499696,
		-0.993897, -0.078017, -0.077990,
		43.443859, 36.887707, 30.155571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863106, 37.638592, 30.543051>,  <44.139587, 36.942318, 30.210165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863106, 37.638592, 30.543051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.577446, 37.359131, 30.525757>,  <43.406048, 37.191452, 30.515381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.577446, 37.359131, 30.525757>,  <43.863106, 37.638592, 30.543051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577446, 37.359131, 30.525757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243835, 0.190396, 0.950943,
		-0.656149, 0.689661, -0.306328,
		-0.714152, -0.698654, -0.043235,
		43.363201, 37.149536, 30.512787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357784, 37.906719, 31.013739>,  <43.863106, 37.638592, 30.543051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357784, 37.906719, 31.013739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234383, 37.530338, 30.957975>,  <43.160339, 37.304508, 30.924517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234383, 37.530338, 30.957975>,  <43.357784, 37.906719, 31.013739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234383, 37.530338, 30.957975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336314, -0.029194, 0.941297,
		-0.889784, 0.337282, -0.307448,
		-0.308507, -0.940951, -0.139409,
		43.141830, 37.248055, 30.916153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704739, 37.803562, 31.402040>,  <43.357784, 37.906719, 31.013739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704739, 37.803562, 31.402040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834572, 37.427441, 31.361099>,  <42.912472, 37.201767, 31.336535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834572, 37.427441, 31.361099>,  <42.704739, 37.803562, 31.402040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834572, 37.427441, 31.361099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360369, -0.222988, 0.905765,
		-0.874516, -0.257114, -0.411234,
		0.324585, -0.940302, -0.102351,
		42.931946, 37.145351, 31.330395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157089, 37.333904, 31.556519>,  <42.704739, 37.803562, 31.402040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157089, 37.333904, 31.556519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500080, 37.136349, 31.614212>,  <42.705875, 37.017815, 31.648829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500080, 37.136349, 31.614212>,  <42.157089, 37.333904, 31.556519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500080, 37.136349, 31.614212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337439, -0.328192, 0.882284,
		-0.388422, -0.805205, -0.448077,
		0.857474, -0.493897, 0.144231,
		42.757324, 36.988182, 31.657482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990669, 36.690403, 31.876137>,  <42.157089, 37.333904, 31.556519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990669, 36.690403, 31.876137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380589, 36.725983, 31.957970>,  <42.614540, 36.747330, 32.007069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380589, 36.725983, 31.957970>,  <41.990669, 36.690403, 31.876137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380589, 36.725983, 31.957970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159787, -0.361549, 0.918559,
		0.155670, -0.928100, -0.338226,
		0.974800, 0.088948, 0.204581,
		42.673027, 36.752666, 32.019344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207424, 36.013206, 32.286488>,  <41.990669, 36.690403, 31.876137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207424, 36.013206, 32.286488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501091, 36.272129, 32.368458>,  <42.677292, 36.427483, 32.417641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501091, 36.272129, 32.368458>,  <42.207424, 36.013206, 32.286488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501091, 36.272129, 32.368458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059127, -0.361624, 0.930447,
		0.676394, -0.670984, -0.303764,
		0.734163, 0.647309, 0.204927,
		42.721340, 36.466320, 32.429935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723331, 35.667599, 32.550968>,  <42.207424, 36.013206, 32.286488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723331, 35.667599, 32.550968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815830, 36.036732, 32.674198>,  <42.871330, 36.258209, 32.748138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815830, 36.036732, 32.674198>,  <42.723331, 35.667599, 32.550968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815830, 36.036732, 32.674198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116531, -0.340654, 0.932939,
		0.965892, -0.179835, -0.186313,
		0.231244, 0.922829, 0.308079,
		42.885204, 36.313580, 32.766621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294853, 35.714035, 33.021141>,  <42.723331, 35.667599, 32.550968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294853, 35.714035, 33.021141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111874, 36.054592, 33.123802>,  <43.002087, 36.258926, 33.185398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.111874, 36.054592, 33.123802>,  <43.294853, 35.714035, 33.021141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111874, 36.054592, 33.123802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058074, -0.259396, 0.964023,
		0.887339, 0.455893, 0.069216,
		-0.457446, 0.851396, 0.256648,
		42.974640, 36.310013, 33.200798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697281, 36.009907, 33.475391>,  <43.294853, 35.714035, 33.021141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697281, 36.009907, 33.475391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342262, 36.179836, 33.546715>,  <43.129253, 36.281792, 33.589508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342262, 36.179836, 33.546715>,  <43.697281, 36.009907, 33.475391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342262, 36.179836, 33.546715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160943, -0.076752, 0.983975,
		0.431698, 0.902018, -0.000251,
		-0.887544, 0.424821, 0.178307,
		43.076000, 36.307281, 33.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866116, 36.489616, 33.991531>,  <43.697281, 36.009907, 33.475391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866116, 36.489616, 33.991531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468254, 36.464401, 34.024239>,  <43.229538, 36.449272, 34.043861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.468254, 36.464401, 34.024239>,  <43.866116, 36.489616, 33.991531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468254, 36.464401, 34.024239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089730, -0.136031, 0.986633,
		-0.051073, 0.988697, 0.140961,
		-0.994656, -0.063039, 0.081769,
		43.169857, 36.445488, 34.048771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344685, 36.381416, 33.411098>,  <43.866116, 36.489616, 33.991531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344685, 36.381416, 33.411098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653286, 36.190975, 33.579910>,  <44.838448, 36.076710, 33.681198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653286, 36.190975, 33.579910>,  <44.344685, 36.381416, 33.411098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653286, 36.190975, 33.579910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408330, -0.138151, -0.902320,
		0.487898, 0.868471, 0.087822,
		0.771507, -0.476101, 0.422026,
		44.884739, 36.048145, 33.706516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901684, 36.764130, 33.147953>,  <44.344685, 36.381416, 33.411098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901684, 36.764130, 33.147953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945747, 36.380932, 33.253864>,  <44.972183, 36.151012, 33.317410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945747, 36.380932, 33.253864>,  <44.901684, 36.764130, 33.147953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945747, 36.380932, 33.253864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362192, -0.209387, -0.908281,
		0.925571, 0.195952, 0.323914,
		0.110156, -0.957998, 0.264775,
		44.978794, 36.093533, 33.333298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471859, 36.405041, 32.765160>,  <44.901684, 36.764130, 33.147953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471859, 36.405041, 32.765160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.285599, 36.089767, 32.926128>,  <45.173843, 35.900604, 33.022709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.285599, 36.089767, 32.926128>,  <45.471859, 36.405041, 32.765160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285599, 36.089767, 32.926128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068020, -0.485257, -0.871722,
		0.882351, -0.378545, 0.279572,
		-0.465650, -0.788181, 0.402418,
		45.145905, 35.853313, 33.046852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.873791, 35.774166, 32.698410>,  <45.471859, 36.405041, 32.765160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.873791, 35.774166, 32.698410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491005, 35.667282, 32.743694>,  <45.261333, 35.603149, 32.770863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491005, 35.667282, 32.743694>,  <45.873791, 35.774166, 32.698410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491005, 35.667282, 32.743694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070365, -0.592104, -0.802784,
		0.281545, -0.760270, 0.585425,
		-0.956964, -0.267213, 0.113208,
		45.203915, 35.587120, 32.777657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897121, 35.094925, 32.626892>,  <45.873791, 35.774166, 32.698410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897121, 35.094925, 32.626892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509144, 35.170479, 32.565525>,  <45.276360, 35.215809, 32.528706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509144, 35.170479, 32.565525>,  <45.897121, 35.094925, 32.626892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509144, 35.170479, 32.565525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000962, -0.633446, -0.773786,
		-0.243336, -0.750380, 0.614587,
		-0.969941, 0.188881, -0.153419,
		45.218163, 35.227142, 32.519501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622612, 34.481918, 32.638474>,  <45.897121, 35.094925, 32.626892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622612, 34.481918, 32.638474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376740, 34.724377, 32.436581>,  <45.229218, 34.869854, 32.315445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376740, 34.724377, 32.436581>,  <45.622612, 34.481918, 32.638474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376740, 34.724377, 32.436581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016378, -0.649559, -0.760135,
		-0.788607, -0.458974, 0.409198,
		-0.614680, 0.606149, -0.504729,
		45.192333, 34.906219, 32.285164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198418, 34.002625, 32.294140>,  <45.622612, 34.481918, 32.638474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198418, 34.002625, 32.294140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168404, 34.363556, 32.124352>,  <45.150394, 34.580116, 32.022480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.168404, 34.363556, 32.124352>,  <45.198418, 34.002625, 32.294140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168404, 34.363556, 32.124352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013911, -0.426576, -0.904345,
		-0.997083, -0.061956, 0.044562,
		-0.075038, 0.902327, -0.424470,
		45.145893, 34.634254, 31.997011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626488, 33.952019, 31.918989>,  <45.198418, 34.002625, 32.294140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626488, 33.952019, 31.918989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.842434, 34.249928, 31.762083>,  <44.972000, 34.428673, 31.667940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.842434, 34.249928, 31.762083>,  <44.626488, 33.952019, 31.918989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842434, 34.249928, 31.762083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021554, -0.453623, -0.890933,
		-0.841478, 0.489435, -0.228841,
		0.539861, 0.744769, -0.392263,
		45.004391, 34.473358, 31.644403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343849, 33.891769, 31.277605>,  <44.626488, 33.952019, 31.918989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343849, 33.891769, 31.277605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659546, 34.135288, 31.245422>,  <44.848965, 34.281399, 31.226112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659546, 34.135288, 31.245422>,  <44.343849, 33.891769, 31.277605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659546, 34.135288, 31.245422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009930, -0.143656, -0.989578,
		-0.614008, 0.780213, -0.119424,
		0.789237, 0.608795, -0.080458,
		44.896317, 34.317928, 31.221285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174385, 34.492771, 30.894213>,  <44.343849, 33.891769, 31.277605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174385, 34.492771, 30.894213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564056, 34.405930, 30.869438>,  <44.797859, 34.353825, 30.854574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564056, 34.405930, 30.869438>,  <44.174385, 34.492771, 30.894213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564056, 34.405930, 30.869438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072034, -0.038899, -0.996643,
		0.213967, 0.975373, -0.053533,
		0.974181, -0.217105, -0.061937,
		44.856312, 34.340797, 30.850857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363838, 34.729771, 30.285511>,  <44.174385, 34.492771, 30.894213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363838, 34.729771, 30.285511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628162, 34.443832, 30.377014>,  <44.786758, 34.272270, 30.431915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628162, 34.443832, 30.377014>,  <44.363838, 34.729771, 30.285511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628162, 34.443832, 30.377014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060900, -0.252711, -0.965623,
		0.748076, 0.652027, -0.123461,
		0.660812, -0.714841, 0.228756,
		44.826405, 34.229382, 30.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812889, 34.841454, 29.769766>,  <44.363838, 34.729771, 30.285511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812889, 34.841454, 29.769766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911747, 34.484734, 29.921349>,  <44.971062, 34.270702, 30.012299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911747, 34.484734, 29.921349>,  <44.812889, 34.841454, 29.769766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911747, 34.484734, 29.921349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277482, -0.309574, -0.909488,
		0.928398, 0.329931, 0.170949,
		0.247147, -0.891801, 0.378958,
		44.985889, 34.217194, 30.035036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326206, 34.635471, 29.375191>,  <44.812889, 34.841454, 29.769766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326206, 34.635471, 29.375191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271595, 34.277054, 29.544167>,  <45.238827, 34.062004, 29.645552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271595, 34.277054, 29.544167>,  <45.326206, 34.635471, 29.375191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271595, 34.277054, 29.544167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158056, -0.440675, -0.883642,
		0.977946, -0.053875, 0.201791,
		-0.136531, -0.896048, 0.422441,
		45.230637, 34.008240, 29.670898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918926, 34.259235, 29.246157>,  <45.326206, 34.635471, 29.375191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918926, 34.259235, 29.246157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642662, 33.980179, 29.322346>,  <45.476902, 33.812744, 29.368059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642662, 33.980179, 29.322346>,  <45.918926, 34.259235, 29.246157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642662, 33.980179, 29.322346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212842, -0.447813, -0.868425,
		0.691145, -0.559249, 0.457776,
		-0.690664, -0.697641, 0.190472,
		45.435463, 33.770885, 29.379488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187134, 33.636505, 29.020868>,  <45.918926, 34.259235, 29.246157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187134, 33.636505, 29.020868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.795837, 33.553581, 29.023903>,  <45.561058, 33.503826, 29.025724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.795837, 33.553581, 29.023903>,  <46.187134, 33.636505, 29.020868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795837, 33.553581, 29.023903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098648, -0.497041, -0.862101,
		0.182497, -0.842598, 0.506679,
		-0.978245, -0.207314, 0.007588,
		45.502365, 33.491386, 29.026178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148083, 32.923199, 29.044271>,  <46.187134, 33.636505, 29.020868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148083, 32.923199, 29.044271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817665, 33.082737, 28.884981>,  <45.619415, 33.178459, 28.789408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817665, 33.082737, 28.884981>,  <46.148083, 32.923199, 29.044271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817665, 33.082737, 28.884981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244369, -0.383241, -0.890736,
		-0.507880, -0.833097, 0.219107,
		-0.826039, 0.398844, -0.398224,
		45.569855, 33.202389, 28.765514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114300, 32.527416, 28.418964>,  <46.148083, 32.923199, 29.044271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114300, 32.527416, 28.418964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817677, 32.787136, 28.351433>,  <45.639702, 32.942970, 28.310913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817677, 32.787136, 28.351433>,  <46.114300, 32.527416, 28.418964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817677, 32.787136, 28.351433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071630, -0.326835, -0.942363,
		-0.667059, -0.686720, 0.288875,
		-0.741554, 0.649304, -0.168829,
		45.595211, 32.981926, 28.300785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508617, 32.166512, 28.053619>,  <46.114300, 32.527416, 28.418964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508617, 32.166512, 28.053619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.485882, 32.558323, 27.976377>,  <45.472240, 32.793411, 27.930033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.485882, 32.558323, 27.976377>,  <45.508617, 32.166512, 28.053619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485882, 32.558323, 27.976377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012325, -0.194093, -0.980906,
		-0.998307, -0.053373, 0.023105,
		-0.056839, 0.979530, -0.193107,
		45.468830, 32.852180, 27.918446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172997, 32.177738, 27.450823>,  <45.508617, 32.166512, 28.053619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172997, 32.177738, 27.450823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333359, 32.543926, 27.464581>,  <45.429577, 32.763641, 27.472836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333359, 32.543926, 27.464581>,  <45.172997, 32.177738, 27.450823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333359, 32.543926, 27.464581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021766, 0.028017, -0.999370,
		-0.915861, 0.401401, -0.008694,
		0.400905, 0.915474, 0.034396,
		45.453629, 32.818569, 27.474899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870953, 32.472885, 26.852325>,  <45.172997, 32.177738, 27.450823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870953, 32.472885, 26.852325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183754, 32.702812, 26.948700>,  <45.371437, 32.840767, 27.006525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183754, 32.702812, 26.948700>,  <44.870953, 32.472885, 26.852325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183754, 32.702812, 26.948700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186914, 0.152487, -0.970469,
		-0.594582, 0.803948, 0.011805,
		0.782008, 0.574817, 0.240935,
		45.418358, 32.875256, 27.020981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779850, 33.139912, 26.528887>,  <44.870953, 32.472885, 26.852325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779850, 33.139912, 26.528887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173195, 33.079361, 26.569056>,  <45.409203, 33.043030, 26.593157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.173195, 33.079361, 26.569056>,  <44.779850, 33.139912, 26.528887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173195, 33.079361, 26.569056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146080, 0.330351, -0.932485,
		0.107985, 0.931640, 0.346968,
		0.983361, -0.151379, 0.100421,
		45.468204, 33.033947, 26.599182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.079510, 40.697052, 40.545673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711792, 40.541550, 40.570198>,  <39.491161, 40.448246, 40.584915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711792, 40.541550, 40.570198>,  <40.079510, 40.697052, 40.545673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711792, 40.541550, 40.570198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262606, -0.721951, -0.640175,
		0.293139, -0.572410, 0.765778,
		-0.919297, -0.388758, 0.061314,
		39.436005, 40.424923, 40.588593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212421, 40.015522, 40.721756>,  <40.079510, 40.697052, 40.545673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212421, 40.015522, 40.721756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870071, 40.067829, 40.521606>,  <39.664661, 40.099213, 40.401516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870071, 40.067829, 40.521606>,  <40.212421, 40.015522, 40.721756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870071, 40.067829, 40.521606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251459, -0.740220, -0.623572,
		-0.451928, -0.659525, 0.600656,
		-0.855880, 0.130769, -0.500370,
		39.613308, 40.107059, 40.371494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106884, 39.384998, 40.496025>,  <40.212421, 40.015522, 40.721756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106884, 39.384998, 40.496025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838917, 39.591293, 40.282402>,  <39.678135, 39.715069, 40.154228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838917, 39.591293, 40.282402>,  <40.106884, 39.384998, 40.496025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838917, 39.591293, 40.282402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181380, -0.583852, -0.791340,
		-0.719937, -0.627002, 0.297590,
		-0.669920, 0.515738, -0.534062,
		39.637939, 39.746014, 40.122185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758755, 38.887341, 40.237160>,  <40.106884, 39.384998, 40.496025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758755, 38.887341, 40.237160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691814, 39.198147, 39.994431>,  <39.651649, 39.384632, 39.848793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691814, 39.198147, 39.994431>,  <39.758755, 38.887341, 40.237160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691814, 39.198147, 39.994431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237994, -0.565463, -0.789690,
		-0.956741, -0.276575, -0.090296,
		-0.167349, 0.777019, -0.606825,
		39.641609, 39.431252, 39.812382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294945, 38.618584, 39.650810>,  <39.758755, 38.887341, 40.237160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294945, 38.618584, 39.650810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504040, 38.945793, 39.554821>,  <39.629498, 39.142120, 39.497227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504040, 38.945793, 39.554821>,  <39.294945, 38.618584, 39.650810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504040, 38.945793, 39.554821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303259, -0.441511, -0.844454,
		-0.796732, 0.368653, -0.478866,
		0.522735, 0.818024, -0.239969,
		39.660862, 39.191200, 39.482830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123268, 38.663776, 38.906895>,  <39.294945, 38.618584, 39.650810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123268, 38.663776, 38.906895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444759, 38.890869, 38.978119>,  <39.637653, 39.027126, 39.020855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444759, 38.890869, 38.978119>,  <39.123268, 38.663776, 38.906895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444759, 38.890869, 38.978119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383096, -0.264795, -0.884941,
		-0.455260, 0.779464, -0.430319,
		0.803726, 0.567732, 0.178059,
		39.685879, 39.061188, 39.031536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219955, 38.993896, 38.269073>,  <39.123268, 38.663776, 38.906895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219955, 38.993896, 38.269073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567604, 39.016979, 38.465557>,  <39.776196, 39.030830, 38.583447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567604, 39.016979, 38.465557>,  <39.219955, 38.993896, 38.269073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567604, 39.016979, 38.465557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481266, -0.327659, -0.813033,
		0.114030, 0.943032, -0.312551,
		0.869126, 0.057710, 0.491212,
		39.828342, 39.034290, 38.612919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776218, 39.387352, 37.830944>,  <39.219955, 38.993896, 38.269073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776218, 39.387352, 37.830944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966633, 39.139988, 38.081047>,  <40.080883, 38.991570, 38.231110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966633, 39.139988, 38.081047>,  <39.776218, 39.387352, 37.830944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966633, 39.139988, 38.081047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604296, -0.286521, -0.743459,
		0.638917, 0.731758, 0.237311,
		0.476037, -0.618415, 0.625262,
		40.109444, 38.954464, 38.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378448, 39.488235, 37.606739>,  <39.776218, 39.387352, 37.830944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378448, 39.488235, 37.606739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384224, 39.164875, 37.842121>,  <40.387691, 38.970860, 37.983349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384224, 39.164875, 37.842121>,  <40.378448, 39.488235, 37.606739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384224, 39.164875, 37.842121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688194, -0.418905, -0.592375,
		0.725383, 0.413524, 0.550288,
		0.014443, -0.808403, 0.588452,
		40.388557, 38.922356, 38.018658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039223, 39.268967, 37.575039>,  <40.378448, 39.488235, 37.606739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039223, 39.268967, 37.575039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858543, 38.930931, 37.689438>,  <40.750137, 38.728107, 37.758076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858543, 38.930931, 37.689438>,  <41.039223, 39.268967, 37.575039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858543, 38.930931, 37.689438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539224, -0.513981, -0.667129,
		0.710780, -0.147124, 0.687856,
		-0.451695, -0.845091, 0.285995,
		40.723034, 38.677402, 37.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588863, 38.766483, 37.580715>,  <41.039223, 39.268967, 37.575039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588863, 38.766483, 37.580715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254375, 38.547585, 37.594883>,  <41.053684, 38.416245, 37.603382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254375, 38.547585, 37.594883>,  <41.588863, 38.766483, 37.580715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254375, 38.547585, 37.594883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413138, -0.671132, -0.615548,
		0.360630, -0.500100, 0.787303,
		-0.836219, -0.547250, 0.035420,
		41.003510, 38.383411, 37.605511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859352, 38.188545, 37.539230>,  <41.588863, 38.766483, 37.580715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859352, 38.188545, 37.539230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491322, 38.094143, 37.414169>,  <41.270500, 38.037502, 37.339130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491322, 38.094143, 37.414169>,  <41.859352, 38.188545, 37.539230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491322, 38.094143, 37.414169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379079, -0.737609, -0.558778,
		-0.098743, -0.632641, 0.768124,
		-0.920081, -0.236004, -0.312654,
		41.215298, 38.023342, 37.320374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648388, 37.369583, 37.623028>,  <41.859352, 38.188545, 37.539230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648388, 37.369583, 37.623028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450035, 37.561344, 37.333401>,  <41.331024, 37.676403, 37.159626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450035, 37.561344, 37.333401>,  <41.648388, 37.369583, 37.623028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450035, 37.561344, 37.333401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192319, -0.752470, -0.629923,
		-0.846824, -0.451620, 0.280940,
		-0.495885, 0.479404, -0.724065,
		41.301270, 37.705166, 37.116180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869888, 37.256451, 36.915169>,  <41.648388, 37.369583, 37.623028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869888, 37.256451, 36.915169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770618, 36.962383, 36.662838>,  <41.711056, 36.785942, 36.511440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770618, 36.962383, 36.662838>,  <41.869888, 37.256451, 36.915169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770618, 36.962383, 36.662838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778979, -0.235648, 0.581087,
		-0.575847, 0.635612, -0.514196,
		-0.248177, -0.735165, -0.630826,
		41.696167, 36.741833, 36.473591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114277, 37.277260, 36.603432>,  <41.869888, 37.256451, 36.915169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114277, 37.277260, 36.603432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250885, 36.901436, 36.593769>,  <41.332851, 36.675941, 36.587971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250885, 36.901436, 36.593769>,  <41.114277, 37.277260, 36.603432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250885, 36.901436, 36.593769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790496, -0.301052, 0.533370,
		-0.508408, -0.163059, -0.845537,
		0.341522, -0.939563, -0.024159,
		41.353340, 36.619568, 36.586521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551685, 36.904552, 36.384190>,  <41.114277, 37.277260, 36.603432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551685, 36.904552, 36.384190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792492, 36.633507, 36.553146>,  <40.936977, 36.470879, 36.654518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792492, 36.633507, 36.553146>,  <40.551685, 36.904552, 36.384190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792492, 36.633507, 36.553146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789277, -0.424917, 0.443268,
		-0.120884, -0.600238, -0.790633,
		0.602020, -0.677613, 0.422388,
		40.973099, 36.430222, 36.679863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119503, 36.345871, 36.414654>,  <40.551685, 36.904552, 36.384190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119503, 36.345871, 36.414654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415318, 36.237812, 36.661266>,  <40.592804, 36.172977, 36.809235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415318, 36.237812, 36.661266>,  <40.119503, 36.345871, 36.414654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415318, 36.237812, 36.661266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638700, -0.570768, 0.516029,
		0.212493, -0.775400, -0.594644,
		0.739533, -0.270147, 0.616532,
		40.637177, 36.156769, 36.846226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961464, 35.615459, 36.637169>,  <40.119503, 36.345871, 36.414654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961464, 35.615459, 36.637169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199516, 35.765724, 36.921337>,  <40.342346, 35.855881, 37.091839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199516, 35.765724, 36.921337>,  <39.961464, 35.615459, 36.637169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199516, 35.765724, 36.921337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607955, -0.367671, 0.703711,
		0.525557, -0.850705, 0.009571,
		0.595131, 0.375659, 0.710422,
		40.378056, 35.878422, 37.134464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061199, 35.042149, 37.041782>,  <39.961464, 35.615459, 36.637169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061199, 35.042149, 37.041782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165485, 35.370449, 37.245110>,  <40.228058, 35.567429, 37.367107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165485, 35.370449, 37.245110>,  <40.061199, 35.042149, 37.041782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165485, 35.370449, 37.245110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444612, -0.365287, 0.817854,
		0.856940, -0.439235, 0.269680,
		0.260719, 0.820754, 0.508319,
		40.243702, 35.616676, 37.397606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366253, 34.811470, 37.720165>,  <40.061199, 35.042149, 37.041782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366253, 34.811470, 37.720165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188919, 35.169994, 37.723686>,  <40.082520, 35.385109, 37.725800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188919, 35.169994, 37.723686>,  <40.366253, 34.811470, 37.720165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188919, 35.169994, 37.723686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519780, -0.265073, 0.812136,
		0.730261, 0.355473, 0.583402,
		-0.443337, 0.896312, 0.008804,
		40.055920, 35.438889, 37.726326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530064, 34.817936, 38.340782>,  <40.366253, 34.811470, 37.720165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530064, 34.817936, 38.340782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276531, 35.121502, 38.281048>,  <40.124413, 35.303642, 38.245209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276531, 35.121502, 38.281048>,  <40.530064, 34.817936, 38.340782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276531, 35.121502, 38.281048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302962, -0.065951, 0.950718,
		0.711667, 0.647840, 0.271724,
		-0.633834, 0.758916, -0.149336,
		40.086380, 35.349178, 38.236248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566971, 35.265766, 38.938934>,  <40.530064, 34.817936, 38.340782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566971, 35.265766, 38.938934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214493, 35.348389, 38.768837>,  <40.003006, 35.397961, 38.666779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214493, 35.348389, 38.768837>,  <40.566971, 35.265766, 38.938934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214493, 35.348389, 38.768837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444628, -0.056445, 0.893935,
		0.160641, 0.976806, 0.141578,
		-0.881193, 0.206553, -0.425248,
		39.950134, 35.410355, 38.641262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256771, 35.726883, 39.388092>,  <40.566971, 35.265766, 38.938934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256771, 35.726883, 39.388092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948139, 35.600285, 39.167366>,  <39.762962, 35.524326, 39.034931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948139, 35.600285, 39.167366>,  <40.256771, 35.726883, 39.388092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948139, 35.600285, 39.167366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570188, -0.040534, 0.820513,
		-0.282055, 0.947728, -0.149186,
		-0.771577, -0.316494, -0.551816,
		39.716667, 35.505337, 39.001820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731422, 36.153984, 39.549099>,  <40.256771, 35.726883, 39.388092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731422, 36.153984, 39.549099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565823, 35.825840, 39.391308>,  <39.466461, 35.628952, 39.296635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565823, 35.825840, 39.391308>,  <39.731422, 36.153984, 39.549099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565823, 35.825840, 39.391308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677036, -0.012171, 0.735849,
		-0.608462, 0.571718, -0.550375,
		-0.414000, -0.820360, -0.394479,
		39.441624, 35.579731, 39.272964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045898, 36.338570, 39.698292>,  <39.731422, 36.153984, 39.549099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045898, 36.338570, 39.698292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098061, 35.946568, 39.638187>,  <39.129360, 35.711365, 39.602123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098061, 35.946568, 39.638187>,  <39.045898, 36.338570, 39.698292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098061, 35.946568, 39.638187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729329, -0.197484, 0.655041,
		-0.671619, 0.024167, -0.740502,
		0.130407, -0.980008, -0.150260,
		39.137184, 35.652565, 39.593109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416180, 36.131142, 39.655499>,  <39.045898, 36.338570, 39.698292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416180, 36.131142, 39.655499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638153, 35.813896, 39.755909>,  <38.771339, 35.623547, 39.816154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638153, 35.813896, 39.755909>,  <38.416180, 36.131142, 39.655499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638153, 35.813896, 39.755909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602265, -0.174872, 0.778907,
		-0.573867, -0.583426, -0.574709,
		0.554935, -0.793116, 0.251024,
		38.804634, 35.575962, 39.831215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844826, 35.571144, 39.911053>,  <38.416180, 36.131142, 39.655499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844826, 35.571144, 39.911053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196384, 35.457325, 40.064190>,  <38.407322, 35.389034, 40.156071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196384, 35.457325, 40.064190>,  <37.844826, 35.571144, 39.911053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196384, 35.457325, 40.064190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429234, -0.121678, 0.894960,
		-0.208079, -0.950907, -0.229082,
		0.878898, -0.284552, 0.382843,
		38.460052, 35.371960, 40.179043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757374, 34.927670, 40.250454>,  <37.844826, 35.571144, 39.911053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757374, 34.927670, 40.250454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086250, 35.068722, 40.429180>,  <38.283577, 35.153355, 40.536415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086250, 35.068722, 40.429180>,  <37.757374, 34.927670, 40.250454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086250, 35.068722, 40.429180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412972, -0.170664, 0.894611,
		0.391725, -0.920067, 0.005309,
		0.822195, 0.352634, 0.446815,
		38.332909, 35.174511, 40.563225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683777, 34.135159, 40.267735>,  <37.757374, 34.927670, 40.250454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683777, 34.135159, 40.267735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300968, 34.019718, 40.256233>,  <37.071285, 33.950455, 40.249332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300968, 34.019718, 40.256233>,  <37.683777, 34.135159, 40.267735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300968, 34.019718, 40.256233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084798, -0.183611, -0.979335,
		0.277354, -0.939680, 0.200191,
		-0.957018, -0.288598, -0.028758,
		37.013863, 33.933140, 40.247604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764965, 33.611134, 39.756512>,  <37.683777, 34.135159, 40.267735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764965, 33.611134, 39.756512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378826, 33.709454, 39.791588>,  <37.147144, 33.768444, 39.812634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378826, 33.709454, 39.791588>,  <37.764965, 33.611134, 39.756512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378826, 33.709454, 39.791588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153506, -0.263076, -0.952485,
		-0.211048, -0.932939, 0.291690,
		-0.965347, 0.245796, 0.087690,
		37.089222, 33.783195, 39.817894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381886, 33.046886, 39.517662>,  <37.764965, 33.611134, 39.756512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381886, 33.046886, 39.517662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172447, 33.381245, 39.451786>,  <37.046783, 33.581860, 39.412258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172447, 33.381245, 39.451786>,  <37.381886, 33.046886, 39.517662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172447, 33.381245, 39.451786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092567, -0.247979, -0.964333,
		-0.846925, -0.489672, 0.207217,
		-0.523593, 0.835899, -0.164692,
		37.015369, 33.632015, 39.402378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890045, 32.840313, 39.113262>,  <37.381886, 33.046886, 39.517662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890045, 32.840313, 39.113262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911736, 33.234642, 39.049751>,  <36.924747, 33.471241, 39.011646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911736, 33.234642, 39.049751>,  <36.890045, 32.840313, 39.113262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911736, 33.234642, 39.049751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059260, -0.161904, -0.985025,
		-0.996769, 0.044002, -0.067199,
		0.054222, 0.985825, -0.158773,
		36.928001, 33.530388, 39.002121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734318, 32.834137, 38.365353>,  <36.890045, 32.840313, 39.113262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734318, 32.834137, 38.365353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849159, 33.204773, 38.462513>,  <36.918064, 33.427155, 38.520809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849159, 33.204773, 38.462513>,  <36.734318, 32.834137, 38.365353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849159, 33.204773, 38.462513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066593, 0.233660, -0.970035,
		-0.955581, 0.294678, 0.005381,
		0.287106, 0.926589, 0.242905,
		36.935291, 33.482750, 38.535385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377274, 33.238548, 37.942539>,  <36.734318, 32.834137, 38.365353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377274, 33.238548, 37.942539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700790, 33.453209, 38.038746>,  <36.894901, 33.582005, 38.096470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700790, 33.453209, 38.038746>,  <36.377274, 33.238548, 37.942539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700790, 33.453209, 38.038746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102259, 0.274416, -0.956159,
		-0.579130, 0.797933, 0.167068,
		0.808796, 0.536656, 0.240518,
		36.943428, 33.614204, 38.110901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241314, 33.889194, 37.726322>,  <36.377274, 33.238548, 37.942539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241314, 33.889194, 37.726322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632595, 33.806149, 37.727535>,  <36.867363, 33.756321, 37.728264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632595, 33.806149, 37.727535>,  <36.241314, 33.889194, 37.726322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632595, 33.806149, 37.727535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048335, 0.213487, -0.975750,
		0.201928, 0.954632, 0.218869,
		0.978207, -0.207610, 0.003034,
		36.926056, 33.743866, 37.728447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561916, 34.335247, 37.173412>,  <36.241314, 33.889194, 37.726322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561916, 34.335247, 37.173412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867859, 34.086243, 37.239704>,  <37.051426, 33.936840, 37.279480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867859, 34.086243, 37.239704>,  <36.561916, 34.335247, 37.173412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867859, 34.086243, 37.239704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309661, 0.129694, -0.941960,
		0.564888, 0.771789, 0.291965,
		0.764861, -0.622512, 0.165731,
		37.097317, 33.899490, 37.289425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832668, 34.396393, 36.585800>,  <36.561916, 34.335247, 37.173412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832668, 34.396393, 36.585800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031662, 34.089516, 36.747753>,  <37.151058, 33.905392, 36.844925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031662, 34.089516, 36.747753>,  <36.832668, 34.396393, 36.585800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031662, 34.089516, 36.747753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249457, -0.320496, -0.913813,
		0.830831, 0.555608, 0.031939,
		0.497485, -0.767191, 0.404878,
		37.180908, 33.859360, 36.869217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435188, 34.504482, 36.253601>,  <36.832668, 34.396393, 36.585800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435188, 34.504482, 36.253601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410202, 34.130672, 36.393753>,  <37.395210, 33.906387, 36.477844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410202, 34.130672, 36.393753>,  <37.435188, 34.504482, 36.253601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410202, 34.130672, 36.393753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382717, -0.346659, -0.856362,
		0.921751, 0.080604, 0.379311,
		-0.062465, -0.934521, 0.350382,
		37.391464, 33.850315, 36.498867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084915, 34.241268, 36.267933>,  <37.435188, 34.504482, 36.253601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084915, 34.241268, 36.267933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851788, 33.917366, 36.240780>,  <37.711910, 33.723022, 36.224487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851788, 33.917366, 36.240780>,  <38.084915, 34.241268, 36.267933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851788, 33.917366, 36.240780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434450, -0.239914, -0.868156,
		0.686711, -0.535473, 0.491627,
		-0.582822, -0.809759, -0.067884,
		37.676941, 33.674438, 36.220413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449284, 33.558746, 36.281658>,  <38.084915, 34.241268, 36.267933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449284, 33.558746, 36.281658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122120, 33.612007, 36.057766>,  <37.925823, 33.643963, 35.923431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122120, 33.612007, 36.057766>,  <38.449284, 33.558746, 36.281658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122120, 33.612007, 36.057766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474409, -0.394350, -0.787035,
		-0.325525, -0.909263, 0.259374,
		-0.817906, 0.133150, -0.559733,
		37.876747, 33.651951, 35.889847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.958233, 33.516529, 44.131851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610989, 33.682190, 44.022408>,  <36.402641, 33.781586, 43.956741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.610989, 33.682190, 44.022408>,  <36.958233, 33.516529, 44.131851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610989, 33.682190, 44.022408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248150, -0.115289, -0.961837,
		-0.429890, -0.902877, -0.002688,
		-0.868111, 0.414151, -0.273611,
		36.350555, 33.806435, 43.940323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822433, 33.236946, 43.528717>,  <36.958233, 33.516529, 44.131851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822433, 33.236946, 43.528717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562763, 33.534466, 43.465050>,  <36.406963, 33.712978, 43.426849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.562763, 33.534466, 43.465050>,  <36.822433, 33.236946, 43.528717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562763, 33.534466, 43.465050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211560, -0.024445, -0.977059,
		-0.730629, -0.667954, -0.141490,
		-0.649172, 0.743801, -0.159173,
		36.368011, 33.757607, 43.417297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478394, 33.085075, 42.849426>,  <36.822433, 33.236946, 43.528717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478394, 33.085075, 42.849426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.411373, 33.474361, 42.912384>,  <36.371162, 33.707935, 42.950161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.411373, 33.474361, 42.912384>,  <36.478394, 33.085075, 42.849426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411373, 33.474361, 42.912384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053185, 0.150500, -0.987178,
		-0.984428, -0.173770, 0.026545,
		-0.167547, 0.973218, 0.157398,
		36.361111, 33.766327, 42.959602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750824, 33.273926, 42.575642>,  <36.478394, 33.085075, 42.849426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750824, 33.273926, 42.575642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.983597, 33.599220, 42.574978>,  <36.123260, 33.794395, 42.574577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.983597, 33.599220, 42.574978>,  <35.750824, 33.273926, 42.575642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983597, 33.599220, 42.574978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022041, -0.017814, -0.999599,
		-0.812936, 0.581665, -0.028291,
		0.581935, 0.813234, -0.001661,
		36.158176, 33.843189, 42.574478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461231, 33.802662, 42.015717>,  <35.750824, 33.273926, 42.575642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461231, 33.802662, 42.015717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837891, 33.915604, 42.089005>,  <36.063889, 33.983368, 42.132977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.837891, 33.915604, 42.089005>,  <35.461231, 33.802662, 42.015717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837891, 33.915604, 42.089005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194690, -0.012877, -0.980780,
		-0.274569, 0.959223, -0.067097,
		0.941652, 0.282355, 0.183216,
		36.120384, 34.000309, 42.143970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542076, 34.373859, 41.615696>,  <35.461231, 33.802662, 42.015717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542076, 34.373859, 41.615696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900345, 34.214359, 41.694447>,  <36.115307, 34.118660, 41.741695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900345, 34.214359, 41.694447>,  <35.542076, 34.373859, 41.615696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900345, 34.214359, 41.694447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200530, -0.032991, -0.979132,
		0.396927, 0.916465, 0.050413,
		0.895677, -0.398753, 0.196874,
		36.169048, 34.094734, 41.753510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898319, 34.748100, 41.114944>,  <35.542076, 34.373859, 41.615696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898319, 34.748100, 41.114944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115967, 34.434158, 41.233562>,  <36.246555, 34.245792, 41.304733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.115967, 34.434158, 41.233562>,  <35.898319, 34.748100, 41.114944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115967, 34.434158, 41.233562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392198, -0.074525, -0.916857,
		0.741700, 0.615182, 0.267268,
		0.544116, -0.784854, 0.296549,
		36.279202, 34.198704, 41.322529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560638, 34.921844, 40.914345>,  <35.898319, 34.748100, 41.114944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560638, 34.921844, 40.914345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554604, 34.526394, 40.974190>,  <36.550983, 34.289124, 41.010098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.554604, 34.526394, 40.974190>,  <36.560638, 34.921844, 40.914345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554604, 34.526394, 40.974190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369199, -0.144562, -0.918038,
		0.929228, 0.041385, 0.367182,
		-0.015088, -0.988630, 0.149610,
		36.550076, 34.229805, 41.019073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197884, 34.716618, 40.706558>,  <36.560638, 34.921844, 40.914345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197884, 34.716618, 40.706558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972809, 34.387527, 40.674301>,  <36.837765, 34.190075, 40.654945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972809, 34.387527, 40.674301>,  <37.197884, 34.716618, 40.706558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972809, 34.387527, 40.674301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373355, -0.165887, -0.912736,
		0.737553, -0.543696, 0.400511,
		-0.562691, -0.822724, -0.080641,
		36.804001, 34.140709, 40.650108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922237, 34.454548, 40.890903>,  <37.197884, 34.716618, 40.706558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922237, 34.454548, 40.890903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.098614, 34.808208, 40.952675>,  <38.204441, 35.020405, 40.989738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.098614, 34.808208, 40.952675>,  <37.922237, 34.454548, 40.890903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098614, 34.808208, 40.952675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161293, -0.091204, 0.982683,
		0.882924, -0.458215, 0.102392,
		0.440942, 0.884150, 0.154433,
		38.230896, 35.073452, 40.999004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311153, 34.441330, 41.525528>,  <37.922237, 34.454548, 40.890903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311153, 34.441330, 41.525528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260944, 34.828377, 41.437931>,  <38.230820, 35.060604, 41.385372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260944, 34.828377, 41.437931>,  <38.311153, 34.441330, 41.525528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260944, 34.828377, 41.437931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016141, 0.218718, 0.975655,
		0.991960, 0.126001, -0.011836,
		-0.125523, 0.967619, -0.218993,
		38.223289, 35.118664, 41.372234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879223, 34.749954, 41.853188>,  <38.311153, 34.441330, 41.525528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879223, 34.749954, 41.853188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619129, 35.049416, 41.801476>,  <38.463074, 35.229092, 41.770447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619129, 35.049416, 41.801476>,  <38.879223, 34.749954, 41.853188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619129, 35.049416, 41.801476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044410, 0.207328, 0.977263,
		0.758433, 0.629711, -0.168060,
		-0.650236, 0.748652, -0.129279,
		38.424057, 35.274010, 41.762691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204376, 35.366688, 42.293320>,  <38.879223, 34.749954, 41.853188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204376, 35.366688, 42.293320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836128, 35.506680, 42.224068>,  <38.615181, 35.590675, 42.182518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836128, 35.506680, 42.224068>,  <39.204376, 35.366688, 42.293320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836128, 35.506680, 42.224068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023310, 0.491862, 0.870361,
		0.389765, 0.797235, -0.460976,
		-0.920619, 0.349982, -0.173127,
		38.559944, 35.611675, 42.172131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152981, 36.119572, 42.287712>,  <39.204376, 35.366688, 42.293320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152981, 36.119572, 42.287712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.781002, 35.994602, 42.365269>,  <38.557816, 35.919621, 42.411804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.781002, 35.994602, 42.365269>,  <39.152981, 36.119572, 42.287712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781002, 35.994602, 42.365269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026172, 0.469726, 0.882424,
		-0.366768, 0.825680, -0.428642,
		-0.929944, -0.312427, 0.193890,
		38.502018, 35.900875, 42.423435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789894, 36.781769, 42.450180>,  <39.152981, 36.119572, 42.287712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789894, 36.781769, 42.450180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.580036, 36.474190, 42.596313>,  <38.454121, 36.289642, 42.683994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.580036, 36.474190, 42.596313>,  <38.789894, 36.781769, 42.450180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580036, 36.474190, 42.596313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144376, 0.503288, 0.851973,
		-0.838987, 0.394241, -0.375066,
		-0.524648, -0.768945, 0.365333,
		38.422642, 36.243507, 42.705914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285069, 37.137939, 42.826180>,  <38.789894, 36.781769, 42.450180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285069, 37.137939, 42.826180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274693, 36.765480, 42.971664>,  <38.268467, 36.542004, 43.058956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274693, 36.765480, 42.971664>,  <38.285069, 37.137939, 42.826180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274693, 36.765480, 42.971664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363537, 0.347710, 0.864256,
		-0.931219, -0.109801, -0.347528,
		-0.025943, -0.931150, 0.363711,
		38.266911, 36.486134, 43.080776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658478, 37.044434, 43.127636>,  <38.285069, 37.137939, 42.826180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658478, 37.044434, 43.127636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848923, 36.753986, 43.326057>,  <37.963188, 36.579720, 43.445110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848923, 36.753986, 43.326057>,  <37.658478, 37.044434, 43.127636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848923, 36.753986, 43.326057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363666, 0.351017, 0.862864,
		-0.800664, -0.591219, -0.096941,
		0.476114, -0.726117, 0.496053,
		37.991756, 36.536152, 43.474873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217976, 36.839363, 43.795456>,  <37.658478, 37.044434, 43.127636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217976, 36.839363, 43.795456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584312, 36.693687, 43.863098>,  <37.804115, 36.606281, 43.903683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584312, 36.693687, 43.863098>,  <37.217976, 36.839363, 43.795456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584312, 36.693687, 43.863098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068389, 0.273520, 0.959432,
		-0.395670, -0.890254, 0.225595,
		0.915843, -0.364191, 0.169107,
		37.859066, 36.584431, 43.913830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203575, 36.198101, 44.391361>,  <37.217976, 36.839363, 43.795456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203575, 36.198101, 44.391361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.563198, 36.373230, 44.390530>,  <37.778973, 36.478310, 44.390030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.563198, 36.373230, 44.390530>,  <37.203575, 36.198101, 44.391361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563198, 36.373230, 44.390530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001564, 0.007967, 0.999967,
		0.437829, -0.899024, 0.007847,
		0.899057, 0.437827, -0.002082,
		37.832916, 36.504578, 44.389904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607563, 35.809254, 44.909859>,  <37.203575, 36.198101, 44.391361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607563, 35.809254, 44.909859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.777485, 36.169647, 44.874622>,  <37.879440, 36.385883, 44.853481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.777485, 36.169647, 44.874622>,  <37.607563, 35.809254, 44.909859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777485, 36.169647, 44.874622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064380, 0.066993, 0.995674,
		0.902992, -0.428640, -0.029547,
		0.424807, 0.900988, -0.088090,
		37.904926, 36.439945, 44.848194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099361, 35.822445, 45.430637>,  <37.607563, 35.809254, 44.909859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099361, 35.822445, 45.430637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077126, 36.212200, 45.343479>,  <38.063786, 36.446053, 45.291183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077126, 36.212200, 45.343479>,  <38.099361, 35.822445, 45.430637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077126, 36.212200, 45.343479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073392, 0.221633, 0.972364,
		0.995753, 0.038063, -0.083833,
		-0.055591, 0.974387, -0.217898,
		38.060448, 36.504517, 45.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549641, 36.070927, 45.880383>,  <38.099361, 35.822445, 45.430637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549641, 36.070927, 45.880383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327614, 36.386547, 45.775089>,  <38.194397, 36.575920, 45.711914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327614, 36.386547, 45.775089>,  <38.549641, 36.070927, 45.880383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327614, 36.386547, 45.775089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013913, 0.325221, 0.945536,
		0.831686, 0.521177, -0.191499,
		-0.555071, 0.789054, -0.263231,
		38.161091, 36.623264, 45.696121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774849, 36.778755, 46.295456>,  <38.549641, 36.070927, 45.880383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774849, 36.778755, 46.295456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403915, 36.856598, 46.167591>,  <38.181355, 36.903305, 46.090870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.403915, 36.856598, 46.167591>,  <38.774849, 36.778755, 46.295456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403915, 36.856598, 46.167591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160961, 0.563724, 0.810127,
		0.337859, 0.802710, -0.491435,
		-0.927331, 0.194607, -0.319664,
		38.125717, 36.914978, 46.071693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.109493, 37.984180, 44.299969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442593, 37.842033, 44.469788>,  <32.642452, 37.756744, 44.571678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442593, 37.842033, 44.469788>,  <32.109493, 37.984180, 44.299969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442593, 37.842033, 44.469788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364692, -0.224865, -0.903568,
		0.416564, 0.907276, -0.057657,
		0.832751, -0.355367, 0.424547,
		32.692417, 37.735424, 44.597153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604832, 38.119183, 43.856140>,  <32.109493, 37.984180, 44.299969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604832, 38.119183, 43.856140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779102, 37.821934, 44.059296>,  <32.883663, 37.643585, 44.181190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779102, 37.821934, 44.059296>,  <32.604832, 38.119183, 43.856140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779102, 37.821934, 44.059296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510416, -0.260794, -0.819428,
		0.741391, 0.616242, 0.265680,
		0.435678, -0.743123, 0.507890,
		32.909805, 37.598995, 44.211662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428249, 38.162090, 43.731106>,  <32.604832, 38.119183, 43.856140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428249, 38.162090, 43.731106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322460, 37.802231, 43.870064>,  <33.258987, 37.586315, 43.953438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322460, 37.802231, 43.870064>,  <33.428249, 38.162090, 43.731106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322460, 37.802231, 43.870064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475121, -0.435017, -0.764866,
		0.839235, -0.037230, 0.542492,
		-0.264469, -0.899652, 0.347393,
		33.243118, 37.532333, 43.974281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090755, 37.774284, 43.678749>,  <33.428249, 38.162090, 43.731106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090755, 37.774284, 43.678749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797386, 37.503235, 43.700356>,  <33.621365, 37.340607, 43.713318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797386, 37.503235, 43.700356>,  <34.090755, 37.774284, 43.678749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797386, 37.503235, 43.700356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385278, -0.479837, -0.788236,
		0.560047, -0.557298, 0.612997,
		-0.733422, -0.677624, 0.054017,
		33.577358, 37.299946, 43.716560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385590, 37.121540, 43.571999>,  <34.090755, 37.774284, 43.678749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385590, 37.121540, 43.571999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996876, 37.076454, 43.489117>,  <33.763649, 37.049404, 43.439388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.996876, 37.076454, 43.489117>,  <34.385590, 37.121540, 43.571999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996876, 37.076454, 43.489117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235234, -0.398322, -0.886569,
		0.017393, -0.910294, 0.413596,
		-0.971783, -0.112712, -0.207204,
		33.705341, 37.042641, 43.426956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268044, 36.480335, 43.327900>,  <34.385590, 37.121540, 43.571999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268044, 36.480335, 43.327900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.937706, 36.648506, 43.177586>,  <33.739502, 36.749409, 43.087395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.937706, 36.648506, 43.177586>,  <34.268044, 36.480335, 43.327900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937706, 36.648506, 43.177586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181795, -0.432327, -0.883201,
		-0.533790, -0.797703, 0.280603,
		-0.825844, 0.420431, -0.375790,
		33.689953, 36.774635, 43.064850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982876, 35.982796, 42.932056>,  <34.268044, 36.480335, 43.327900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982876, 35.982796, 42.932056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815495, 36.318176, 42.792400>,  <33.715065, 36.519405, 42.708607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815495, 36.318176, 42.792400>,  <33.982876, 35.982796, 42.932056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815495, 36.318176, 42.792400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046412, -0.364167, -0.930177,
		-0.907052, -0.405439, 0.113472,
		-0.418453, 0.838452, -0.349136,
		33.689960, 36.569714, 42.687660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312347, 35.819252, 42.414593>,  <33.982876, 35.982796, 42.932056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312347, 35.819252, 42.414593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445923, 36.187069, 42.331707>,  <33.526066, 36.407757, 42.281975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.445923, 36.187069, 42.331707>,  <33.312347, 35.819252, 42.414593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445923, 36.187069, 42.331707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056881, -0.199773, -0.978190,
		-0.940878, 0.338439, -0.014407,
		0.333935, 0.919538, -0.207213,
		33.546104, 36.462929, 42.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882843, 36.118473, 41.854958>,  <33.312347, 35.819252, 42.414593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882843, 36.118473, 41.854958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.245998, 36.286083, 41.850155>,  <33.463894, 36.386650, 41.847275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.245998, 36.286083, 41.850155>,  <32.882843, 36.118473, 41.854958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245998, 36.286083, 41.850155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033004, 0.042901, -0.998534,
		-0.417901, 0.906959, 0.052779,
		0.907893, 0.419030, -0.012005,
		33.518368, 36.411793, 41.846554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831722, 36.439121, 41.153175>,  <32.882843, 36.118473, 41.854958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831722, 36.439121, 41.153175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210461, 36.517262, 41.255409>,  <33.437702, 36.564148, 41.316750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210461, 36.517262, 41.255409>,  <32.831722, 36.439121, 41.153175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210461, 36.517262, 41.255409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220752, 0.183349, -0.957941,
		-0.233998, 0.963442, 0.130479,
		0.946844, 0.195353, 0.255585,
		33.494514, 36.575867, 41.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048038, 37.095497, 40.915882>,  <32.831722, 36.439121, 41.153175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048038, 37.095497, 40.915882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384315, 36.881042, 40.946323>,  <33.586082, 36.752369, 40.964588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384315, 36.881042, 40.946323>,  <33.048038, 37.095497, 40.915882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384315, 36.881042, 40.946323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256654, 0.270740, -0.927808,
		0.476831, 0.799533, 0.365212,
		0.840691, -0.536141, 0.076106,
		33.636524, 36.720200, 40.969154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576012, 37.496307, 40.633919>,  <33.048038, 37.095497, 40.915882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576012, 37.496307, 40.633919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728485, 37.126682, 40.622551>,  <33.819969, 36.904907, 40.615730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728485, 37.126682, 40.622551>,  <33.576012, 37.496307, 40.633919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728485, 37.126682, 40.622551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452528, 0.213300, -0.865865,
		0.806173, 0.317198, 0.499471,
		0.381187, -0.924061, -0.028416,
		33.842842, 36.849464, 40.614025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324966, 37.613152, 40.480228>,  <33.576012, 37.496307, 40.633919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324966, 37.613152, 40.480228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234493, 37.236732, 40.379616>,  <34.180210, 37.010880, 40.319248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234493, 37.236732, 40.379616>,  <34.324966, 37.613152, 40.480228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234493, 37.236732, 40.379616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448572, 0.128586, -0.884448,
		0.864653, -0.312875, 0.393045,
		-0.226181, -0.941050, -0.251529,
		34.166637, 36.954418, 40.304157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821072, 37.433201, 40.060883>,  <34.324966, 37.613152, 40.480228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821072, 37.433201, 40.060883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559792, 37.142879, 39.974590>,  <34.403023, 36.968689, 39.922813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559792, 37.142879, 39.974590>,  <34.821072, 37.433201, 40.060883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559792, 37.142879, 39.974590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311741, 0.001865, -0.950166,
		0.690032, -0.687904, 0.225043,
		-0.653202, -0.725800, -0.215735,
		34.363831, 36.925140, 39.909870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459850, 37.591576, 40.519043>,  <34.821072, 37.433201, 40.060883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459850, 37.591576, 40.519043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708298, 37.902863, 40.481953>,  <35.857365, 38.089634, 40.459698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708298, 37.902863, 40.481953>,  <35.459850, 37.591576, 40.519043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708298, 37.902863, 40.481953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339059, 0.373491, 0.863448,
		0.706578, -0.504864, 0.495842,
		0.621117, 0.778214, -0.092721,
		35.894634, 38.136326, 40.454136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829594, 37.725315, 41.113121>,  <35.459850, 37.591576, 40.519043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829594, 37.725315, 41.113121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847275, 38.087177, 40.943581>,  <35.857883, 38.304295, 40.841858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.847275, 38.087177, 40.943581>,  <35.829594, 37.725315, 41.113121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847275, 38.087177, 40.943581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041714, 0.425568, 0.903965,
		0.998151, -0.022279, 0.056549,
		0.044205, 0.904652, -0.423851,
		35.860535, 38.358574, 40.816425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210033, 38.163548, 41.558144>,  <35.829594, 37.725315, 41.113121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210033, 38.163548, 41.558144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.008663, 38.428452, 41.336163>,  <35.887840, 38.587395, 41.202972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.008663, 38.428452, 41.336163>,  <36.210033, 38.163548, 41.558144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008663, 38.428452, 41.336163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283703, 0.479974, 0.830143,
		0.816132, 0.575361, -0.053748,
		-0.503430, 0.662258, -0.554953,
		35.857635, 38.627129, 41.169678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479027, 38.772141, 41.750572>,  <36.210033, 38.163548, 41.558144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479027, 38.772141, 41.750572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.139282, 38.863590, 41.560284>,  <35.935436, 38.918461, 41.446110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.139282, 38.863590, 41.560284>,  <36.479027, 38.772141, 41.750572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139282, 38.863590, 41.560284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207783, 0.683699, 0.699558,
		0.485189, 0.693026, -0.533204,
		-0.849363, 0.228627, -0.475722,
		35.884472, 38.932178, 41.417568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449177, 39.527340, 41.784126>,  <36.479027, 38.772141, 41.750572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449177, 39.527340, 41.784126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074753, 39.393353, 41.741077>,  <35.850098, 39.312962, 41.715248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074753, 39.393353, 41.741077>,  <36.449177, 39.527340, 41.784126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074753, 39.393353, 41.741077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275296, 0.506842, 0.816898,
		-0.219086, 0.794296, -0.566652,
		-0.936063, -0.334969, -0.107625,
		35.793934, 39.292862, 41.708790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186901, 40.136887, 41.828018>,  <36.449177, 39.527340, 41.784126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186901, 40.136887, 41.828018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888023, 39.876602, 41.882092>,  <35.708698, 39.720432, 41.914536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.888023, 39.876602, 41.882092>,  <36.186901, 40.136887, 41.828018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888023, 39.876602, 41.882092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377967, 0.583362, 0.718909,
		-0.546665, 0.486069, -0.681832,
		-0.747194, -0.650712, 0.135186,
		35.663864, 39.681389, 41.922646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528919, 40.530781, 41.852047>,  <36.186901, 40.136887, 41.828018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528919, 40.530781, 41.852047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465260, 40.187263, 42.046837>,  <35.427063, 39.981152, 42.163712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465260, 40.187263, 42.046837>,  <35.528919, 40.530781, 41.852047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465260, 40.187263, 42.046837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566283, 0.483456, 0.667528,
		-0.808700, -0.169530, -0.563262,
		-0.159147, -0.858796, 0.486973,
		35.417515, 39.929626, 42.192928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820354, 40.553581, 42.056698>,  <35.528919, 40.530781, 41.852047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820354, 40.553581, 42.056698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008480, 40.312641, 42.314682>,  <35.121357, 40.168076, 42.469471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008480, 40.312641, 42.314682>,  <34.820354, 40.553581, 42.056698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008480, 40.312641, 42.314682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548537, 0.372967, 0.748333,
		-0.691309, -0.705739, -0.154999,
		0.470318, -0.602352, 0.644960,
		35.149574, 40.131935, 42.508171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309750, 40.421322, 42.564049>,  <34.820354, 40.553581, 42.056698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309750, 40.421322, 42.564049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.624680, 40.275772, 42.763134>,  <34.813637, 40.188442, 42.882584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.624680, 40.275772, 42.763134>,  <34.309750, 40.421322, 42.564049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624680, 40.275772, 42.763134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319297, 0.449938, 0.834030,
		-0.527420, -0.815570, 0.238064,
		0.787324, -0.363871, 0.497715,
		34.860878, 40.166611, 42.912449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020248, 40.017593, 43.159718>,  <34.309750, 40.421322, 42.564049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020248, 40.017593, 43.159718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394463, 40.123547, 43.253193>,  <34.618992, 40.187119, 43.309277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394463, 40.123547, 43.253193>,  <34.020248, 40.017593, 43.159718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394463, 40.123547, 43.253193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281653, 0.160130, 0.946060,
		0.213176, -0.950892, 0.224412,
		0.935536, 0.264884, 0.233685,
		34.675125, 40.203011, 43.323299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087585, 39.664909, 43.799519>,  <34.020248, 40.017593, 43.159718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087585, 39.664909, 43.799519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360321, 39.957016, 43.782501>,  <34.523960, 40.132278, 43.772293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360321, 39.957016, 43.782501>,  <34.087585, 39.664909, 43.799519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360321, 39.957016, 43.782501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219078, 0.259340, 0.940610,
		0.697929, -0.632022, 0.336813,
		0.681836, 0.730267, -0.042539,
		34.564873, 40.176098, 43.769741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629833, 39.564434, 44.312508>,  <34.087585, 39.664909, 43.799519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629833, 39.564434, 44.312508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631245, 39.952885, 44.217087>,  <34.632092, 40.185955, 44.159832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631245, 39.952885, 44.217087>,  <34.629833, 39.564434, 44.312508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631245, 39.952885, 44.217087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091874, 0.237863, 0.966944,
		0.995765, 0.018501, 0.090061,
		0.003533, 0.971123, -0.238556,
		34.632305, 40.244221, 44.145519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003544, 39.810581, 44.778854>,  <34.629833, 39.564434, 44.312508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003544, 39.810581, 44.778854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824524, 40.146584, 44.656155>,  <34.717113, 40.348183, 44.582535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824524, 40.146584, 44.656155>,  <35.003544, 39.810581, 44.778854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824524, 40.146584, 44.656155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055562, 0.316233, 0.947053,
		0.892531, 0.440897, -0.094858,
		-0.447550, 0.840004, -0.306745,
		34.690258, 40.398586, 44.564133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356003, 40.377651, 45.140770>,  <35.003544, 39.810581, 44.778854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356003, 40.377651, 45.140770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010036, 40.534119, 45.014973>,  <34.802456, 40.627998, 44.939495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010036, 40.534119, 45.014973>,  <35.356003, 40.377651, 45.140770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010036, 40.534119, 45.014973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232359, 0.243337, 0.941699,
		0.444895, 0.887565, -0.119573,
		-0.864915, 0.391173, -0.314493,
		34.750561, 40.651470, 44.920624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938148, 40.892853, 45.211697>,  <35.356003, 40.377651, 45.140770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938148, 40.892853, 45.211697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300335, 40.804649, 45.356750>,  <36.517647, 40.751728, 45.443783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300335, 40.804649, 45.356750>,  <35.938148, 40.892853, 45.211697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300335, 40.804649, 45.356750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385605, 0.070498, -0.919967,
		0.177298, 0.972834, 0.148863,
		0.905469, -0.220511, 0.362630,
		36.571976, 40.738495, 45.465538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521984, 41.444378, 44.885956>,  <35.938148, 40.892853, 45.211697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521984, 41.444378, 44.885956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687656, 41.101349, 45.007954>,  <36.787060, 40.895531, 45.081154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687656, 41.101349, 45.007954>,  <36.521984, 41.444378, 44.885956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687656, 41.101349, 45.007954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514916, -0.055553, -0.855439,
		0.750546, 0.511351, 0.418570,
		0.414177, -0.857575, 0.304998,
		36.811909, 40.844078, 45.099453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206600, 41.613575, 44.949600>,  <36.521984, 41.444378, 44.885956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206600, 41.613575, 44.949600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216164, 41.213715, 44.945229>,  <37.221901, 40.973797, 44.942608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216164, 41.213715, 44.945229>,  <37.206600, 41.613575, 44.949600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216164, 41.213715, 44.945229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706608, 0.024629, -0.707176,
		0.707201, 0.009186, 0.706953,
		0.023907, -0.999654, -0.010927,
		37.223335, 40.913818, 44.941952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862991, 41.524513, 44.812778>,  <37.206600, 41.613575, 44.949600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862991, 41.524513, 44.812778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663918, 41.193531, 44.708748>,  <37.544476, 40.994942, 44.646332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663918, 41.193531, 44.708748>,  <37.862991, 41.524513, 44.812778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663918, 41.193531, 44.708748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594408, -0.107010, -0.797012,
		0.631659, -0.551246, 0.545100,
		-0.497681, -0.827452, -0.260072,
		37.514614, 40.945297, 44.630726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399036, 41.051044, 44.578682>,  <37.862991, 41.524513, 44.812778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399036, 41.051044, 44.578682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043743, 40.983994, 44.407597>,  <37.830566, 40.943764, 44.304947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043743, 40.983994, 44.407597>,  <38.399036, 41.051044, 44.578682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043743, 40.983994, 44.407597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437696, -0.026101, -0.898744,
		0.139489, -0.985505, 0.096553,
		-0.888237, -0.167625, -0.427711,
		37.777271, 40.933704, 44.279282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461121, 40.406796, 44.199905>,  <38.399036, 41.051044, 44.578682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461121, 40.406796, 44.199905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158154, 40.608242, 44.033684>,  <37.976372, 40.729111, 43.933952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158154, 40.608242, 44.033684>,  <38.461121, 40.406796, 44.199905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158154, 40.608242, 44.033684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413458, -0.122629, -0.902228,
		-0.505338, -0.855178, -0.115344,
		-0.757421, 0.503620, -0.415549,
		37.930927, 40.759327, 43.909019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500523, 40.247807, 43.438576>,  <38.461121, 40.406796, 44.199905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500523, 40.247807, 43.438576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194889, 40.504444, 43.411667>,  <38.011509, 40.658428, 43.395519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194889, 40.504444, 43.411667>,  <38.500523, 40.247807, 43.438576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194889, 40.504444, 43.411667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026594, -0.072869, -0.996987,
		-0.644564, -0.763574, 0.038616,
		-0.764088, 0.641595, -0.067275,
		37.965664, 40.696922, 43.391483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147579, 39.962193, 42.935719>,  <38.500523, 40.247807, 43.438576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147579, 39.962193, 42.935719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056931, 40.351547, 42.949299>,  <38.002541, 40.585159, 42.957447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056931, 40.351547, 42.949299>,  <38.147579, 39.962193, 42.935719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056931, 40.351547, 42.949299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171439, 0.074175, -0.982398,
		-0.958775, -0.216817, -0.183687,
		-0.226626, 0.973390, 0.033947,
		37.988941, 40.643566, 42.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551746, 40.071884, 42.513409>,  <38.147579, 39.962193, 42.935719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551746, 40.071884, 42.513409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.747810, 40.419113, 42.544891>,  <37.865448, 40.627449, 42.563782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.747810, 40.419113, 42.544891>,  <37.551746, 40.071884, 42.513409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747810, 40.419113, 42.544891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005343, 0.093289, -0.995625,
		-0.871614, 0.487598, 0.050365,
		0.490163, 0.868070, 0.078706,
		37.894859, 40.679535, 42.568504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314461, 40.567234, 42.011375>,  <37.551746, 40.071884, 42.513409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314461, 40.567234, 42.011375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669979, 40.718758, 42.114567>,  <37.883289, 40.809669, 42.176483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669979, 40.718758, 42.114567>,  <37.314461, 40.567234, 42.011375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669979, 40.718758, 42.114567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275916, 0.007200, -0.961155,
		-0.365947, 0.925449, -0.098119,
		0.888793, 0.378805, 0.257981,
		37.936619, 40.832397, 42.191959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562031, 40.780720, 41.427059>,  <37.314461, 40.567234, 42.011375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562031, 40.780720, 41.427059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893196, 40.850220, 41.640366>,  <38.091896, 40.891918, 41.768349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893196, 40.850220, 41.640366>,  <37.562031, 40.780720, 41.427059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893196, 40.850220, 41.640366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499241, 0.204963, -0.841872,
		-0.255576, 0.963224, 0.082947,
		0.827912, 0.173751, 0.533265,
		38.141571, 40.902344, 41.800346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903469, 41.358639, 41.153610>,  <37.562031, 40.780720, 41.427059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903469, 41.358639, 41.153610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181408, 41.120388, 41.314812>,  <38.348171, 40.977436, 41.411533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181408, 41.120388, 41.314812>,  <37.903469, 41.358639, 41.153610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181408, 41.120388, 41.314812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547334, 0.074494, -0.833592,
		0.466490, 0.799797, 0.377771,
		0.694847, -0.595630, 0.403006,
		38.389862, 40.941700, 41.435715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555580, 41.679100, 41.070042>,  <37.903469, 41.358639, 41.153610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555580, 41.679100, 41.070042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602642, 41.285152, 41.120930>,  <38.630878, 41.048782, 41.151463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602642, 41.285152, 41.120930>,  <38.555580, 41.679100, 41.070042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602642, 41.285152, 41.120930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590173, -0.033686, -0.806574,
		0.798658, 0.169975, 0.577282,
		0.117651, -0.984872, 0.127219,
		38.637936, 40.989689, 41.159096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311550, 41.538979, 41.131275>,  <38.555580, 41.679100, 41.070042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311550, 41.538979, 41.131275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077568, 41.244678, 40.994755>,  <38.937180, 41.068096, 40.912842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.077568, 41.244678, 40.994755>,  <39.311550, 41.538979, 41.131275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077568, 41.244678, 40.994755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423557, 0.081755, -0.902173,
		0.691681, -0.672296, 0.263811,
		-0.584959, -0.735754, -0.341304,
		38.902081, 41.023952, 40.892365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.860973, 41.383854, 32.086147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.938675, 41.204758, 31.737024>,  <25.985296, 41.097301, 31.527550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.938675, 41.204758, 31.737024>,  <25.860973, 41.383854, 32.086147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938675, 41.204758, 31.737024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084870, -0.878749, 0.469678,
		-0.977273, -0.165313, -0.132703,
		0.194256, -0.447741, -0.872807,
		25.996952, 41.070435, 31.475182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388580, 40.816238, 32.013847>,  <25.860973, 41.383854, 32.086147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388580, 40.816238, 32.013847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.693787, 40.732964, 31.769075>,  <25.876911, 40.682999, 31.622211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.693787, 40.732964, 31.769075>,  <25.388580, 40.816238, 32.013847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693787, 40.732964, 31.769075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101307, -0.896495, 0.431317,
		-0.638389, -0.391096, -0.662951,
		0.763018, -0.208186, -0.611933,
		25.922691, 40.670509, 31.585495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269154, 40.205959, 31.570105>,  <25.388580, 40.816238, 32.013847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269154, 40.205959, 31.570105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.656107, 40.247311, 31.662613>,  <25.888279, 40.272121, 31.718119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.656107, 40.247311, 31.662613>,  <25.269154, 40.205959, 31.570105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656107, 40.247311, 31.662613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004127, -0.906398, 0.422405,
		0.253291, -0.409581, -0.876406,
		0.967381, 0.103375, 0.231273,
		25.946321, 40.278324, 31.731995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488758, 39.499249, 31.344772>,  <25.269154, 40.205959, 31.570105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488758, 39.499249, 31.344772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759745, 39.689438, 31.569258>,  <25.922337, 39.803551, 31.703949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759745, 39.689438, 31.569258>,  <25.488758, 39.499249, 31.344772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759745, 39.689438, 31.569258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285695, -0.873172, 0.394904,
		0.677806, -0.107197, -0.727384,
		0.677464, 0.475478, 0.561216,
		25.962984, 39.832081, 31.737623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116022, 38.954456, 31.320103>,  <25.488758, 39.499249, 31.344772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116022, 38.954456, 31.320103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202808, 39.210796, 31.614649>,  <26.254881, 39.364601, 31.791376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202808, 39.210796, 31.614649>,  <26.116022, 38.954456, 31.320103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202808, 39.210796, 31.614649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340448, -0.756648, 0.558192,
		0.914888, 0.129585, -0.382345,
		0.216967, 0.640852, 0.736365,
		26.267899, 39.403053, 31.835558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908964, 38.809589, 31.587399>,  <26.116022, 38.954456, 31.320103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908964, 38.809589, 31.587399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718628, 39.001045, 31.882553>,  <26.604425, 39.115917, 32.059647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718628, 39.001045, 31.882553>,  <26.908964, 38.809589, 31.587399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718628, 39.001045, 31.882553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459274, -0.580272, 0.672571,
		0.750095, 0.658930, 0.056292,
		-0.475842, 0.478639, 0.737888,
		26.575876, 39.144638, 32.103920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442692, 39.104885, 32.088676>,  <26.908964, 38.809589, 31.587399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442692, 39.104885, 32.088676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085587, 39.069611, 32.265404>,  <26.871325, 39.048447, 32.371441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.085587, 39.069611, 32.265404>,  <27.442692, 39.104885, 32.088676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085587, 39.069611, 32.265404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391097, -0.638514, 0.662830,
		0.223652, 0.764541, 0.604530,
		-0.892762, -0.088187, 0.441814,
		26.817759, 39.043156, 32.397949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633028, 39.261738, 32.829220>,  <27.442692, 39.104885, 32.088676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633028, 39.261738, 32.829220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267771, 39.101486, 32.859337>,  <27.048616, 39.005337, 32.877407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267771, 39.101486, 32.859337>,  <27.633028, 39.261738, 32.829220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267771, 39.101486, 32.859337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327908, -0.612157, 0.719542,
		-0.242176, 0.681733, 0.690355,
		-0.913141, -0.400628, 0.075296,
		26.993828, 38.981297, 32.881927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450327, 39.234306, 33.564259>,  <27.633028, 39.261738, 32.829220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450327, 39.234306, 33.564259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208754, 38.980282, 33.371609>,  <27.063808, 38.827866, 33.256020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208754, 38.980282, 33.371609>,  <27.450327, 39.234306, 33.564259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208754, 38.980282, 33.371609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080763, -0.649918, 0.755701,
		-0.792932, 0.417496, 0.443797,
		-0.603934, -0.635061, -0.481622,
		27.027573, 38.789764, 33.227123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902596, 38.998917, 33.991695>,  <27.450327, 39.234306, 33.564259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902596, 38.998917, 33.991695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911064, 38.704296, 33.721275>,  <26.916145, 38.527523, 33.559025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911064, 38.704296, 33.721275>,  <26.902596, 38.998917, 33.991695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911064, 38.704296, 33.721275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089161, -0.672114, 0.735060,
		-0.995792, -0.075839, 0.051443,
		0.021170, -0.736554, -0.676047,
		26.917416, 38.483330, 33.518459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500498, 38.459484, 34.235474>,  <26.902596, 38.998917, 33.991695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500498, 38.459484, 34.235474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730949, 38.271450, 33.968014>,  <26.869221, 38.158630, 33.807537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.730949, 38.271450, 33.968014>,  <26.500498, 38.459484, 34.235474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730949, 38.271450, 33.968014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002544, -0.819089, 0.573660,
		-0.817315, -0.328833, -0.473143,
		0.576185, -0.470065, -0.668618,
		26.903788, 38.130424, 33.767418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198656, 37.807884, 34.084743>,  <26.500498, 38.459484, 34.235474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198656, 37.807884, 34.084743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581470, 37.771519, 33.974606>,  <26.811159, 37.749699, 33.908524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581470, 37.771519, 33.974606>,  <26.198656, 37.807884, 34.084743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581470, 37.771519, 33.974606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076659, -0.836457, 0.542644,
		-0.279647, -0.540438, -0.793552,
		0.957038, -0.090916, -0.275342,
		26.868582, 37.744244, 33.892002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247690, 37.123665, 33.842239>,  <26.198656, 37.807884, 34.084743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247690, 37.123665, 33.842239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.621601, 37.228390, 33.938274>,  <26.845947, 37.291225, 33.995895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.621601, 37.228390, 33.938274>,  <26.247690, 37.123665, 33.842239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621601, 37.228390, 33.938274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082476, -0.817359, 0.570195,
		0.345524, -0.513205, -0.785643,
		0.934779, 0.261812, 0.240090,
		26.902035, 37.306934, 34.010300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509174, 36.535553, 34.019642>,  <26.247690, 37.123665, 33.842239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509174, 36.535553, 34.019642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784664, 36.782104, 34.172340>,  <26.949959, 36.930035, 34.263958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784664, 36.782104, 34.172340>,  <26.509174, 36.535553, 34.019642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784664, 36.782104, 34.172340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278954, -0.711281, 0.645184,
		0.669209, -0.337865, -0.661820,
		0.688726, 0.616381, 0.381747,
		26.991282, 36.967018, 34.286865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117590, 36.132919, 33.944481>,  <26.509174, 36.535553, 34.019642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117590, 36.132919, 33.944481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200315, 36.409916, 34.220940>,  <27.249950, 36.576115, 34.386814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.200315, 36.409916, 34.220940>,  <27.117590, 36.132919, 33.944481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200315, 36.409916, 34.220940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400256, -0.704485, 0.586085,
		0.892762, 0.155426, -0.422870,
		0.206813, 0.692490, 0.691148,
		27.262360, 36.617664, 34.428284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776304, 35.945877, 34.262264>,  <27.117590, 36.132919, 33.944481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776304, 35.945877, 34.262264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.621786, 36.189148, 34.539650>,  <27.529076, 36.335110, 34.706081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.621786, 36.189148, 34.539650>,  <27.776304, 35.945877, 34.262264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621786, 36.189148, 34.539650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325502, -0.613569, 0.719432,
		0.863031, 0.503638, 0.039056,
		-0.386297, 0.608179, 0.693464,
		27.505898, 36.371601, 34.747688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234892, 36.020157, 34.851112>,  <27.776304, 35.945877, 34.262264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234892, 36.020157, 34.851112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880346, 36.126286, 35.002880>,  <27.667618, 36.189964, 35.093941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880346, 36.126286, 35.002880>,  <28.234892, 36.020157, 34.851112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880346, 36.126286, 35.002880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187747, -0.543120, 0.818395,
		0.423210, 0.796633, 0.431589,
		-0.886366, 0.265323, 0.379420,
		27.614437, 36.205883, 35.116707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403515, 36.262089, 35.393772>,  <28.234892, 36.020157, 34.851112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403515, 36.262089, 35.393772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025932, 36.130341, 35.402328>,  <27.799381, 36.051292, 35.407463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025932, 36.130341, 35.402328>,  <28.403515, 36.262089, 35.393772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025932, 36.130341, 35.402328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235302, -0.626092, 0.743398,
		-0.231462, 0.706770, 0.668507,
		-0.943959, -0.329370, 0.021388,
		27.742744, 36.031528, 35.408745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068348, 36.086498, 35.295624>,  <28.403515, 36.262089, 35.393772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068348, 36.086498, 35.295624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403290, 35.927101, 35.445316>,  <29.604254, 35.831463, 35.535130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.403290, 35.927101, 35.445316>,  <29.068348, 36.086498, 35.295624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403290, 35.927101, 35.445316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217872, -0.384578, -0.897013,
		0.501370, 0.832650, -0.235207,
		0.837353, -0.398490, 0.374227,
		29.654495, 35.807552, 35.557583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425602, 36.165302, 34.612999>,  <29.068348, 36.086498, 35.295624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425602, 36.165302, 34.612999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756290, 36.202229, 34.391003>,  <29.954702, 36.224384, 34.257805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756290, 36.202229, 34.391003>,  <29.425602, 36.165302, 34.612999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756290, 36.202229, 34.391003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251986, 0.942730, -0.218546,
		0.503028, 0.320525, 0.802637,
		0.826720, 0.092318, -0.554988,
		30.004307, 36.229923, 34.224506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720167, 36.800167, 34.829601>,  <29.425602, 36.165302, 34.612999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720167, 36.800167, 34.829601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837854, 36.703323, 34.459774>,  <29.908466, 36.645218, 34.237877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.837854, 36.703323, 34.459774>,  <29.720167, 36.800167, 34.829601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837854, 36.703323, 34.459774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056478, 0.961288, -0.269695,
		0.954069, 0.131566, 0.269153,
		0.294217, -0.242106, -0.924565,
		29.926119, 36.630692, 34.182404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436316, 37.175247, 34.667046>,  <29.720167, 36.800167, 34.829601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436316, 37.175247, 34.667046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.221018, 37.078716, 34.344048>,  <30.091839, 37.020798, 34.150249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.221018, 37.078716, 34.344048>,  <30.436316, 37.175247, 34.667046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221018, 37.078716, 34.344048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116954, 0.970243, -0.212014,
		0.834633, -0.019676, -0.550455,
		-0.538246, -0.241331, -0.807496,
		30.059544, 37.006317, 34.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635288, 37.669102, 34.256313>,  <30.436316, 37.175247, 34.667046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635288, 37.669102, 34.256313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327797, 37.514099, 34.052788>,  <30.143301, 37.421097, 33.930672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327797, 37.514099, 34.052788>,  <30.635288, 37.669102, 34.256313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327797, 37.514099, 34.052788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221855, 0.907719, -0.356127,
		0.599862, -0.160883, -0.783762,
		-0.768730, -0.387509, -0.508813,
		30.097178, 37.397846, 33.900143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671368, 38.005398, 33.567005>,  <30.635288, 37.669102, 34.256313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671368, 38.005398, 33.567005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296982, 37.868778, 33.601223>,  <30.072350, 37.786808, 33.621754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296982, 37.868778, 33.601223>,  <30.671368, 38.005398, 33.567005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296982, 37.868778, 33.601223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350034, 0.876357, -0.330871,
		0.038044, -0.339625, -0.939791,
		-0.935964, -0.341546, 0.085540,
		30.016193, 37.766315, 33.626884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297855, 38.074417, 32.945877>,  <30.671368, 38.005398, 33.567005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297855, 38.074417, 32.945877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007368, 38.053482, 33.220066>,  <29.833076, 38.040920, 33.384579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.007368, 38.053482, 33.220066>,  <30.297855, 38.074417, 32.945877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007368, 38.053482, 33.220066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239369, 0.953953, -0.180767,
		-0.644445, -0.295356, -0.705305,
		-0.726218, -0.052334, 0.685470,
		29.789503, 38.037781, 33.425709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827000, 38.478161, 32.653336>,  <30.297855, 38.074417, 32.945877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827000, 38.478161, 32.653336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726925, 38.463688, 33.040344>,  <29.666880, 38.455006, 33.272549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.726925, 38.463688, 33.040344>,  <29.827000, 38.478161, 32.653336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726925, 38.463688, 33.040344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267818, 0.962896, -0.033247,
		-0.930419, -0.267437, -0.250594,
		-0.250187, -0.036180, 0.967521,
		29.651869, 38.452835, 33.330601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203033, 38.824211, 32.691372>,  <29.827000, 38.478161, 32.653336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203033, 38.824211, 32.691372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349306, 38.830391, 33.063618>,  <29.437071, 38.834099, 33.286964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349306, 38.830391, 33.063618>,  <29.203033, 38.824211, 32.691372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349306, 38.830391, 33.063618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344110, 0.931261, 0.119753,
		-0.864791, -0.364024, 0.345865,
		0.365683, 0.015454, 0.930611,
		29.459011, 38.835026, 33.342800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687284, 39.262730, 33.070465>,  <29.203033, 38.824211, 32.691372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687284, 39.262730, 33.070465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.030022, 39.252453, 33.276440>,  <29.235664, 39.246288, 33.400024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.030022, 39.252453, 33.276440>,  <28.687284, 39.262730, 33.070465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030022, 39.252453, 33.276440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090495, 0.975757, 0.199268,
		-0.507570, -0.217341, 0.833748,
		0.856845, -0.025692, 0.514934,
		29.287075, 39.244743, 33.430920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607162, 39.496841, 33.756374>,  <28.687284, 39.262730, 33.070465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607162, 39.496841, 33.756374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001299, 39.548756, 33.712093>,  <29.237782, 39.579906, 33.685524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001299, 39.548756, 33.712093>,  <28.607162, 39.496841, 33.756374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001299, 39.548756, 33.712093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088016, 0.942700, 0.321822,
		0.146124, -0.307362, 0.940307,
		0.985343, 0.129788, -0.110698,
		29.296902, 39.587692, 33.678883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894194, 39.848419, 34.359890>,  <28.607162, 39.496841, 33.756374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894194, 39.848419, 34.359890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180965, 39.907272, 34.087315>,  <29.353029, 39.942585, 33.923767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180965, 39.907272, 34.087315>,  <28.894194, 39.848419, 34.359890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180965, 39.907272, 34.087315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109960, 0.941373, 0.318944,
		0.688419, -0.303592, 0.658719,
		0.716930, 0.147134, -0.681442,
		29.396044, 39.951412, 33.882881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408068, 40.270073, 34.729336>,  <28.894194, 39.848419, 34.359890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408068, 40.270073, 34.729336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506166, 40.346790, 34.349216>,  <29.565025, 40.392818, 34.121143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.506166, 40.346790, 34.349216>,  <29.408068, 40.270073, 34.729336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506166, 40.346790, 34.349216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156297, 0.959591, 0.234000,
		0.956780, -0.205916, 0.205355,
		0.245242, 0.191790, -0.950302,
		29.579741, 40.404327, 34.064125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978714, 40.787189, 34.668232>,  <29.408068, 40.270073, 34.729336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978714, 40.787189, 34.668232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816927, 40.807934, 34.303001>,  <29.719854, 40.820381, 34.083862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816927, 40.807934, 34.303001>,  <29.978714, 40.787189, 34.668232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816927, 40.807934, 34.303001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224894, 0.973374, -0.044339,
		0.886469, -0.223280, -0.405362,
		-0.404469, 0.051858, -0.913080,
		29.695587, 40.823490, 34.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455503, 41.217365, 34.286846>,  <29.978714, 40.787189, 34.668232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455503, 41.217365, 34.286846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103455, 41.203781, 34.097435>,  <29.892225, 41.195629, 33.983788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103455, 41.203781, 34.097435>,  <30.455503, 41.217365, 34.286846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103455, 41.203781, 34.097435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053671, 0.983926, -0.170318,
		0.471704, -0.175315, -0.864152,
		-0.880122, -0.033960, -0.473532,
		29.839418, 41.193592, 33.955376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553305, 41.532627, 33.674252>,  <30.455503, 41.217365, 34.286846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553305, 41.532627, 33.674252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156101, 41.560116, 33.712635>,  <29.917778, 41.576611, 33.735664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.156101, 41.560116, 33.712635>,  <30.553305, 41.532627, 33.674252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156101, 41.560116, 33.712635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053262, 0.986431, -0.155300,
		-0.105332, -0.149103, -0.983195,
		-0.993010, 0.068725, 0.095961,
		29.858198, 41.580734, 33.741425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415695, 41.851826, 33.063190>,  <30.553305, 41.532627, 33.674252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415695, 41.851826, 33.063190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.141455, 41.932056, 33.343109>,  <29.976910, 41.980194, 33.511063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.141455, 41.932056, 33.343109>,  <30.415695, 41.851826, 33.063190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141455, 41.932056, 33.343109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033392, 0.968948, -0.245001,
		-0.727211, -0.144605, -0.671009,
		-0.685601, 0.200574, 0.699801,
		29.935774, 41.992229, 33.553051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099131, 42.500656, 32.782875>,  <30.415695, 41.851826, 33.063190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099131, 42.500656, 32.782875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932865, 42.453663, 33.143635>,  <29.833107, 42.425468, 33.360092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932865, 42.453663, 33.143635>,  <30.099131, 42.500656, 32.782875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932865, 42.453663, 33.143635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231845, 0.972551, 0.019831,
		-0.879473, -0.200858, -0.431489,
		-0.415662, -0.117479, 0.901900,
		29.808167, 42.418419, 33.414204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373196, 42.653675, 32.756268>,  <30.099131, 42.500656, 32.782875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373196, 42.653675, 32.756268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.467857, 42.715790, 33.139908>,  <29.524654, 42.753059, 33.370094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.467857, 42.715790, 33.139908>,  <29.373196, 42.653675, 32.756268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467857, 42.715790, 33.139908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535488, 0.844530, -0.004610,
		-0.810707, -0.512498, 0.283019,
		0.236655, 0.155291, 0.959104,
		29.538855, 42.762379, 33.427639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840406, 42.896027, 33.076183>,  <29.373196, 42.653675, 32.756268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840406, 42.896027, 33.076183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138174, 43.015221, 33.315197>,  <29.316835, 43.086735, 33.458607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138174, 43.015221, 33.315197>,  <28.840406, 42.896027, 33.076183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138174, 43.015221, 33.315197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327189, 0.942884, -0.062587,
		-0.582055, -0.148915, 0.799398,
		0.744419, 0.297983, 0.597534,
		29.361500, 43.104614, 33.494457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524090, 43.429173, 33.556572>,  <28.840406, 42.896027, 33.076183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524090, 43.429173, 33.556572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916801, 43.497856, 33.589119>,  <29.152430, 43.539066, 33.608646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916801, 43.497856, 33.589119>,  <28.524090, 43.429173, 33.556572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916801, 43.497856, 33.589119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154293, 0.970352, -0.186039,
		-0.110904, 0.170095, 0.979167,
		0.981781, 0.171711, 0.081371,
		29.211336, 43.549370, 33.613529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679674, 43.829903, 34.178291>,  <28.524090, 43.429173, 33.556572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679674, 43.829903, 34.178291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966843, 43.884388, 33.905224>,  <29.139143, 43.917080, 33.741383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.966843, 43.884388, 33.905224>,  <28.679674, 43.829903, 34.178291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966843, 43.884388, 33.905224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168817, 0.985463, 0.019092,
		0.675345, 0.101539, 0.730479,
		0.717921, 0.136211, -0.682668,
		29.182219, 43.925251, 33.700424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079290, 44.473797, 34.364799>,  <28.679674, 43.829903, 34.178291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079290, 44.473797, 34.364799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183228, 44.416416, 33.982826>,  <29.245590, 44.381989, 33.753643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183228, 44.416416, 33.982826>,  <29.079290, 44.473797, 34.364799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183228, 44.416416, 33.982826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266729, 0.939768, -0.213756,
		0.928082, 0.310252, 0.205931,
		0.259845, -0.143455, -0.954935,
		29.261181, 44.373379, 33.696346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309254, 45.055897, 34.180183>,  <29.079290, 44.473797, 34.364799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309254, 45.055897, 34.180183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257298, 44.901165, 33.814999>,  <29.226124, 44.808327, 33.595890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.257298, 44.901165, 33.814999>,  <29.309254, 45.055897, 34.180183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257298, 44.901165, 33.814999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229566, 0.907473, -0.351841,
		0.964587, 0.163885, -0.206672,
		-0.129888, -0.386826, -0.912959,
		29.218330, 44.785118, 33.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.672295, 37.467937, 46.555481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294571, 37.376331, 46.460968>,  <38.067936, 37.321369, 46.404259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.294571, 37.376331, 46.460968>,  <38.672295, 37.467937, 46.555481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294571, 37.376331, 46.460968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298821, 0.296142, 0.907197,
		-0.137788, 0.927282, -0.348084,
		-0.944310, -0.229015, -0.236286,
		38.011276, 37.307625, 46.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140484, 38.020901, 46.727322>,  <38.672295, 37.467937, 46.555481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140484, 38.020901, 46.727322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918983, 37.688831, 46.701496>,  <37.786083, 37.489590, 46.686001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918983, 37.688831, 46.701496>,  <38.140484, 38.020901, 46.727322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918983, 37.688831, 46.701496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432061, 0.220181, 0.874554,
		-0.711814, 0.512185, -0.480611,
		-0.553755, -0.830173, -0.064568,
		37.752857, 37.439781, 46.682125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448360, 38.217628, 46.721771>,  <38.140484, 38.020901, 46.727322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448360, 38.217628, 46.721771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427505, 37.834118, 46.833508>,  <37.414993, 37.604012, 46.900551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.427505, 37.834118, 46.833508>,  <37.448360, 38.217628, 46.721771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427505, 37.834118, 46.833508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491099, 0.268177, 0.828796,
		-0.869542, -0.093975, -0.484835,
		-0.052136, -0.958775, 0.279343,
		37.411865, 37.546486, 46.917309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773979, 38.143723, 46.909424>,  <37.448360, 38.217628, 46.721771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773979, 38.143723, 46.909424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982468, 37.858231, 47.096581>,  <37.107559, 37.686935, 47.208874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982468, 37.858231, 47.096581>,  <36.773979, 38.143723, 46.909424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982468, 37.858231, 47.096581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486329, 0.202118, 0.850078,
		-0.701294, -0.670625, -0.241760,
		0.521220, -0.713730, 0.467889,
		37.138832, 37.644112, 47.236946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359032, 37.699574, 47.251637>,  <36.773979, 38.143723, 46.909424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359032, 37.699574, 47.251637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698132, 37.685749, 47.463348>,  <36.901592, 37.677452, 47.590374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698132, 37.685749, 47.463348>,  <36.359032, 37.699574, 47.251637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698132, 37.685749, 47.463348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523077, 0.110799, 0.845052,
		-0.087852, -0.993242, 0.075849,
		0.847745, -0.034565, 0.529276,
		36.952454, 37.675381, 47.622131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306877, 37.215981, 47.686939>,  <36.359032, 37.699574, 47.251637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306877, 37.215981, 47.686939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592915, 37.422455, 47.875484>,  <36.764538, 37.546341, 47.988613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592915, 37.422455, 47.875484>,  <36.306877, 37.215981, 47.686939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592915, 37.422455, 47.875484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507962, -0.079525, 0.857701,
		0.480219, -0.852776, 0.205335,
		0.715097, 0.516187, 0.471367,
		36.807446, 37.577312, 48.016895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339497, 36.923054, 48.358669>,  <36.306877, 37.215981, 47.686939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339497, 36.923054, 48.358669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.550369, 37.261852, 48.386009>,  <36.676895, 37.465134, 48.402412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.550369, 37.261852, 48.386009>,  <36.339497, 36.923054, 48.358669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550369, 37.261852, 48.386009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368429, 0.155351, 0.916584,
		0.765727, -0.508390, 0.393957,
		0.527184, 0.846998, 0.068349,
		36.708523, 37.515953, 48.406513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482468, 36.925137, 49.093925>,  <36.339497, 36.923054, 48.358669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482468, 36.925137, 49.093925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570278, 37.301659, 48.991348>,  <36.622963, 37.527573, 48.929802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570278, 37.301659, 48.991348>,  <36.482468, 36.925137, 49.093925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570278, 37.301659, 48.991348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465154, 0.332037, 0.820599,
		0.857579, -0.060857, 0.510740,
		0.219524, 0.941301, -0.256440,
		36.636135, 37.584049, 48.914417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750690, 37.172630, 49.630539>,  <36.482468, 36.925137, 49.093925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750690, 37.172630, 49.630539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610168, 37.483303, 49.421406>,  <36.525856, 37.669704, 49.295925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610168, 37.483303, 49.421406>,  <36.750690, 37.172630, 49.630539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610168, 37.483303, 49.421406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313655, 0.428526, 0.847341,
		0.882159, 0.461665, 0.093064,
		-0.351307, 0.776679, -0.522832,
		36.504776, 37.716309, 49.264557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770317, 37.677505, 50.060486>,  <36.750690, 37.172630, 49.630539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770317, 37.677505, 50.060486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522701, 37.833237, 49.787663>,  <36.374130, 37.926678, 49.623966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522701, 37.833237, 49.787663>,  <36.770317, 37.677505, 50.060486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522701, 37.833237, 49.787663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451832, 0.533794, 0.714781,
		0.642366, 0.750657, -0.154529,
		-0.619042, 0.389330, -0.682062,
		36.336990, 37.950035, 49.583042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667130, 38.286892, 50.341347>,  <36.770317, 37.677505, 50.060486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667130, 38.286892, 50.341347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377861, 38.221226, 50.072998>,  <36.204300, 38.181824, 49.911987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377861, 38.221226, 50.072998>,  <36.667130, 38.286892, 50.341347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377861, 38.221226, 50.072998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660159, 0.449803, 0.601554,
		0.203003, 0.877910, -0.433664,
		-0.723173, -0.164170, -0.670872,
		36.160908, 38.171974, 49.871738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321682, 38.875469, 50.275101>,  <36.667130, 38.286892, 50.341347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321682, 38.875469, 50.275101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042152, 38.610115, 50.168095>,  <35.874435, 38.450901, 50.103893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042152, 38.610115, 50.168095>,  <36.321682, 38.875469, 50.275101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042152, 38.610115, 50.168095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600461, 0.340832, 0.723381,
		-0.388705, 0.666146, -0.636520,
		-0.698824, -0.663388, -0.267511,
		35.832504, 38.411098, 50.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797714, 39.251350, 50.035904>,  <36.321682, 38.875469, 50.275101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797714, 39.251350, 50.035904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705219, 38.903873, 50.211128>,  <35.649723, 38.695385, 50.316265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705219, 38.903873, 50.211128>,  <35.797714, 39.251350, 50.035904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705219, 38.903873, 50.211128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729119, 0.452849, 0.513141,
		-0.644139, -0.200744, -0.738096,
		-0.231236, -0.868694, 0.438064,
		35.635849, 38.643265, 50.342548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171116, 39.575901, 50.205257>,  <35.797714, 39.251350, 50.035904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171116, 39.575901, 50.205257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216499, 39.231430, 50.403454>,  <35.243729, 39.024750, 50.522369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216499, 39.231430, 50.403454>,  <35.171116, 39.575901, 50.205257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216499, 39.231430, 50.403454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637842, 0.319233, 0.700891,
		-0.761765, -0.395564, -0.513073,
		0.113457, -0.861173, 0.495488,
		35.250538, 38.973080, 50.552101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216385, 39.930359, 50.805897>,  <35.171116, 39.575901, 50.205257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216385, 39.930359, 50.805897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128891, 40.319645, 50.834183>,  <35.076397, 40.553219, 50.851154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128891, 40.319645, 50.834183>,  <35.216385, 39.930359, 50.805897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128891, 40.319645, 50.834183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186494, 0.112832, -0.975955,
		-0.957798, -0.200284, -0.206180,
		-0.218732, 0.973219, 0.070719,
		35.063271, 40.611610, 50.855400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671463, 40.100185, 50.335457>,  <35.216385, 39.930359, 50.805897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671463, 40.100185, 50.335457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846039, 40.455418, 50.393177>,  <34.950787, 40.668556, 50.427811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846039, 40.455418, 50.393177>,  <34.671463, 40.100185, 50.335457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846039, 40.455418, 50.393177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061778, 0.189587, -0.979918,
		-0.897608, 0.418764, 0.137609,
		0.436444, 0.888084, 0.144305,
		34.976971, 40.721844, 50.436470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651909, 40.352154, 49.715878>,  <34.671463, 40.100185, 50.335457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651909, 40.352154, 49.715878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902073, 40.604420, 49.899666>,  <35.052174, 40.755779, 50.009941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902073, 40.604420, 49.899666>,  <34.651909, 40.352154, 49.715878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902073, 40.604420, 49.899666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282027, 0.366339, -0.886711,
		-0.727543, 0.684146, 0.051248,
		0.625414, 0.630666, 0.459475,
		35.089699, 40.793621, 50.037510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482178, 41.141026, 49.546154>,  <34.651909, 40.352154, 49.715878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482178, 41.141026, 49.546154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869106, 41.082817, 49.629200>,  <35.101265, 41.047894, 49.679028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869106, 41.082817, 49.629200>,  <34.482178, 41.141026, 49.546154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869106, 41.082817, 49.629200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237480, 0.233228, -0.942978,
		0.088799, 0.961472, 0.260166,
		0.967325, -0.145519, 0.207619,
		35.159306, 41.039162, 49.691486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890919, 41.752430, 49.235271>,  <34.482178, 41.141026, 49.546154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890919, 41.752430, 49.235271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179634, 41.489498, 49.321930>,  <35.352863, 41.331738, 49.373924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.179634, 41.489498, 49.321930>,  <34.890919, 41.752430, 49.235271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179634, 41.489498, 49.321930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389347, 0.126841, -0.912316,
		0.572214, 0.742851, 0.347482,
		0.721790, -0.657331, 0.216647,
		35.396172, 41.292297, 49.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473835, 41.987949, 48.813633>,  <34.890919, 41.752430, 49.235271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473835, 41.987949, 48.813633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609814, 41.622829, 48.904171>,  <35.691402, 41.403759, 48.958496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609814, 41.622829, 48.904171>,  <35.473835, 41.987949, 48.813633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609814, 41.622829, 48.904171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389746, -0.082296, -0.917238,
		0.855880, 0.400034, 0.327783,
		0.339952, -0.912798, 0.226347,
		35.711800, 41.348991, 48.972076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205753, 41.891266, 48.600277>,  <35.473835, 41.987949, 48.813633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205753, 41.891266, 48.600277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071339, 41.514648, 48.590736>,  <35.990688, 41.288677, 48.585011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071339, 41.514648, 48.590736>,  <36.205753, 41.891266, 48.600277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071339, 41.514648, 48.590736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522194, -0.165172, -0.836679,
		0.783832, -0.293611, 0.547174,
		-0.336036, -0.941547, -0.023855,
		35.970528, 41.232185, 48.583580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851776, 41.517353, 48.572132>,  <36.205753, 41.891266, 48.600277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851776, 41.517353, 48.572132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534115, 41.295166, 48.473515>,  <36.343517, 41.161854, 48.414345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534115, 41.295166, 48.473515>,  <36.851776, 41.517353, 48.572132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534115, 41.295166, 48.473515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439248, -0.244277, -0.864517,
		0.419987, -0.794848, 0.437980,
		-0.794149, -0.555468, -0.246542,
		36.295872, 41.128525, 48.399551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086372, 41.008923, 48.225563>,  <36.851776, 41.517353, 48.572132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086372, 41.008923, 48.225563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702248, 41.001907, 48.114208>,  <36.471775, 40.997700, 48.047394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702248, 41.001907, 48.114208>,  <37.086372, 41.008923, 48.225563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702248, 41.001907, 48.114208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271105, -0.293569, -0.916689,
		-0.065649, -0.955777, 0.286672,
		-0.960308, -0.017539, -0.278389,
		36.414154, 40.996647, 48.030693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900269, 40.266365, 48.000469>,  <37.086372, 41.008923, 48.225563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900269, 40.266365, 48.000469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656078, 40.512333, 47.800793>,  <36.509563, 40.659916, 47.680984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656078, 40.512333, 47.800793>,  <36.900269, 40.266365, 48.000469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656078, 40.512333, 47.800793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207373, -0.484186, -0.850035,
		-0.764409, -0.622441, 0.168064,
		-0.610472, 0.614923, -0.499194,
		36.472939, 40.696812, 47.651035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880035, 39.966709, 47.363911>,  <36.900269, 40.266365, 48.000469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880035, 39.966709, 47.363911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680859, 40.301105, 47.271679>,  <36.561352, 40.501743, 47.216339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680859, 40.301105, 47.271679>,  <36.880035, 39.966709, 47.363911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680859, 40.301105, 47.271679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049771, -0.292998, -0.954817,
		-0.865780, -0.463969, 0.187505,
		-0.497944, 0.835993, -0.230580,
		36.531475, 40.551903, 47.202503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306633, 39.796459, 46.830624>,  <36.880035, 39.966709, 47.363911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306633, 39.796459, 46.830624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416035, 40.179966, 46.799725>,  <36.481678, 40.410069, 46.781185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416035, 40.179966, 46.799725>,  <36.306633, 39.796459, 46.830624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416035, 40.179966, 46.799725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089515, -0.054589, -0.994488,
		-0.957696, 0.278914, 0.070893,
		0.273506, 0.958763, -0.077247,
		36.498085, 40.467594, 46.776550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814243, 40.036407, 46.389702>,  <36.306633, 39.796459, 46.830624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814243, 40.036407, 46.389702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122002, 40.291279, 46.371712>,  <36.306656, 40.444202, 46.360916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122002, 40.291279, 46.371712>,  <35.814243, 40.036407, 46.389702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122002, 40.291279, 46.371712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047629, -0.012990, -0.998781,
		-0.636990, 0.770603, 0.020354,
		0.769399, 0.637183, -0.044978,
		36.352821, 40.482433, 46.358219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852627, 40.357769, 45.687065>,  <35.814243, 40.036407, 46.389702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852627, 40.357769, 45.687065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215809, 40.466763, 45.814419>,  <36.433720, 40.532158, 45.890831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215809, 40.466763, 45.814419>,  <35.852627, 40.357769, 45.687065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215809, 40.466763, 45.814419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271341, 0.196711, -0.942167,
		-0.319358, 0.941836, 0.104668,
		0.907956, 0.272488, 0.318380,
		36.488197, 40.548508, 45.909931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262032, 40.951191, 45.627594>,  <35.852627, 40.357769, 45.687065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262032, 40.951191, 45.627594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902306, 40.870667, 45.472313>,  <34.686470, 40.822350, 45.379143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902306, 40.870667, 45.472313>,  <35.262032, 40.951191, 45.627594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902306, 40.870667, 45.472313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432628, 0.280210, 0.856922,
		-0.063731, 0.938592, -0.339091,
		-0.899317, -0.201313, -0.388203,
		34.632511, 40.810272, 45.355850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761562, 41.349655, 46.012917>,  <35.262032, 40.951191, 45.627594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761562, 41.349655, 46.012917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556740, 41.069580, 45.813908>,  <34.433846, 40.901535, 45.694504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556740, 41.069580, 45.813908>,  <34.761562, 41.349655, 46.012917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556740, 41.069580, 45.813908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578821, -0.146676, 0.802155,
		-0.634637, 0.698726, -0.330179,
		-0.512057, -0.700192, -0.497523,
		34.403122, 40.859524, 45.664650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133911, 41.619293, 46.102913>,  <34.761562, 41.349655, 46.012917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133911, 41.619293, 46.102913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115425, 41.227707, 46.023434>,  <34.104332, 40.992756, 45.975746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115425, 41.227707, 46.023434>,  <34.133911, 41.619293, 46.102913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115425, 41.227707, 46.023434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592429, -0.133294, 0.794519,
		-0.804296, 0.154433, -0.573811,
		-0.046214, -0.978970, -0.198699,
		34.101562, 40.934017, 45.963825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429890, 41.512768, 46.211842>,  <34.133911, 41.619293, 46.102913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429890, 41.512768, 46.211842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620762, 41.164635, 46.260525>,  <33.735287, 40.955753, 46.289734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620762, 41.164635, 46.260525>,  <33.429890, 41.512768, 46.211842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620762, 41.164635, 46.260525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774437, -0.351002, 0.526350,
		-0.415383, -0.345418, -0.841513,
		0.477183, -0.870335, 0.121704,
		33.763916, 40.903534, 46.297035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918968, 41.003273, 46.252792>,  <33.429890, 41.512768, 46.211842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918968, 41.003273, 46.252792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242004, 40.832726, 46.415764>,  <33.435825, 40.730396, 46.513546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242004, 40.832726, 46.415764>,  <32.918968, 41.003273, 46.252792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242004, 40.832726, 46.415764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581232, -0.458541, 0.672242,
		-0.099804, -0.779709, -0.618137,
		0.807595, -0.426373, 0.407428,
		33.484283, 40.704815, 46.537991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512337, 40.485558, 46.651508>,  <32.918968, 41.003273, 46.252792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512337, 40.485558, 46.651508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892921, 40.472046, 46.773872>,  <33.121273, 40.463940, 46.847290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892921, 40.472046, 46.773872>,  <32.512337, 40.485558, 46.651508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892921, 40.472046, 46.773872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303190, -0.273668, 0.912788,
		0.052883, -0.961231, -0.270626,
		0.951462, -0.033780, 0.305907,
		33.178360, 40.461910, 46.865646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578499, 39.842274, 46.969345>,  <32.512337, 40.485558, 46.651508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578499, 39.842274, 46.969345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873970, 40.067993, 47.116814>,  <33.051254, 40.203426, 47.205296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873970, 40.067993, 47.116814>,  <32.578499, 39.842274, 46.969345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873970, 40.067993, 47.116814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339079, -0.161614, 0.926772,
		0.582558, -0.809598, 0.071961,
		0.738683, 0.564299, 0.368667,
		33.095573, 40.237282, 47.227413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772251, 39.163845, 46.907478>,  <32.578499, 39.842274, 46.969345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772251, 39.163845, 46.907478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463619, 38.933891, 47.016418>,  <32.278442, 38.795918, 47.081783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.463619, 38.933891, 47.016418>,  <32.772251, 39.163845, 46.907478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463619, 38.933891, 47.016418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465040, -0.801872, -0.375151,
		0.434058, -0.162805, 0.886052,
		-0.771577, -0.574887, 0.272348,
		32.232147, 38.761425, 47.098122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087154, 38.613209, 47.193787>,  <32.772251, 39.163845, 46.907478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087154, 38.613209, 47.193787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728233, 38.482708, 47.074856>,  <32.512882, 38.404408, 47.003498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728233, 38.482708, 47.074856>,  <33.087154, 38.613209, 47.193787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728233, 38.482708, 47.074856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439844, -0.717618, -0.539965,
		-0.037200, -0.615289, 0.787423,
		-0.897304, -0.326257, -0.297326,
		32.459042, 38.384830, 46.985657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212936, 37.941795, 46.950790>,  <33.087154, 38.613209, 47.193787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212936, 37.941795, 46.950790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852425, 38.012299, 46.792480>,  <32.636120, 38.054600, 46.697495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852425, 38.012299, 46.792480>,  <33.212936, 37.941795, 46.950790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852425, 38.012299, 46.792480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284626, -0.447833, -0.847605,
		-0.326635, -0.876573, 0.353455,
		-0.901276, 0.176255, -0.395773,
		32.582043, 38.065174, 46.673748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846901, 37.277660, 46.667538>,  <33.212936, 37.941795, 46.950790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846901, 37.277660, 46.667538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710388, 37.604435, 46.481571>,  <32.628479, 37.800499, 46.369991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710388, 37.604435, 46.481571>,  <32.846901, 37.277660, 46.667538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710388, 37.604435, 46.481571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193726, -0.422862, -0.885245,
		-0.919781, -0.392183, -0.013947,
		-0.341281, 0.816933, -0.464916,
		32.608006, 37.849514, 46.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404884, 36.971142, 46.115768>,  <32.846901, 37.277660, 46.667538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404884, 36.971142, 46.115768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480324, 37.356251, 46.038315>,  <32.525589, 37.587318, 45.991844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480324, 37.356251, 46.038315>,  <32.404884, 36.971142, 46.115768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480324, 37.356251, 46.038315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233133, -0.235432, -0.943515,
		-0.953980, 0.132807, -0.268858,
		0.188603, 0.962774, -0.193636,
		32.536903, 37.645084, 45.980225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055573, 37.091045, 45.525204>,  <32.404884, 36.971142, 46.115768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055573, 37.091045, 45.525204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334259, 37.377354, 45.506195>,  <32.501469, 37.549141, 45.494789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334259, 37.377354, 45.506195>,  <32.055573, 37.091045, 45.525204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334259, 37.377354, 45.506195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091780, -0.154651, -0.983697,
		-0.711453, 0.680994, -0.173441,
		0.696714, 0.715773, -0.047525,
		32.543274, 37.592087, 45.491940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853292, 37.476444, 44.938896>,  <32.055573, 37.091045, 45.525204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853292, 37.476444, 44.938896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235374, 37.569820, 45.011662>,  <32.464622, 37.625847, 45.055321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235374, 37.569820, 45.011662>,  <31.853292, 37.476444, 44.938896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235374, 37.569820, 45.011662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242245, -0.263635, -0.933710,
		-0.170007, 0.935950, -0.308374,
		0.955204, 0.233439, 0.181909,
		32.521935, 37.639851, 45.066235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.645012, 37.267899, 49.412376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028282, 37.362202, 49.347488>,  <34.258244, 37.418785, 49.308556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028282, 37.362202, 49.347488>,  <33.645012, 37.267899, 49.412376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028282, 37.362202, 49.347488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094672, -0.796067, -0.597758,
		-0.270065, 0.557400, -0.785092,
		0.958176, 0.235760, -0.162220,
		34.315735, 37.432930, 49.298824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884262, 37.368073, 48.673973>,  <33.645012, 37.267899, 49.412376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884262, 37.368073, 48.673973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.206264, 37.256119, 48.883213>,  <34.399464, 37.188946, 49.008759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.206264, 37.256119, 48.883213>,  <33.884262, 37.368073, 48.673973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206264, 37.256119, 48.883213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115278, -0.791126, -0.600692,
		0.581964, 0.543861, -0.604594,
		0.805003, -0.279885, 0.523101,
		34.447765, 37.172153, 49.040142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373322, 37.308548, 48.163963>,  <33.884262, 37.368073, 48.673973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373322, 37.308548, 48.163963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528301, 37.105381, 48.471703>,  <34.621288, 36.983479, 48.656345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.528301, 37.105381, 48.471703>,  <34.373322, 37.308548, 48.163963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528301, 37.105381, 48.471703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144066, -0.790924, -0.594714,
		0.910566, 0.341257, -0.233266,
		0.387446, -0.507920, 0.769352,
		34.644535, 36.953007, 48.702507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003414, 37.132671, 47.933609>,  <34.373322, 37.308548, 48.163963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003414, 37.132671, 47.933609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.939732, 36.867054, 48.225826>,  <34.901520, 36.707684, 48.401157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.939732, 36.867054, 48.225826>,  <35.003414, 37.132671, 47.933609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939732, 36.867054, 48.225826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230083, -0.744564, -0.626647,
		0.960059, 0.068318, 0.271328,
		-0.159210, -0.664046, 0.730544,
		34.891968, 36.667839, 48.444988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560558, 36.771130, 47.887367>,  <35.003414, 37.132671, 47.933609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560558, 36.771130, 47.887367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310261, 36.525875, 48.080246>,  <35.160084, 36.378723, 48.195972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310261, 36.525875, 48.080246>,  <35.560558, 36.771130, 47.887367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310261, 36.525875, 48.080246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316787, -0.764656, -0.561202,
		0.712808, -0.198412, 0.672709,
		-0.625740, -0.613135, 0.482199,
		35.122540, 36.341934, 48.224907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989910, 36.141651, 48.041042>,  <35.560558, 36.771130, 47.887367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989910, 36.141651, 48.041042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604504, 36.034660, 48.045006>,  <35.373260, 35.970467, 48.047382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.604504, 36.034660, 48.045006>,  <35.989910, 36.141651, 48.041042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604504, 36.034660, 48.045006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198091, -0.737476, -0.645670,
		0.180011, -0.620149, 0.763552,
		-0.963512, -0.267481, 0.009908,
		35.315449, 35.954414, 48.047977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880405, 35.303734, 48.085819>,  <35.989910, 36.141651, 48.041042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880405, 35.303734, 48.085819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545219, 35.472244, 47.947060>,  <35.344109, 35.573353, 47.863804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545219, 35.472244, 47.947060>,  <35.880405, 35.303734, 48.085819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545219, 35.472244, 47.947060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110597, -0.753570, -0.647997,
		-0.534396, -0.504635, 0.678059,
		-0.837967, 0.421279, -0.346894,
		35.293831, 35.598629, 47.842991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530663, 34.708992, 47.953350>,  <35.880405, 35.303734, 48.085819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530663, 34.708992, 47.953350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388466, 35.012978, 47.735699>,  <35.303146, 35.195370, 47.605106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388466, 35.012978, 47.735699>,  <35.530663, 34.708992, 47.953350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388466, 35.012978, 47.735699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002871, -0.581263, -0.813710,
		-0.934675, -0.290829, 0.204452,
		-0.355491, 0.759968, -0.544127,
		35.281818, 35.240967, 47.572460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965469, 34.477806, 47.670418>,  <35.530663, 34.708992, 47.953350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965469, 34.477806, 47.670418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073059, 34.780304, 47.431839>,  <35.137611, 34.961803, 47.288692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073059, 34.780304, 47.431839>,  <34.965469, 34.477806, 47.670418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073059, 34.780304, 47.431839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005407, -0.620444, -0.784232,
		-0.963132, 0.207713, -0.170973,
		0.268975, 0.756244, -0.596446,
		35.153751, 35.007175, 47.252907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697380, 34.231266, 47.070156>,  <34.965469, 34.477806, 47.670418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697380, 34.231266, 47.070156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917107, 34.532467, 46.925251>,  <35.048943, 34.713188, 46.838306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917107, 34.532467, 46.925251>,  <34.697380, 34.231266, 47.070156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917107, 34.532467, 46.925251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081026, -0.479492, -0.873798,
		-0.831674, 0.450642, -0.324407,
		0.549321, 0.753000, -0.362267,
		35.081902, 34.758366, 46.816570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386063, 34.326473, 46.512486>,  <34.697380, 34.231266, 47.070156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386063, 34.326473, 46.512486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.738411, 34.509762, 46.464977>,  <34.949818, 34.619736, 46.436474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.738411, 34.509762, 46.464977>,  <34.386063, 34.326473, 46.512486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738411, 34.509762, 46.464977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092967, -0.413480, -0.905754,
		-0.464144, 0.786808, -0.406821,
		0.880867, 0.458222, -0.118767,
		35.002670, 34.647228, 46.429348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330387, 34.704353, 45.939678>,  <34.386063, 34.326473, 46.512486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330387, 34.704353, 45.939678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724365, 34.637554, 45.957573>,  <34.960751, 34.597473, 45.968311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724365, 34.637554, 45.957573>,  <34.330387, 34.704353, 45.939678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724365, 34.637554, 45.957573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015642, -0.343787, -0.938917,
		0.172180, 0.924079, -0.341222,
		0.984941, -0.167000, 0.044739,
		35.019848, 34.587456, 45.970993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823315, 35.016003, 45.483604>,  <34.330387, 34.704353, 45.939678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823315, 35.016003, 45.483604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.513397, 34.785847, 45.378819>,  <33.327446, 34.647755, 45.315948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.513397, 34.785847, 45.378819>,  <33.823315, 35.016003, 45.483604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513397, 34.785847, 45.378819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519445, 0.343180, 0.782563,
		-0.360377, 0.742399, -0.564776,
		-0.774793, -0.575388, -0.261961,
		33.280960, 34.613232, 45.300232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239975, 35.493317, 45.273335>,  <33.823315, 35.016003, 45.483604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239975, 35.493317, 45.273335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.100540, 35.141560, 45.403049>,  <33.016880, 34.930508, 45.480877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.100540, 35.141560, 45.403049>,  <33.239975, 35.493317, 45.273335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100540, 35.141560, 45.403049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641238, 0.476097, 0.601784,
		-0.683594, 0.001831, -0.729860,
		-0.348586, -0.879391, 0.324283,
		32.995964, 34.877743, 45.500336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501858, 35.700481, 45.372726>,  <33.239975, 35.493317, 45.273335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501858, 35.700481, 45.372726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582748, 35.351055, 45.549809>,  <32.631283, 35.141399, 45.656059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.582748, 35.351055, 45.549809>,  <32.501858, 35.700481, 45.372726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582748, 35.351055, 45.549809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525469, 0.284684, 0.801772,
		-0.826431, -0.394768, -0.401460,
		0.202224, -0.873564, 0.442709,
		32.643417, 35.088985, 45.682621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913000, 35.626690, 45.757828>,  <32.501858, 35.700481, 45.372726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913000, 35.626690, 45.757828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152817, 35.383148, 45.965614>,  <32.296707, 35.237022, 46.090286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.152817, 35.383148, 45.965614>,  <31.913000, 35.626690, 45.757828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152817, 35.383148, 45.965614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355980, 0.378455, 0.854430,
		-0.716820, -0.697185, 0.010159,
		0.599540, -0.608856, 0.519468,
		32.332680, 35.200493, 46.121456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463289, 35.402603, 46.319267>,  <31.913000, 35.626690, 45.757828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463289, 35.402603, 46.319267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.842852, 35.362869, 46.439075>,  <32.070587, 35.339031, 46.510960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.842852, 35.362869, 46.439075>,  <31.463289, 35.402603, 46.319267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842852, 35.362869, 46.439075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290629, 0.094721, 0.952136,
		-0.122948, -0.990536, 0.061013,
		0.948904, -0.099332, 0.299524,
		32.127522, 35.333069, 46.528934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397202, 35.092709, 46.923889>,  <31.463289, 35.402603, 46.319267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397202, 35.092709, 46.923889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.772161, 35.231518, 46.935596>,  <31.997137, 35.314804, 46.942619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.772161, 35.231518, 46.935596>,  <31.397202, 35.092709, 46.923889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772161, 35.231518, 46.935596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095773, 0.176079, 0.979706,
		0.334825, -0.921180, 0.198292,
		0.937401, 0.347021, 0.029269,
		32.053383, 35.335625, 46.944378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779345, 34.747910, 47.514492>,  <31.397202, 35.092709, 46.923889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779345, 34.747910, 47.514492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.971302, 35.091545, 47.443317>,  <32.086475, 35.297726, 47.400612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.971302, 35.091545, 47.443317>,  <31.779345, 34.747910, 47.514492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971302, 35.091545, 47.443317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072670, 0.241046, 0.967789,
		0.874312, -0.451504, 0.178107,
		0.479893, 0.859092, -0.177938,
		32.115269, 35.349274, 47.389935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283009, 34.826988, 48.016693>,  <31.779345, 34.747910, 47.514492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283009, 34.826988, 48.016693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224674, 35.201004, 47.887428>,  <32.189674, 35.425415, 47.809868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224674, 35.201004, 47.887428>,  <32.283009, 34.826988, 48.016693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224674, 35.201004, 47.887428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044955, 0.320053, 0.946332,
		0.988287, 0.152534, -0.004639,
		-0.145832, 0.935040, -0.323162,
		32.180923, 35.481518, 47.790482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618698, 35.248184, 48.451790>,  <32.283009, 34.826988, 48.016693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618698, 35.248184, 48.451790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360882, 35.504211, 48.284519>,  <32.206192, 35.657829, 48.184158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360882, 35.504211, 48.284519>,  <32.618698, 35.248184, 48.451790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360882, 35.504211, 48.284519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161186, 0.420893, 0.892675,
		0.747383, 0.642772, -0.168114,
		-0.644544, 0.640073, -0.418174,
		32.167519, 35.696232, 48.159065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751457, 35.853065, 48.652412>,  <32.618698, 35.248184, 48.451790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751457, 35.853065, 48.652412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.384022, 35.945099, 48.523876>,  <32.163559, 36.000320, 48.446754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.384022, 35.945099, 48.523876>,  <32.751457, 35.853065, 48.652412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384022, 35.945099, 48.523876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137062, 0.577152, 0.805053,
		0.370691, 0.783554, -0.498628,
		-0.918587, 0.230082, -0.321341,
		32.108444, 36.014122, 48.427475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601177, 36.436340, 48.906567>,  <32.751457, 35.853065, 48.652412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601177, 36.436340, 48.906567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.226871, 36.353382, 48.792492>,  <32.002289, 36.303608, 48.724049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.226871, 36.353382, 48.792492>,  <32.601177, 36.436340, 48.906567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226871, 36.353382, 48.792492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351597, 0.610429, 0.709757,
		0.026887, 0.764437, -0.644138,
		-0.935765, -0.207394, -0.285186,
		31.946142, 36.291164, 48.706936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217251, 37.089447, 48.885548>,  <32.601177, 36.436340, 48.906567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217251, 37.089447, 48.885548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966080, 36.780910, 48.926998>,  <31.815376, 36.595787, 48.951870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966080, 36.780910, 48.926998>,  <32.217251, 37.089447, 48.885548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966080, 36.780910, 48.926998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499988, 0.501853, 0.705801,
		-0.596420, 0.391379, -0.700790,
		-0.627929, -0.771340, 0.103630,
		31.777700, 36.549507, 48.958088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537252, 37.323769, 48.812950>,  <32.217251, 37.089447, 48.885548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537252, 37.323769, 48.812950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.450226, 36.972565, 48.983486>,  <31.398010, 36.761845, 49.085808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.450226, 36.972565, 48.983486>,  <31.537252, 37.323769, 48.812950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450226, 36.972565, 48.983486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571626, 0.468680, 0.673486,
		-0.791144, -0.097180, -0.603860,
		-0.217568, -0.878006, 0.426344,
		31.384956, 36.709164, 49.111389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777298, 37.271645, 48.963867>,  <31.537252, 37.323769, 48.812950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777298, 37.271645, 48.963867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.023363, 37.061729, 49.199211>,  <31.171003, 36.935780, 49.340416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.023363, 37.061729, 49.199211>,  <30.777298, 37.271645, 48.963867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023363, 37.061729, 49.199211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467589, 0.357997, 0.808207,
		-0.634770, -0.772292, -0.025158,
		0.615165, -0.524789, 0.588361,
		31.207912, 36.904293, 49.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885071, 38.016796, 49.126778>,  <30.777298, 37.271645, 48.963867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885071, 38.016796, 49.126778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.692518, 38.366901, 49.108044>,  <30.576986, 38.576965, 49.096806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.692518, 38.366901, 49.108044>,  <30.885071, 38.016796, 49.126778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692518, 38.366901, 49.108044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426036, 0.186952, -0.885179,
		-0.766005, -0.446062, -0.462887,
		-0.481382, 0.875259, -0.046832,
		30.548103, 38.629478, 49.093994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460554, 38.170334, 48.429699>,  <30.885071, 38.016796, 49.126778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460554, 38.170334, 48.429699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.562302, 38.529152, 48.574253>,  <30.623350, 38.744442, 48.660984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.562302, 38.529152, 48.574253>,  <30.460554, 38.170334, 48.429699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562302, 38.529152, 48.574253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421783, 0.233364, -0.876151,
		-0.870284, 0.375292, -0.319000,
		0.254370, 0.897049, 0.361385,
		30.638613, 38.798267, 48.682667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291315, 38.583935, 47.976624>,  <30.460554, 38.170334, 48.429699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291315, 38.583935, 47.976624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570301, 38.753735, 48.207565>,  <30.737694, 38.855614, 48.346130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570301, 38.753735, 48.207565>,  <30.291315, 38.583935, 47.976624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570301, 38.753735, 48.207565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458453, 0.354912, -0.814775,
		-0.550783, 0.832969, 0.052927,
		0.697467, 0.424500, 0.577356,
		30.779541, 38.881084, 48.380772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512848, 39.144600, 47.628407>,  <30.291315, 38.583935, 47.976624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512848, 39.144600, 47.628407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817301, 39.061943, 47.874325>,  <30.999973, 39.012348, 48.021877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817301, 39.061943, 47.874325>,  <30.512848, 39.144600, 47.628407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817301, 39.061943, 47.874325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642323, 0.371668, -0.670287,
		-0.089994, 0.905077, 0.415617,
		0.761132, -0.206638, 0.614799,
		31.045641, 38.999950, 48.058765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016359, 39.692764, 47.493183>,  <30.512848, 39.144600, 47.628407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016359, 39.692764, 47.493183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220358, 39.380554, 47.637787>,  <31.342756, 39.193230, 47.724548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220358, 39.380554, 47.637787>,  <31.016359, 39.692764, 47.493183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220358, 39.380554, 47.637787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727126, 0.166652, -0.665969,
		0.459558, 0.602504, 0.652530,
		0.509994, -0.780523, 0.361510,
		31.373356, 39.146397, 47.746239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661718, 39.918571, 47.661602>,  <31.016359, 39.692764, 47.493183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661718, 39.918571, 47.661602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.662905, 39.527790, 47.576233>,  <31.663616, 39.293320, 47.525009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.662905, 39.527790, 47.576233>,  <31.661718, 39.918571, 47.661602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662905, 39.527790, 47.576233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809647, 0.127610, -0.572877,
		0.586910, -0.171100, 0.791367,
		0.002967, -0.976955, -0.213426,
		31.663795, 39.234703, 47.512207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141167, 39.436970, 47.871387>,  <31.661718, 39.918571, 47.661602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141167, 39.436970, 47.871387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.958464, 39.411736, 47.516445>,  <31.848843, 39.396595, 47.303482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.958464, 39.411736, 47.516445>,  <32.141167, 39.436970, 47.871387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958464, 39.411736, 47.516445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859813, 0.224622, -0.458549,
		0.228250, -0.972401, -0.048350,
		-0.456754, -0.063092, -0.887353,
		31.821438, 39.392811, 47.250240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825665, 39.508987, 47.566471>,  <32.141167, 39.436970, 47.871387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825665, 39.508987, 47.566471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996094, 39.862911, 47.641918>,  <33.098351, 40.075264, 47.687187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996094, 39.862911, 47.641918>,  <32.825665, 39.508987, 47.566471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996094, 39.862911, 47.641918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192599, -0.114998, 0.974516,
		0.883949, -0.451545, 0.121415,
		0.426076, 0.884806, 0.188620,
		33.123917, 40.128353, 47.698505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228420, 39.359673, 48.079742>,  <32.825665, 39.508987, 47.566471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228420, 39.359673, 48.079742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.179531, 39.756184, 48.099483>,  <33.150200, 39.994091, 48.111328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.179531, 39.756184, 48.099483>,  <33.228420, 39.359673, 48.079742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179531, 39.756184, 48.099483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164680, -0.069293, 0.983910,
		0.978745, 0.112126, 0.171712,
		-0.122221, 0.991275, 0.049355,
		33.142864, 40.053566, 48.114288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671909, 39.577606, 48.653595>,  <33.228420, 39.359673, 48.079742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671909, 39.577606, 48.653595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.394691, 39.860058, 48.595535>,  <33.228363, 40.029530, 48.560699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.394691, 39.860058, 48.595535>,  <33.671909, 39.577606, 48.653595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394691, 39.860058, 48.595535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008085, 0.208950, 0.977893,
		0.720851, 0.676548, -0.150520,
		-0.693043, 0.706132, -0.145152,
		33.186779, 40.071899, 48.551991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994419, 40.070793, 49.009747>,  <33.671909, 39.577606, 48.653595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994419, 40.070793, 49.009747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620735, 40.206924, 48.966995>,  <33.396523, 40.288605, 48.941345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.620735, 40.206924, 48.966995>,  <33.994419, 40.070793, 49.009747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620735, 40.206924, 48.966995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020413, 0.248129, 0.968512,
		0.356133, 0.906978, -0.224858,
		-0.934212, 0.340329, -0.106881,
		33.340473, 40.309025, 48.934933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879250, 40.821323, 49.278976>,  <33.994419, 40.070793, 49.009747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879250, 40.821323, 49.278976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.515171, 40.655743, 49.284473>,  <33.296726, 40.556393, 49.287769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.515171, 40.655743, 49.284473>,  <33.879250, 40.821323, 49.278976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515171, 40.655743, 49.284473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145993, 0.351698, 0.924659,
		-0.387600, 0.839613, -0.380547,
		-0.910194, -0.413955, 0.013740,
		33.242111, 40.531555, 49.288597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490227, 41.319366, 49.715439>,  <33.879250, 40.821323, 49.278976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490227, 41.319366, 49.715439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259579, 40.992573, 49.718410>,  <33.121189, 40.796497, 49.720192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259579, 40.992573, 49.718410>,  <33.490227, 41.319366, 49.715439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259579, 40.992573, 49.718410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093391, 0.074939, 0.992805,
		-0.811659, 0.571776, -0.119510,
		-0.576618, -0.816980, 0.007426,
		33.086594, 40.747478, 49.720638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838261, 41.524296, 49.996754>,  <33.490227, 41.319366, 49.715439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838261, 41.524296, 49.996754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.866142, 41.127113, 50.035061>,  <32.882870, 40.888802, 50.058044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.866142, 41.127113, 50.035061>,  <32.838261, 41.524296, 49.996754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866142, 41.127113, 50.035061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154746, 0.084078, 0.984370,
		-0.985493, -0.083430, -0.147796,
		0.069700, -0.992960, 0.095768,
		32.887051, 40.829224, 50.063793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410809, 41.359291, 50.554817>,  <32.838261, 41.524296, 49.996754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410809, 41.359291, 50.554817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.592430, 41.003086, 50.543331>,  <32.701405, 40.789364, 50.536438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.592430, 41.003086, 50.543331>,  <32.410809, 41.359291, 50.554817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592430, 41.003086, 50.543331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132729, -0.099477, 0.986148,
		-0.881031, -0.443956, -0.163365,
		0.454058, -0.890510, -0.028717,
		32.728649, 40.735931, 50.534718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995905, 40.917446, 50.974052>,  <32.410809, 41.359291, 50.554817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995905, 40.917446, 50.974052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.375111, 40.791218, 50.957630>,  <32.602634, 40.715481, 50.947777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.375111, 40.791218, 50.957630>,  <31.995905, 40.917446, 50.974052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375111, 40.791218, 50.957630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038855, -0.013262, 0.999157,
		-0.315847, -0.948810, -0.000311,
		0.948014, -0.315568, -0.041055,
		32.659515, 40.696548, 50.945312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.592270, 37.355560, 35.907959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927158, 37.446152, 36.107067>,  <38.128090, 37.500507, 36.226532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927158, 37.446152, 36.107067>,  <37.592270, 37.355560, 35.907959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927158, 37.446152, 36.107067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475068, -0.149655, 0.867130,
		0.270876, -0.962452, -0.017703,
		0.837220, 0.226475, 0.497767,
		38.178326, 37.514095, 36.256397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623528, 36.895981, 36.468349>,  <37.592270, 37.355560, 35.907959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623528, 36.895981, 36.468349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882744, 37.181969, 36.573322>,  <38.038273, 37.353561, 36.636307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882744, 37.181969, 36.573322>,  <37.623528, 36.895981, 36.468349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882744, 37.181969, 36.573322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358383, -0.017779, 0.933405,
		0.672019, -0.698933, 0.244710,
		0.648037, 0.714966, 0.262434,
		38.077156, 37.396458, 36.652054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836220, 36.699158, 37.143089>,  <37.623528, 36.895981, 36.468349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836220, 36.699158, 37.143089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927254, 37.088501, 37.132004>,  <37.981876, 37.322109, 37.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927254, 37.088501, 37.132004>,  <37.836220, 36.699158, 37.143089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927254, 37.088501, 37.132004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324970, 0.102750, 0.940126,
		0.917931, -0.204956, 0.339699,
		0.227588, 0.973363, -0.027713,
		37.995529, 37.380508, 37.123692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235535, 36.837173, 37.811844>,  <37.836220, 36.699158, 37.143089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235535, 36.837173, 37.811844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079048, 37.184204, 37.689034>,  <37.985157, 37.392422, 37.615349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079048, 37.184204, 37.689034>,  <38.235535, 36.837173, 37.811844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079048, 37.184204, 37.689034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202522, 0.244273, 0.948322,
		0.897739, 0.433176, 0.080140,
		-0.391215, 0.867577, -0.307022,
		37.961685, 37.444477, 37.596928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471333, 37.359055, 38.232731>,  <38.235535, 36.837173, 37.811844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471333, 37.359055, 38.232731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136284, 37.494720, 38.061447>,  <37.935257, 37.576118, 37.958675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136284, 37.494720, 38.061447>,  <38.471333, 37.359055, 38.232731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136284, 37.494720, 38.061447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274873, 0.415734, 0.866954,
		0.472059, 0.843881, -0.255001,
		-0.837619, 0.339161, -0.428211,
		37.884998, 37.596470, 37.932983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424709, 38.051891, 38.527561>,  <38.471333, 37.359055, 38.232731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424709, 38.051891, 38.527561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048824, 37.995247, 38.403049>,  <37.823296, 37.961258, 38.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048824, 37.995247, 38.403049>,  <38.424709, 38.051891, 38.527561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048824, 37.995247, 38.403049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334885, 0.565484, 0.753710,
		0.069286, 0.812510, -0.578815,
		-0.939708, -0.141615, -0.311278,
		37.766911, 37.952763, 38.309666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020454, 38.724224, 38.712456>,  <38.424709, 38.051891, 38.527561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020454, 38.724224, 38.712456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769623, 38.420105, 38.644676>,  <37.619122, 38.237633, 38.604008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769623, 38.420105, 38.644676>,  <38.020454, 38.724224, 38.712456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769623, 38.420105, 38.644676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537976, 0.265398, 0.800091,
		-0.563337, 0.592883, -0.575449,
		-0.627083, -0.760299, -0.169448,
		37.581497, 38.192017, 38.593842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405167, 38.955677, 38.887257>,  <38.020454, 38.724224, 38.712456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405167, 38.955677, 38.887257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332138, 38.562416, 38.883694>,  <37.288319, 38.326458, 38.881554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332138, 38.562416, 38.883694>,  <37.405167, 38.955677, 38.887257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332138, 38.562416, 38.883694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706169, 0.124821, 0.696954,
		-0.684100, 0.133539, -0.717060,
		-0.182575, -0.983152, -0.008911,
		37.277367, 38.267471, 38.881020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598080, 38.839317, 38.728249>,  <37.405167, 38.955677, 38.887257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598080, 38.839317, 38.728249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742180, 38.505203, 38.894394>,  <36.828640, 38.304737, 38.994080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742180, 38.505203, 38.894394>,  <36.598080, 38.839317, 38.728249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742180, 38.505203, 38.894394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771302, -0.016261, 0.636261,
		-0.524703, -0.549582, -0.650112,
		0.360250, -0.835281, 0.415361,
		36.850254, 38.254620, 39.019001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041084, 38.443832, 38.721363>,  <36.598080, 38.839317, 38.728249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041084, 38.443832, 38.721363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299641, 38.317818, 38.999336>,  <36.454773, 38.242210, 39.166122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299641, 38.317818, 38.999336>,  <36.041084, 38.443832, 38.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299641, 38.317818, 38.999336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727017, 0.022138, 0.686262,
		-0.231584, -0.948821, -0.214729,
		0.646386, -0.315038, 0.694936,
		36.493557, 38.223305, 39.207817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669197, 37.913307, 39.116272>,  <36.041084, 38.443832, 38.721363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669197, 37.913307, 39.116272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971130, 38.014984, 39.358135>,  <36.152290, 38.075993, 39.503254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971130, 38.014984, 39.358135>,  <35.669197, 37.913307, 39.116272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971130, 38.014984, 39.358135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648080, 0.146984, 0.747254,
		0.101071, -0.955920, 0.275686,
		0.754836, 0.254192, 0.604657,
		36.197582, 38.091244, 39.539532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598892, 37.561924, 39.811882>,  <35.669197, 37.913307, 39.116272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598892, 37.561924, 39.811882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867256, 37.841877, 39.909893>,  <36.028275, 38.009850, 39.968700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867256, 37.841877, 39.909893>,  <35.598892, 37.561924, 39.811882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867256, 37.841877, 39.909893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504954, 0.189219, 0.842150,
		0.543046, -0.688734, 0.480360,
		0.670911, 0.699886, 0.245024,
		36.068531, 38.051842, 39.983402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224762, 36.901012, 39.772419>,  <35.598892, 37.561924, 39.811882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224762, 36.901012, 39.772419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859703, 36.823517, 39.628452>,  <34.640667, 36.777020, 39.542072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859703, 36.823517, 39.628452>,  <35.224762, 36.901012, 39.772419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859703, 36.823517, 39.628452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383946, -0.104286, -0.917447,
		0.140211, -0.975495, 0.169562,
		-0.912648, -0.193739, -0.359915,
		34.585907, 36.765396, 39.520477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281658, 36.299076, 39.324379>,  <35.224762, 36.901012, 39.772419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281658, 36.299076, 39.324379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936749, 36.472374, 39.219479>,  <34.729801, 36.576355, 39.156540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936749, 36.472374, 39.219479>,  <35.281658, 36.299076, 39.324379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936749, 36.472374, 39.219479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145979, -0.283229, -0.947878,
		-0.484945, -0.855614, 0.180976,
		-0.862275, 0.433250, -0.262252,
		34.678066, 36.602348, 39.140804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061615, 35.823505, 38.761635>,  <35.281658, 36.299076, 39.324379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061615, 35.823505, 38.761635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857792, 36.163624, 38.708939>,  <34.735497, 36.367695, 38.677322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857792, 36.163624, 38.708939>,  <35.061615, 35.823505, 38.761635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857792, 36.163624, 38.708939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111817, -0.217250, -0.969690,
		-0.853140, -0.479382, 0.205779,
		-0.509557, 0.850292, -0.131742,
		34.704926, 36.418713, 38.669415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421223, 35.598461, 38.528309>,  <35.061615, 35.823505, 38.761635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421223, 35.598461, 38.528309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447929, 35.986954, 38.436871>,  <34.463955, 36.220047, 38.382008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447929, 35.986954, 38.436871>,  <34.421223, 35.598461, 38.528309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447929, 35.986954, 38.436871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216379, -0.209562, -0.953553,
		-0.974024, 0.113128, 0.196162,
		0.066765, 0.971229, -0.228597,
		34.467960, 36.278324, 38.368290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888691, 35.626938, 38.101120>,  <34.421223, 35.598461, 38.528309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888691, 35.626938, 38.101120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107002, 35.951218, 38.016369>,  <34.237991, 36.145786, 37.965519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107002, 35.951218, 38.016369>,  <33.888691, 35.626938, 38.101120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107002, 35.951218, 38.016369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199781, -0.119669, -0.972505,
		-0.813763, 0.573105, 0.096648,
		0.545782, 0.810697, -0.211878,
		34.270737, 36.194427, 37.952805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482571, 36.005028, 37.698109>,  <33.888691, 35.626938, 38.101120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482571, 36.005028, 37.698109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856148, 36.136467, 37.641872>,  <34.080296, 36.215332, 37.608131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856148, 36.136467, 37.641872>,  <33.482571, 36.005028, 37.698109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856148, 36.136467, 37.641872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103911, -0.126737, -0.986479,
		-0.341972, 0.935928, -0.084221,
		0.933947, 0.328597, -0.140594,
		34.136333, 36.235046, 37.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462891, 36.646847, 37.139114>,  <33.482571, 36.005028, 37.698109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462891, 36.646847, 37.139114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820747, 36.469685, 37.162594>,  <34.035461, 36.363388, 37.176682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820747, 36.469685, 37.162594>,  <33.462891, 36.646847, 37.139114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820747, 36.469685, 37.162594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004893, -0.121672, -0.992558,
		0.446749, 0.888276, -0.106687,
		0.894646, -0.442902, 0.058703,
		34.089142, 36.336815, 37.180206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871181, 36.920425, 36.597485>,  <33.462891, 36.646847, 37.139114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871181, 36.920425, 36.597485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060562, 36.585838, 36.707878>,  <34.174191, 36.385086, 36.774117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060562, 36.585838, 36.707878>,  <33.871181, 36.920425, 36.597485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060562, 36.585838, 36.707878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273006, -0.158545, -0.948858,
		0.837442, 0.524586, 0.153297,
		0.473454, -0.836464, 0.275987,
		34.202599, 36.334900, 36.790676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510963, 36.915089, 36.187500>,  <33.871181, 36.920425, 36.597485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510963, 36.915089, 36.187500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432716, 36.538921, 36.298748>,  <34.385769, 36.313221, 36.365498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432716, 36.538921, 36.298748>,  <34.510963, 36.915089, 36.187500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432716, 36.538921, 36.298748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030759, -0.289344, -0.956731,
		0.980199, -0.178594, 0.085526,
		-0.195613, -0.940417, 0.278122,
		34.374031, 36.256798, 36.382183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959789, 36.515434, 35.713161>,  <34.510963, 36.915089, 36.187500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959789, 36.515434, 35.713161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673454, 36.287357, 35.874382>,  <34.501652, 36.150509, 35.971115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673454, 36.287357, 35.874382>,  <34.959789, 36.515434, 35.713161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673454, 36.287357, 35.874382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213300, -0.371067, -0.903777,
		0.664890, -0.732929, 0.144001,
		-0.715838, -0.570197, 0.403052,
		34.458702, 36.116299, 35.995296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154922, 35.824780, 35.432831>,  <34.959789, 36.515434, 35.713161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154922, 35.824780, 35.432831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767387, 35.847061, 35.529373>,  <34.534866, 35.860432, 35.587299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767387, 35.847061, 35.529373>,  <35.154922, 35.824780, 35.432831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767387, 35.847061, 35.529373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244344, -0.374724, -0.894359,
		0.040622, -0.925461, 0.376658,
		-0.968837, 0.055703, 0.241353,
		34.476738, 35.863773, 35.601780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913376, 35.228062, 35.202763>,  <35.154922, 35.824780, 35.432831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913376, 35.228062, 35.202763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583942, 35.444084, 35.272095>,  <34.386284, 35.573700, 35.313694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583942, 35.444084, 35.272095>,  <34.913376, 35.228062, 35.202763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583942, 35.444084, 35.272095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340272, -0.225964, -0.912773,
		-0.453787, -0.810725, 0.369868,
		-0.823585, 0.540060, 0.173328,
		34.336868, 35.606102, 35.324093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301167, 34.581516, 35.046638>,  <34.913376, 35.228062, 35.202763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301167, 34.581516, 35.046638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443520, 34.309788, 34.789928>,  <35.528931, 34.146751, 34.635902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443520, 34.309788, 34.789928>,  <35.301167, 34.581516, 35.046638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443520, 34.309788, 34.789928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008854, -0.689150, 0.724565,
		-0.934489, -0.252177, -0.251270,
		0.355882, -0.679323, -0.641770,
		35.550285, 34.105991, 34.597397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938828, 33.849037, 35.005829>,  <35.301167, 34.581516, 35.046638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938828, 33.849037, 35.005829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333572, 33.832600, 34.943317>,  <35.570419, 33.822739, 34.905811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333572, 33.832600, 34.943317>,  <34.938828, 33.849037, 35.005829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333572, 33.832600, 34.943317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059474, -0.806871, 0.587726,
		-0.150242, -0.589297, -0.793824,
		0.986859, -0.041089, -0.156274,
		35.629631, 33.820274, 34.896435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142719, 33.167511, 35.020786>,  <34.938828, 33.849037, 35.005829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142719, 33.167511, 35.020786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502930, 33.339653, 35.045582>,  <35.719055, 33.442940, 35.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502930, 33.339653, 35.045582>,  <35.142719, 33.167511, 35.020786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502930, 33.339653, 35.045582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300802, -0.719586, 0.625870,
		0.313951, -0.544968, -0.777460,
		0.900529, 0.430354, 0.061988,
		35.773087, 33.468758, 35.064178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452431, 32.413078, 34.935452>,  <35.142719, 33.167511, 35.020786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452431, 32.413078, 34.935452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675323, 32.102543, 35.053288>,  <35.809059, 31.916222, 35.123989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675323, 32.102543, 35.053288>,  <35.452431, 32.413078, 34.935452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675323, 32.102543, 35.053288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430445, 0.033318, 0.902001,
		-0.710076, -0.629432, -0.315607,
		0.557233, -0.776341, 0.294594,
		35.842495, 31.869640, 35.141666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995155, 31.783007, 35.250961>,  <35.452431, 32.413078, 34.935452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995155, 31.783007, 35.250961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372807, 31.852409, 35.363041>,  <35.599400, 31.894051, 35.430286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372807, 31.852409, 35.363041>,  <34.995155, 31.783007, 35.250961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372807, 31.852409, 35.363041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307467, 0.157642, 0.938410,
		0.118639, -0.972136, 0.202179,
		0.944134, 0.173495, 0.280197,
		35.656048, 31.904461, 35.447098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342121, 31.356716, 35.813713>,  <34.995155, 31.783007, 35.250961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342121, 31.356716, 35.813713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424725, 31.747961, 35.823956>,  <35.474285, 31.982708, 35.830101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424725, 31.747961, 35.823956>,  <35.342121, 31.356716, 35.813713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424725, 31.747961, 35.823956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156705, 0.007234, 0.987619,
		0.965815, -0.207961, 0.154769,
		0.206506, 0.978110, 0.025602,
		35.486675, 32.041393, 35.831635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505962, 31.430096, 36.460949>,  <35.342121, 31.356716, 35.813713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505962, 31.430096, 36.460949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434204, 31.804121, 36.338654>,  <35.391148, 32.028538, 36.265278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434204, 31.804121, 36.338654>,  <35.505962, 31.430096, 36.460949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434204, 31.804121, 36.338654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426806, 0.206032, 0.880561,
		0.886371, 0.288458, 0.362129,
		-0.179394, 0.935063, -0.305736,
		35.380386, 32.084641, 36.246933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891808, 31.764284, 37.021862>,  <35.505962, 31.430096, 36.460949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891808, 31.764284, 37.021862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655609, 32.040634, 36.855007>,  <35.513889, 32.206444, 36.754894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655609, 32.040634, 36.855007>,  <35.891808, 31.764284, 37.021862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655609, 32.040634, 36.855007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346353, 0.249911, 0.904204,
		0.728938, 0.678408, 0.091714,
		-0.590499, 0.690874, -0.417138,
		35.478458, 32.247898, 36.729866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979252, 32.305439, 37.457108>,  <35.891808, 31.764284, 37.021862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979252, 32.305439, 37.457108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633953, 32.376526, 37.268124>,  <35.426773, 32.419178, 37.154732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633953, 32.376526, 37.268124>,  <35.979252, 32.305439, 37.457108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633953, 32.376526, 37.268124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344190, 0.477412, 0.808462,
		0.369232, 0.860521, -0.350958,
		-0.863250, 0.177714, -0.472458,
		35.374977, 32.429840, 37.126385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739220, 32.936356, 37.604713>,  <35.979252, 32.305439, 37.457108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739220, 32.936356, 37.604713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394081, 32.780964, 37.475353>,  <35.187000, 32.687729, 37.397736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394081, 32.780964, 37.475353>,  <35.739220, 32.936356, 37.604713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394081, 32.780964, 37.475353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439215, 0.259530, 0.860078,
		-0.250187, 0.884156, -0.394558,
		-0.862842, -0.388476, -0.323403,
		35.135227, 32.664421, 37.378334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255589, 33.411686, 37.761028>,  <35.739220, 32.936356, 37.604713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255589, 33.411686, 37.761028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072952, 33.057495, 37.726479>,  <34.963371, 32.844982, 37.705750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072952, 33.057495, 37.726479>,  <35.255589, 33.411686, 37.761028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072952, 33.057495, 37.726479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533607, 0.194877, 0.822974,
		-0.711889, 0.421853, -0.561474,
		-0.456592, -0.885473, -0.086373,
		34.935974, 32.791855, 37.700565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520267, 33.641510, 37.700935>,  <35.255589, 33.411686, 37.761028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520267, 33.641510, 37.700935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559631, 33.267544, 37.837322>,  <34.583248, 33.043163, 37.919155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559631, 33.267544, 37.837322>,  <34.520267, 33.641510, 37.700935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559631, 33.267544, 37.837322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362949, 0.285306, 0.887056,
		-0.926598, -0.211044, -0.311249,
		0.098406, -0.934912, 0.340963,
		34.589153, 32.987072, 37.939610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801697, 33.524620, 38.039860>,  <34.520267, 33.641510, 37.700935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801697, 33.524620, 38.039860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019348, 33.222630, 38.186245>,  <34.149940, 33.041435, 38.274075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019348, 33.222630, 38.186245>,  <33.801697, 33.524620, 38.039860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019348, 33.222630, 38.186245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541147, 0.017520, 0.840746,
		-0.641159, -0.655513, -0.399022,
		0.544128, -0.754981, 0.365962,
		34.182587, 32.996136, 38.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348186, 33.065536, 38.234745>,  <33.801697, 33.524620, 38.039860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348186, 33.065536, 38.234745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677864, 32.979137, 38.444145>,  <33.875671, 32.927299, 38.569786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677864, 32.979137, 38.444145>,  <33.348186, 33.065536, 38.234745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677864, 32.979137, 38.444145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526505, 0.048169, 0.848806,
		-0.208557, -0.975205, -0.074023,
		0.824195, -0.215998, 0.523496,
		33.925121, 32.914337, 38.601192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026161, 32.693367, 38.783913>,  <33.348186, 33.065536, 38.234745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026161, 32.693367, 38.783913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405609, 32.739899, 38.901615>,  <33.633278, 32.767818, 38.972237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405609, 32.739899, 38.901615>,  <33.026161, 32.693367, 38.783913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405609, 32.739899, 38.901615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292842, -0.029460, 0.955707,
		0.119847, -0.992774, 0.006121,
		0.948620, 0.116331, 0.294257,
		33.690197, 32.774799, 38.989891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045399, 32.289864, 39.377544>,  <33.026161, 32.693367, 38.783913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045399, 32.289864, 39.377544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358555, 32.531082, 39.438747>,  <33.546448, 32.675812, 39.475468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358555, 32.531082, 39.438747>,  <33.045399, 32.289864, 39.377544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358555, 32.531082, 39.438747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188259, -0.004783, 0.982108,
		0.592989, -0.797691, 0.109785,
		0.782893, 0.603047, 0.153009,
		33.593422, 32.711998, 39.484650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484177, 32.090385, 39.916328>,  <33.045399, 32.289864, 39.377544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484177, 32.090385, 39.916328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577190, 32.478256, 39.886250>,  <33.632999, 32.710979, 39.868202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577190, 32.478256, 39.886250>,  <33.484177, 32.090385, 39.916328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577190, 32.478256, 39.886250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021040, 0.082316, 0.996384,
		0.972360, -0.230115, 0.039543,
		0.232538, 0.969676, -0.075199,
		33.646954, 32.769157, 39.863689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858097, 32.149822, 40.460670>,  <33.484177, 32.090385, 39.916328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858097, 32.149822, 40.460670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801262, 32.535332, 40.370377>,  <33.767162, 32.766636, 40.316200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801262, 32.535332, 40.370377>,  <33.858097, 32.149822, 40.460670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801262, 32.535332, 40.370377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083543, 0.238915, 0.967440,
		0.986323, 0.118599, -0.114462,
		-0.142084, 0.963771, -0.225739,
		33.758636, 32.824463, 40.302654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412132, 32.563053, 40.697872>,  <33.858097, 32.149822, 40.460670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412132, 32.563053, 40.697872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086792, 32.795242, 40.682312>,  <33.891586, 32.934555, 40.672974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086792, 32.795242, 40.682312>,  <34.412132, 32.563053, 40.697872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086792, 32.795242, 40.682312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068779, 0.162342, 0.984335,
		0.577691, 0.797935, -0.171965,
		-0.813353, 0.580469, -0.038902,
		33.842785, 32.969383, 40.670643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543358, 33.221676, 41.012196>,  <34.412132, 32.563053, 40.697872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543358, 33.221676, 41.012196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143772, 33.216846, 41.029758>,  <33.904022, 33.213947, 41.040295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143772, 33.216846, 41.029758>,  <34.543358, 33.221676, 41.012196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143772, 33.216846, 41.029758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040597, 0.200442, 0.978864,
		-0.020623, 0.979631, -0.199744,
		-0.998963, -0.012078, 0.043904,
		33.844082, 33.213223, 41.042931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348408, 33.780441, 41.348713>,  <34.543358, 33.221676, 41.012196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348408, 33.780441, 41.348713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030167, 33.543339, 41.398758>,  <33.839222, 33.401077, 41.428783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030167, 33.543339, 41.398758>,  <34.348408, 33.780441, 41.348713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030167, 33.543339, 41.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025697, 0.239350, 0.970593,
		-0.605267, 0.768996, -0.205661,
		-0.795608, -0.592753, 0.125110,
		33.791485, 33.365513, 41.436291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999462, 34.195904, 41.800594>,  <34.348408, 33.780441, 41.348713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999462, 34.195904, 41.800594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802265, 33.848442, 41.820152>,  <33.683949, 33.639965, 41.831886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802265, 33.848442, 41.820152>,  <33.999462, 34.195904, 41.800594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802265, 33.848442, 41.820152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136220, 0.132570, 0.981768,
		-0.859303, 0.477345, -0.183685,
		-0.492993, -0.868658, 0.048894,
		33.654366, 33.587845, 41.834820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243565, 34.318481, 42.091316>,  <33.999462, 34.195904, 41.800594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243565, 34.318481, 42.091316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344124, 33.937969, 42.162724>,  <33.404461, 33.709663, 42.205570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344124, 33.937969, 42.162724>,  <33.243565, 34.318481, 42.091316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344124, 33.937969, 42.162724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003598, 0.185361, 0.982664,
		-0.967877, -0.246398, 0.050022,
		0.251399, -0.951278, 0.178521,
		33.419544, 33.652584, 42.216278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732193, 34.030243, 42.495171>,  <33.243565, 34.318481, 42.091316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732193, 34.030243, 42.495171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056282, 33.807838, 42.569351>,  <33.250736, 33.674397, 42.613861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056282, 33.807838, 42.569351>,  <32.732193, 34.030243, 42.495171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056282, 33.807838, 42.569351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063580, 0.231162, 0.970836,
		-0.582665, -0.798383, 0.151942,
		0.810222, -0.556011, 0.185451,
		33.299347, 33.641037, 42.624985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566891, 33.623215, 43.086689>,  <32.732193, 34.030243, 42.495171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566891, 33.623215, 43.086689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966625, 33.612053, 43.077381>,  <33.206467, 33.605354, 43.071796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966625, 33.612053, 43.077381>,  <32.566891, 33.623215, 43.086689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966625, 33.612053, 43.077381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028836, 0.219649, 0.975153,
		-0.022102, -0.975180, 0.220308,
		0.999340, -0.027905, -0.023266,
		33.266426, 33.603680, 43.070400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716000, 33.253300, 43.644520>,  <32.566891, 33.623215, 43.086689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716000, 33.253300, 43.644520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054649, 33.449444, 43.561790>,  <33.257839, 33.567131, 43.512154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054649, 33.449444, 43.561790>,  <32.716000, 33.253300, 43.644520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054649, 33.449444, 43.561790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175747, 0.109210, 0.978359,
		0.502334, -0.864651, 0.006281,
		0.846625, 0.490359, -0.206819,
		33.308636, 33.596550, 43.499744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156845, 32.980694, 44.108620>,  <32.716000, 33.253300, 43.644520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156845, 32.980694, 44.108620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311050, 33.332226, 43.996162>,  <33.403572, 33.543144, 43.928688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311050, 33.332226, 43.996162>,  <33.156845, 32.980694, 44.108620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311050, 33.332226, 43.996162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275796, 0.181014, 0.944018,
		0.880520, -0.441469, -0.172594,
		0.385513, 0.878828, -0.281142,
		33.426704, 33.595875, 43.911819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612499, 33.082291, 44.659607>,  <33.156845, 32.980694, 44.108620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612499, 33.082291, 44.659607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564651, 33.431438, 44.470379>,  <33.535942, 33.640926, 44.356842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564651, 33.431438, 44.470379>,  <33.612499, 33.082291, 44.659607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564651, 33.431438, 44.470379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073145, 0.467444, 0.880992,
		0.990121, 0.139990, 0.007929,
		-0.119623, 0.872868, -0.473066,
		33.528763, 33.693298, 44.328461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124031, 33.584179, 44.933228>,  <33.612499, 33.082291, 44.659607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124031, 33.584179, 44.933228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837704, 33.821606, 44.786102>,  <33.665909, 33.964062, 44.697826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837704, 33.821606, 44.786102>,  <34.124031, 33.584179, 44.933228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837704, 33.821606, 44.786102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092646, 0.441350, 0.892540,
		0.692114, 0.672972, -0.260934,
		-0.715818, 0.593564, -0.367813,
		33.622959, 33.999676, 44.675758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122513, 34.289078, 45.244915>,  <34.124031, 33.584179, 44.933228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122513, 34.289078, 45.244915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748749, 34.253494, 45.106949>,  <33.524490, 34.232143, 45.024170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748749, 34.253494, 45.106949>,  <34.122513, 34.289078, 45.244915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748749, 34.253494, 45.106949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310815, 0.676625, 0.667512,
		0.173993, 0.730934, -0.659896,
		-0.934409, -0.088963, -0.344913,
		33.468426, 34.226807, 45.003475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595295, 34.820591, 45.239140>,  <34.122513, 34.289078, 45.244915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595295, 34.820591, 45.239140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898811, 34.624733, 45.410946>,  <35.080921, 34.507217, 45.514030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898811, 34.624733, 45.410946>,  <34.595295, 34.820591, 45.239140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898811, 34.624733, 45.410946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338912, -0.266329, -0.902335,
		0.556221, 0.830249, -0.036139,
		0.758787, -0.489649, 0.429519,
		35.126446, 34.477837, 45.539803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143379, 35.042847, 44.860287>,  <34.595295, 34.820591, 45.239140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143379, 35.042847, 44.860287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258434, 34.721790, 45.069298>,  <35.327469, 34.529156, 45.194702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258434, 34.721790, 45.069298>,  <35.143379, 35.042847, 44.860287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258434, 34.721790, 45.069298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457710, -0.364039, -0.811158,
		0.841287, 0.472487, 0.262664,
		0.287642, -0.802640, 0.522523,
		35.344727, 34.480999, 45.226055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850140, 35.001179, 44.968048>,  <35.143379, 35.042847, 44.860287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850140, 35.001179, 44.968048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775173, 34.610435, 45.009281>,  <35.730194, 34.375988, 45.034019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775173, 34.610435, 45.009281>,  <35.850140, 35.001179, 44.968048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775173, 34.610435, 45.009281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392743, -0.170705, -0.903666,
		0.900349, -0.128878, 0.415647,
		-0.187416, -0.976857, 0.103078,
		35.718948, 34.317379, 45.040203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474335, 34.712730, 44.779873>,  <35.850140, 35.001179, 44.968048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474335, 34.712730, 44.779873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213455, 34.410244, 44.758816>,  <36.056927, 34.228752, 44.746181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213455, 34.410244, 44.758816>,  <36.474335, 34.712730, 44.779873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213455, 34.410244, 44.758816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298924, -0.192747, -0.934608,
		0.696621, -0.625286, 0.351761,
		-0.652198, -0.756218, -0.052641,
		36.017796, 34.183380, 44.743023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913681, 34.063831, 44.644329>,  <36.474335, 34.712730, 44.779873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913681, 34.063831, 44.644329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552437, 33.991428, 44.488571>,  <36.335690, 33.947987, 44.395119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552437, 33.991428, 44.488571>,  <36.913681, 34.063831, 44.644329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552437, 33.991428, 44.488571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410982, -0.101574, -0.905967,
		0.124439, -0.978221, 0.166125,
		-0.903110, -0.181012, -0.389392,
		36.281502, 33.937126, 44.371754>
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
