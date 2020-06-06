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
	<23.796196, 34.957108, 35.009647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124828, 35.176804, 35.070763>,  <24.322008, 35.308620, 35.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.124828, 35.176804, 35.070763>,  <23.796196, 34.957108, 35.009647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.124828, 35.176804, 35.070763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480273, -0.811213, 0.333575,
		0.307153, -0.200681, -0.930260,
		0.821581, 0.549237, 0.152785,
		24.371304, 35.341576, 35.116596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.378304, 34.734634, 34.511002>,  <23.796196, 34.957108, 35.009647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.378304, 34.734634, 34.511002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511896, 34.906612, 34.846523>,  <24.592052, 35.009800, 35.047836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511896, 34.906612, 34.846523>,  <24.378304, 34.734634, 34.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511896, 34.906612, 34.846523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665356, -0.737879, 0.113296,
		0.667651, 0.520268, -0.532507,
		0.333982, 0.429949, 0.838809,
		24.612091, 35.035599, 35.098167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050959, 34.882488, 34.415894>,  <24.378304, 34.734634, 34.511002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050959, 34.882488, 34.415894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019321, 34.836525, 34.811981>,  <25.000340, 34.808949, 35.049633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019321, 34.836525, 34.811981>,  <25.050959, 34.882488, 34.415894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019321, 34.836525, 34.811981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759716, -0.650088, -0.014757,
		0.645427, 0.751120, 0.138717,
		-0.079094, -0.114910, 0.990222,
		24.995594, 34.802052, 35.109047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650072, 35.094906, 34.792427>,  <25.050959, 34.882488, 34.415894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650072, 35.094906, 34.792427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446653, 34.799992, 34.970318>,  <25.324602, 34.623043, 35.077053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446653, 34.799992, 34.970318>,  <25.650072, 35.094906, 34.792427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446653, 34.799992, 34.970318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790803, -0.604259, -0.097478,
		0.340601, 0.302121, 0.890345,
		-0.508548, -0.737288, 0.444730,
		25.294088, 34.578804, 35.103737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102768, 34.807922, 35.323265>,  <25.650072, 35.094906, 34.792427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102768, 34.807922, 35.323265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867022, 34.530338, 35.157825>,  <25.725574, 34.363789, 35.058563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867022, 34.530338, 35.157825>,  <26.102768, 34.807922, 35.323265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867022, 34.530338, 35.157825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700220, -0.694146, 0.166894,
		-0.402914, -0.191247, 0.895033,
		-0.589366, -0.693964, -0.413597,
		25.690212, 34.322147, 35.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192242, 34.149494, 35.697063>,  <26.102768, 34.807922, 35.323265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192242, 34.149494, 35.697063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081795, 34.051750, 35.325249>,  <26.015526, 33.993103, 35.102158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081795, 34.051750, 35.325249>,  <26.192242, 34.149494, 35.697063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081795, 34.051750, 35.325249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528237, -0.846556, 0.065632,
		-0.802947, -0.472897, 0.362829,
		-0.276118, -0.244359, -0.929541,
		25.998959, 33.978443, 35.046387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958954, 33.525986, 35.683292>,  <26.192242, 34.149494, 35.697063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958954, 33.525986, 35.683292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115868, 33.607502, 35.324497>,  <26.210016, 33.656410, 35.109222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115868, 33.607502, 35.324497>,  <25.958954, 33.525986, 35.683292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115868, 33.607502, 35.324497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604116, -0.792439, 0.084165,
		-0.693655, -0.574900, -0.433974,
		0.392284, 0.203789, -0.896985,
		26.233553, 33.668640, 35.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976654, 32.975117, 35.164177>,  <25.958954, 33.525986, 35.683292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976654, 32.975117, 35.164177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289835, 33.198257, 35.054054>,  <26.477743, 33.332142, 34.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289835, 33.198257, 35.054054>,  <25.976654, 32.975117, 35.164177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289835, 33.198257, 35.054054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599372, -0.794962, 0.093751,
		-0.166556, -0.238411, -0.956776,
		0.782951, 0.557849, -0.275302,
		26.524721, 33.365612, 34.971462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377497, 32.470276, 34.782516>,  <25.976654, 32.975117, 35.164177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377497, 32.470276, 34.782516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629751, 32.764431, 34.881718>,  <26.781103, 32.940922, 34.941238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629751, 32.764431, 34.881718>,  <26.377497, 32.470276, 34.782516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629751, 32.764431, 34.881718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705378, -0.676392, 0.211981,
		0.323635, 0.041253, -0.945282,
		0.630637, 0.735386, 0.248003,
		26.818943, 32.985046, 34.956120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915197, 32.285564, 34.385181>,  <26.377497, 32.470276, 34.782516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915197, 32.285564, 34.385181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049719, 32.518017, 34.681610>,  <27.130432, 32.657486, 34.859467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049719, 32.518017, 34.681610>,  <26.915197, 32.285564, 34.385181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049719, 32.518017, 34.681610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744700, -0.645789, 0.168461,
		0.576474, 0.495223, -0.649947,
		0.336303, 0.581129, 0.741073,
		27.150610, 32.692356, 34.903931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659208, 32.230804, 34.238346>,  <26.915197, 32.285564, 34.385181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659208, 32.230804, 34.238346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600790, 32.322559, 34.623272>,  <27.565739, 32.377613, 34.854229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600790, 32.322559, 34.623272>,  <27.659208, 32.230804, 34.238346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600790, 32.322559, 34.623272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695654, -0.667808, 0.264762,
		0.703375, 0.708106, -0.062043,
		-0.146047, 0.229387, 0.962316,
		27.556976, 32.391376, 34.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355331, 32.562492, 34.568115>,  <27.659208, 32.230804, 34.238346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355331, 32.562492, 34.568115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100109, 32.424824, 34.843632>,  <27.946976, 32.342224, 35.008942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100109, 32.424824, 34.843632>,  <28.355331, 32.562492, 34.568115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100109, 32.424824, 34.843632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701848, -0.627881, 0.336415,
		0.316693, 0.698077, 0.642179,
		-0.638056, -0.344172, 0.688789,
		27.908693, 32.321571, 35.050270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759325, 32.498978, 35.151196>,  <28.355331, 32.562492, 34.568115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759325, 32.498978, 35.151196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446903, 32.273369, 35.258400>,  <28.259451, 32.138004, 35.322723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446903, 32.273369, 35.258400>,  <28.759325, 32.498978, 35.151196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446903, 32.273369, 35.258400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622662, -0.670853, 0.402801,
		-0.047390, 0.481492, 0.875168,
		-0.781055, -0.564023, 0.268015,
		28.212587, 32.104160, 35.338806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005512, 32.209755, 35.723698>,  <28.759325, 32.498978, 35.151196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005512, 32.209755, 35.723698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676079, 31.992422, 35.658585>,  <28.478418, 31.862022, 35.619518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676079, 31.992422, 35.658585>,  <29.005512, 32.209755, 35.723698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676079, 31.992422, 35.658585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449311, -0.800120, 0.397399,
		-0.346165, 0.254152, 0.903093,
		-0.823583, -0.543336, -0.162780,
		28.429005, 31.829422, 35.609749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921885, 31.669079, 36.428268>,  <29.005512, 32.209755, 35.723698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921885, 31.669079, 36.428268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708340, 31.548771, 36.112160>,  <28.580214, 31.476587, 35.922493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708340, 31.548771, 36.112160>,  <28.921885, 31.669079, 36.428268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708340, 31.548771, 36.112160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380563, -0.920059, 0.093078,
		-0.755091, -0.251057, 0.605647,
		-0.533863, -0.300769, -0.790271,
		28.548182, 31.458540, 35.875080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410391, 31.162455, 36.572395>,  <28.921885, 31.669079, 36.428268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410391, 31.162455, 36.572395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509106, 31.093601, 36.190933>,  <28.568335, 31.052290, 35.962055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509106, 31.093601, 36.190933>,  <28.410391, 31.162455, 36.572395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509106, 31.093601, 36.190933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188225, -0.956842, 0.221416,
		-0.950614, -0.234146, -0.203739,
		0.246790, -0.172133, -0.953659,
		28.583141, 31.041962, 35.904835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177513, 30.431122, 36.434685>,  <28.410391, 31.162455, 36.572395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177513, 30.431122, 36.434685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455973, 30.538811, 36.168484>,  <28.623049, 30.603424, 36.008762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455973, 30.538811, 36.168484>,  <28.177513, 30.431122, 36.434685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455973, 30.538811, 36.168484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413171, -0.908350, 0.064733,
		-0.587084, -0.320031, -0.743581,
		0.696148, 0.269223, -0.665505,
		28.664818, 30.619577, 35.968834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195721, 29.861904, 36.076298>,  <28.177513, 30.431122, 36.434685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195721, 29.861904, 36.076298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543928, 30.012650, 35.949696>,  <28.752851, 30.103096, 35.873734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543928, 30.012650, 35.949696>,  <28.195721, 29.861904, 36.076298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543928, 30.012650, 35.949696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381518, -0.923024, -0.049714,
		-0.310876, -0.077475, -0.947288,
		0.870517, 0.376862, -0.316504,
		28.805084, 30.125708, 35.854744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411144, 29.404520, 35.691723>,  <28.195721, 29.861904, 36.076298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411144, 29.404520, 35.691723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760483, 29.599352, 35.690063>,  <28.970085, 29.716251, 35.689068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760483, 29.599352, 35.690063>,  <28.411144, 29.404520, 35.691723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760483, 29.599352, 35.690063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481702, -0.864902, -0.141095,
		-0.072309, 0.121229, -0.989987,
		0.873347, 0.487081, -0.004144,
		29.022488, 29.745476, 35.688820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858250, 29.018084, 35.183212>,  <28.411144, 29.404520, 35.691723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858250, 29.018084, 35.183212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094833, 29.245562, 35.411865>,  <29.236784, 29.382048, 35.549057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094833, 29.245562, 35.411865>,  <28.858250, 29.018084, 35.183212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094833, 29.245562, 35.411865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772033, -0.603975, -0.197937,
		0.232686, 0.558390, -0.796278,
		0.591458, 0.568695, 0.571632,
		29.272270, 29.416170, 35.583355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514112, 29.201984, 34.733540>,  <28.858250, 29.018084, 35.183212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514112, 29.201984, 34.733540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591215, 29.199312, 35.126030>,  <29.637476, 29.197710, 35.361523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591215, 29.199312, 35.126030>,  <29.514112, 29.201984, 34.733540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591215, 29.199312, 35.126030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548041, -0.828742, -0.113301,
		0.813938, 0.559591, -0.156085,
		0.192756, -0.006679, 0.981224,
		29.649042, 29.197309, 35.420399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264217, 29.077778, 34.750340>,  <29.514112, 29.201984, 34.733540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264217, 29.077778, 34.750340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122599, 29.008705, 35.118000>,  <30.037628, 28.967262, 35.338596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122599, 29.008705, 35.118000>,  <30.264217, 29.077778, 34.750340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122599, 29.008705, 35.118000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663068, -0.739440, 0.116486,
		0.659540, 0.650699, 0.376295,
		-0.354046, -0.172682, 0.919148,
		30.016384, 28.956900, 35.393745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896534, 28.986504, 35.156281>,  <30.264217, 29.077778, 34.750340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896534, 28.986504, 35.156281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578924, 28.809982, 35.323502>,  <30.388357, 28.704069, 35.423836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578924, 28.809982, 35.323502>,  <30.896534, 28.986504, 35.156281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578924, 28.809982, 35.323502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512606, -0.855743, 0.070276,
		0.326736, 0.270099, 0.905699,
		-0.794027, -0.441305, 0.418057,
		30.340715, 28.677591, 35.448917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151739, 28.512161, 35.690502>,  <30.896534, 28.986504, 35.156281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151739, 28.512161, 35.690502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772976, 28.383604, 35.687122>,  <30.545717, 28.306469, 35.685097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772976, 28.383604, 35.687122>,  <31.151739, 28.512161, 35.690502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772976, 28.383604, 35.687122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317286, -0.938400, 0.136878,
		-0.051917, 0.126931, 0.990552,
		-0.946908, -0.321394, -0.008446,
		30.488903, 28.287186, 35.684589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022621, 28.153131, 36.209595>,  <31.151739, 28.512161, 35.690502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022621, 28.153131, 36.209595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736778, 28.017164, 35.965042>,  <30.565273, 27.935583, 35.818310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736778, 28.017164, 35.965042>,  <31.022621, 28.153131, 36.209595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736778, 28.017164, 35.965042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389254, -0.919414, 0.056207,
		-0.581223, -0.197818, 0.789334,
		-0.714606, -0.339920, -0.611386,
		30.522396, 27.915188, 35.781628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809828, 27.520601, 36.432537>,  <31.022621, 28.153131, 36.209595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809828, 27.520601, 36.432537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792747, 27.530514, 36.033024>,  <30.782499, 27.536461, 35.793316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792747, 27.530514, 36.033024>,  <30.809828, 27.520601, 36.432537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792747, 27.530514, 36.033024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617440, -0.785279, -0.045881,
		-0.785457, -0.618647, 0.018255,
		-0.042720, 0.024767, -0.998780,
		30.779938, 27.537949, 35.733391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489389, 26.922239, 36.251251>,  <30.809828, 27.520601, 36.432537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489389, 26.922239, 36.251251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715780, 27.083265, 35.963470>,  <30.851614, 27.179882, 35.790802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715780, 27.083265, 35.963470>,  <30.489389, 26.922239, 36.251251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715780, 27.083265, 35.963470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591919, -0.805862, 0.014733,
		-0.573847, -0.434195, -0.694387,
		0.565978, 0.402567, -0.719451,
		30.885574, 27.204035, 35.747635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037796, 26.445004, 36.499176>,  <30.489389, 26.922239, 36.251251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037796, 26.445004, 36.499176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040699, 26.760874, 36.253784>,  <31.042440, 26.950396, 36.106548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040699, 26.760874, 36.253784>,  <31.037796, 26.445004, 36.499176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040699, 26.760874, 36.253784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914006, -0.243622, -0.324408,
		-0.405635, 0.563079, 0.720002,
		0.007259, 0.789677, -0.613479,
		31.042877, 26.997778, 36.069740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745798, 26.094545, 35.781799>,  <31.037796, 26.445004, 36.499176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745798, 26.094545, 35.781799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880711, 25.749842, 35.630215>,  <30.961658, 25.543018, 35.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880711, 25.749842, 35.630215>,  <30.745798, 26.094545, 35.781799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880711, 25.749842, 35.630215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791511, -0.041655, -0.609734,
		0.509659, 0.505602, -0.696143,
		0.337280, -0.861761, -0.378959,
		30.981895, 25.491314, 35.516525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643372, 26.180271, 35.041256>,  <30.745798, 26.094545, 35.781799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643372, 26.180271, 35.041256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652359, 25.780588, 35.054398>,  <30.657751, 25.540779, 35.062283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652359, 25.780588, 35.054398>,  <30.643372, 26.180271, 35.041256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652359, 25.780588, 35.054398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739941, -0.038720, -0.671557,
		0.672297, -0.009221, -0.740224,
		0.022469, -0.999207, 0.032854,
		30.659100, 25.480825, 35.064255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012646, 25.785545, 34.463928>,  <30.643372, 26.180271, 35.041256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012646, 25.785545, 34.463928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685976, 25.628111, 34.632751>,  <30.489973, 25.533651, 34.734043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685976, 25.628111, 34.632751>,  <31.012646, 25.785545, 34.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685976, 25.628111, 34.632751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506156, 0.137208, -0.851458,
		0.277213, -0.908991, -0.311270,
		-0.816676, -0.393586, 0.422055,
		30.440973, 25.510036, 34.759369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665035, 25.240801, 34.037876>,  <31.012646, 25.785545, 34.463928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665035, 25.240801, 34.037876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381578, 25.392836, 34.275650>,  <30.211504, 25.484056, 34.418316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381578, 25.392836, 34.275650>,  <30.665035, 25.240801, 34.037876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381578, 25.392836, 34.275650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636609, 0.018833, -0.770957,
		-0.304225, -0.924759, 0.228621,
		-0.708644, 0.380087, 0.594439,
		30.168985, 25.506861, 34.453983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983032, 24.877565, 33.967876>,  <30.665035, 25.240801, 34.037876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983032, 24.877565, 33.967876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973770, 25.270164, 34.043900>,  <29.968212, 25.505724, 34.089512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973770, 25.270164, 34.043900>,  <29.983032, 24.877565, 33.967876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973770, 25.270164, 34.043900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525372, 0.149795, -0.837584,
		-0.850558, -0.119246, 0.512184,
		-0.023157, 0.981500, 0.190058,
		29.966824, 25.564615, 34.100918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228291, 25.004847, 33.875946>,  <29.983032, 24.877565, 33.967876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228291, 25.004847, 33.875946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447180, 25.336535, 33.830441>,  <29.578514, 25.535547, 33.803135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447180, 25.336535, 33.830441>,  <29.228291, 25.004847, 33.875946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447180, 25.336535, 33.830441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675934, 0.357662, -0.644353,
		-0.493620, 0.429503, 0.756218,
		0.547223, 0.829219, -0.113766,
		29.611347, 25.585300, 33.796310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904730, 25.420244, 33.252220>,  <29.228291, 25.004847, 33.875946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904730, 25.420244, 33.252220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863703, 25.393991, 32.855198>,  <28.839087, 25.378241, 32.616985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863703, 25.393991, 32.855198>,  <28.904730, 25.420244, 33.252220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863703, 25.393991, 32.855198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215882, 0.975507, -0.042196,
		0.971017, 0.209948, -0.114225,
		-0.102569, -0.065633, -0.992559,
		28.832932, 25.374302, 32.557430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398748, 25.866999, 32.753056>,  <28.904730, 25.420244, 33.252220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398748, 25.866999, 32.753056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032095, 25.770796, 32.625343>,  <28.812103, 25.713074, 32.548717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032095, 25.770796, 32.625343>,  <29.398748, 25.866999, 32.753056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032095, 25.770796, 32.625343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227133, 0.970647, -0.079089,
		0.328929, 0.000023, -0.944355,
		-0.916633, -0.240508, -0.319279,
		28.757105, 25.698643, 32.529560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270346, 26.214550, 32.085781>,  <29.398748, 25.866999, 32.753056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270346, 26.214550, 32.085781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916040, 26.154705, 32.261528>,  <28.703457, 26.118797, 32.366974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916040, 26.154705, 32.261528>,  <29.270346, 26.214550, 32.085781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916040, 26.154705, 32.261528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231345, 0.962966, -0.138480,
		-0.402374, -0.224305, -0.887571,
		-0.885762, -0.149614, 0.439364,
		28.650312, 26.109821, 32.393337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887661, 26.564377, 31.672405>,  <29.270346, 26.214550, 32.085781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887661, 26.564377, 31.672405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655676, 26.534718, 31.996910>,  <28.516485, 26.516922, 32.191612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655676, 26.534718, 31.996910>,  <28.887661, 26.564377, 31.672405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655676, 26.534718, 31.996910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099689, 0.994824, 0.019658,
		-0.808520, -0.069473, -0.584353,
		-0.579963, -0.074147, 0.811261,
		28.481688, 26.512474, 32.240288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262398, 26.840462, 31.399559>,  <28.887661, 26.564377, 31.672405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262398, 26.840462, 31.399559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258476, 26.861519, 31.798985>,  <28.256124, 26.874153, 32.038639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258476, 26.861519, 31.798985>,  <28.262398, 26.840462, 31.399559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258476, 26.861519, 31.798985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267508, 0.962078, -0.053345,
		-0.963506, -0.267647, 0.004652,
		-0.009803, 0.052643, 0.998565,
		28.255535, 26.877312, 32.098553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783182, 27.265453, 31.528570>,  <28.262398, 26.840462, 31.399559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783182, 27.265453, 31.528570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984392, 27.278690, 31.874025>,  <28.105118, 27.286633, 32.081299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984392, 27.278690, 31.874025>,  <27.783182, 27.265453, 31.528570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984392, 27.278690, 31.874025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167921, 0.983967, 0.060099,
		-0.847803, -0.175255, 0.500515,
		0.503023, 0.033095, 0.863639,
		28.135300, 27.288618, 32.133118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545652, 27.867744, 31.919556>,  <27.783182, 27.265453, 31.528570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545652, 27.867744, 31.919556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894232, 27.798082, 32.102966>,  <28.103380, 27.756285, 32.213013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894232, 27.798082, 32.102966>,  <27.545652, 27.867744, 31.919556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894232, 27.798082, 32.102966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142001, 0.984387, 0.104006,
		-0.469482, -0.025525, 0.882573,
		0.871448, -0.174155, 0.458528,
		28.155666, 27.745836, 32.240524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501207, 28.464766, 32.477718>,  <27.545652, 27.867744, 31.919556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501207, 28.464766, 32.477718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869543, 28.308805, 32.475464>,  <28.090544, 28.215229, 32.474110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869543, 28.308805, 32.475464>,  <27.501207, 28.464766, 32.477718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869543, 28.308805, 32.475464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384850, 0.906396, 0.174174,
		-0.062802, -0.162555, 0.984699,
		0.920840, -0.389900, -0.005636,
		28.145796, 28.191835, 32.473774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913593, 28.559492, 33.173351>,  <27.501207, 28.464766, 32.477718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913593, 28.559492, 33.173351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158646, 28.536413, 32.858047>,  <28.305677, 28.522566, 32.668865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158646, 28.536413, 32.858047>,  <27.913593, 28.559492, 33.173351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158646, 28.536413, 32.858047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306513, 0.936624, 0.169661,
		0.728516, -0.345552, 0.591489,
		0.612629, -0.057698, -0.788261,
		28.342434, 28.519104, 32.621571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453623, 28.908838, 33.454098>,  <27.913593, 28.559492, 33.173351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453623, 28.908838, 33.454098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553522, 28.876909, 33.068092>,  <28.613462, 28.857752, 32.836491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553522, 28.876909, 33.068092>,  <28.453623, 28.908838, 33.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553522, 28.876909, 33.068092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432602, 0.900807, 0.037446,
		0.866303, -0.426819, 0.259509,
		0.249750, -0.079824, -0.965014,
		28.628447, 28.852962, 32.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189505, 29.160206, 33.394470>,  <28.453623, 28.908838, 33.454098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189505, 29.160206, 33.394470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992878, 29.199150, 33.048317>,  <28.874903, 29.222517, 32.840626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992878, 29.199150, 33.048317>,  <29.189505, 29.160206, 33.394470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992878, 29.199150, 33.048317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372768, 0.921611, -0.108059,
		0.787024, -0.375704, -0.489325,
		-0.491566, 0.097359, -0.865381,
		28.845407, 29.228357, 32.788704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703566, 29.560122, 33.093700>,  <29.189505, 29.160206, 33.394470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703566, 29.560122, 33.093700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374165, 29.583115, 32.867943>,  <29.176523, 29.596910, 32.732487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374165, 29.583115, 32.867943>,  <29.703566, 29.560122, 33.093700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374165, 29.583115, 32.867943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201783, 0.959476, -0.196698,
		0.530214, -0.275866, -0.801730,
		-0.823502, 0.057484, -0.564393,
		29.127113, 29.600359, 32.698624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876282, 29.846769, 32.483227>,  <29.703566, 29.560122, 33.093700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876282, 29.846769, 32.483227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483961, 29.910587, 32.528072>,  <29.248568, 29.948879, 32.554981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483961, 29.910587, 32.528072>,  <29.876282, 29.846769, 32.483227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483961, 29.910587, 32.528072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139080, 0.975355, -0.171287,
		-0.136683, -0.152406, -0.978821,
		-0.980803, 0.159546, 0.112118,
		29.189720, 29.958450, 32.561707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705446, 30.396284, 31.970097>,  <29.876282, 29.846769, 32.483227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705446, 30.396284, 31.970097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401381, 30.413057, 32.229446>,  <29.218941, 30.423120, 32.385056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401381, 30.413057, 32.229446>,  <29.705446, 30.396284, 31.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401381, 30.413057, 32.229446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031925, 0.994299, -0.101735,
		-0.648946, -0.098035, -0.754492,
		-0.760164, 0.041933, 0.648377,
		29.173332, 30.425638, 32.423958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208000, 30.869184, 31.669563>,  <29.705446, 30.396284, 31.970097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208000, 30.869184, 31.669563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077948, 30.867125, 32.047825>,  <28.999916, 30.865889, 32.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077948, 30.867125, 32.047825>,  <29.208000, 30.869184, 31.669563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077948, 30.867125, 32.047825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211439, 0.975065, -0.067387,
		-0.921728, -0.221858, -0.318114,
		-0.325133, -0.005149, 0.945654,
		28.980408, 30.865580, 32.331520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602427, 31.282358, 31.616774>,  <29.208000, 30.869184, 31.669563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602427, 31.282358, 31.616774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718699, 31.275524, 31.999441>,  <28.788462, 31.271423, 32.229042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718699, 31.275524, 31.999441>,  <28.602427, 31.282358, 31.616774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718699, 31.275524, 31.999441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148706, 0.986885, 0.062806,
		-0.945194, -0.160519, 0.284329,
		0.290681, -0.017083, 0.956667,
		28.805902, 31.270399, 32.286442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102818, 31.561884, 32.092285>,  <28.602427, 31.282358, 31.616774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102818, 31.561884, 32.092285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420404, 31.594711, 32.333244>,  <28.610956, 31.614407, 32.477818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420404, 31.594711, 32.333244>,  <28.102818, 31.561884, 32.092285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420404, 31.594711, 32.333244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297862, 0.916288, 0.267758,
		-0.529993, -0.392022, 0.751948,
		0.793968, 0.082066, 0.602395,
		28.658594, 31.619331, 32.513962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838268, 31.814245, 32.674026>,  <28.102818, 31.561884, 32.092285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838268, 31.814245, 32.674026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224081, 31.919687, 32.679562>,  <28.455568, 31.982952, 32.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224081, 31.919687, 32.679562>,  <27.838268, 31.814245, 32.674026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224081, 31.919687, 32.679562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259394, 0.936799, 0.234783,
		0.048926, -0.230045, 0.971950,
		0.964532, 0.263604, 0.013838,
		28.513441, 31.998768, 32.683712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828039, 32.308903, 33.149834>,  <27.838268, 31.814245, 32.674026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828039, 32.308903, 33.149834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204817, 32.369961, 33.030205>,  <28.430883, 32.406593, 32.958427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204817, 32.369961, 33.030205>,  <27.828039, 32.308903, 33.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204817, 32.369961, 33.030205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141234, 0.988185, 0.059528,
		0.304626, -0.013833, 0.952372,
		0.941943, 0.152641, -0.299073,
		28.487400, 32.415752, 32.940483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114454, 32.713085, 33.663921>,  <27.828039, 32.308903, 33.149834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114454, 32.713085, 33.663921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312836, 32.766983, 33.320789>,  <28.431864, 32.799320, 33.114910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312836, 32.766983, 33.320789>,  <28.114454, 32.713085, 33.663921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312836, 32.766983, 33.320789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196701, 0.979641, 0.040157,
		0.845778, 0.148820, 0.512360,
		0.495952, 0.134746, -0.857831,
		28.461622, 32.807407, 33.063438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714926, 33.195297, 33.815609>,  <28.114454, 32.713085, 33.663921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714926, 33.195297, 33.815609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619682, 33.222813, 33.428089>,  <28.562536, 33.239323, 33.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619682, 33.222813, 33.428089>,  <28.714926, 33.195297, 33.815609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619682, 33.222813, 33.428089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230093, 0.965098, 0.125075,
		0.943590, 0.252695, -0.213969,
		-0.238107, 0.068787, -0.968800,
		28.548250, 33.243450, 33.137447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925079, 33.909817, 33.764328>,  <28.714926, 33.195297, 33.815609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925079, 33.909817, 33.764328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730375, 33.838825, 33.422203>,  <28.613554, 33.796230, 33.216927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730375, 33.838825, 33.422203>,  <28.925079, 33.909817, 33.764328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730375, 33.838825, 33.422203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246148, 0.967333, -0.060643,
		0.838139, 0.181017, -0.514545,
		-0.486759, -0.177481, -0.855316,
		28.584347, 33.785580, 33.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118513, 34.459908, 33.301025>,  <28.925079, 33.909817, 33.764328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118513, 34.459908, 33.301025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777607, 34.312641, 33.152378>,  <28.573063, 34.224281, 33.063190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777607, 34.312641, 33.152378>,  <29.118513, 34.459908, 33.301025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777607, 34.312641, 33.152378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354686, 0.928865, -0.106805,
		0.384501, 0.040780, -0.922223,
		-0.852265, -0.368167, -0.371614,
		28.521927, 34.202190, 33.040894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986399, 34.876671, 32.795509>,  <29.118513, 34.459908, 33.301025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986399, 34.876671, 32.795509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641691, 34.702377, 32.899422>,  <28.434866, 34.597801, 32.961769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641691, 34.702377, 32.899422>,  <28.986399, 34.876671, 32.795509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641691, 34.702377, 32.899422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389238, 0.896349, 0.212255,
		-0.325341, 0.081799, -0.942052,
		-0.861770, -0.435737, 0.259780,
		28.383160, 34.571655, 32.977356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431084, 35.104198, 32.290630>,  <28.986399, 34.876671, 32.795509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431084, 35.104198, 32.290630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304138, 35.007492, 32.657417>,  <28.227970, 34.949471, 32.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304138, 35.007492, 32.657417>,  <28.431084, 35.104198, 32.290630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304138, 35.007492, 32.657417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345275, 0.930044, 0.125710,
		-0.883213, -0.276710, -0.378637,
		-0.317364, -0.241762, 0.916968,
		28.208929, 34.934963, 32.932507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114176, 34.665539, 32.072483>,  <28.431084, 35.104198, 32.290630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114176, 34.665539, 32.072483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400242, 34.907303, 31.932066>,  <29.571880, 35.052361, 31.847816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400242, 34.907303, 31.932066>,  <29.114176, 34.665539, 32.072483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400242, 34.907303, 31.932066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485258, -0.067879, 0.871732,
		0.503056, -0.793776, -0.341839,
		0.715164, 0.604410, -0.351039,
		29.614792, 35.088627, 31.826754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658390, 34.265198, 32.204575>,  <29.114176, 34.665539, 32.072483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658390, 34.265198, 32.204575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734669, 34.657272, 32.183132>,  <29.780436, 34.892517, 32.170265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734669, 34.657272, 32.183132>,  <29.658390, 34.265198, 32.204575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734669, 34.657272, 32.183132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665392, -0.088916, 0.741180,
		0.721726, -0.177011, -0.669163,
		0.190696, 0.980184, -0.053609,
		29.791878, 34.951328, 32.167049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282082, 34.150509, 32.489994>,  <29.658390, 34.265198, 32.204575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282082, 34.150509, 32.489994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158892, 34.529045, 32.529182>,  <30.084978, 34.756165, 32.552696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158892, 34.529045, 32.529182>,  <30.282082, 34.150509, 32.489994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158892, 34.529045, 32.529182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277276, -0.009225, 0.960746,
		0.910093, 0.323052, -0.259556,
		-0.307976, 0.946336, 0.097970,
		30.066500, 34.812946, 32.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903484, 34.654247, 32.593777>,  <30.282082, 34.150509, 32.489994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903484, 34.654247, 32.593777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573370, 34.779671, 32.781639>,  <30.375301, 34.854927, 32.894356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573370, 34.779671, 32.781639>,  <30.903484, 34.654247, 32.593777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573370, 34.779671, 32.781639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484677, -0.033519, 0.874051,
		0.289812, 0.948976, -0.124313,
		-0.825286, 0.313562, 0.469661,
		30.325785, 34.873741, 32.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995901, 35.240494, 33.031979>,  <30.903484, 34.654247, 32.593777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995901, 35.240494, 33.031979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680700, 35.046173, 33.183266>,  <30.491579, 34.929581, 33.274040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680700, 35.046173, 33.183266>,  <30.995901, 35.240494, 33.031979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680700, 35.046173, 33.183266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466162, -0.069489, 0.881966,
		-0.402176, 0.871304, 0.281218,
		-0.788002, -0.485799, 0.378222,
		30.444300, 34.900433, 33.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080723, 36.086746, 32.974365>,  <30.995901, 35.240494, 33.031979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080723, 36.086746, 32.974365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135511, 36.093975, 32.578201>,  <31.168385, 36.098312, 32.340504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135511, 36.093975, 32.578201>,  <31.080723, 36.086746, 32.974365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135511, 36.093975, 32.578201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906642, 0.405065, -0.117996,
		0.399048, 0.914110, 0.071867,
		0.136972, 0.018072, -0.990410,
		31.176603, 36.099396, 32.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905909, 35.944942, 32.860519>,  <31.080723, 36.086746, 32.974365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905909, 35.944942, 32.860519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206108, 35.720383, 32.999996>,  <32.386227, 35.585648, 33.083683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206108, 35.720383, 32.999996>,  <31.905909, 35.944942, 32.860519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206108, 35.720383, 32.999996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200280, 0.309612, 0.929531,
		-0.629796, -0.767447, 0.119926,
		0.750497, -0.561396, 0.348697,
		32.431255, 35.551964, 33.104607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650242, 35.396229, 33.263039>,  <31.905909, 35.944942, 32.860519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650242, 35.396229, 33.263039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013214, 35.541714, 33.347218>,  <32.230999, 35.629005, 33.397724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013214, 35.541714, 33.347218>,  <31.650242, 35.396229, 33.263039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013214, 35.541714, 33.347218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352350, 0.385713, 0.852687,
		0.228958, -0.847904, 0.478160,
		0.907429, 0.363709, 0.210446,
		32.285442, 35.650826, 33.410351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800224, 35.230904, 33.938351>,  <31.650242, 35.396229, 33.263039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800224, 35.230904, 33.938351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033684, 35.547462, 33.865643>,  <32.173759, 35.737400, 33.822018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033684, 35.547462, 33.865643>,  <31.800224, 35.230904, 33.938351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033684, 35.547462, 33.865643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170931, 0.338576, 0.925283,
		0.793812, -0.508970, 0.332885,
		0.583648, 0.791401, -0.181767,
		32.208778, 35.784882, 33.811111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236927, 35.245647, 34.547680>,  <31.800224, 35.230904, 33.938351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236927, 35.245647, 34.547680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248539, 35.604805, 34.371975>,  <32.255508, 35.820297, 34.266552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248539, 35.604805, 34.371975>,  <32.236927, 35.245647, 34.547680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248539, 35.604805, 34.371975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085862, 0.435579, 0.896046,
		0.995884, -0.063731, -0.064448,
		0.029034, 0.897892, -0.439258,
		32.257248, 35.874172, 34.240196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659077, 35.641640, 34.888760>,  <32.236927, 35.245647, 34.547680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659077, 35.641640, 34.888760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419445, 35.916592, 34.724506>,  <32.275665, 36.081562, 34.625954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419445, 35.916592, 34.724506>,  <32.659077, 35.641640, 34.888760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419445, 35.916592, 34.724506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099352, 0.572704, 0.813719,
		0.794504, 0.446682, -0.411386,
		-0.599077, 0.687375, -0.410637,
		32.239723, 36.122803, 34.601315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101528, 36.273712, 35.057259>,  <32.659077, 35.641640, 34.888760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101528, 36.273712, 35.057259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723763, 36.384666, 34.986683>,  <32.497101, 36.451241, 34.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723763, 36.384666, 34.986683>,  <33.101528, 36.273712, 35.057259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723763, 36.384666, 34.986683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042335, 0.429623, 0.902016,
		0.326012, 0.859349, -0.394000,
		-0.944417, 0.277388, -0.176443,
		32.440437, 36.467884, 34.933750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010689, 36.922630, 35.331398>,  <33.101528, 36.273712, 35.057259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010689, 36.922630, 35.331398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616829, 36.855778, 35.311256>,  <32.380512, 36.815666, 35.299171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616829, 36.855778, 35.311256>,  <33.010689, 36.922630, 35.331398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616829, 36.855778, 35.311256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100058, 0.304070, 0.947380,
		-0.143027, 0.937874, -0.316125,
		-0.984648, -0.167132, -0.050351,
		32.321434, 36.805637, 35.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726822, 37.475990, 35.595661>,  <33.010689, 36.922630, 35.331398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726822, 37.475990, 35.595661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434681, 37.207268, 35.645069>,  <32.259396, 37.046032, 35.674713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434681, 37.207268, 35.645069>,  <32.726822, 37.475990, 35.595661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434681, 37.207268, 35.645069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256193, 0.437039, 0.862185,
		-0.633206, 0.598054, -0.491305,
		-0.730352, -0.671810, 0.123518,
		32.215576, 37.005726, 35.682125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229053, 37.887367, 35.850807>,  <32.726822, 37.475990, 35.595661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229053, 37.887367, 35.850807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152191, 37.506104, 35.944248>,  <32.106075, 37.277348, 36.000313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152191, 37.506104, 35.944248>,  <32.229053, 37.887367, 35.850807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152191, 37.506104, 35.944248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369316, 0.290772, 0.882643,
		-0.909222, 0.083329, -0.407888,
		-0.192152, -0.953157, 0.233601,
		32.094547, 37.220158, 36.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572647, 37.866161, 36.151001>,  <32.229053, 37.887367, 35.850807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572647, 37.866161, 36.151001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747215, 37.535175, 36.292332>,  <31.851957, 37.336582, 36.377129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747215, 37.535175, 36.292332>,  <31.572647, 37.866161, 36.151001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747215, 37.535175, 36.292332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292093, 0.241130, 0.925493,
		-0.851010, -0.507109, -0.136462,
		0.436421, -0.827464, 0.353328,
		31.878141, 37.286938, 36.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108782, 37.678570, 36.536072>,  <31.572647, 37.866161, 36.151001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108782, 37.678570, 36.536072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429808, 37.472527, 36.656437>,  <31.622423, 37.348900, 36.728657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429808, 37.472527, 36.656437>,  <31.108782, 37.678570, 36.536072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429808, 37.472527, 36.656437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397913, -0.086411, 0.913345,
		-0.444469, -0.852758, -0.274319,
		0.802566, -0.515108, 0.300916,
		31.670578, 37.317993, 36.746712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936422, 37.111694, 36.823826>,  <31.108782, 37.678570, 36.536072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936422, 37.111694, 36.823826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288445, 37.104469, 37.013638>,  <31.499657, 37.100136, 37.127525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288445, 37.104469, 37.013638>,  <30.936422, 37.111694, 36.823826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288445, 37.104469, 37.013638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468773, 0.126626, 0.874195,
		-0.075878, -0.991786, 0.102971,
		0.880053, -0.018062, 0.474531,
		31.552460, 37.099052, 37.155998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894438, 36.627182, 37.381428>,  <30.936422, 37.111694, 36.823826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894438, 36.627182, 37.381428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191547, 36.870148, 37.494091>,  <31.369814, 37.015926, 37.561691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191547, 36.870148, 37.494091>,  <30.894438, 36.627182, 37.381428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191547, 36.870148, 37.494091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329535, -0.034538, 0.943512,
		0.582830, -0.793635, 0.174509,
		0.742776, 0.607414, 0.281660,
		31.414381, 37.052372, 37.578590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113602, 36.437374, 38.111843>,  <30.894438, 36.627182, 37.381428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113602, 36.437374, 38.111843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266314, 36.805031, 38.073013>,  <31.357941, 37.025623, 38.049713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266314, 36.805031, 38.073013>,  <31.113602, 36.437374, 38.111843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266314, 36.805031, 38.073013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324204, 0.231538, 0.917214,
		0.865526, -0.318703, 0.386386,
		0.381782, 0.919140, -0.097078,
		31.380848, 37.080772, 38.043888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513618, 36.540947, 38.756981>,  <31.113602, 36.437374, 38.111843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513618, 36.540947, 38.756981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416286, 36.889309, 38.586185>,  <31.357887, 37.098328, 38.483707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416286, 36.889309, 38.586185>,  <31.513618, 36.540947, 38.756981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416286, 36.889309, 38.586185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485440, 0.271766, 0.830958,
		0.839725, 0.409474, 0.356642,
		-0.243332, 0.870904, -0.426984,
		31.343287, 37.150581, 38.458092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713188, 37.089130, 39.188614>,  <31.513618, 36.540947, 38.756981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713188, 37.089130, 39.188614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417719, 37.238441, 38.964104>,  <31.240437, 37.328026, 38.829399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417719, 37.238441, 38.964104>,  <31.713188, 37.089130, 39.188614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417719, 37.238441, 38.964104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389674, 0.442960, 0.807429,
		0.550013, 0.815140, -0.181748,
		-0.738675, 0.373274, -0.561272,
		31.196117, 37.350422, 38.795723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712023, 37.819103, 39.342430>,  <31.713188, 37.089130, 39.188614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712023, 37.819103, 39.342430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349619, 37.735641, 39.195129>,  <31.132177, 37.685562, 39.106747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349619, 37.735641, 39.195129>,  <31.712023, 37.819103, 39.342430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349619, 37.735641, 39.195129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417823, 0.579922, 0.699367,
		0.067631, 0.787498, -0.612596,
		-0.906008, -0.208658, -0.368255,
		31.077816, 37.673042, 39.084652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297228, 38.436512, 39.363331>,  <31.712023, 37.819103, 39.342430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297228, 38.436512, 39.363331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043192, 38.127773, 39.351273>,  <30.890770, 37.942528, 39.344036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043192, 38.127773, 39.351273>,  <31.297228, 38.436512, 39.363331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043192, 38.127773, 39.351273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459350, 0.346011, 0.818092,
		-0.621013, 0.533410, -0.574297,
		-0.635091, -0.771849, -0.030145,
		30.852665, 37.896217, 39.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713421, 38.771832, 39.510399>,  <31.297228, 38.436512, 39.363331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713421, 38.771832, 39.510399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632811, 38.383339, 39.561134>,  <30.584444, 38.150242, 39.591576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632811, 38.383339, 39.561134>,  <30.713421, 38.771832, 39.510399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632811, 38.383339, 39.561134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556006, 0.220041, 0.801524,
		-0.806377, 0.091008, -0.584357,
		-0.201528, -0.971236, 0.126835,
		30.572351, 38.091969, 39.599186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975634, 38.823750, 39.667782>,  <30.713421, 38.771832, 39.510399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975634, 38.823750, 39.667782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088480, 38.461197, 39.793560>,  <30.156189, 38.243664, 39.869026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088480, 38.461197, 39.793560>,  <29.975634, 38.823750, 39.667782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088480, 38.461197, 39.793560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500493, 0.140575, 0.854251,
		-0.818485, -0.398375, -0.413981,
		0.282117, -0.906386, 0.314443,
		30.173115, 38.189281, 39.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432156, 38.604145, 39.943897>,  <29.975634, 38.823750, 39.667782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432156, 38.604145, 39.943897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742077, 38.421577, 40.118877>,  <29.928030, 38.312038, 40.223866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742077, 38.421577, 40.118877>,  <29.432156, 38.604145, 39.943897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742077, 38.421577, 40.118877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346564, 0.272073, 0.897702,
		-0.528746, -0.847147, 0.052625,
		0.774804, -0.456418, 0.437448,
		29.974518, 38.284653, 40.250111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163116, 38.344238, 40.487469>,  <29.432156, 38.604145, 39.943897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163116, 38.344238, 40.487469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554932, 38.312134, 40.561298>,  <29.790020, 38.292870, 40.605595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554932, 38.312134, 40.561298>,  <29.163116, 38.344238, 40.487469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554932, 38.312134, 40.561298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167524, 0.183173, 0.968702,
		-0.111558, -0.979799, 0.165979,
		0.979536, -0.080261, 0.184574,
		29.848793, 38.288055, 40.616669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200851, 37.953907, 41.101444>,  <29.163116, 38.344238, 40.487469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200851, 37.953907, 41.101444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544811, 38.156578, 41.076614>,  <29.751186, 38.278179, 41.061714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544811, 38.156578, 41.076614>,  <29.200851, 37.953907, 41.101444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544811, 38.156578, 41.076614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119313, 0.317737, 0.940642,
		0.496325, -0.801450, 0.333675,
		0.859899, 0.506676, -0.062077,
		29.802780, 38.308582, 41.057991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589685, 37.830975, 41.827000>,  <29.200851, 37.953907, 41.101444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589685, 37.830975, 41.827000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743254, 38.165405, 41.670246>,  <29.835396, 38.366066, 41.576195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743254, 38.165405, 41.670246>,  <29.589685, 37.830975, 41.827000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743254, 38.165405, 41.670246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071603, 0.450086, 0.890110,
		0.920585, -0.313673, 0.232664,
		0.383922, 0.836081, -0.391882,
		29.858431, 38.416229, 41.552681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960785, 38.048027, 42.383381>,  <29.589685, 37.830975, 41.827000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960785, 38.048027, 42.383381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940268, 38.363102, 42.137806>,  <29.927958, 38.552147, 41.990459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940268, 38.363102, 42.137806>,  <29.960785, 38.048027, 42.383381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940268, 38.363102, 42.137806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123114, 0.615049, 0.778818,
		0.991066, -0.035637, -0.128522,
		-0.051293, 0.787683, -0.613941,
		29.924879, 38.599407, 41.953625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370417, 38.489292, 42.624702>,  <29.960785, 38.048027, 42.383381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370417, 38.489292, 42.624702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170910, 38.741283, 42.386589>,  <30.051207, 38.892479, 42.243721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170910, 38.741283, 42.386589>,  <30.370417, 38.489292, 42.624702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170910, 38.741283, 42.386589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115728, 0.729065, 0.674590,
		0.858975, 0.267573, -0.436540,
		-0.498768, 0.629975, -0.595283,
		30.021280, 38.930275, 42.208004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756657, 39.060951, 42.477146>,  <30.370417, 38.489292, 42.624702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756657, 39.060951, 42.477146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382065, 39.197590, 42.445370>,  <30.157309, 39.279575, 42.426304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382065, 39.197590, 42.445370>,  <30.756657, 39.060951, 42.477146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382065, 39.197590, 42.445370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170857, 0.642184, 0.747266,
		0.306284, 0.686228, -0.659759,
		-0.936482, 0.341600, -0.079444,
		30.101120, 39.300072, 42.421535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797209, 39.827702, 42.593807>,  <30.756657, 39.060951, 42.477146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797209, 39.827702, 42.593807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416195, 39.723328, 42.656528>,  <30.187586, 39.660702, 42.694160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416195, 39.723328, 42.656528>,  <30.797209, 39.827702, 42.593807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416195, 39.723328, 42.656528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041578, 0.621756, 0.782107,
		-0.301574, 0.738465, -0.603094,
		-0.952536, -0.260939, 0.156801,
		30.130434, 39.645046, 42.703568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445772, 40.405430, 42.753300>,  <30.797209, 39.827702, 42.593807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445772, 40.405430, 42.753300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210360, 40.126083, 42.916233>,  <30.069113, 39.958477, 43.013992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210360, 40.126083, 42.916233>,  <30.445772, 40.405430, 42.753300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210360, 40.126083, 42.916233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044235, 0.475255, 0.878735,
		-0.807265, 0.535180, -0.248810,
		-0.588530, -0.698366, 0.407331,
		30.033800, 39.916573, 43.038433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961229, 40.755199, 43.175224>,  <30.445772, 40.405430, 42.753300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961229, 40.755199, 43.175224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929441, 40.379978, 43.310123>,  <29.910370, 40.154846, 43.391064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929441, 40.379978, 43.310123>,  <29.961229, 40.755199, 43.175224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929441, 40.379978, 43.310123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050776, 0.341688, 0.938441,
		-0.995543, 0.057452, -0.074784,
		-0.079468, -0.938056, 0.337248,
		29.905602, 40.098560, 43.411297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450958, 40.760906, 43.665417>,  <29.961229, 40.755199, 43.175224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450958, 40.760906, 43.665417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632689, 40.423172, 43.779037>,  <29.741726, 40.220531, 43.847210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632689, 40.423172, 43.779037>,  <29.450958, 40.760906, 43.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632689, 40.423172, 43.779037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134746, 0.250059, 0.958808,
		-0.880586, -0.473885, -0.000163,
		0.454324, -0.844335, 0.284053,
		29.768986, 40.169872, 43.864254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085625, 40.497372, 44.239223>,  <29.450958, 40.760906, 43.665417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085625, 40.497372, 44.239223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465296, 40.372627, 44.256222>,  <29.693098, 40.297779, 44.266418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465296, 40.372627, 44.256222>,  <29.085625, 40.497372, 44.239223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465296, 40.372627, 44.256222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022147, 0.068491, 0.997406,
		-0.313967, -0.947654, 0.058103,
		0.949176, -0.311866, 0.042492,
		29.750048, 40.279068, 44.268970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074860, 40.035873, 44.752529>,  <29.085625, 40.497372, 44.239223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074860, 40.035873, 44.752529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464672, 40.119602, 44.720341>,  <29.698559, 40.169842, 44.701027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464672, 40.119602, 44.720341>,  <29.074860, 40.035873, 44.752529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464672, 40.119602, 44.720341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063566, 0.086276, 0.994241,
		0.215063, -0.974033, 0.070772,
		0.974529, 0.209326, -0.080470,
		29.757030, 40.182400, 44.696201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385736, 39.560184, 45.078918>,  <29.074860, 40.035873, 44.752529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385736, 39.560184, 45.078918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606873, 39.893345, 45.089100>,  <29.739555, 40.093239, 45.095211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606873, 39.893345, 45.089100>,  <29.385736, 39.560184, 45.078918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606873, 39.893345, 45.089100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153813, 0.071973, 0.985475,
		0.818968, -0.548727, 0.167900,
		0.552841, 0.832898, 0.025458,
		29.772724, 40.143215, 45.096737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843596, 39.454521, 45.576996>,  <29.385736, 39.560184, 45.078918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843596, 39.454521, 45.576996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755692, 39.841370, 45.525806>,  <29.702950, 40.073479, 45.495090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755692, 39.841370, 45.525806>,  <29.843596, 39.454521, 45.576996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755692, 39.841370, 45.525806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074706, 0.114117, 0.990654,
		0.972690, 0.227266, 0.047172,
		-0.219759, 0.967123, -0.127978,
		29.689764, 40.131508, 45.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189133, 39.764790, 46.169502>,  <29.843596, 39.454521, 45.576996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189133, 39.764790, 46.169502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926947, 40.030560, 46.025887>,  <29.769636, 40.190022, 45.939716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926947, 40.030560, 46.025887>,  <30.189133, 39.764790, 46.169502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926947, 40.030560, 46.025887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256241, 0.251552, 0.933307,
		0.710428, 0.703750, 0.005370,
		-0.655464, 0.664423, -0.359039,
		29.730307, 40.229885, 45.918175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358055, 40.321411, 46.498684>,  <30.189133, 39.764790, 46.169502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358055, 40.321411, 46.498684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980309, 40.392906, 46.388245>,  <29.753660, 40.435802, 46.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980309, 40.392906, 46.388245>,  <30.358055, 40.321411, 46.498684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980309, 40.392906, 46.388245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207064, 0.329113, 0.921308,
		0.255541, 0.927220, -0.273792,
		-0.944364, 0.178739, -0.276096,
		29.696999, 40.446529, 46.305416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201220, 40.922379, 46.964935>,  <30.358055, 40.321411, 46.498684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201220, 40.922379, 46.964935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848825, 40.776180, 46.844749>,  <29.637390, 40.688461, 46.772636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848825, 40.776180, 46.844749>,  <30.201220, 40.922379, 46.964935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848825, 40.776180, 46.844749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354017, 0.087868, 0.931102,
		-0.313912, 0.926657, -0.206802,
		-0.880983, -0.365495, -0.300469,
		29.584530, 40.666531, 46.754608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656929, 41.342407, 47.362579>,  <30.201220, 40.922379, 46.964935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656929, 41.342407, 47.362579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459486, 41.010002, 47.259995>,  <29.341021, 40.810558, 47.198444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459486, 41.010002, 47.259995>,  <29.656929, 41.342407, 47.362579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459486, 41.010002, 47.259995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546903, 0.067315, 0.834485,
		-0.676203, 0.552168, -0.487710,
		-0.493606, -0.831011, -0.256464,
		29.311405, 40.760700, 47.183056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922558, 41.580208, 47.258617>,  <29.656929, 41.342407, 47.362579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922558, 41.580208, 47.258617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935135, 41.192680, 47.356922>,  <28.942680, 40.960163, 47.415905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.935135, 41.192680, 47.356922>,  <28.922558, 41.580208, 47.258617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.935135, 41.192680, 47.356922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508224, 0.196231, 0.838571,
		-0.860651, -0.151271, -0.486207,
		0.031442, -0.968819, 0.245766,
		28.944567, 40.902035, 47.430653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326422, 41.494034, 47.603230>,  <28.922558, 41.580208, 47.258617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326422, 41.494034, 47.603230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540791, 41.177929, 47.722073>,  <28.669413, 40.988266, 47.793381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540791, 41.177929, 47.722073>,  <28.326422, 41.494034, 47.603230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540791, 41.177929, 47.722073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531249, -0.042141, 0.846167,
		-0.656172, -0.611320, -0.442410,
		0.535922, -0.790261, 0.297111,
		28.701567, 40.940849, 47.811207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932701, 40.884781, 47.721413>,  <28.326422, 41.494034, 47.603230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932701, 40.884781, 47.721413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250761, 40.907383, 47.962921>,  <28.441597, 40.920944, 48.107826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250761, 40.907383, 47.962921>,  <27.932701, 40.884781, 47.721413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250761, 40.907383, 47.962921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595926, -0.111545, 0.795254,
		0.112288, -0.992151, -0.055019,
		0.795149, 0.056510, 0.603774,
		28.489305, 40.924335, 48.144054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881069, 40.294910, 48.156914>,  <27.932701, 40.884781, 47.721413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881069, 40.294910, 48.156914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095709, 40.577499, 48.341499>,  <28.224493, 40.747055, 48.452251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095709, 40.577499, 48.341499>,  <27.881069, 40.294910, 48.156914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095709, 40.577499, 48.341499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512703, -0.161393, 0.843260,
		0.670220, -0.689089, 0.275609,
		0.536600, 0.706476, 0.461468,
		28.256689, 40.789440, 48.479939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524862, 40.525833, 48.896584>,  <27.881069, 40.294910, 48.156914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524862, 40.525833, 48.896584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811932, 40.804157, 48.907879>,  <27.984173, 40.971153, 48.914658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811932, 40.804157, 48.907879>,  <27.524862, 40.525833, 48.896584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811932, 40.804157, 48.907879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415708, 0.395530, 0.818989,
		0.558691, -0.599504, 0.573114,
		0.717671, 0.695810, 0.028240,
		28.027233, 41.012901, 48.916351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987345, 40.425613, 49.471676>,  <27.524862, 40.525833, 48.896584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987345, 40.425613, 49.471676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960226, 40.815285, 49.385532>,  <27.943954, 41.049088, 49.333847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960226, 40.815285, 49.385532>,  <27.987345, 40.425613, 49.471676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960226, 40.815285, 49.385532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344355, 0.179744, 0.921472,
		0.936388, 0.136634, 0.323277,
		-0.067797, 0.974178, -0.215361,
		27.939886, 41.107536, 49.320923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369961, 40.774414, 49.935959>,  <27.987345, 40.425613, 49.471676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369961, 40.774414, 49.935959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054123, 40.990997, 49.820465>,  <27.864620, 41.120945, 49.751171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054123, 40.990997, 49.820465>,  <28.369961, 40.774414, 49.935959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054123, 40.990997, 49.820465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240338, 0.160054, 0.957403,
		0.564604, 0.825354, 0.003755,
		-0.789595, 0.541456, -0.288731,
		27.817244, 41.153435, 49.733845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065395, 40.750938, 49.554974>,  <28.369961, 40.774414, 49.935959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065395, 40.750938, 49.554974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143740, 40.516083, 49.869148>,  <29.190746, 40.375168, 50.057652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143740, 40.516083, 49.869148>,  <29.065395, 40.750938, 49.554974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143740, 40.516083, 49.869148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040827, -0.795369, -0.604749,
		0.979782, 0.150513, -0.131809,
		0.195859, -0.587140, 0.785433,
		29.202497, 40.339939, 50.104778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694269, 40.496193, 49.530273>,  <29.065395, 40.750938, 49.554974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694269, 40.496193, 49.530273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417315, 40.261086, 49.697670>,  <29.251143, 40.120022, 49.798107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417315, 40.261086, 49.697670>,  <29.694269, 40.496193, 49.530273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417315, 40.261086, 49.697670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084192, -0.641857, -0.762188,
		0.716600, -0.492494, 0.493897,
		-0.692384, -0.587767, 0.418491,
		29.209599, 40.084755, 49.823215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077927, 39.901951, 49.627384>,  <29.694269, 40.496193, 49.530273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077927, 39.901951, 49.627384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697113, 39.783207, 49.657070>,  <29.468626, 39.711960, 49.674881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697113, 39.783207, 49.657070>,  <30.077927, 39.901951, 49.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697113, 39.783207, 49.657070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139620, -0.637233, -0.757919,
		0.272286, -0.711202, 0.648114,
		-0.952033, -0.296861, 0.074212,
		29.411503, 39.694149, 49.679333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044268, 39.177986, 49.834614>,  <30.077927, 39.901951, 49.627384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044268, 39.177986, 49.834614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720720, 39.269619, 49.618000>,  <29.526592, 39.324596, 49.488033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720720, 39.269619, 49.618000>,  <30.044268, 39.177986, 49.834614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720720, 39.269619, 49.618000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332170, -0.581923, -0.742313,
		-0.485177, -0.780313, 0.394606,
		-0.808867, 0.229076, -0.541532,
		29.478060, 39.338341, 49.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965155, 38.567547, 49.482037>,  <30.044268, 39.177986, 49.834614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965155, 38.567547, 49.482037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781322, 38.854691, 49.272865>,  <29.671022, 39.026978, 49.147362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781322, 38.854691, 49.272865>,  <29.965155, 38.567547, 49.482037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781322, 38.854691, 49.272865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230062, -0.472474, -0.850788,
		-0.857821, -0.511312, 0.051986,
		-0.459580, 0.717864, -0.522932,
		29.643448, 39.070049, 49.115986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695879, 38.149200, 48.945721>,  <29.965155, 38.567547, 49.482037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695879, 38.149200, 48.945721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677181, 38.523151, 48.804974>,  <29.665962, 38.747524, 48.720524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677181, 38.523151, 48.804974>,  <29.695879, 38.149200, 48.945721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677181, 38.523151, 48.804974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289413, -0.324470, -0.900533,
		-0.956062, -0.143932, -0.255400,
		-0.046746, 0.934881, -0.351869,
		29.663158, 38.803616, 48.699413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277817, 38.195087, 48.351273>,  <29.695879, 38.149200, 48.945721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277817, 38.195087, 48.351273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526785, 38.506618, 48.320240>,  <29.676167, 38.693539, 48.301620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526785, 38.506618, 48.320240>,  <29.277817, 38.195087, 48.351273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526785, 38.506618, 48.320240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250573, -0.292193, -0.922950,
		-0.741487, 0.555024, -0.377020,
		0.622423, 0.778827, -0.077583,
		29.713512, 38.740265, 48.296967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134285, 38.546192, 47.705616>,  <29.277817, 38.195087, 48.351273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134285, 38.546192, 47.705616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509401, 38.645649, 47.802551>,  <29.734470, 38.705322, 47.860714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509401, 38.645649, 47.802551>,  <29.134285, 38.546192, 47.705616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509401, 38.645649, 47.802551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299455, -0.225957, -0.926968,
		-0.175721, 0.941872, -0.286356,
		0.937789, 0.248639, 0.242342,
		29.790739, 38.720242, 47.875256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441393, 39.009106, 47.145130>,  <29.134285, 38.546192, 47.705616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441393, 39.009106, 47.145130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757282, 38.845715, 47.328209>,  <29.946815, 38.747681, 47.438057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757282, 38.845715, 47.328209>,  <29.441393, 39.009106, 47.145130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757282, 38.845715, 47.328209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374961, -0.269090, -0.887127,
		0.485530, 0.872203, -0.059345,
		0.789724, -0.408475, 0.457694,
		29.994200, 38.723171, 47.465519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035938, 39.208893, 46.713810>,  <29.441393, 39.009106, 47.145130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035938, 39.208893, 46.713810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200686, 38.935829, 46.955254>,  <30.299534, 38.771992, 47.100121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200686, 38.935829, 46.955254>,  <30.035938, 39.208893, 46.713810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200686, 38.935829, 46.955254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644684, -0.249848, -0.722467,
		0.644008, 0.686698, 0.337194,
		0.411869, -0.682658, 0.603608,
		30.324245, 38.731033, 47.136337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664948, 39.231716, 46.425476>,  <30.035938, 39.208893, 46.713810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664948, 39.231716, 46.425476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693178, 38.896687, 46.642174>,  <30.710117, 38.695667, 46.772194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693178, 38.896687, 46.642174>,  <30.664948, 39.231716, 46.425476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693178, 38.896687, 46.642174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508000, -0.437215, -0.742145,
		0.858461, 0.327585, 0.394630,
		0.070577, -0.837574, 0.541745,
		30.714352, 38.645412, 46.804699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318316, 39.030235, 46.330135>,  <30.664948, 39.231716, 46.425476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318316, 39.030235, 46.330135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106411, 38.708809, 46.438671>,  <30.979267, 38.515953, 46.503792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106411, 38.708809, 46.438671>,  <31.318316, 39.030235, 46.330135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106411, 38.708809, 46.438671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417101, -0.525399, -0.741609,
		0.738497, -0.279699, 0.613506,
		-0.529763, -0.803570, 0.271343,
		30.947483, 38.467739, 46.520073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838419, 38.581608, 46.297604>,  <31.318316, 39.030235, 46.330135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838419, 38.581608, 46.297604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493515, 38.381432, 46.266453>,  <31.286572, 38.261326, 46.247761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493515, 38.381432, 46.266453>,  <31.838419, 38.581608, 46.297604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493515, 38.381432, 46.266453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362993, -0.503422, -0.784093,
		0.353186, -0.704363, 0.615737,
		-0.862262, -0.500439, -0.077878,
		31.234837, 38.231300, 46.243088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014721, 37.838341, 46.327106>,  <31.838419, 38.581608, 46.297604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014721, 37.838341, 46.327106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649029, 37.803066, 46.168915>,  <31.429613, 37.781902, 46.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649029, 37.803066, 46.168915>,  <32.014721, 37.838341, 46.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649029, 37.803066, 46.168915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361641, -0.617788, -0.698250,
		-0.182751, -0.781385, 0.596691,
		-0.914231, -0.088182, -0.395482,
		31.374760, 37.776611, 46.050270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879154, 37.148193, 46.158180>,  <32.014721, 37.838341, 46.327106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879154, 37.148193, 46.158180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632681, 37.359261, 45.924297>,  <31.484797, 37.485901, 45.783970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632681, 37.359261, 45.924297>,  <31.879154, 37.148193, 46.158180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632681, 37.359261, 45.924297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290208, -0.538038, -0.791388,
		-0.732186, -0.657327, 0.178397,
		-0.616185, 0.527671, -0.584705,
		31.447824, 37.517563, 45.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463522, 36.758366, 45.799988>,  <31.879154, 37.148193, 46.158180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463522, 36.758366, 45.799988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449036, 37.079376, 45.561779>,  <31.440344, 37.271980, 45.418854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449036, 37.079376, 45.561779>,  <31.463522, 36.758366, 45.799988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449036, 37.079376, 45.561779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298965, -0.559919, -0.772729,
		-0.953577, -0.206025, -0.219649,
		-0.036216, 0.802524, -0.595520,
		31.438171, 37.320133, 45.383121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361429, 36.476971, 45.128109>,  <31.463522, 36.758366, 45.799988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361429, 36.476971, 45.128109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447449, 36.846027, 45.000053>,  <31.499062, 37.067459, 44.923218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447449, 36.846027, 45.000053>,  <31.361429, 36.476971, 45.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447449, 36.846027, 45.000053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227012, -0.366059, -0.902478,
		-0.949852, 0.121403, -0.288171,
		0.215051, 0.922639, -0.320142,
		31.511965, 37.122818, 44.904011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062370, 36.499680, 44.492527>,  <31.361429, 36.476971, 45.128109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062370, 36.499680, 44.492527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364985, 36.760880, 44.478447>,  <31.546553, 36.917599, 44.469997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364985, 36.760880, 44.478447>,  <31.062370, 36.499680, 44.492527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364985, 36.760880, 44.478447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226124, -0.311726, -0.922873,
		-0.613614, 0.690226, -0.383492,
		0.756536, 0.653004, -0.035202,
		31.591946, 36.956779, 44.467888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965858, 36.789265, 43.903156>,  <31.062370, 36.499680, 44.492527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965858, 36.789265, 43.903156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352161, 36.847813, 43.988846>,  <31.583942, 36.882942, 44.040260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352161, 36.847813, 43.988846>,  <30.965858, 36.789265, 43.903156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352161, 36.847813, 43.988846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238402, -0.174795, -0.955307,
		-0.102380, 0.973665, -0.203703,
		0.965755, 0.146367, 0.214228,
		31.641888, 36.891724, 44.053116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211142, 37.197620, 43.314640>,  <30.965858, 36.789265, 43.903156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211142, 37.197620, 43.314640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515915, 37.000874, 43.483173>,  <31.698780, 36.882824, 43.584293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515915, 37.000874, 43.483173>,  <31.211142, 37.197620, 43.314640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515915, 37.000874, 43.483173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264483, -0.357528, -0.895669,
		0.591189, 0.793876, -0.142322,
		0.761934, -0.491868, 0.421333,
		31.744495, 36.853313, 43.609573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675903, 37.251057, 42.753578>,  <31.211142, 37.197620, 43.314640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675903, 37.251057, 42.753578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833702, 36.974033, 42.995152>,  <31.928381, 36.807819, 43.140095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833702, 36.974033, 42.995152>,  <31.675903, 37.251057, 42.753578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833702, 36.974033, 42.995152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385597, -0.471799, -0.792919,
		0.834078, 0.545678, 0.080926,
		0.394498, -0.692561, 0.603929,
		31.952051, 36.766266, 43.176331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317833, 37.071186, 42.424747>,  <31.675903, 37.251057, 42.753578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317833, 37.071186, 42.424747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245964, 36.762695, 42.669018>,  <32.202843, 36.577602, 42.815578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245964, 36.762695, 42.669018>,  <32.317833, 37.071186, 42.424747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245964, 36.762695, 42.669018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486145, -0.609290, -0.626441,
		0.855207, 0.184321, 0.484403,
		-0.179676, -0.771228, 0.610675,
		32.192062, 36.531326, 42.852219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092827, 36.688000, 42.620342>,  <32.317833, 37.071186, 42.424747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092827, 36.688000, 42.620342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806114, 36.425747, 42.715305>,  <32.634087, 36.268394, 42.772282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806114, 36.425747, 42.715305>,  <33.092827, 36.688000, 42.620342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806114, 36.425747, 42.715305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428317, -0.682649, -0.592060,
		0.550243, -0.322692, 0.770131,
		-0.716783, -0.655637, 0.237409,
		32.591080, 36.229057, 42.786530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459072, 36.090908, 42.656712>,  <33.092827, 36.688000, 42.620342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459072, 36.090908, 42.656712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075768, 35.981079, 42.624863>,  <32.845783, 35.915184, 42.605755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075768, 35.981079, 42.624863>,  <33.459072, 36.090908, 42.656712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075768, 35.981079, 42.624863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250688, -0.673164, -0.695705,
		0.137421, -0.686630, 0.713901,
		-0.958265, -0.274570, -0.079623,
		32.788288, 35.898708, 42.600975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368214, 35.357887, 42.776295>,  <33.459072, 36.090908, 42.656712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368214, 35.357887, 42.776295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074490, 35.485905, 42.536842>,  <32.898254, 35.562717, 42.393169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074490, 35.485905, 42.536842>,  <33.368214, 35.357887, 42.776295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074490, 35.485905, 42.536842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270089, -0.671314, -0.690209,
		-0.622768, -0.668512, 0.406512,
		-0.734311, 0.320046, -0.598631,
		32.854198, 35.581917, 42.357254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058193, 34.782940, 42.569099>,  <33.368214, 35.357887, 42.776295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058193, 34.782940, 42.569099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922611, 35.027718, 42.283268>,  <32.841263, 35.174583, 42.111767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922611, 35.027718, 42.283268>,  <33.058193, 34.782940, 42.569099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922611, 35.027718, 42.283268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014389, -0.762830, -0.646439,
		-0.940692, -0.208833, 0.267372,
		-0.338957, 0.611947, -0.714583,
		32.820923, 35.211300, 42.068893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598396, 34.464367, 42.154709>,  <33.058193, 34.782940, 42.569099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598396, 34.464367, 42.154709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722366, 34.764694, 41.921394>,  <32.796749, 34.944889, 41.781406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722366, 34.764694, 41.921394>,  <32.598396, 34.464367, 42.154709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722366, 34.764694, 41.921394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095604, -0.634996, -0.766577,
		-0.945943, 0.181813, -0.268579,
		0.309920, 0.750816, -0.583288,
		32.815342, 34.989941, 41.746407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387810, 34.276924, 41.550152>,  <32.598396, 34.464367, 42.154709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387810, 34.276924, 41.550152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626427, 34.573170, 41.426449>,  <32.769596, 34.750916, 41.352226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626427, 34.573170, 41.426449>,  <32.387810, 34.276924, 41.550152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626427, 34.573170, 41.426449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254248, -0.539861, -0.802439,
		-0.761247, 0.400060, -0.510347,
		0.596540, 0.740609, -0.309253,
		32.805389, 34.795353, 41.333672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166744, 34.495583, 40.876080>,  <32.387810, 34.276924, 41.550152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166744, 34.495583, 40.876080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555161, 34.587231, 40.903164>,  <32.788212, 34.642220, 40.919415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555161, 34.587231, 40.903164>,  <32.166744, 34.495583, 40.876080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555161, 34.587231, 40.903164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135231, -0.293472, -0.946355,
		-0.196960, 0.928105, -0.315957,
		0.971041, 0.229121, 0.067706,
		32.846474, 34.655968, 40.923477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322655, 34.754765, 40.295139>,  <32.166744, 34.495583, 40.876080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322655, 34.754765, 40.295139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694954, 34.694984, 40.428635>,  <32.918331, 34.659115, 40.508732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694954, 34.694984, 40.428635>,  <32.322655, 34.754765, 40.295139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694954, 34.694984, 40.428635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321740, -0.099036, -0.941634,
		0.173779, 0.983797, -0.044093,
		0.930744, -0.149450, 0.333737,
		32.974178, 34.650150, 40.528755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759872, 35.268253, 39.914616>,  <32.322655, 34.754765, 40.295139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759872, 35.268253, 39.914616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987949, 34.959667, 40.027557>,  <33.124794, 34.774517, 40.095322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987949, 34.959667, 40.027557>,  <32.759872, 35.268253, 39.914616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987949, 34.959667, 40.027557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406931, -0.033337, -0.912850,
		0.713644, 0.635399, 0.294925,
		0.570192, -0.771464, 0.282354,
		33.159008, 34.728230, 40.112263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375099, 35.328323, 39.559509>,  <32.759872, 35.268253, 39.914616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375099, 35.328323, 39.559509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391785, 34.942242, 39.662766>,  <33.401794, 34.710590, 39.724720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391785, 34.942242, 39.662766>,  <33.375099, 35.328323, 39.559509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391785, 34.942242, 39.662766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543929, -0.194785, -0.816211,
		0.838094, 0.174452, 0.516880,
		0.041709, -0.965207, 0.258138,
		33.404297, 34.652679, 39.740208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055126, 35.123390, 39.606827>,  <33.375099, 35.328323, 39.559509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055126, 35.123390, 39.606827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828033, 34.801895, 39.535618>,  <33.691776, 34.608997, 39.492893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828033, 34.801895, 39.535618>,  <34.055126, 35.123390, 39.606827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828033, 34.801895, 39.535618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612584, -0.268012, -0.743579,
		0.549927, -0.531208, 0.644514,
		-0.567733, -0.803733, -0.178023,
		33.657715, 34.560776, 39.482212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501339, 34.668446, 39.359665>,  <34.055126, 35.123390, 39.606827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501339, 34.668446, 39.359665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148125, 34.513847, 39.253178>,  <33.936195, 34.421089, 39.189285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148125, 34.513847, 39.253178>,  <34.501339, 34.668446, 39.359665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148125, 34.513847, 39.253178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423759, -0.412861, -0.806210,
		0.201690, -0.824722, 0.528352,
		-0.883035, -0.386498, -0.266213,
		33.883213, 34.397900, 39.173313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659107, 34.121483, 39.008945>,  <34.501339, 34.668446, 39.359665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659107, 34.121483, 39.008945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285355, 34.188137, 38.882988>,  <34.061104, 34.228130, 38.807415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285355, 34.188137, 38.882988>,  <34.659107, 34.121483, 39.008945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285355, 34.188137, 38.882988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240178, -0.358182, -0.902231,
		-0.263132, -0.918661, 0.294658,
		-0.934385, 0.166635, -0.314892,
		34.005039, 34.238129, 38.788521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591343, 33.655453, 38.558922>,  <34.659107, 34.121483, 39.008945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591343, 33.655453, 38.558922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278923, 33.889370, 38.471310>,  <34.091473, 34.029720, 38.418743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278923, 33.889370, 38.471310>,  <34.591343, 33.655453, 38.558922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278923, 33.889370, 38.471310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164083, -0.146240, -0.975546,
		-0.602526, -0.797890, 0.018266,
		-0.781050, 0.584795, -0.219033,
		34.044609, 34.064808, 38.405602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142914, 33.301983, 38.176579>,  <34.591343, 33.655453, 38.558922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142914, 33.301983, 38.176579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079739, 33.690105, 38.103294>,  <34.041836, 33.922977, 38.059322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079739, 33.690105, 38.103294>,  <34.142914, 33.301983, 38.176579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079739, 33.690105, 38.103294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349839, -0.118523, -0.929282,
		-0.923401, -0.210861, -0.320731,
		-0.157935, 0.970304, -0.183212,
		34.032356, 33.981197, 38.048332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818279, 33.327282, 37.548946>,  <34.142914, 33.301983, 38.176579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818279, 33.327282, 37.548946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992100, 33.686314, 37.578655>,  <34.096390, 33.901733, 37.596481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992100, 33.686314, 37.578655>,  <33.818279, 33.327282, 37.548946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992100, 33.686314, 37.578655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430824, -0.134736, -0.892321,
		-0.790922, 0.419757, -0.445249,
		0.434549, 0.897580, 0.074276,
		34.122463, 33.955589, 37.600937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693527, 33.662941, 36.896477>,  <33.818279, 33.327282, 37.548946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693527, 33.662941, 36.896477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993805, 33.880814, 37.046028>,  <34.173973, 34.011536, 37.135757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993805, 33.880814, 37.046028>,  <33.693527, 33.662941, 36.896477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993805, 33.880814, 37.046028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470121, -0.042822, -0.881562,
		-0.464158, 0.837551, -0.288211,
		0.750695, 0.544679, 0.373874,
		34.219013, 34.044216, 37.158192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671318, 34.241459, 36.506233>,  <33.693527, 33.662941, 36.896477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671318, 34.241459, 36.506233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039360, 34.225346, 36.662071>,  <34.260185, 34.215675, 36.755573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039360, 34.225346, 36.662071>,  <33.671318, 34.241459, 36.506233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039360, 34.225346, 36.662071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391554, 0.069765, -0.917507,
		0.009781, 0.996750, 0.079965,
		0.920103, -0.040285, 0.389599,
		34.315392, 34.213261, 36.778950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112400, 34.827099, 36.269142>,  <33.671318, 34.241459, 36.506233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112400, 34.827099, 36.269142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355602, 34.524582, 36.365761>,  <34.501522, 34.343071, 36.423733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355602, 34.524582, 36.365761>,  <34.112400, 34.827099, 36.269142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355602, 34.524582, 36.365761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407673, 0.036330, -0.912405,
		0.681273, 0.653219, 0.330411,
		0.608004, -0.756297, 0.241549,
		34.538002, 34.297691, 36.438225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719120, 35.116192, 36.063324>,  <34.112400, 34.827099, 36.269142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719120, 35.116192, 36.063324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779808, 34.722931, 36.104111>,  <34.816219, 34.486977, 36.128582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779808, 34.722931, 36.104111>,  <34.719120, 35.116192, 36.063324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779808, 34.722931, 36.104111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462962, -0.020462, -0.886142,
		0.873297, 0.181654, 0.452057,
		0.151721, -0.983150, 0.101968,
		34.825325, 34.427986, 36.134701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463341, 35.100883, 35.953392>,  <34.719120, 35.116192, 36.063324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463341, 35.100883, 35.953392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314465, 34.734718, 35.892086>,  <35.225140, 34.515018, 35.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314465, 34.734718, 35.892086>,  <35.463341, 35.100883, 35.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314465, 34.734718, 35.892086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563923, -0.091877, -0.820701,
		0.737201, -0.391885, 0.550419,
		-0.372191, -0.915415, -0.153261,
		35.202808, 34.460094, 35.846107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027863, 34.710262, 35.919250>,  <35.463341, 35.100883, 35.953392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027863, 34.710262, 35.919250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734726, 34.553890, 35.696499>,  <35.558842, 34.460068, 35.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734726, 34.553890, 35.696499>,  <36.027863, 34.710262, 35.919250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734726, 34.553890, 35.696499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522415, 0.201065, -0.828647,
		0.435914, -0.898189, 0.056881,
		-0.732844, -0.390934, -0.556874,
		35.514874, 34.436611, 35.529438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241737, 34.151009, 36.353779>,  <36.027863, 34.710262, 35.919250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241737, 34.151009, 36.353779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611534, 34.295895, 36.306248>,  <36.833412, 34.382824, 36.277729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611534, 34.295895, 36.306248>,  <36.241737, 34.151009, 36.353779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611534, 34.295895, 36.306248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049858, 0.423924, 0.904324,
		0.377929, -0.830115, 0.409973,
		0.924491, 0.362211, -0.118826,
		36.888882, 34.404560, 36.270599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621506, 33.862942, 36.893120>,  <36.241737, 34.151009, 36.353779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621506, 33.862942, 36.893120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805546, 34.195076, 36.767353>,  <36.915970, 34.394356, 36.691891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805546, 34.195076, 36.767353>,  <36.621506, 33.862942, 36.893120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805546, 34.195076, 36.767353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082719, 0.312501, 0.946309,
		0.884007, -0.461402, 0.075097,
		0.460097, 0.830332, -0.314420,
		36.943573, 34.444176, 36.673027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240761, 33.953682, 37.311565>,  <36.621506, 33.862942, 36.893120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240761, 33.953682, 37.311565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187939, 34.328457, 37.182129>,  <37.156246, 34.553322, 37.104465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187939, 34.328457, 37.182129>,  <37.240761, 33.953682, 37.311565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187939, 34.328457, 37.182129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402842, 0.349005, 0.846117,
		0.905693, -0.018624, -0.423524,
		-0.132054, 0.936936, -0.323594,
		37.148323, 34.609539, 37.085052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739140, 34.403633, 37.503906>,  <37.240761, 33.953682, 37.311565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739140, 34.403633, 37.503906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466709, 34.686043, 37.426273>,  <37.303253, 34.855488, 37.379692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466709, 34.686043, 37.426273>,  <37.739140, 34.403633, 37.503906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466709, 34.686043, 37.426273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269412, 0.488103, 0.830164,
		0.680850, 0.513113, -0.522645,
		-0.681073, 0.706024, -0.194086,
		37.262386, 34.897850, 37.368046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952160, 34.990429, 37.865639>,  <37.739140, 34.403633, 37.503906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952160, 34.990429, 37.865639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577141, 35.109592, 37.793804>,  <37.352131, 35.181091, 37.750702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577141, 35.109592, 37.793804>,  <37.952160, 34.990429, 37.865639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577141, 35.109592, 37.793804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011909, 0.488478, 0.872495,
		0.347649, 0.820146, -0.454424,
		-0.937549, 0.297910, -0.179586,
		37.295876, 35.198967, 37.739929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964714, 35.861385, 37.804092>,  <37.952160, 34.990429, 37.865639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964714, 35.861385, 37.804092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607906, 35.716908, 37.912785>,  <37.393822, 35.630222, 37.978001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607906, 35.716908, 37.912785>,  <37.964714, 35.861385, 37.804092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607906, 35.716908, 37.912785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012520, 0.620698, 0.783950,
		-0.451821, 0.695897, -0.558197,
		-0.892021, -0.361194, 0.271732,
		37.340302, 35.608551, 37.994305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659424, 36.494862, 38.029079>,  <37.964714, 35.861385, 37.804092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659424, 36.494862, 38.029079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438416, 36.196533, 38.177925>,  <37.305809, 36.017536, 38.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438416, 36.196533, 38.177925>,  <37.659424, 36.494862, 38.029079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438416, 36.196533, 38.177925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167143, 0.536519, 0.827170,
		-0.816567, 0.394835, -0.421098,
		-0.552523, -0.745824, 0.372110,
		37.272659, 35.972786, 38.289558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066265, 36.760815, 38.308418>,  <37.659424, 36.494862, 38.029079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066265, 36.760815, 38.308418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104427, 36.416706, 38.508747>,  <37.127323, 36.210239, 38.628944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104427, 36.416706, 38.508747>,  <37.066265, 36.760815, 38.308418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104427, 36.416706, 38.508747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227278, 0.471005, 0.852350,
		-0.969146, -0.195143, -0.150586,
		0.095403, -0.860276, 0.500824,
		37.133049, 36.158623, 38.658993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467365, 36.766186, 38.814053>,  <37.066265, 36.760815, 38.308418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467365, 36.766186, 38.814053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715755, 36.477207, 38.935684>,  <36.864788, 36.303822, 39.008663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715755, 36.477207, 38.935684>,  <36.467365, 36.766186, 38.814053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715755, 36.477207, 38.935684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136531, 0.282315, 0.949557,
		-0.771851, -0.631164, 0.076673,
		0.620972, -0.722448, 0.304078,
		36.902046, 36.260471, 39.026909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082893, 36.412376, 39.403168>,  <36.467365, 36.766186, 38.814053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082893, 36.412376, 39.403168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471344, 36.324856, 39.441208>,  <36.704414, 36.272343, 39.464031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471344, 36.324856, 39.441208>,  <36.082893, 36.412376, 39.403168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471344, 36.324856, 39.441208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069046, 0.123811, 0.989901,
		-0.228365, -0.967883, 0.105128,
		0.971124, -0.218800, 0.095103,
		36.762680, 36.259216, 39.469738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095097, 35.874752, 39.995422>,  <36.082893, 36.412376, 39.403168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095097, 35.874752, 39.995422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464237, 36.024784, 39.960423>,  <36.685722, 36.114803, 39.939423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464237, 36.024784, 39.960423>,  <36.095097, 35.874752, 39.995422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464237, 36.024784, 39.960423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055443, 0.095446, 0.993889,
		0.381138, -0.922066, 0.067287,
		0.922854, 0.375079, -0.087500,
		36.741093, 36.137306, 39.934174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515846, 35.541557, 40.484699>,  <36.095097, 35.874752, 39.995422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515846, 35.541557, 40.484699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705799, 35.888645, 40.425987>,  <36.819771, 36.096897, 40.390759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705799, 35.888645, 40.425987>,  <36.515846, 35.541557, 40.484699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705799, 35.888645, 40.425987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098985, 0.218395, 0.970827,
		0.874465, -0.446498, 0.189603,
		0.474881, 0.867723, -0.146782,
		36.848263, 36.148964, 40.381954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989010, 35.667938, 41.099068>,  <36.515846, 35.541557, 40.484699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989010, 35.667938, 41.099068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979355, 36.026608, 40.922256>,  <36.973564, 36.241810, 40.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979355, 36.026608, 40.922256>,  <36.989010, 35.667938, 41.099068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979355, 36.026608, 40.922256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065320, 0.439796, 0.895719,
		0.997573, 0.050490, 0.047957,
		-0.024133, 0.896677, -0.442027,
		36.972115, 36.295612, 40.789650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434723, 36.066257, 41.447002>,  <36.989010, 35.667938, 41.099068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434723, 36.066257, 41.447002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170605, 36.312851, 41.275444>,  <37.012135, 36.460808, 41.172508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170605, 36.312851, 41.275444>,  <37.434723, 36.066257, 41.447002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170605, 36.312851, 41.275444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137619, 0.462100, 0.876085,
		0.738288, 0.637500, -0.220282,
		-0.660297, 0.616488, -0.428895,
		36.972515, 36.497799, 41.146774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642796, 36.665970, 41.691002>,  <37.434723, 36.066257, 41.447002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642796, 36.665970, 41.691002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265076, 36.724327, 41.573006>,  <37.038445, 36.759342, 41.502209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265076, 36.724327, 41.573006>,  <37.642796, 36.665970, 41.691002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265076, 36.724327, 41.573006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199338, 0.459672, 0.865428,
		0.261857, 0.876024, -0.404985,
		-0.944296, 0.145889, -0.294993,
		36.981789, 36.768093, 41.484509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441914, 37.168125, 42.117378>,  <37.642796, 36.665970, 41.691002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441914, 37.168125, 42.117378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087418, 37.063519, 41.964439>,  <36.874722, 37.000755, 41.872677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087418, 37.063519, 41.964439>,  <37.441914, 37.168125, 42.117378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087418, 37.063519, 41.964439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451767, 0.305479, 0.838206,
		-0.102409, 0.915581, -0.388874,
		-0.886239, -0.261520, -0.382345,
		36.821545, 36.985062, 41.849735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910717, 37.716595, 42.322388>,  <37.441914, 37.168125, 42.117378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910717, 37.716595, 42.322388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670444, 37.403393, 42.257774>,  <36.526279, 37.215473, 42.219006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670444, 37.403393, 42.257774>,  <36.910717, 37.716595, 42.322388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670444, 37.403393, 42.257774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540606, 0.248945, 0.803599,
		-0.589005, 0.570032, -0.572832,
		-0.600681, -0.783000, -0.161533,
		36.490242, 37.168491, 42.209316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167706, 37.948547, 42.125526>,  <36.910717, 37.716595, 42.322388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167706, 37.948547, 42.125526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153606, 37.573105, 42.262798>,  <36.145145, 37.347839, 42.345161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153606, 37.573105, 42.262798>,  <36.167706, 37.948547, 42.125526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153606, 37.573105, 42.262798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732001, 0.258037, 0.630548,
		-0.680391, -0.228986, -0.696156,
		-0.035248, -0.938607, 0.343184,
		36.143032, 37.291523, 42.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478451, 37.754921, 42.012329>,  <36.167706, 37.948547, 42.125526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478451, 37.754921, 42.012329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628864, 37.504299, 42.285393>,  <35.719112, 37.353924, 42.449230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628864, 37.504299, 42.285393>,  <35.478451, 37.754921, 42.012329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628864, 37.504299, 42.285393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851711, 0.056442, 0.520963,
		-0.364945, -0.777328, -0.512423,
		0.376037, -0.626559, 0.682657,
		35.741676, 37.316330, 42.490189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949795, 37.231316, 42.158321>,  <35.478451, 37.754921, 42.012329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949795, 37.231316, 42.158321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189651, 37.275028, 42.475430>,  <35.333565, 37.301254, 42.665695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189651, 37.275028, 42.475430>,  <34.949795, 37.231316, 42.158321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189651, 37.275028, 42.475430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793943, 0.205546, 0.572194,
		-0.100422, -0.972527, 0.210016,
		0.599642, 0.109280, 0.792772,
		35.369545, 37.307812, 42.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624119, 36.843899, 42.677979>,  <34.949795, 37.231316, 42.158321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624119, 36.843899, 42.677979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891796, 37.062138, 42.879772>,  <35.052402, 37.193081, 43.000847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891796, 37.062138, 42.879772>,  <34.624119, 36.843899, 42.677979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891796, 37.062138, 42.879772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698633, 0.230652, 0.677283,
		0.253162, -0.805684, 0.535521,
		0.669195, 0.545595, 0.504485,
		35.092556, 37.225815, 43.031116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683609, 36.512745, 43.377632>,  <34.624119, 36.843899, 42.677979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683609, 36.512745, 43.377632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781773, 36.899139, 43.345043>,  <34.840672, 37.130978, 43.325489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781773, 36.899139, 43.345043>,  <34.683609, 36.512745, 43.377632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781773, 36.899139, 43.345043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552117, 0.208350, 0.807315,
		0.796832, -0.153142, 0.584471,
		0.245408, 0.965991, -0.081468,
		34.855396, 37.188938, 43.320602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618725, 36.785809, 44.016205>,  <34.683609, 36.512745, 43.377632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618725, 36.785809, 44.016205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651199, 37.124008, 43.805096>,  <34.670685, 37.326927, 43.678432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651199, 37.124008, 43.805096>,  <34.618725, 36.785809, 44.016205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651199, 37.124008, 43.805096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537747, 0.482994, 0.691047,
		0.839188, 0.227705, 0.493876,
		0.081184, 0.845499, -0.527770,
		34.675556, 37.377659, 43.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733421, 37.377911, 44.554832>,  <34.618725, 36.785809, 44.016205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733421, 37.377911, 44.554832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602097, 37.517952, 44.203915>,  <34.523304, 37.601978, 43.993366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602097, 37.517952, 44.203915>,  <34.733421, 37.377911, 44.554832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602097, 37.517952, 44.203915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525128, 0.704362, 0.477614,
		0.785146, 0.617494, -0.047397,
		-0.328308, 0.350107, -0.877290,
		34.503605, 37.622986, 43.940727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746181, 38.087723, 44.664379>,  <34.733421, 37.377911, 44.554832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746181, 38.087723, 44.664379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470707, 38.057816, 44.375900>,  <34.305424, 38.039871, 44.202812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470707, 38.057816, 44.375900>,  <34.746181, 38.087723, 44.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470707, 38.057816, 44.375900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582952, 0.648547, 0.489442,
		0.431135, 0.757493, -0.490231,
		-0.688687, -0.074766, -0.721194,
		34.264099, 38.035385, 44.159542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420555, 38.688766, 44.539696>,  <34.746181, 38.087723, 44.664379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420555, 38.688766, 44.539696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153370, 38.456429, 44.353603>,  <33.993057, 38.317028, 44.241947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153370, 38.456429, 44.353603>,  <34.420555, 38.688766, 44.539696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153370, 38.456429, 44.353603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739945, 0.585064, 0.331936,
		0.079389, 0.565969, -0.820595,
		-0.667966, -0.580843, -0.465234,
		33.952980, 38.282177, 44.214035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995865, 39.183727, 44.115501>,  <34.420555, 38.688766, 44.539696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995865, 39.183727, 44.115501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785145, 38.884438, 44.276821>,  <33.658714, 38.704865, 44.373615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785145, 38.884438, 44.276821>,  <33.995865, 39.183727, 44.115501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785145, 38.884438, 44.276821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513967, 0.658309, 0.549970,
		-0.676996, 0.082439, -0.731355,
		-0.526797, -0.748220, 0.403301,
		33.627106, 38.659973, 44.397812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184669, 39.365707, 44.083107>,  <33.995865, 39.183727, 44.115501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184669, 39.365707, 44.083107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244324, 39.076572, 44.353001>,  <33.280117, 38.903091, 44.514938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244324, 39.076572, 44.353001>,  <33.184669, 39.365707, 44.083107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244324, 39.076572, 44.353001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542288, 0.510807, 0.667083,
		-0.826851, -0.465385, -0.315807,
		0.149134, -0.722837, 0.674734,
		33.289062, 38.859722, 44.555420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530830, 39.205162, 44.465706>,  <33.184669, 39.365707, 44.083107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530830, 39.205162, 44.465706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818840, 39.069263, 44.707741>,  <32.991646, 38.987724, 44.852962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818840, 39.069263, 44.707741>,  <32.530830, 39.205162, 44.465706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818840, 39.069263, 44.707741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409022, 0.496616, 0.765555,
		-0.560592, -0.798715, 0.218613,
		0.720027, -0.339746, 0.605090,
		33.034847, 38.967339, 44.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201328, 38.991276, 45.018898>,  <32.530830, 39.205162, 44.465706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201328, 38.991276, 45.018898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581581, 39.028778, 45.137226>,  <32.809734, 39.051277, 45.208221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581581, 39.028778, 45.137226>,  <32.201328, 38.991276, 45.018898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581581, 39.028778, 45.137226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303365, 0.481464, 0.822290,
		-0.065335, -0.871437, 0.486136,
		0.950632, 0.093753, 0.295821,
		32.866772, 39.056904, 45.225971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184757, 39.265343, 45.688282>,  <32.201328, 38.991276, 45.018898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184757, 39.265343, 45.688282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580791, 39.314747, 45.661507>,  <32.818413, 39.344387, 45.645443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580791, 39.314747, 45.661507>,  <32.184757, 39.265343, 45.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580791, 39.314747, 45.661507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038278, 0.695650, 0.717361,
		0.135163, -0.707685, 0.693479,
		0.990084, 0.123506, -0.066938,
		32.877815, 39.351799, 45.641426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562309, 39.170559, 46.429703>,  <32.184757, 39.265343, 45.688282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562309, 39.170559, 46.429703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756721, 39.415436, 46.180225>,  <32.873371, 39.562363, 46.030540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756721, 39.415436, 46.180225>,  <32.562309, 39.170559, 46.429703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756721, 39.415436, 46.180225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000631, 0.713410, 0.700746,
		0.873939, -0.340980, 0.346356,
		0.486035, 0.612191, -0.623692,
		32.902531, 39.599094, 45.993118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001411, 39.448700, 46.904980>,  <32.562309, 39.170559, 46.429703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001411, 39.448700, 46.904980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988132, 39.699963, 46.594028>,  <32.980167, 39.850719, 46.407455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988132, 39.699963, 46.594028>,  <33.001411, 39.448700, 46.904980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988132, 39.699963, 46.594028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113688, 0.770388, 0.627358,
		0.992962, 0.109204, 0.045840,
		-0.033195, 0.628154, -0.777381,
		32.978172, 39.888409, 46.360813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476826, 40.028511, 47.090530>,  <33.001411, 39.448700, 46.904980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476826, 40.028511, 47.090530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229832, 40.157093, 46.803371>,  <33.081635, 40.234241, 46.631077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229832, 40.157093, 46.803371>,  <33.476826, 40.028511, 47.090530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229832, 40.157093, 46.803371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125966, 0.860491, 0.493648,
		0.776428, 0.395252, -0.490851,
		-0.617489, 0.321452, -0.717897,
		33.044586, 40.253529, 46.588001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512802, 40.790455, 47.135540>,  <33.476826, 40.028511, 47.090530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512802, 40.790455, 47.135540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159199, 40.727413, 46.959499>,  <32.947037, 40.689587, 46.853874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159199, 40.727413, 46.959499>,  <33.512802, 40.790455, 47.135540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159199, 40.727413, 46.959499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380154, 0.790262, 0.480593,
		0.272051, 0.592154, -0.758513,
		-0.884009, -0.157606, -0.440101,
		32.893997, 40.680130, 46.827469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208874, 41.451939, 47.209633>,  <33.512802, 40.790455, 47.135540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208874, 41.451939, 47.209633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894386, 41.223083, 47.116234>,  <32.705696, 41.085770, 47.060196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894386, 41.223083, 47.116234>,  <33.208874, 41.451939, 47.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894386, 41.223083, 47.116234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608651, 0.651668, 0.452630,
		-0.106806, 0.497981, -0.860585,
		-0.786216, -0.572140, -0.233495,
		32.658520, 41.051441, 47.046185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630756, 41.797749, 46.835773>,  <33.208874, 41.451939, 47.209633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630756, 41.797749, 46.835773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524311, 41.516850, 47.099903>,  <32.460445, 41.348309, 47.258381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524311, 41.516850, 47.099903>,  <32.630756, 41.797749, 46.835773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524311, 41.516850, 47.099903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375332, 0.706450, 0.600045,
		-0.887868, -0.088161, -0.451573,
		-0.266114, -0.702251, 0.660324,
		32.444477, 41.306175, 47.298000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202522, 42.301868, 47.082558>,  <32.630756, 41.797749, 46.835773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202522, 42.301868, 47.082558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243866, 41.978645, 47.314545>,  <32.268673, 41.784714, 47.453735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243866, 41.978645, 47.314545>,  <32.202522, 42.301868, 47.082558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243866, 41.978645, 47.314545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267665, 0.538983, 0.798656,
		-0.957952, -0.237787, -0.160579,
		0.103361, -0.808056, 0.579967,
		32.274876, 41.736229, 47.488533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406258, 42.545979, 47.699436>,  <32.202522, 42.301868, 47.082558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406258, 42.545979, 47.699436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696575, 42.800701, 47.803516>,  <32.870766, 42.953537, 47.865963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696575, 42.800701, 47.803516>,  <32.406258, 42.545979, 47.699436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696575, 42.800701, 47.803516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554632, -0.317935, -0.768961,
		-0.406956, 0.702418, -0.583948,
		0.725789, 0.636810, 0.260198,
		32.914310, 42.991745, 47.881577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783714, 42.907074, 47.010674>,  <32.406258, 42.545979, 47.699436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783714, 42.907074, 47.010674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027843, 42.916149, 47.327404>,  <33.174320, 42.921597, 47.517441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027843, 42.916149, 47.327404>,  <32.783714, 42.907074, 47.010674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027843, 42.916149, 47.327404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760112, -0.298180, -0.577337,
		0.223006, 0.954240, -0.199235,
		0.610326, 0.022691, 0.791825,
		33.210941, 42.922955, 47.564953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338791, 43.126595, 46.621460>,  <32.783714, 42.907074, 47.010674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338791, 43.126595, 46.621460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486565, 42.996124, 46.969513>,  <33.575230, 42.917843, 47.178345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486565, 42.996124, 46.969513>,  <33.338791, 43.126595, 46.621460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486565, 42.996124, 46.969513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752823, -0.443892, -0.486023,
		0.544772, 0.834608, 0.081562,
		0.369434, -0.326174, 0.870132,
		33.597393, 42.898273, 47.230553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088818, 43.327007, 46.643383>,  <33.338791, 43.126595, 46.621460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088818, 43.327007, 46.643383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045502, 43.027294, 46.904716>,  <34.019512, 42.847466, 47.061516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045502, 43.027294, 46.904716>,  <34.088818, 43.327007, 46.643383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045502, 43.027294, 46.904716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808777, -0.448549, -0.380374,
		0.578060, 0.487210, 0.654578,
		-0.108288, -0.749287, 0.653332,
		34.013016, 42.802509, 47.100716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709549, 43.207592, 46.873539>,  <34.088818, 43.327007, 46.643383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709549, 43.207592, 46.873539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531677, 42.865776, 46.980892>,  <34.424953, 42.660686, 47.045303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531677, 42.865776, 46.980892>,  <34.709549, 43.207592, 46.873539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531677, 42.865776, 46.980892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785178, -0.516082, -0.342278,
		0.430998, 0.058528, 0.900453,
		-0.444675, -0.854537, 0.268385,
		34.398273, 42.609413, 47.061409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147697, 42.731960, 47.038582>,  <34.709549, 43.207592, 46.873539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147697, 42.731960, 47.038582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864799, 42.455940, 46.977097>,  <34.695061, 42.290329, 46.940205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864799, 42.455940, 46.977097>,  <35.147697, 42.731960, 47.038582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864799, 42.455940, 46.977097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671105, -0.586949, -0.452889,
		0.222298, -0.423461, 0.878217,
		-0.707249, -0.690052, -0.153709,
		34.652626, 42.248924, 46.930984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538940, 42.154987, 47.104958>,  <35.147697, 42.731960, 47.038582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538940, 42.154987, 47.104958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211330, 42.070866, 46.891426>,  <35.014767, 42.020393, 46.763306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211330, 42.070866, 46.891426>,  <35.538940, 42.154987, 47.104958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211330, 42.070866, 46.891426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545614, -0.573308, -0.611247,
		-0.177501, -0.791890, 0.584298,
		-0.819022, -0.210304, -0.533829,
		34.965622, 42.007774, 46.731277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537769, 41.348408, 47.020191>,  <35.538940, 42.154987, 47.104958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537769, 41.348408, 47.020191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313026, 41.508141, 46.730408>,  <35.178181, 41.603981, 46.556538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313026, 41.508141, 46.730408>,  <35.537769, 41.348408, 47.020191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313026, 41.508141, 46.730408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458006, -0.579120, -0.674425,
		-0.688870, -0.710742, 0.142489,
		-0.561861, 0.399331, -0.724463,
		35.144466, 41.627941, 46.513069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642635, 40.933807, 46.452499>,  <35.537769, 41.348408, 47.020191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642635, 40.933807, 46.452499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405205, 41.209724, 46.286674>,  <35.262749, 41.375275, 46.187180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405205, 41.209724, 46.286674>,  <35.642635, 40.933807, 46.452499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405205, 41.209724, 46.286674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123487, -0.430962, -0.893881,
		-0.795251, -0.581775, 0.170627,
		-0.593572, 0.689789, -0.414564,
		35.227135, 41.416660, 46.162304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123318, 40.547752, 46.161167>,  <35.642635, 40.933807, 46.452499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123318, 40.547752, 46.161167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167515, 40.891987, 45.962299>,  <35.194031, 41.098530, 45.842979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167515, 40.891987, 45.962299>,  <35.123318, 40.547752, 46.161167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167515, 40.891987, 45.962299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133219, -0.508540, -0.850670,
		-0.984908, 0.027759, -0.170836,
		0.110491, 0.860591, -0.497168,
		35.200661, 41.150166, 45.813148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693951, 40.478214, 45.583012>,  <35.123318, 40.547752, 46.161167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693951, 40.478214, 45.583012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001232, 40.721966, 45.504505>,  <35.185600, 40.868217, 45.457401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001232, 40.721966, 45.504505>,  <34.693951, 40.478214, 45.583012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001232, 40.721966, 45.504505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226220, -0.545167, -0.807228,
		-0.598902, 0.575719, -0.556654,
		0.768206, 0.609377, -0.196263,
		35.231693, 40.904778, 45.445625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619282, 40.671341, 44.944706>,  <34.693951, 40.478214, 45.583012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619282, 40.671341, 44.944706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010952, 40.727272, 45.003578>,  <35.245953, 40.760830, 45.038902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010952, 40.727272, 45.003578>,  <34.619282, 40.671341, 44.944706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010952, 40.727272, 45.003578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180504, -0.267830, -0.946407,
		-0.092911, 0.953266, -0.287492,
		0.979176, 0.139825, 0.147184,
		35.304707, 40.769218, 45.047733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916698, 41.069004, 44.289440>,  <34.619282, 40.671341, 44.944706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916698, 41.069004, 44.289440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248501, 40.952579, 44.480103>,  <35.447582, 40.882725, 44.594501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248501, 40.952579, 44.480103>,  <34.916698, 41.069004, 44.289440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248501, 40.952579, 44.480103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458833, -0.131431, -0.878748,
		0.318413, 0.947635, 0.024524,
		0.829509, -0.291057, 0.476656,
		35.497353, 40.865261, 44.623100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577816, 41.340946, 43.909599>,  <34.916698, 41.069004, 44.289440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577816, 41.340946, 43.909599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722073, 41.021366, 44.102108>,  <35.808624, 40.829617, 44.217613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722073, 41.021366, 44.102108>,  <35.577816, 41.340946, 43.909599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722073, 41.021366, 44.102108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486221, -0.279293, -0.828001,
		0.795946, 0.532610, 0.287743,
		0.360637, -0.798950, 0.481268,
		35.830265, 40.781681, 44.246487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302563, 41.311909, 43.696793>,  <35.577816, 41.340946, 43.909599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302563, 41.311909, 43.696793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198826, 40.959770, 43.855652>,  <36.136585, 40.748486, 43.950970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198826, 40.959770, 43.855652>,  <36.302563, 41.311909, 43.696793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198826, 40.959770, 43.855652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412251, -0.472782, -0.778798,
		0.873380, -0.038246, 0.485536,
		-0.259339, -0.880349, 0.397152,
		36.121025, 40.695667, 43.974796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941845, 40.958477, 43.666874>,  <36.302563, 41.311909, 43.696793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941845, 40.958477, 43.666874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644150, 40.692585, 43.692913>,  <36.465530, 40.533051, 43.708534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644150, 40.692585, 43.692913>,  <36.941845, 40.958477, 43.666874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644150, 40.692585, 43.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514350, -0.632578, -0.579041,
		0.426084, -0.397466, 0.812695,
		-0.744242, -0.664730, 0.065094,
		36.420876, 40.493164, 43.712440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263611, 40.259075, 43.829700>,  <36.941845, 40.958477, 43.666874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263611, 40.259075, 43.829700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916126, 40.214577, 43.636639>,  <36.707634, 40.187878, 43.520802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916126, 40.214577, 43.636639>,  <37.263611, 40.259075, 43.829700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916126, 40.214577, 43.636639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464873, -0.519471, -0.716968,
		-0.170965, -0.847215, 0.502988,
		-0.868714, -0.111249, -0.482659,
		36.655514, 40.181202, 43.491840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338120, 39.668427, 43.623390>,  <37.263611, 40.259075, 43.829700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338120, 39.668427, 43.623390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020370, 39.784424, 43.409893>,  <36.829723, 39.854023, 43.281796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020370, 39.784424, 43.409893>,  <37.338120, 39.668427, 43.623390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020370, 39.784424, 43.409893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340452, -0.515139, -0.786590,
		-0.503051, -0.806559, 0.310486,
		-0.794375, 0.289989, -0.533736,
		36.782059, 39.871422, 43.249771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992081, 39.079254, 43.374485>,  <37.338120, 39.668427, 43.623390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992081, 39.079254, 43.374485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893936, 39.366325, 43.113796>,  <36.835049, 39.538567, 42.957382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893936, 39.366325, 43.113796>,  <36.992081, 39.079254, 43.374485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893936, 39.366325, 43.113796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427707, -0.523164, -0.737134,
		-0.869979, -0.459610, -0.178591,
		-0.245362, 0.717675, -0.651721,
		36.820328, 39.581627, 42.918282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686081, 38.767418, 42.802593>,  <36.992081, 39.079254, 43.374485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686081, 38.767418, 42.802593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811596, 39.120262, 42.662071>,  <36.886906, 39.331970, 42.577759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811596, 39.120262, 42.662071>,  <36.686081, 38.767418, 42.802593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811596, 39.120262, 42.662071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368219, -0.454090, -0.811306,
		-0.875187, 0.125223, -0.467298,
		0.313789, 0.882112, -0.351304,
		36.905731, 39.384895, 42.556679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523621, 38.629612, 42.117851>,  <36.686081, 38.767418, 42.802593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523621, 38.629612, 42.117851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768970, 38.945469, 42.123917>,  <36.916180, 39.134983, 42.127556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768970, 38.945469, 42.123917>,  <36.523621, 38.629612, 42.117851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768970, 38.945469, 42.123917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275527, -0.195950, -0.941110,
		-0.740173, 0.581431, -0.337760,
		0.613375, 0.789646, 0.015164,
		36.952984, 39.182362, 42.128468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422714, 38.952915, 41.483780>,  <36.523621, 38.629612, 42.117851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422714, 38.952915, 41.483780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777534, 39.056004, 41.636997>,  <36.990429, 39.117855, 41.728928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777534, 39.056004, 41.636997>,  <36.422714, 38.952915, 41.483780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777534, 39.056004, 41.636997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456900, -0.371128, -0.808398,
		-0.066181, 0.892102, -0.446961,
		0.887053, 0.257717, 0.383040,
		37.043652, 39.133320, 41.751907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814728, 39.309307, 40.887444>,  <36.422714, 38.952915, 41.483780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814728, 39.309307, 40.887444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099392, 39.213013, 41.151440>,  <37.270191, 39.155235, 41.309837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099392, 39.213013, 41.151440>,  <36.814728, 39.309307, 40.887444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099392, 39.213013, 41.151440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525363, -0.441338, -0.727472,
		0.466410, 0.864445, -0.187606,
		0.711657, -0.240739, 0.659992,
		37.312889, 39.140793, 41.349438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399292, 39.436905, 40.562492>,  <36.814728, 39.309307, 40.887444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399292, 39.436905, 40.562492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511013, 39.172039, 40.840637>,  <37.578045, 39.013119, 41.007526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511013, 39.172039, 40.840637>,  <37.399292, 39.436905, 40.562492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511013, 39.172039, 40.840637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499044, -0.518591, -0.694275,
		0.820333, 0.540929, 0.185606,
		0.279300, -0.662162, 0.695365,
		37.594803, 38.973389, 41.049248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168888, 39.368885, 40.574295>,  <37.399292, 39.436905, 40.562492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168888, 39.368885, 40.574295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017597, 39.028316, 40.719631>,  <37.926823, 38.823975, 40.806831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017597, 39.028316, 40.719631>,  <38.168888, 39.368885, 40.574295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017597, 39.028316, 40.719631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515851, -0.519765, -0.680987,
		0.768661, -0.070141, 0.635800,
		-0.378231, -0.851425, 0.363340,
		37.904129, 38.772888, 40.828632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749985, 38.940521, 40.788788>,  <38.168888, 39.368885, 40.574295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749985, 38.940521, 40.788788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430260, 38.705341, 40.739128>,  <38.238426, 38.564232, 40.709332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430260, 38.705341, 40.739128>,  <38.749985, 38.940521, 40.788788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430260, 38.705341, 40.739128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532071, -0.596455, -0.600950,
		0.279281, -0.546402, 0.789586,
		-0.799313, -0.587951, -0.124146,
		38.190464, 38.528957, 40.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032829, 38.312744, 40.999641>,  <38.749985, 38.940521, 40.788788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032829, 38.312744, 40.999641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722572, 38.257286, 40.753338>,  <38.536419, 38.224010, 40.605556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722572, 38.257286, 40.753338>,  <39.032829, 38.312744, 40.999641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722572, 38.257286, 40.753338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548474, -0.630823, -0.548853,
		-0.312337, -0.763440, 0.565336,
		-0.775643, -0.138645, -0.615756,
		38.489880, 38.215694, 40.568611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259258, 37.660923, 40.664978>,  <39.032829, 38.312744, 40.999641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259258, 37.660923, 40.664978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934898, 37.759987, 40.452900>,  <38.740280, 37.819424, 40.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934898, 37.759987, 40.452900>,  <39.259258, 37.660923, 40.664978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934898, 37.759987, 40.452900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358969, -0.505011, -0.784924,
		-0.462147, -0.826819, 0.320612,
		-0.810902, 0.247660, -0.530191,
		38.691628, 37.834286, 40.293842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972511, 37.111778, 40.249783>,  <39.259258, 37.660923, 40.664978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972511, 37.111778, 40.249783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825943, 37.426559, 40.051212>,  <38.738003, 37.615429, 39.932072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825943, 37.426559, 40.051212>,  <38.972511, 37.111778, 40.249783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825943, 37.426559, 40.051212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183537, -0.461920, -0.867724,
		-0.912167, -0.409067, 0.024823,
		-0.366423, 0.786953, -0.496426,
		38.716015, 37.662643, 39.902283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610207, 36.781517, 39.708183>,  <38.972511, 37.111778, 40.249783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610207, 36.781517, 39.708183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651043, 37.157787, 39.578754>,  <38.675545, 37.383549, 39.501095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651043, 37.157787, 39.578754>,  <38.610207, 36.781517, 39.708183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651043, 37.157787, 39.578754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070940, -0.331332, -0.940844,
		-0.992242, 0.073097, -0.100558,
		0.102091, 0.940678, -0.323577,
		38.681671, 37.439991, 39.481682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356503, 36.721230, 39.050823>,  <38.610207, 36.781517, 39.708183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356503, 36.721230, 39.050823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569019, 37.059761, 39.066051>,  <38.696529, 37.262882, 39.075188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569019, 37.059761, 39.066051>,  <38.356503, 36.721230, 39.050823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569019, 37.059761, 39.066051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184290, -0.071597, -0.980261,
		-0.826901, 0.527820, -0.194010,
		0.531292, 0.846333, 0.038069,
		38.728405, 37.313660, 39.077473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183731, 37.113194, 38.365376>,  <38.356503, 36.721230, 39.050823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183731, 37.113194, 38.365376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541866, 37.241165, 38.489323>,  <38.756748, 37.317947, 38.563690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541866, 37.241165, 38.489323>,  <38.183731, 37.113194, 38.365376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541866, 37.241165, 38.489323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352267, -0.082939, -0.932217,
		-0.272542, 0.943805, -0.186958,
		0.895337, 0.319927, 0.309867,
		38.810467, 37.337143, 38.582283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458279, 37.530247, 37.877182>,  <38.183731, 37.113194, 38.365376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458279, 37.530247, 37.877182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802517, 37.462688, 38.069366>,  <39.009060, 37.422153, 38.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802517, 37.462688, 38.069366>,  <38.458279, 37.530247, 37.877182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802517, 37.462688, 38.069366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490399, 0.020275, -0.871262,
		0.137414, 0.985425, 0.100277,
		0.860597, -0.168900, 0.480465,
		39.060696, 37.412018, 38.213505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958755, 37.907486, 37.560844>,  <38.458279, 37.530247, 37.877182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958755, 37.907486, 37.560844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158592, 37.625301, 37.761932>,  <39.278496, 37.455990, 37.882584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158592, 37.625301, 37.761932>,  <38.958755, 37.907486, 37.560844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158592, 37.625301, 37.761932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663540, -0.061422, -0.745616,
		0.556883, 0.706078, 0.437418,
		0.499596, -0.705465, 0.502716,
		39.308472, 37.413662, 37.912746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538403, 38.009167, 37.338436>,  <38.958755, 37.907486, 37.560844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538403, 38.009167, 37.338436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550106, 37.638111, 37.487373>,  <39.557129, 37.415478, 37.576736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550106, 37.638111, 37.487373>,  <39.538403, 38.009167, 37.338436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550106, 37.638111, 37.487373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667581, -0.259108, -0.697996,
		0.743962, 0.268989, 0.611691,
		0.029259, -0.927636, 0.372338,
		39.558884, 37.359821, 37.599075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270554, 37.858757, 37.452274>,  <39.538403, 38.009167, 37.338436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270554, 37.858757, 37.452274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078304, 37.510685, 37.408859>,  <39.962955, 37.301842, 37.382809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078304, 37.510685, 37.408859>,  <40.270554, 37.858757, 37.452274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078304, 37.510685, 37.408859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599999, -0.236050, -0.764384,
		0.639533, -0.432506, 0.635560,
		-0.480624, -0.870184, -0.108541,
		39.934116, 37.249630, 37.376297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743458, 37.419342, 37.216022>,  <40.270554, 37.858757, 37.452274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743458, 37.419342, 37.216022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414936, 37.212307, 37.120052>,  <40.217823, 37.088085, 37.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414936, 37.212307, 37.120052>,  <40.743458, 37.419342, 37.216022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414936, 37.212307, 37.120052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448144, -0.325097, -0.832753,
		0.353022, -0.791466, 0.498956,
		-0.821305, -0.517585, -0.239924,
		40.168545, 37.057030, 37.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006683, 36.794704, 37.022846>,  <40.743458, 37.419342, 37.216022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006683, 36.794704, 37.022846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644058, 36.766083, 36.856461>,  <40.426483, 36.748909, 36.756630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644058, 36.766083, 36.856461>,  <41.006683, 36.794704, 37.022846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644058, 36.766083, 36.856461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415025, -0.330413, -0.847692,
		-0.076784, -0.941121, 0.329236,
		-0.906564, -0.071552, -0.415959,
		40.372089, 36.744617, 36.731674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028271, 36.158138, 36.727871>,  <41.006683, 36.794704, 37.022846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028271, 36.158138, 36.727871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723709, 36.358471, 36.563225>,  <40.540970, 36.478672, 36.464436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723709, 36.358471, 36.563225>,  <41.028271, 36.158138, 36.727871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723709, 36.358471, 36.563225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253665, -0.354146, -0.900130,
		-0.596586, -0.789778, 0.142606,
		-0.761407, 0.500831, -0.411617,
		40.495289, 36.508720, 36.439739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682297, 35.748322, 36.218857>,  <41.028271, 36.158138, 36.727871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682297, 35.748322, 36.218857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635700, 36.128559, 36.103756>,  <40.607742, 36.356701, 36.034695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635700, 36.128559, 36.103756>,  <40.682297, 35.748322, 36.218857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635700, 36.128559, 36.103756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249207, -0.252480, -0.934960,
		-0.961419, -0.180621, -0.207484,
		-0.116488, 0.950594, -0.287752,
		40.600754, 36.413738, 36.017429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195305, 35.780762, 35.612617>,  <40.682297, 35.748322, 36.218857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195305, 35.780762, 35.612617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438385, 36.098324, 35.620693>,  <40.584232, 36.288860, 35.625538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438385, 36.098324, 35.620693>,  <40.195305, 35.780762, 35.612617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438385, 36.098324, 35.620693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352452, -0.246829, -0.902692,
		-0.711669, 0.555686, -0.429814,
		0.607704, 0.793907, 0.020192,
		40.620697, 36.336494, 35.626751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446396, 35.991718, 34.904659>,  <40.195305, 35.780762, 35.612617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446396, 35.991718, 34.904659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702053, 36.180359, 35.147667>,  <40.855450, 36.293545, 35.293472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702053, 36.180359, 35.147667>,  <40.446396, 35.991718, 34.904659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702053, 36.180359, 35.147667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765142, -0.310023, -0.564308,
		-0.077784, 0.825516, -0.558993,
		0.639146, 0.471603, 0.607522,
		40.893795, 36.321838, 35.329922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962009, 36.543091, 34.574196>,  <40.446396, 35.991718, 34.904659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962009, 36.543091, 34.574196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109581, 36.362835, 34.899357>,  <41.198124, 36.254681, 35.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109581, 36.362835, 34.899357>,  <40.962009, 36.543091, 34.574196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109581, 36.362835, 34.899357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895934, -0.060350, -0.440069,
		0.247372, 0.890662, 0.381481,
		0.368930, -0.450642, 0.812903,
		41.220261, 36.227642, 35.143227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464512, 36.929932, 34.929291>,  <40.962009, 36.543091, 34.574196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464512, 36.929932, 34.929291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512379, 36.538208, 34.994576>,  <41.541100, 36.303173, 35.033745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512379, 36.538208, 34.994576>,  <41.464512, 36.929932, 34.929291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512379, 36.538208, 34.994576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804187, -0.000792, -0.594375,
		0.582205, 0.202377, 0.787452,
		0.119664, -0.979307, 0.163211,
		41.548279, 36.244415, 35.043537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188347, 36.672703, 35.272873>,  <41.464512, 36.929932, 34.929291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188347, 36.672703, 35.272873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009346, 36.435501, 35.005116>,  <41.901943, 36.293179, 34.844463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009346, 36.435501, 35.005116>,  <42.188347, 36.672703, 35.272873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009346, 36.435501, 35.005116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799259, 0.070556, -0.596831,
		0.401154, -0.802100, 0.442391,
		-0.447505, -0.593006, -0.669390,
		41.875095, 36.257599, 34.804298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662743, 36.074570, 34.888554>,  <42.188347, 36.672703, 35.272873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662743, 36.074570, 34.888554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349873, 36.162453, 34.655338>,  <42.162151, 36.215183, 34.515411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349873, 36.162453, 34.655338>,  <42.662743, 36.074570, 34.888554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349873, 36.162453, 34.655338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620854, 0.196184, -0.758981,
		-0.052371, -0.955636, -0.289856,
		-0.782175, 0.219707, -0.583037,
		42.115219, 36.228363, 34.480427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202301, 36.148407, 35.415260>,  <42.662743, 36.074570, 34.888554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202301, 36.148407, 35.415260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533867, 36.156746, 35.638855>,  <43.732807, 36.161751, 35.773010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533867, 36.156746, 35.638855>,  <43.202301, 36.148407, 35.415260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533867, 36.156746, 35.638855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342607, 0.808860, 0.477877,
		-0.442180, -0.587632, 0.677618,
		0.828913, 0.020849, 0.558988,
		43.782539, 36.163002, 35.806553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136993, 36.146610, 36.076073>,  <43.202301, 36.148407, 35.415260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136993, 36.146610, 36.076073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484486, 36.344265, 36.062637>,  <43.692982, 36.462856, 36.054577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484486, 36.344265, 36.062637>,  <43.136993, 36.146610, 36.076073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484486, 36.344265, 36.062637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426842, 0.781365, 0.455274,
		0.251211, -0.381177, 0.889717,
		0.868734, 0.494138, -0.033585,
		43.745106, 36.492508, 36.052563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223648, 36.450329, 36.714306>,  <43.136993, 36.146610, 36.076073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223648, 36.450329, 36.714306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439465, 36.658543, 36.449596>,  <43.568954, 36.783470, 36.290771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439465, 36.658543, 36.449596>,  <43.223648, 36.450329, 36.714306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439465, 36.658543, 36.449596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410310, 0.848895, 0.333201,
		0.735217, 0.091756, 0.671593,
		0.539539, 0.520537, -0.661770,
		43.601326, 36.814705, 36.251064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610397, 36.998016, 37.143902>,  <43.223648, 36.450329, 36.714306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610397, 36.998016, 37.143902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607216, 37.135414, 36.768253>,  <43.605309, 37.217854, 36.542866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607216, 37.135414, 36.768253>,  <43.610397, 36.998016, 37.143902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607216, 37.135414, 36.768253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127428, 0.931146, 0.341657,
		0.991816, 0.122386, 0.036368,
		-0.007950, 0.343495, -0.939121,
		43.604832, 37.238464, 36.486519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018616, 37.592293, 37.225151>,  <43.610397, 36.998016, 37.143902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018616, 37.592293, 37.225151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805420, 37.619881, 36.887829>,  <43.677502, 37.636433, 36.685436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805420, 37.619881, 36.887829>,  <44.018616, 37.592293, 37.225151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805420, 37.619881, 36.887829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329639, 0.901001, 0.282022,
		0.779271, 0.428301, -0.457487,
		-0.532987, 0.068966, -0.843308,
		43.645523, 37.640572, 36.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264797, 38.120045, 37.000919>,  <44.018616, 37.592293, 37.225151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264797, 38.120045, 37.000919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898548, 38.068016, 36.848751>,  <43.678799, 38.036800, 36.757450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898548, 38.068016, 36.848751>,  <44.264797, 38.120045, 37.000919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898548, 38.068016, 36.848751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275672, 0.891872, 0.358565,
		0.292652, 0.433182, -0.852472,
		-0.915620, -0.130068, -0.380424,
		43.623863, 38.028996, 36.734623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127293, 38.714149, 36.525894>,  <44.264797, 38.120045, 37.000919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127293, 38.714149, 36.525894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779572, 38.556931, 36.645786>,  <43.570938, 38.462601, 36.717720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779572, 38.556931, 36.645786>,  <44.127293, 38.714149, 36.525894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779572, 38.556931, 36.645786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328666, 0.912537, 0.243425,
		-0.369188, 0.113099, -0.922447,
		-0.869298, -0.393046, 0.299726,
		43.518784, 38.439018, 36.735703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652027, 39.269943, 36.440681>,  <44.127293, 38.714149, 36.525894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652027, 39.269943, 36.440681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388157, 39.038109, 36.632061>,  <43.229836, 38.899010, 36.746887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388157, 39.038109, 36.632061>,  <43.652027, 39.269943, 36.440681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388157, 39.038109, 36.632061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416988, 0.811897, 0.408588,
		-0.625263, 0.070026, -0.777266,
		-0.659672, -0.579585, 0.478449,
		43.190254, 38.864235, 36.775597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044918, 39.627647, 36.405342>,  <43.652027, 39.269943, 36.440681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044918, 39.627647, 36.405342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016846, 39.384499, 36.721710>,  <43.000004, 39.238609, 36.911533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016846, 39.384499, 36.721710>,  <43.044918, 39.627647, 36.405342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016846, 39.384499, 36.721710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226451, 0.781888, 0.580837,
		-0.971491, -0.138344, -0.192526,
		-0.070178, -0.607876, 0.790925,
		42.995792, 39.202137, 36.958988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414070, 39.822800, 36.769623>,  <43.044918, 39.627647, 36.405342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414070, 39.822800, 36.769623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553185, 39.581593, 37.056789>,  <42.636654, 39.436867, 37.229092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553185, 39.581593, 37.056789>,  <42.414070, 39.822800, 36.769623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553185, 39.581593, 37.056789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409876, 0.590887, 0.694877,
		-0.843235, -0.535929, -0.041659,
		0.347789, -0.603020, 0.717921,
		42.657520, 39.400688, 37.272167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843575, 39.669563, 37.217640>,  <42.414070, 39.822800, 36.769623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843575, 39.669563, 37.217640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166420, 39.583168, 37.437431>,  <42.360126, 39.531330, 37.569305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166420, 39.583168, 37.437431>,  <41.843575, 39.669563, 37.217640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166420, 39.583168, 37.437431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368371, 0.543076, 0.754567,
		-0.461386, -0.811429, 0.358757,
		0.807109, -0.215991, 0.549474,
		42.408554, 39.518372, 37.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572968, 39.353161, 37.903923>,  <41.843575, 39.669563, 37.217640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572968, 39.353161, 37.903923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926506, 39.539265, 37.923271>,  <42.138630, 39.650928, 37.934879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926506, 39.539265, 37.923271>,  <41.572968, 39.353161, 37.903923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926506, 39.539265, 37.923271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355295, 0.600478, 0.716374,
		0.304258, -0.650352, 0.696038,
		0.883851, 0.465261, 0.048366,
		42.191662, 39.678844, 37.937782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612415, 39.608517, 38.537388>,  <41.572968, 39.353161, 37.903923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612415, 39.608517, 38.537388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923645, 39.809246, 38.386246>,  <42.110382, 39.929684, 38.295563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923645, 39.809246, 38.386246>,  <41.612415, 39.608517, 38.537388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923645, 39.809246, 38.386246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133105, 0.719559, 0.681556,
		0.613908, -0.480008, 0.626666,
		0.778075, 0.501825, -0.377851,
		42.157066, 39.959793, 38.272892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910103, 39.745750, 39.124725>,  <41.612415, 39.608517, 38.537388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910103, 39.745750, 39.124725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006294, 40.004795, 38.835514>,  <42.064011, 40.160221, 38.661987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006294, 40.004795, 38.835514>,  <41.910103, 39.745750, 39.124725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006294, 40.004795, 38.835514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094278, 0.756952, 0.646634,
		0.966065, -0.087337, 0.243087,
		0.240481, 0.647608, -0.723030,
		42.078438, 40.199078, 38.618607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265251, 40.254353, 39.438644>,  <41.910103, 39.745750, 39.124725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265251, 40.254353, 39.438644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180733, 40.461452, 39.107033>,  <42.130020, 40.585712, 38.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180733, 40.461452, 39.107033>,  <42.265251, 40.254353, 39.438644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180733, 40.461452, 39.107033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048098, 0.852659, 0.520250,
		0.976238, 0.070052, -0.205067,
		-0.211296, 0.517751, -0.829028,
		42.117344, 40.616779, 38.858326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784763, 40.830223, 39.283066>,  <42.265251, 40.254353, 39.438644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784763, 40.830223, 39.283066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446762, 40.942650, 39.101093>,  <42.243961, 41.010105, 38.991909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446762, 40.942650, 39.101093>,  <42.784763, 40.830223, 39.283066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446762, 40.942650, 39.101093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085616, 0.910862, 0.403733,
		0.527857, 0.302208, -0.793749,
		-0.845007, 0.281071, -0.454931,
		42.193260, 41.026970, 38.964615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899632, 41.628059, 39.271679>,  <42.784763, 40.830223, 39.283066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899632, 41.628059, 39.271679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516178, 41.522011, 39.230251>,  <42.286106, 41.458382, 39.205395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516178, 41.522011, 39.230251>,  <42.899632, 41.628059, 39.271679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516178, 41.522011, 39.230251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281215, 0.825975, 0.488552,
		-0.043983, 0.497469, -0.866366,
		-0.958636, -0.265124, -0.103567,
		42.228588, 41.442474, 39.199181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583130, 42.264317, 39.094349>,  <42.899632, 41.628059, 39.271679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583130, 42.264317, 39.094349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286980, 42.028610, 39.223721>,  <42.109291, 41.887188, 39.301346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286980, 42.028610, 39.223721>,  <42.583130, 42.264317, 39.094349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286980, 42.028610, 39.223721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409825, 0.777097, 0.477665,
		-0.532810, 0.221102, -0.816840,
		-0.740376, -0.589266, 0.323432,
		42.064865, 41.851830, 39.320751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068024, 42.684563, 39.219311>,  <42.583130, 42.264317, 39.094349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068024, 42.684563, 39.219311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917198, 42.373260, 39.420162>,  <41.826702, 42.186478, 39.540672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917198, 42.373260, 39.420162>,  <42.068024, 42.684563, 39.219311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917198, 42.373260, 39.420162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314344, 0.617503, 0.721025,
		-0.871213, 0.114028, -0.477477,
		-0.377061, -0.778259, 0.502133,
		41.804081, 42.139782, 39.570801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478569, 42.970543, 39.609901>,  <42.068024, 42.684563, 39.219311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478569, 42.970543, 39.609901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551849, 42.622433, 39.792793>,  <41.595818, 42.413567, 39.902527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551849, 42.622433, 39.792793>,  <41.478569, 42.970543, 39.609901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551849, 42.622433, 39.792793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135604, 0.438282, 0.888550,
		-0.973679, -0.224782, -0.037721,
		0.183198, -0.870277, 0.457227,
		41.606808, 42.361351, 39.929962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915581, 42.910408, 40.102398>,  <41.478569, 42.970543, 39.609901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915581, 42.910408, 40.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236767, 42.706276, 40.225563>,  <41.429478, 42.583797, 40.299461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236767, 42.706276, 40.225563>,  <40.915581, 42.910408, 40.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236767, 42.706276, 40.225563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124848, 0.361134, 0.924118,
		-0.582800, -0.780479, 0.226266,
		0.802967, -0.510328, 0.307910,
		41.477657, 42.553177, 40.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837856, 42.646820, 40.794415>,  <40.915581, 42.910408, 40.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837856, 42.646820, 40.794415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234596, 42.672455, 40.750381>,  <41.472641, 42.687836, 40.723961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234596, 42.672455, 40.750381>,  <40.837856, 42.646820, 40.794415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234596, 42.672455, 40.750381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084255, 0.318073, 0.944315,
		0.095533, -0.945898, 0.310082,
		0.991854, 0.064087, -0.110083,
		41.532154, 42.691681, 40.717358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167297, 42.480507, 41.471306>,  <40.837856, 42.646820, 40.794415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167297, 42.480507, 41.471306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455593, 42.689777, 41.289394>,  <41.628571, 42.815338, 41.180248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455593, 42.689777, 41.289394>,  <41.167297, 42.480507, 41.471306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455593, 42.689777, 41.289394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139269, 0.533394, 0.834323,
		0.679073, -0.664666, 0.311576,
		0.720739, 0.523173, -0.454780,
		41.671814, 42.846729, 41.152962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702724, 42.474358, 41.947426>,  <41.167297, 42.480507, 41.471306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702724, 42.474358, 41.947426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723053, 42.783779, 41.694748>,  <41.735249, 42.969433, 41.543140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723053, 42.783779, 41.694748>,  <41.702724, 42.474358, 41.947426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723053, 42.783779, 41.694748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152359, 0.619102, 0.770389,
		0.987018, -0.135393, -0.086396,
		0.050817, 0.773551, -0.631693,
		41.738297, 43.015846, 41.505241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738941, 42.733978, 42.627079>,  <41.702724, 42.474358, 41.947426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738941, 42.733978, 42.627079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796806, 42.339466, 42.658905>,  <41.831524, 42.102760, 42.678001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.796806, 42.339466, 42.658905>,  <41.738941, 42.733978, 42.627079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796806, 42.339466, 42.658905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308093, 0.121307, 0.943591,
		-0.940293, -0.111989, 0.321414,
		0.144661, -0.986278, 0.079561,
		41.840206, 42.043583, 42.682774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949371, 42.726177, 43.311550>,  <41.738941, 42.733978, 42.627079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949371, 42.726177, 43.311550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959057, 42.346397, 43.186359>,  <41.964870, 42.118530, 43.111244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959057, 42.346397, 43.186359>,  <41.949371, 42.726177, 43.311550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959057, 42.346397, 43.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412597, -0.275667, 0.868200,
		-0.910592, -0.150157, 0.385065,
		0.024216, -0.949453, -0.312975,
		41.966320, 42.061562, 43.092468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557262, 42.348129, 43.837898>,  <41.949371, 42.726177, 43.311550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557262, 42.348129, 43.837898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841553, 42.173931, 43.616913>,  <42.012127, 42.069412, 43.484322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841553, 42.173931, 43.616913>,  <41.557262, 42.348129, 43.837898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841553, 42.173931, 43.616913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446209, -0.328055, 0.832633,
		-0.543849, -0.838284, -0.038832,
		0.710722, -0.435499, -0.552462,
		42.054768, 42.043282, 43.451176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773705, 41.668922, 44.149109>,  <41.557262, 42.348129, 43.837898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773705, 41.668922, 44.149109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070896, 41.851631, 43.953419>,  <42.249210, 41.961258, 43.836006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070896, 41.851631, 43.953419>,  <41.773705, 41.668922, 44.149109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070896, 41.851631, 43.953419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653930, -0.339596, 0.676055,
		0.142666, -0.822213, -0.551011,
		0.742982, 0.456772, -0.489221,
		42.293789, 41.988663, 43.806652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340736, 41.235672, 43.916431>,  <41.773705, 41.668922, 44.149109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340736, 41.235672, 43.916431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495544, 41.599422, 43.977432>,  <42.588428, 41.817673, 44.014034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495544, 41.599422, 43.977432>,  <42.340736, 41.235672, 43.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495544, 41.599422, 43.977432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763312, -0.408756, 0.500273,
		0.517270, -0.077210, -0.852332,
		0.387022, 0.909372, 0.152502,
		42.611652, 41.872234, 44.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940720, 41.358425, 43.491947>,  <42.340736, 41.235672, 43.916431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940720, 41.358425, 43.491947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920544, 41.534630, 43.850479>,  <42.908440, 41.640354, 44.065598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920544, 41.534630, 43.850479>,  <42.940720, 41.358425, 43.491947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920544, 41.534630, 43.850479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638360, -0.675991, 0.368148,
		0.768084, 0.590750, -0.247107,
		-0.050441, 0.440512, 0.896329,
		42.905411, 41.666782, 44.119377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727093, 40.633038, 43.329277>,  <42.940720, 41.358425, 43.491947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727093, 40.633038, 43.329277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387886, 40.620663, 43.117649>,  <42.184364, 40.613239, 42.990673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387886, 40.620663, 43.117649>,  <42.727093, 40.633038, 43.329277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387886, 40.620663, 43.117649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416127, -0.657072, -0.628566,
		-0.328191, -0.753193, 0.570080,
		-0.848015, -0.030936, -0.529069,
		42.133480, 40.611382, 42.958927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507191, 39.876675, 43.193352>,  <42.727093, 40.633038, 43.329277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507191, 39.876675, 43.193352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343822, 40.108463, 42.911243>,  <42.245804, 40.247536, 42.741978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343822, 40.108463, 42.911243>,  <42.507191, 39.876675, 43.193352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343822, 40.108463, 42.911243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391378, -0.586852, -0.708822,
		-0.824632, -0.565522, 0.012886,
		-0.408417, 0.579474, -0.705270,
		42.221298, 40.282307, 42.699661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313587, 39.438164, 42.674717>,  <42.507191, 39.876675, 43.193352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313587, 39.438164, 42.674717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376080, 39.796871, 42.509117>,  <42.413574, 40.012096, 42.409756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376080, 39.796871, 42.509117>,  <42.313587, 39.438164, 42.674717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376080, 39.796871, 42.509117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422942, -0.439513, -0.792432,
		-0.892587, -0.051296, -0.447947,
		0.156230, 0.896770, -0.413999,
		42.422947, 40.065903, 42.384918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976540, 39.361225, 42.059441>,  <42.313587, 39.438164, 42.674717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976540, 39.361225, 42.059441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230221, 39.668720, 42.026413>,  <42.382431, 39.853218, 42.006596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230221, 39.668720, 42.026413>,  <41.976540, 39.361225, 42.059441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230221, 39.668720, 42.026413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404295, -0.420765, -0.812098,
		-0.659035, 0.481657, -0.577650,
		0.634207, 0.768742, -0.082567,
		42.420483, 39.899342, 42.001644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931370, 39.699223, 41.369602>,  <41.976540, 39.361225, 42.059441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931370, 39.699223, 41.369602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290966, 39.799477, 41.513271>,  <42.506721, 39.859627, 41.599472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290966, 39.799477, 41.513271>,  <41.931370, 39.699223, 41.369602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290966, 39.799477, 41.513271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425884, -0.308875, -0.850423,
		-0.102202, 0.917486, -0.384414,
		0.898987, 0.250631, 0.359175,
		42.560661, 39.874664, 41.621025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328197, 40.038582, 40.798061>,  <41.931370, 39.699223, 41.369602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328197, 40.038582, 40.798061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612438, 39.922947, 41.054646>,  <42.782982, 39.853565, 41.208595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612438, 39.922947, 41.054646>,  <42.328197, 40.038582, 40.798061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612438, 39.922947, 41.054646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601427, -0.223565, -0.767009,
		0.365139, 0.930832, 0.014997,
		0.710605, -0.289084, 0.641460,
		42.825619, 39.836220, 41.247086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985718, 40.403370, 40.582970>,  <42.328197, 40.038582, 40.798061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985718, 40.403370, 40.582970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087059, 40.080334, 40.795990>,  <43.147861, 39.886513, 40.923801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087059, 40.080334, 40.795990>,  <42.985718, 40.403370, 40.582970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087059, 40.080334, 40.795990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646682, -0.268037, -0.714114,
		0.719455, 0.525311, 0.454348,
		0.253350, -0.807591, 0.532550,
		43.163063, 39.838055, 40.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718700, 40.337738, 40.518970>,  <42.985718, 40.403370, 40.582970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718700, 40.337738, 40.518970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583164, 39.976257, 40.623669>,  <43.501842, 39.759369, 40.686485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583164, 39.976257, 40.623669>,  <43.718700, 40.337738, 40.518970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583164, 39.976257, 40.623669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565341, -0.417941, -0.711136,
		0.752049, -0.092987, 0.652515,
		-0.338840, -0.903703, 0.261743,
		43.481514, 39.705147, 40.702190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318741, 39.928562, 40.383347>,  <43.718700, 40.337738, 40.518970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318741, 39.928562, 40.383347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036591, 39.652771, 40.449150>,  <43.867298, 39.487297, 40.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036591, 39.652771, 40.449150>,  <44.318741, 39.928562, 40.383347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036591, 39.652771, 40.449150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440362, -0.608114, -0.660514,
		0.555447, -0.393472, 0.732571,
		-0.705380, -0.689476, 0.164505,
		43.824978, 39.445927, 40.498501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744423, 39.368790, 40.476910>,  <44.318741, 39.928562, 40.383347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744423, 39.368790, 40.476910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385693, 39.222183, 40.377815>,  <44.170456, 39.134220, 40.318359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385693, 39.222183, 40.377815>,  <44.744423, 39.368790, 40.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385693, 39.222183, 40.377815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423109, -0.547121, -0.722244,
		0.129169, -0.752547, 0.645747,
		-0.896824, -0.366513, -0.247738,
		44.116646, 39.112228, 40.303493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940033, 38.804428, 40.417152>,  <44.744423, 39.368790, 40.476910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940033, 38.804428, 40.417152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589146, 38.804165, 40.225113>,  <44.378613, 38.804008, 40.109890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589146, 38.804165, 40.225113>,  <44.940033, 38.804428, 40.417152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589146, 38.804165, 40.225113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328233, -0.730601, -0.598737,
		-0.350363, -0.682805, 0.641111,
		-0.877216, -0.000659, -0.480095,
		44.325981, 38.803967, 40.081085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693680, 38.064362, 40.468826>,  <44.940033, 38.804428, 40.417152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693680, 38.064362, 40.468826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535633, 38.251961, 40.152870>,  <44.440804, 38.364521, 39.963299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535633, 38.251961, 40.152870>,  <44.693680, 38.064362, 40.468826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535633, 38.251961, 40.152870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396004, -0.688896, -0.607127,
		-0.828891, -0.552687, 0.086473,
		-0.395122, 0.468998, -0.789886,
		44.417095, 38.392662, 39.915905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489204, 37.552734, 40.069439>,  <44.693680, 38.064362, 40.468826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489204, 37.552734, 40.069439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491959, 37.838146, 39.789204>,  <44.493610, 38.009396, 39.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491959, 37.838146, 39.789204>,  <44.489204, 37.552734, 40.069439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491959, 37.838146, 39.789204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356813, -0.656238, -0.664858,
		-0.934150, -0.245400, -0.259117,
		0.006887, 0.713533, -0.700587,
		44.494026, 38.052208, 39.579029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131218, 37.155209, 39.577187>,  <44.489204, 37.552734, 40.069439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131218, 37.155209, 39.577187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332989, 37.468979, 39.432838>,  <44.454052, 37.657242, 39.346230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332989, 37.468979, 39.432838>,  <44.131218, 37.155209, 39.577187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332989, 37.468979, 39.432838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466403, -0.599253, -0.650664,
		-0.726650, 0.159904, -0.668140,
		0.504429, 0.784427, -0.360867,
		44.484318, 37.704308, 39.324577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899029, 37.133568, 38.929756>,  <44.131218, 37.155209, 39.577187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899029, 37.133568, 38.929756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233433, 37.352737, 38.941551>,  <44.434074, 37.484238, 38.948627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233433, 37.352737, 38.941551>,  <43.899029, 37.133568, 38.929756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233433, 37.352737, 38.941551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436078, -0.630821, -0.641795,
		-0.333053, 0.549405, -0.766309,
		0.836009, 0.547922, 0.029486,
		44.484234, 37.517113, 38.950397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154518, 37.218204, 38.314579>,  <43.899029, 37.133568, 38.929756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154518, 37.218204, 38.314579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496319, 37.294060, 38.508022>,  <44.701397, 37.339573, 38.624088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496319, 37.294060, 38.508022>,  <44.154518, 37.218204, 38.314579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496319, 37.294060, 38.508022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510730, -0.476626, -0.715529,
		0.094810, 0.858409, -0.504128,
		0.854498, 0.189634, 0.483604,
		44.752666, 37.350948, 38.653103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606556, 37.325935, 37.853069>,  <44.154518, 37.218204, 38.314579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606556, 37.325935, 37.853069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872734, 37.302128, 38.150696>,  <45.032440, 37.287842, 38.329273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872734, 37.302128, 38.150696>,  <44.606556, 37.325935, 37.853069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872734, 37.302128, 38.150696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654124, -0.433694, -0.619702,
		0.359585, 0.899092, -0.249665,
		0.665448, -0.059523, 0.744067,
		45.072369, 37.284271, 38.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236530, 37.678120, 37.634533>,  <44.606556, 37.325935, 37.853069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236530, 37.678120, 37.634533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316658, 37.400238, 37.910866>,  <45.364735, 37.233509, 38.076668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316658, 37.400238, 37.910866>,  <45.236530, 37.678120, 37.634533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316658, 37.400238, 37.910866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630348, -0.448415, -0.633707,
		0.750022, 0.562410, 0.348082,
		0.200318, -0.694708, 0.690836,
		45.376755, 37.191826, 38.118118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978924, 37.568546, 37.574974>,  <45.236530, 37.678120, 37.634533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978924, 37.568546, 37.574974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860062, 37.243511, 37.775532>,  <45.788746, 37.048489, 37.895866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860062, 37.243511, 37.775532>,  <45.978924, 37.568546, 37.574974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860062, 37.243511, 37.775532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655892, -0.555332, -0.511285,
		0.693906, 0.176932, 0.697990,
		-0.297153, -0.812590, 0.501396,
		45.770916, 36.999733, 37.925949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576450, 37.215733, 37.790524>,  <45.978924, 37.568546, 37.574974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576450, 37.215733, 37.790524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277725, 36.950493, 37.770260>,  <46.098488, 36.791351, 37.758102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277725, 36.950493, 37.770260>,  <46.576450, 37.215733, 37.790524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277725, 36.950493, 37.770260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542961, -0.563975, -0.622194,
		0.384001, -0.492174, 0.781222,
		-0.746817, -0.663097, -0.050664,
		46.053680, 36.751564, 37.755062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844852, 36.516518, 37.953152>,  <46.576450, 37.215733, 37.790524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844852, 36.516518, 37.953152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518177, 36.455360, 37.730572>,  <46.322170, 36.418667, 37.597023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518177, 36.455360, 37.730572>,  <46.844852, 36.516518, 37.953152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518177, 36.455360, 37.730572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522026, -0.606750, -0.599452,
		-0.245972, -0.780050, 0.575344,
		-0.816692, -0.152896, -0.556450,
		46.273170, 36.409492, 37.563637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930984, 35.843334, 37.544186>,  <46.844852, 36.516518, 37.953152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930984, 35.843334, 37.544186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.625187, 35.998554, 37.338287>,  <46.441708, 36.091686, 37.214748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.625187, 35.998554, 37.338287>,  <46.930984, 35.843334, 37.544186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.625187, 35.998554, 37.338287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233458, -0.577643, -0.782193,
		-0.600888, -0.718146, 0.351000,
		-0.764481, 0.388066, -0.514756,
		46.395840, 36.114971, 37.183861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730885, 35.303345, 37.180172>,  <46.930984, 35.843334, 37.544186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730885, 35.303345, 37.180172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618111, 35.640976, 36.997723>,  <46.550446, 35.843555, 36.888252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618111, 35.640976, 36.997723>,  <46.730885, 35.303345, 37.180172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618111, 35.640976, 36.997723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400353, -0.328544, -0.855439,
		-0.871913, -0.423786, -0.245301,
		-0.281931, 0.844076, -0.456125,
		46.533531, 35.894199, 36.860886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338543, 35.108509, 36.537193>,  <46.730885, 35.303345, 37.180172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338543, 35.108509, 36.537193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499218, 35.472641, 36.497295>,  <46.595623, 35.691120, 36.473358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499218, 35.472641, 36.497295>,  <46.338543, 35.108509, 36.537193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499218, 35.472641, 36.497295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387869, -0.267782, -0.881958,
		-0.829582, 0.315583, -0.460653,
		0.401686, 0.910330, -0.099742,
		46.619724, 35.745739, 36.467373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813297, 34.679249, 36.118042>,  <46.338543, 35.108509, 36.537193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813297, 34.679249, 36.118042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887978, 34.389805, 35.852253>,  <46.932785, 34.216137, 35.692780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887978, 34.389805, 35.852253>,  <46.813297, 34.679249, 36.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887978, 34.389805, 35.852253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500432, 0.511990, -0.698165,
		0.845405, 0.462874, -0.266528,
		0.186703, -0.723611, -0.664476,
		46.943989, 34.172722, 35.652908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198902, 34.775982, 35.481541>,  <46.813297, 34.679249, 36.118042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198902, 34.775982, 35.481541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895367, 34.525867, 35.408688>,  <46.713245, 34.375797, 35.364975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895367, 34.525867, 35.408688>,  <47.198902, 34.775982, 35.481541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895367, 34.525867, 35.408688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475272, 0.722877, -0.501563,
		0.445283, -0.294043, -0.845731,
		-0.758841, -0.625290, -0.182135,
		46.667713, 34.338280, 35.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262924, 35.413841, 35.017746>,  <47.198902, 34.775982, 35.481541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262924, 35.413841, 35.017746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428028, 35.076931, 34.879066>,  <47.527092, 34.874783, 34.795860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.428028, 35.076931, 34.879066>,  <47.262924, 35.413841, 35.017746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.428028, 35.076931, 34.879066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182830, 0.296272, -0.937441,
		0.892302, 0.450323, -0.031705,
		0.412758, -0.842278, -0.346697,
		47.551857, 34.824249, 34.775059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.500530, 41.486069, 40.153496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219719, 41.204346, 40.195652>,  <32.051231, 41.035313, 40.220947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219719, 41.204346, 40.195652>,  <32.500530, 41.486069, 40.153496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219719, 41.204346, 40.195652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491064, -0.585941, -0.644616,
		0.515760, -0.400785, 0.757208,
		-0.702031, -0.704305, 0.105394,
		32.009109, 40.993053, 40.227272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905846, 40.801327, 40.164444>,  <32.500530, 41.486069, 40.153496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905846, 40.801327, 40.164444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.540466, 40.655174, 40.092758>,  <32.321239, 40.567482, 40.049747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.540466, 40.655174, 40.092758>,  <32.905846, 40.801327, 40.164444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540466, 40.655174, 40.092758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406956, -0.817291, -0.407949,
		0.002587, -0.445571, 0.895243,
		-0.913444, -0.365380, -0.179213,
		32.266434, 40.545559, 40.038994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861259, 40.025742, 40.369141>,  <32.905846, 40.801327, 40.164444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861259, 40.025742, 40.369141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.592621, 40.109459, 40.084846>,  <32.431438, 40.159691, 39.914268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.592621, 40.109459, 40.084846>,  <32.861259, 40.025742, 40.369141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592621, 40.109459, 40.084846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443862, -0.654431, -0.612133,
		-0.593244, -0.726579, 0.346619,
		-0.671601, 0.209293, -0.710738,
		32.391140, 40.172249, 39.871624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813828, 39.412987, 39.920177>,  <32.861259, 40.025742, 40.369141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813828, 39.412987, 39.920177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629650, 39.683884, 39.690628>,  <32.519142, 39.846424, 39.552898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629650, 39.683884, 39.690628>,  <32.813828, 39.412987, 39.920177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629650, 39.683884, 39.690628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219459, -0.539563, -0.812840,
		-0.860133, -0.500209, 0.099812,
		-0.460445, 0.677246, -0.573871,
		32.491516, 39.887058, 39.518467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400711, 39.134789, 39.504124>,  <32.813828, 39.412987, 39.920177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400711, 39.134789, 39.504124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.427780, 39.478855, 39.301922>,  <32.444019, 39.685295, 39.180599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.427780, 39.478855, 39.301922>,  <32.400711, 39.134789, 39.504124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427780, 39.478855, 39.301922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089352, -0.509860, -0.855605,
		-0.993699, 0.012731, -0.111360,
		0.067671, 0.860164, -0.505509,
		32.448082, 39.736904, 39.150269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077862, 38.973267, 38.936348>,  <32.400711, 39.134789, 39.504124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077862, 38.973267, 38.936348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.258339, 39.315926, 38.836285>,  <32.366627, 39.521523, 38.776245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.258339, 39.315926, 38.836285>,  <32.077862, 38.973267, 38.936348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258339, 39.315926, 38.836285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279241, -0.401755, -0.872134,
		-0.847613, 0.323647, -0.420481,
		0.451194, 0.856648, -0.250157,
		32.393696, 39.572922, 38.761238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900806, 39.142220, 38.234482>,  <32.077862, 38.973267, 38.936348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900806, 39.142220, 38.234482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.227295, 39.361698, 38.306820>,  <32.423187, 39.493385, 38.350224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.227295, 39.361698, 38.306820>,  <31.900806, 39.142220, 38.234482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227295, 39.361698, 38.306820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293630, -0.124402, -0.947790,
		-0.497555, 0.826711, -0.262655,
		0.816223, 0.548701, 0.180850,
		32.472160, 39.526310, 38.361076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926647, 39.601860, 37.622761>,  <31.900806, 39.142220, 38.234482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926647, 39.601860, 37.622761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.295265, 39.551712, 37.769749>,  <32.516438, 39.521622, 37.857941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.295265, 39.551712, 37.769749>,  <31.926647, 39.601860, 37.622761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295265, 39.551712, 37.769749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320502, -0.288578, -0.902220,
		0.219159, 0.949212, -0.225755,
		0.921547, -0.125374, 0.367469,
		32.571728, 39.514099, 37.879990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428242, 39.898060, 37.121235>,  <31.926647, 39.601860, 37.622761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428242, 39.898060, 37.121235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639843, 39.632122, 37.332191>,  <32.766804, 39.472561, 37.458763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639843, 39.632122, 37.332191>,  <32.428242, 39.898060, 37.121235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639843, 39.632122, 37.332191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435189, -0.320991, -0.841175,
		0.728534, 0.674502, 0.119524,
		0.529008, -0.664840, 0.527388,
		32.798546, 39.432671, 37.490410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934273, 39.637558, 36.680977>,  <32.428242, 39.898060, 37.121235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934273, 39.637558, 36.680977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.061878, 39.403194, 36.978954>,  <33.138443, 39.262577, 37.157742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.061878, 39.403194, 36.978954>,  <32.934273, 39.637558, 36.680977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061878, 39.403194, 36.978954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655565, -0.431228, -0.619901,
		0.684445, 0.686117, 0.246532,
		0.319014, -0.585906, 0.744946,
		33.157581, 39.227421, 37.202438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651363, 39.736591, 36.628605>,  <32.934273, 39.637558, 36.680977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651363, 39.736591, 36.628605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548965, 39.382084, 36.783005>,  <33.487526, 39.169380, 36.875645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548965, 39.382084, 36.783005>,  <33.651363, 39.736591, 36.628605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548965, 39.382084, 36.783005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778841, -0.425622, -0.460708,
		0.572601, 0.182693, 0.799219,
		-0.255997, -0.886267, 0.386000,
		33.472168, 39.116203, 36.898804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233566, 39.484741, 36.965797>,  <33.651363, 39.736591, 36.628605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233566, 39.484741, 36.965797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.025581, 39.149097, 36.901882>,  <33.900791, 38.947712, 36.863533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.025581, 39.149097, 36.901882>,  <34.233566, 39.484741, 36.965797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025581, 39.149097, 36.901882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784417, -0.395016, -0.478176,
		0.338124, -0.373974, 0.863606,
		-0.519963, -0.839110, -0.159787,
		33.869591, 38.897366, 36.853947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734146, 38.939243, 37.084316>,  <34.233566, 39.484741, 36.965797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734146, 38.939243, 37.084316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438129, 38.789925, 36.860535>,  <34.260521, 38.700333, 36.726265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438129, 38.789925, 36.860535>,  <34.734146, 38.939243, 37.084316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438129, 38.789925, 36.860535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670800, -0.469850, -0.573819,
		-0.048652, -0.799930, 0.598118,
		-0.740041, -0.373300, -0.559452,
		34.216118, 38.677937, 36.692699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865265, 38.255733, 37.076260>,  <34.734146, 38.939243, 37.084316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865265, 38.255733, 37.076260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629265, 38.310986, 36.758060>,  <34.487667, 38.344139, 36.567139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629265, 38.310986, 36.758060>,  <34.865265, 38.255733, 37.076260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629265, 38.310986, 36.758060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648336, -0.506157, -0.568741,
		-0.481212, -0.851307, 0.209073,
		-0.589997, 0.138135, -0.795501,
		34.452267, 38.352425, 36.519409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695175, 37.566711, 36.833843>,  <34.865265, 38.255733, 37.076260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695175, 37.566711, 36.833843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.639381, 37.835129, 36.542572>,  <34.605907, 37.996178, 36.367809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.639381, 37.835129, 36.542572>,  <34.695175, 37.566711, 36.833843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639381, 37.835129, 36.542572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542572, -0.563365, -0.623086,
		-0.828348, -0.482000, -0.285509,
		-0.139482, 0.671041, -0.728182,
		34.597538, 38.036442, 36.324116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715965, 37.131424, 36.210838>,  <34.695175, 37.566711, 36.833843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715965, 37.131424, 36.210838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776085, 37.502529, 36.074215>,  <34.812157, 37.725193, 35.992241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776085, 37.502529, 36.074215>,  <34.715965, 37.131424, 36.210838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776085, 37.502529, 36.074215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592261, -0.361121, -0.720290,
		-0.791604, -0.094032, -0.603756,
		0.150299, 0.927766, -0.341556,
		34.821175, 37.780857, 35.971748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642208, 37.014790, 35.486332>,  <34.715965, 37.131424, 36.210838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642208, 37.014790, 35.486332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825184, 37.369774, 35.508854>,  <34.934967, 37.582764, 35.522366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.825184, 37.369774, 35.508854>,  <34.642208, 37.014790, 35.486332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825184, 37.369774, 35.508854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642028, -0.285797, -0.711421,
		-0.615267, 0.361575, -0.700507,
		0.457435, 0.887459, 0.056301,
		34.962414, 37.636013, 35.525745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641277, 37.228790, 34.804066>,  <34.642208, 37.014790, 35.486332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641277, 37.228790, 34.804066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927986, 37.434883, 34.992012>,  <35.100010, 37.558540, 35.104778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927986, 37.434883, 34.992012>,  <34.641277, 37.228790, 34.804066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927986, 37.434883, 34.992012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643687, -0.229774, -0.729980,
		-0.268149, 0.825674, -0.496345,
		0.716772, 0.515235, 0.469862,
		35.143017, 37.589455, 35.132969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877247, 37.578384, 34.282772>,  <34.641277, 37.228790, 34.804066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877247, 37.578384, 34.282772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146954, 37.566418, 34.577927>,  <35.308777, 37.559238, 34.755020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146954, 37.566418, 34.577927>,  <34.877247, 37.578384, 34.282772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146954, 37.566418, 34.577927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713330, -0.232202, -0.661244,
		0.191118, 0.972208, -0.135227,
		0.674266, -0.029914, 0.737882,
		35.349232, 37.557442, 34.799290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521202, 38.006271, 34.049145>,  <34.877247, 37.578384, 34.282772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521202, 38.006271, 34.049145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621826, 37.736557, 34.326866>,  <35.682201, 37.574726, 34.493500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621826, 37.736557, 34.326866>,  <35.521202, 38.006271, 34.049145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621826, 37.736557, 34.326866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670963, -0.395501, -0.627207,
		0.697515, 0.623630, 0.352930,
		0.251561, -0.674288, 0.694300,
		35.697296, 37.534271, 34.535156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292603, 37.988766, 33.997902>,  <35.521202, 38.006271, 34.049145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292603, 37.988766, 33.997902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196201, 37.650768, 34.188862>,  <36.138363, 37.447971, 34.303436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196201, 37.650768, 34.188862>,  <36.292603, 37.988766, 33.997902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196201, 37.650768, 34.188862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715882, -0.486907, -0.500434,
		0.655311, 0.221156, 0.722258,
		-0.240999, -0.844992, 0.477398,
		36.123901, 37.397270, 34.332081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842091, 37.561741, 34.441074>,  <36.292603, 37.988766, 33.997902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842091, 37.561741, 34.441074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556992, 37.348095, 34.259209>,  <36.385933, 37.219910, 34.150089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.556992, 37.348095, 34.259209>,  <36.842091, 37.561741, 34.441074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556992, 37.348095, 34.259209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698938, -0.486296, -0.524406,
		0.058990, -0.691550, 0.719916,
		-0.712745, -0.534112, -0.454664,
		36.343166, 37.187862, 34.122810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167564, 38.239704, 34.272877>,  <36.842091, 37.561741, 34.441074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167564, 38.239704, 34.272877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526154, 38.407433, 34.330170>,  <37.741306, 38.508068, 34.364548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.526154, 38.407433, 34.330170>,  <37.167564, 38.239704, 34.272877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526154, 38.407433, 34.330170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384216, 0.574565, 0.722671,
		0.220731, -0.702885, 0.676188,
		0.896469, 0.419318, 0.143235,
		37.795094, 38.533230, 34.373138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235558, 38.190544, 35.037361>,  <37.167564, 38.239704, 34.272877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235558, 38.190544, 35.037361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492085, 38.451332, 34.875549>,  <37.646000, 38.607807, 34.778461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492085, 38.451332, 34.875549>,  <37.235558, 38.190544, 35.037361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492085, 38.451332, 34.875549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392770, 0.731867, 0.556868,
		0.659124, -0.198242, 0.725435,
		0.641316, 0.651974, -0.404527,
		37.684479, 38.646923, 34.754192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470276, 38.526073, 35.598164>,  <37.235558, 38.190544, 35.037361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470276, 38.526073, 35.598164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555695, 38.802708, 35.322163>,  <37.606945, 38.968689, 35.156563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555695, 38.802708, 35.322163>,  <37.470276, 38.526073, 35.598164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555695, 38.802708, 35.322163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590410, 0.654080, 0.472859,
		0.778340, 0.306405, 0.547999,
		0.213549, 0.691589, -0.690001,
		37.619759, 39.010185, 35.115162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722603, 39.112286, 35.937454>,  <37.470276, 38.526073, 35.598164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722603, 39.112286, 35.937454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620930, 39.285252, 35.591412>,  <37.559925, 39.389030, 35.383785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620930, 39.285252, 35.591412>,  <37.722603, 39.112286, 35.937454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620930, 39.285252, 35.591412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317859, 0.807446, 0.496988,
		0.913432, 0.401306, -0.067790,
		-0.254181, 0.432417, -0.865105,
		37.544674, 39.414978, 35.331879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087940, 39.791901, 35.986191>,  <37.722603, 39.112286, 35.937454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087940, 39.791901, 35.986191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774837, 39.804287, 35.737568>,  <37.586975, 39.811718, 35.588394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774837, 39.804287, 35.737568>,  <38.087940, 39.791901, 35.986191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774837, 39.804287, 35.737568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447492, 0.666074, 0.596738,
		0.432479, 0.745243, -0.507519,
		-0.782760, 0.030967, -0.621553,
		37.540009, 39.813576, 35.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865376, 40.512386, 36.031536>,  <38.087940, 39.791901, 35.986191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865376, 40.512386, 36.031536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565575, 40.303875, 35.868309>,  <37.385696, 40.178768, 35.770374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.565575, 40.303875, 35.868309>,  <37.865376, 40.512386, 36.031536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565575, 40.303875, 35.868309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662004, 0.591542, 0.460248,
		0.001468, 0.615096, -0.788451,
		-0.749499, -0.521282, -0.408065,
		37.340725, 40.147491, 35.745888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414490, 41.005348, 35.683311>,  <37.865376, 40.512386, 36.031536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414490, 41.005348, 35.683311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186413, 40.687195, 35.765522>,  <37.049564, 40.496304, 35.814850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186413, 40.687195, 35.765522>,  <37.414490, 41.005348, 35.683311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186413, 40.687195, 35.765522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662319, 0.593098, 0.457786,
		-0.486014, 0.124902, -0.864979,
		-0.570196, -0.795383, 0.205529,
		37.015354, 40.448582, 35.827179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795448, 41.239372, 35.491394>,  <37.414490, 41.005348, 35.683311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795448, 41.239372, 35.491394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760353, 40.927708, 35.739655>,  <36.739296, 40.740711, 35.888611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760353, 40.927708, 35.739655>,  <36.795448, 41.239372, 35.491394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760353, 40.927708, 35.739655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624076, 0.528625, 0.575400,
		-0.776422, -0.336850, -0.532636,
		-0.087741, -0.779158, 0.620656,
		36.734032, 40.693958, 35.925850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131176, 41.355251, 35.672966>,  <36.795448, 41.239372, 35.491394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131176, 41.355251, 35.672966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280323, 41.081844, 35.923969>,  <36.369812, 40.917801, 36.074574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280323, 41.081844, 35.923969>,  <36.131176, 41.355251, 35.672966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280323, 41.081844, 35.923969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662554, 0.277335, 0.695778,
		-0.649610, -0.675192, -0.349461,
		0.372866, -0.683521, 0.627511,
		36.392181, 40.876789, 36.112221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496181, 41.025158, 35.993027>,  <36.131176, 41.355251, 35.672966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496181, 41.025158, 35.993027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804981, 40.952843, 36.236774>,  <35.990261, 40.909454, 36.383022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.804981, 40.952843, 36.236774>,  <35.496181, 41.025158, 35.993027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804981, 40.952843, 36.236774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579973, 0.191916, 0.791707,
		-0.260082, -0.964615, 0.043305,
		0.772003, -0.180792, 0.609365,
		36.036583, 40.898605, 36.419582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274391, 40.577579, 36.471752>,  <35.496181, 41.025158, 35.993027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274391, 40.577579, 36.471752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588177, 40.744225, 36.655510>,  <35.776447, 40.844212, 36.765766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588177, 40.744225, 36.655510>,  <35.274391, 40.577579, 36.471752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588177, 40.744225, 36.655510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589720, 0.271853, 0.760478,
		0.191934, -0.867486, 0.458943,
		0.784469, 0.416609, 0.459396,
		35.823517, 40.869209, 36.793327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184139, 40.385139, 37.158783>,  <35.274391, 40.577579, 36.471752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184139, 40.385139, 37.158783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426723, 40.702877, 37.172791>,  <35.572273, 40.893520, 37.181194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426723, 40.702877, 37.172791>,  <35.184139, 40.385139, 37.158783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426723, 40.702877, 37.172791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408788, 0.273713, 0.870616,
		0.681983, -0.542309, 0.490714,
		0.606458, 0.794343, 0.035022,
		35.608662, 40.941181, 37.183296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550724, 40.383381, 37.790401>,  <35.184139, 40.385139, 37.158783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550724, 40.383381, 37.790401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594025, 40.767078, 37.685997>,  <35.620007, 40.997299, 37.623356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594025, 40.767078, 37.685997>,  <35.550724, 40.383381, 37.790401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594025, 40.767078, 37.685997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274000, 0.281173, 0.919710,
		0.955618, -0.028043, 0.293271,
		0.108252, 0.959248, -0.261010,
		35.626499, 41.054852, 37.607693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960526, 40.667313, 38.319752>,  <35.550724, 40.383381, 37.790401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960526, 40.667313, 38.319752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764812, 40.969757, 38.145901>,  <35.647385, 41.151222, 38.041592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764812, 40.969757, 38.145901>,  <35.960526, 40.667313, 38.319752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764812, 40.969757, 38.145901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389840, 0.256176, 0.884533,
		0.780144, 0.602223, 0.169419,
		-0.489285, 0.756110, -0.434624,
		35.618027, 41.196590, 38.015514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044662, 41.182076, 38.751728>,  <35.960526, 40.667313, 38.319752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044662, 41.182076, 38.751728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740170, 41.326450, 38.536228>,  <35.557472, 41.413074, 38.406929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740170, 41.326450, 38.536228>,  <36.044662, 41.182076, 38.751728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740170, 41.326450, 38.536228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429243, 0.342277, 0.835821,
		0.486079, 0.867508, -0.105623,
		-0.761234, 0.360938, -0.538745,
		35.511799, 41.434731, 38.374603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951889, 41.788937, 39.055878>,  <36.044662, 41.182076, 38.751728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951889, 41.788937, 39.055878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615177, 41.704636, 38.857082>,  <35.413151, 41.654053, 38.737804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615177, 41.704636, 38.857082>,  <35.951889, 41.788937, 39.055878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615177, 41.704636, 38.857082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535335, 0.444429, 0.718261,
		0.069498, 0.870669, -0.486934,
		-0.841776, -0.210755, -0.496987,
		35.362644, 41.641411, 38.707985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636791, 42.381664, 39.069145>,  <35.951889, 41.788937, 39.055878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636791, 42.381664, 39.069145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365269, 42.090771, 39.028450>,  <35.202354, 41.916233, 39.004032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.365269, 42.090771, 39.028450>,  <35.636791, 42.381664, 39.069145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365269, 42.090771, 39.028450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544971, 0.406051, 0.733573,
		-0.492172, 0.553396, -0.671952,
		-0.678803, -0.727238, -0.101737,
		35.161629, 41.872601, 38.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883801, 42.618763, 38.932774>,  <35.636791, 42.381664, 39.069145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883801, 42.618763, 38.932774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.865189, 42.252926, 39.093449>,  <34.854023, 42.033424, 39.189854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.865189, 42.252926, 39.093449>,  <34.883801, 42.618763, 38.932774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865189, 42.252926, 39.093449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596585, 0.347972, 0.723189,
		-0.801200, -0.205992, -0.561824,
		-0.046528, -0.914594, 0.401686,
		34.851231, 41.978546, 39.213955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.184170, 42.484131, 39.153500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327564, 42.176731, 39.365498>,  <34.413601, 41.992290, 39.492699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327564, 42.176731, 39.365498>,  <34.184170, 42.484131, 39.153500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327564, 42.176731, 39.365498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546063, 0.287855, 0.786737,
		-0.757170, -0.571444, -0.316458,
		0.358482, -0.768499, 0.529999,
		34.435108, 41.946182, 39.524498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668175, 42.156834, 39.650589>,  <34.184170, 42.484131, 39.153500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668175, 42.156834, 39.650589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014896, 42.037121, 39.810123>,  <34.222931, 41.965294, 39.905846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.014896, 42.037121, 39.810123>,  <33.668175, 42.156834, 39.650589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014896, 42.037121, 39.810123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345966, 0.215053, 0.913269,
		-0.359099, -0.929613, 0.082867,
		0.866808, -0.299285, 0.398840,
		34.274940, 41.947334, 39.929775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517067, 41.742771, 40.129147>,  <33.668175, 42.156834, 39.650589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517067, 41.742771, 40.129147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884949, 41.837254, 40.254593>,  <34.105679, 41.893944, 40.329861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884949, 41.837254, 40.254593>,  <33.517067, 41.742771, 40.129147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884949, 41.837254, 40.254593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370421, 0.257265, 0.892526,
		0.130136, -0.937028, 0.324103,
		0.919702, 0.236205, 0.313616,
		34.160858, 41.908115, 40.348679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472485, 41.492764, 40.794468>,  <33.517067, 41.742771, 40.129147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472485, 41.492764, 40.794468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788067, 41.737167, 40.768505>,  <33.977417, 41.883812, 40.752930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788067, 41.737167, 40.768505>,  <33.472485, 41.492764, 40.794468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788067, 41.737167, 40.768505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286434, 0.459172, 0.840902,
		0.543605, -0.644843, 0.537281,
		0.788955, 0.611014, -0.064903,
		34.024754, 41.920471, 40.749035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668240, 41.407398, 41.394825>,  <33.472485, 41.492764, 40.794468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668240, 41.407398, 41.394825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842358, 41.756748, 41.307434>,  <33.946831, 41.966358, 41.255001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842358, 41.756748, 41.307434>,  <33.668240, 41.407398, 41.394825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842358, 41.756748, 41.307434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164780, 0.315864, 0.934386,
		0.885078, -0.370737, 0.281410,
		0.435299, 0.873375, -0.218474,
		33.972946, 42.018761, 41.241894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991791, 41.640396, 42.077869>,  <33.668240, 41.407398, 41.394825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991791, 41.640396, 42.077869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964764, 41.972656, 41.856800>,  <33.948547, 42.172012, 41.724159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964764, 41.972656, 41.856800>,  <33.991791, 41.640396, 42.077869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964764, 41.972656, 41.856800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372524, 0.492874, 0.786321,
		0.925559, 0.259017, 0.276134,
		-0.067571, 0.830654, -0.552674,
		33.944492, 42.221851, 41.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295795, 42.263397, 42.383873>,  <33.991791, 41.640396, 42.077869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295795, 42.263397, 42.383873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067242, 42.444664, 42.110188>,  <33.930107, 42.553425, 41.945976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067242, 42.444664, 42.110188>,  <34.295795, 42.263397, 42.383873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067242, 42.444664, 42.110188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339776, 0.628280, 0.699868,
		0.747040, 0.632377, -0.205015,
		-0.571387, 0.453170, -0.684217,
		33.895824, 42.580616, 41.904922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408974, 42.989647, 42.462891>,  <34.295795, 42.263397, 42.383873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408974, 42.989647, 42.462891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052544, 42.947338, 42.286350>,  <33.838684, 42.921951, 42.180428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052544, 42.947338, 42.286350>,  <34.408974, 42.989647, 42.462891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052544, 42.947338, 42.286350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383148, 0.696568, 0.606623,
		0.243265, 0.709651, -0.661224,
		-0.891078, -0.105777, -0.441352,
		33.785221, 42.915604, 42.153946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235065, 43.658360, 42.177212>,  <34.408974, 42.989647, 42.462891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235065, 43.658360, 42.177212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895752, 43.461525, 42.255455>,  <33.692162, 43.343426, 42.302402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895752, 43.461525, 42.255455>,  <34.235065, 43.658360, 42.177212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895752, 43.461525, 42.255455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197420, 0.636656, 0.745449,
		-0.491359, 0.593738, -0.637214,
		-0.848288, -0.492082, 0.195611,
		33.641266, 43.313900, 42.314137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730202, 44.211052, 42.349270>,  <34.235065, 43.658360, 42.177212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730202, 44.211052, 42.349270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558216, 43.873302, 42.477127>,  <33.455025, 43.670654, 42.553841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.558216, 43.873302, 42.477127>,  <33.730202, 44.211052, 42.349270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558216, 43.873302, 42.477127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260805, 0.455103, 0.851389,
		-0.864355, 0.282706, -0.415895,
		-0.429967, -0.844369, 0.319639,
		33.429226, 43.619991, 42.573017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042278, 44.386074, 42.552074>,  <33.730202, 44.211052, 42.349270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042278, 44.386074, 42.552074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121735, 44.044434, 42.744343>,  <33.169407, 43.839447, 42.859703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121735, 44.044434, 42.744343>,  <33.042278, 44.386074, 42.552074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121735, 44.044434, 42.744343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491070, 0.337703, 0.802999,
		-0.848170, -0.395552, -0.352343,
		0.198641, -0.854105, 0.480673,
		33.181328, 43.788200, 42.888546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491543, 44.098843, 42.781235>,  <33.042278, 44.386074, 42.552074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491543, 44.098843, 42.781235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747829, 43.912491, 43.025345>,  <32.901600, 43.800678, 43.171810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747829, 43.912491, 43.025345>,  <32.491543, 44.098843, 42.781235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747829, 43.912491, 43.025345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531811, 0.304008, 0.790415,
		-0.553769, -0.830984, -0.052978,
		0.640716, -0.465882, 0.610277,
		32.940044, 43.772728, 43.208427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066078, 43.667679, 43.211903>,  <32.491543, 44.098843, 42.781235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066078, 43.667679, 43.211903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.411766, 43.728279, 43.403805>,  <32.619179, 43.764641, 43.518948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.411766, 43.728279, 43.403805>,  <32.066078, 43.667679, 43.211903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411766, 43.728279, 43.403805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503086, 0.269384, 0.821180,
		-0.004829, -0.951041, 0.309026,
		0.864223, 0.151501, 0.479757,
		32.671032, 43.773727, 43.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944118, 43.288193, 43.866306>,  <32.066078, 43.667679, 43.211903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944118, 43.288193, 43.866306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257175, 43.531288, 43.920162>,  <32.445011, 43.677143, 43.952477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257175, 43.531288, 43.920162>,  <31.944118, 43.288193, 43.866306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257175, 43.531288, 43.920162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233797, 0.086544, 0.968426,
		0.576894, -0.789410, 0.209820,
		0.782644, 0.607734, 0.134635,
		32.491970, 43.713608, 43.960552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158257, 43.091095, 44.618752>,  <31.944118, 43.288193, 43.866306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158257, 43.091095, 44.618752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336742, 43.441460, 44.545361>,  <32.443836, 43.651680, 44.501328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336742, 43.441460, 44.545361>,  <32.158257, 43.091095, 44.618752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336742, 43.441460, 44.545361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182075, 0.289586, 0.939675,
		0.876206, -0.385894, 0.288701,
		0.446219, 0.875914, -0.183476,
		32.470608, 43.704235, 44.490318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584892, 43.216427, 45.158638>,  <32.158257, 43.091095, 44.618752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584892, 43.216427, 45.158638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.555580, 43.573425, 44.980614>,  <32.537994, 43.787624, 44.873798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.555580, 43.573425, 44.980614>,  <32.584892, 43.216427, 45.158638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555580, 43.573425, 44.980614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166846, 0.428998, 0.887763,
		0.983256, 0.139313, 0.117472,
		-0.073282, 0.892498, -0.445059,
		32.533596, 43.841175, 44.847095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995575, 43.657330, 45.531845>,  <32.584892, 43.216427, 45.158638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995575, 43.657330, 45.531845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716877, 43.874039, 45.343788>,  <32.549660, 44.004063, 45.230953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716877, 43.874039, 45.343788>,  <32.995575, 43.657330, 45.531845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716877, 43.874039, 45.343788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342528, 0.324587, 0.881657,
		0.630257, 0.775326, -0.040583,
		-0.696744, 0.541769, -0.470143,
		32.507854, 44.036568, 45.202744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869183, 44.138405, 45.986282>,  <32.995575, 43.657330, 45.531845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869183, 44.138405, 45.986282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544140, 44.173538, 45.755817>,  <32.349113, 44.194618, 45.617538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544140, 44.173538, 45.755817>,  <32.869183, 44.138405, 45.986282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544140, 44.173538, 45.755817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539569, 0.260323, 0.800686,
		0.220313, 0.961518, -0.164148,
		-0.812605, 0.087833, -0.576158,
		32.300358, 44.199886, 45.582970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656536, 44.788757, 46.044170>,  <32.869183, 44.138405, 45.986282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656536, 44.788757, 46.044170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.327774, 44.607449, 45.906174>,  <32.130516, 44.498661, 45.823376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.327774, 44.607449, 45.906174>,  <32.656536, 44.788757, 46.044170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327774, 44.607449, 45.906174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515463, 0.334077, 0.789107,
		-0.242430, 0.826398, -0.508225,
		-0.821904, -0.453275, -0.344988,
		32.081203, 44.471466, 45.802677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150127, 45.229843, 46.169205>,  <32.656536, 44.788757, 46.044170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150127, 45.229843, 46.169205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959969, 44.880119, 46.130051>,  <31.845873, 44.670284, 46.106560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959969, 44.880119, 46.130051>,  <32.150127, 45.229843, 46.169205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959969, 44.880119, 46.130051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547583, 0.206980, 0.810747,
		-0.688583, 0.439027, -0.577155,
		-0.475400, -0.874308, -0.097881,
		31.817348, 44.617828, 46.100685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476866, 45.361050, 46.432220>,  <32.150127, 45.229843, 46.169205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476866, 45.361050, 46.432220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525227, 44.964417, 46.450775>,  <31.554243, 44.726437, 46.461906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525227, 44.964417, 46.450775>,  <31.476866, 45.361050, 46.432220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525227, 44.964417, 46.450775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601653, -0.036029, 0.797945,
		-0.789555, -0.124381, -0.600943,
		0.120900, -0.991580, 0.046387,
		31.561497, 44.666943, 46.464691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823095, 45.203400, 46.352203>,  <31.476866, 45.361050, 46.432220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823095, 45.203400, 46.352203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044281, 44.935619, 46.550625>,  <31.176992, 44.774952, 46.669678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.044281, 44.935619, 46.550625>,  <30.823095, 45.203400, 46.352203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044281, 44.935619, 46.550625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627241, 0.057431, 0.776705,
		-0.548455, -0.740633, -0.388150,
		0.552961, -0.669451, 0.496054,
		31.210169, 44.734783, 46.699440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438686, 44.595184, 46.526688>,  <30.823095, 45.203400, 46.352203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438686, 44.595184, 46.526688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.721691, 44.672531, 46.798580>,  <30.891495, 44.718941, 46.961716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.721691, 44.672531, 46.798580>,  <30.438686, 44.595184, 46.526688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721691, 44.672531, 46.798580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683913, -0.054926, 0.727493,
		0.178009, -0.979588, 0.093385,
		0.707514, 0.193367, 0.679730,
		30.933945, 44.730541, 47.002499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547447, 44.114792, 47.068443>,  <30.438686, 44.595184, 46.526688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547447, 44.114792, 47.068443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638546, 44.473125, 47.221081>,  <30.693205, 44.688126, 47.312664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638546, 44.473125, 47.221081>,  <30.547447, 44.114792, 47.068443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638546, 44.473125, 47.221081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648838, -0.152587, 0.745470,
		0.726044, -0.417372, 0.546500,
		0.227749, 0.895834, 0.381592,
		30.706871, 44.741875, 47.335560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023520, 43.658527, 47.342785>,  <30.547447, 44.114792, 47.068443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023520, 43.658527, 47.342785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646803, 43.560837, 47.250362>,  <29.420773, 43.502224, 47.194908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646803, 43.560837, 47.250362>,  <30.023520, 43.658527, 47.342785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646803, 43.560837, 47.250362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329133, -0.809946, -0.485447,
		-0.068586, -0.533237, 0.843181,
		-0.941789, -0.244224, -0.231057,
		29.364265, 43.487568, 47.181046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064087, 42.878849, 47.209885>,  <30.023520, 43.658527, 47.342785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064087, 42.878849, 47.209885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730848, 43.017498, 47.037464>,  <29.530905, 43.100685, 46.934013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730848, 43.017498, 47.037464>,  <30.064087, 42.878849, 47.209885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730848, 43.017498, 47.037464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131795, -0.632459, -0.763299,
		-0.537195, -0.692713, 0.481217,
		-0.833097, 0.346619, -0.431051,
		29.480919, 43.121483, 46.908150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868105, 42.343468, 46.947033>,  <30.064087, 42.878849, 47.209885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868105, 42.343468, 46.947033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658306, 42.621666, 46.750591>,  <29.532427, 42.788586, 46.632725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.658306, 42.621666, 46.750591>,  <29.868105, 42.343468, 46.947033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658306, 42.621666, 46.750591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014864, -0.569247, -0.822033,
		-0.851283, -0.438453, 0.288230,
		-0.524497, 0.695498, -0.491107,
		29.500957, 42.830315, 46.603260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281937, 41.907215, 46.526497>,  <29.868105, 42.343468, 46.947033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281937, 41.907215, 46.526497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.301674, 42.276672, 46.374470>,  <29.313517, 42.498344, 46.283253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.301674, 42.276672, 46.374470>,  <29.281937, 41.907215, 46.526497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301674, 42.276672, 46.374470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237540, -0.380466, -0.893768,
		-0.970124, -0.046179, -0.238176,
		0.049345, 0.923641, -0.380068,
		29.316477, 42.553764, 46.260448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902676, 41.841320, 45.844353>,  <29.281937, 41.907215, 46.526497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902676, 41.841320, 45.844353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155535, 42.151257, 45.843605>,  <29.307251, 42.337219, 45.843159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155535, 42.151257, 45.843605>,  <28.902676, 41.841320, 45.844353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155535, 42.151257, 45.843605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462712, -0.379429, -0.801206,
		-0.621519, 0.505617, -0.598386,
		0.632148, 0.774845, -0.001867,
		29.345179, 42.383709, 45.843044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971230, 41.922771, 45.174515>,  <28.902676, 41.841320, 45.844353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971230, 41.922771, 45.174515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.252258, 42.169067, 45.317204>,  <29.420876, 42.316845, 45.402817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.252258, 42.169067, 45.317204>,  <28.971230, 41.922771, 45.174515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252258, 42.169067, 45.317204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435388, 0.024569, -0.899908,
		-0.562877, 0.787563, -0.250826,
		0.702572, 0.615744, 0.356724,
		29.463030, 42.353790, 45.424221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023930, 42.466141, 44.675217>,  <28.971230, 41.922771, 45.174515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023930, 42.466141, 44.675217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369911, 42.445621, 44.874905>,  <29.577499, 42.433311, 44.994717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369911, 42.445621, 44.874905>,  <29.023930, 42.466141, 44.675217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369911, 42.445621, 44.874905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501760, 0.107321, -0.858324,
		-0.009545, 0.992900, 0.118567,
		0.864954, -0.051299, 0.499222,
		29.629398, 42.430233, 45.024670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391022, 42.935280, 44.460690>,  <29.023930, 42.466141, 44.675217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391022, 42.935280, 44.460690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663717, 42.682053, 44.607365>,  <29.827335, 42.530117, 44.695370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663717, 42.682053, 44.607365>,  <29.391022, 42.935280, 44.460690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663717, 42.682053, 44.607365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430361, -0.058300, -0.900772,
		0.591626, 0.771899, 0.232701,
		0.681739, -0.633066, 0.366687,
		29.868238, 42.492134, 44.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918440, 43.050663, 44.084038>,  <29.391022, 42.935280, 44.460690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918440, 43.050663, 44.084038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083244, 42.727055, 44.251720>,  <30.182127, 42.532890, 44.352329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083244, 42.727055, 44.251720>,  <29.918440, 43.050663, 44.084038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083244, 42.727055, 44.251720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654820, -0.057021, -0.753631,
		0.633608, 0.585005, 0.506271,
		0.412009, -0.809023, 0.419202,
		30.206846, 42.484348, 44.377480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593622, 43.131313, 44.068501>,  <29.918440, 43.050663, 44.084038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593622, 43.131313, 44.068501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561239, 42.733253, 44.090832>,  <30.541809, 42.494415, 44.104229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561239, 42.733253, 44.090832>,  <30.593622, 43.131313, 44.068501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561239, 42.733253, 44.090832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594909, -0.093182, -0.798373,
		0.799706, -0.031423, 0.599569,
		-0.080957, -0.995153, 0.055824,
		30.536953, 42.434708, 44.107578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257130, 42.952259, 43.996273>,  <30.593622, 43.131313, 44.068501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257130, 42.952259, 43.996273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031620, 42.637527, 43.895828>,  <30.896315, 42.448689, 43.835560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031620, 42.637527, 43.895828>,  <31.257130, 42.952259, 43.996273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031620, 42.637527, 43.895828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437008, -0.026188, -0.899076,
		0.700845, -0.616613, 0.358615,
		-0.563773, -0.786831, -0.251111,
		30.862488, 42.401478, 43.820496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778563, 42.544971, 43.713150>,  <31.257130, 42.952259, 43.996273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778563, 42.544971, 43.713150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443462, 42.362080, 43.593742>,  <31.242401, 42.252346, 43.522099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443462, 42.362080, 43.593742>,  <31.778563, 42.544971, 43.713150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443462, 42.362080, 43.593742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419907, -0.189947, -0.887467,
		0.349069, -0.868830, 0.351121,
		-0.837752, -0.457225, -0.298523,
		31.192137, 42.224911, 43.504185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004719, 41.950977, 43.347210>,  <31.778563, 42.544971, 43.713150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004719, 41.950977, 43.347210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629017, 42.015778, 43.226177>,  <31.403597, 42.054657, 43.153557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629017, 42.015778, 43.226177>,  <32.004719, 41.950977, 43.347210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629017, 42.015778, 43.226177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251690, -0.274294, -0.928124,
		-0.233352, -0.947903, 0.216858,
		-0.939254, 0.161998, -0.302585,
		31.347240, 42.064381, 43.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739475, 41.292706, 43.116066>,  <32.004719, 41.950977, 43.347210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739475, 41.292706, 43.116066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558035, 41.598423, 42.932716>,  <31.449171, 41.781853, 42.822708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.558035, 41.598423, 42.932716>,  <31.739475, 41.292706, 43.116066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558035, 41.598423, 42.932716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085106, -0.474829, -0.875953,
		-0.887132, -0.436344, 0.150337,
		-0.453602, 0.764291, -0.458371,
		31.421955, 41.827709, 42.795204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324036, 41.045341, 42.449379>,  <31.739475, 41.292706, 43.116066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324036, 41.045341, 42.449379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351147, 41.436478, 42.370155>,  <31.367413, 41.671162, 42.322620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.351147, 41.436478, 42.370155>,  <31.324036, 41.045341, 42.449379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351147, 41.436478, 42.370155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081193, -0.203268, -0.975751,
		-0.994391, 0.050053, -0.093171,
		0.067778, 0.977843, -0.198064,
		31.371481, 41.729832, 42.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772467, 41.150131, 42.031509>,  <31.324036, 41.045341, 42.449379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772467, 41.150131, 42.031509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025784, 41.455204, 41.978958>,  <31.177773, 41.638248, 41.947426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025784, 41.455204, 41.978958>,  <30.772467, 41.150131, 42.031509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025784, 41.455204, 41.978958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103743, -0.251887, -0.962180,
		-0.766929, 0.595710, -0.238640,
		0.633291, 0.762681, -0.131379,
		31.215771, 41.684010, 41.939545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578691, 41.491589, 41.497608>,  <30.772467, 41.150131, 42.031509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578691, 41.491589, 41.497608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963730, 41.596439, 41.525021>,  <31.194754, 41.659351, 41.541470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963730, 41.596439, 41.525021>,  <30.578691, 41.491589, 41.497608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963730, 41.596439, 41.525021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149287, -0.302064, -0.941526,
		-0.226101, 0.916540, -0.329898,
		0.962596, 0.262129, 0.068531,
		31.252508, 41.675079, 41.545578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698574, 41.673058, 40.840260>,  <30.578691, 41.491589, 41.497608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698574, 41.673058, 40.840260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057302, 41.611740, 41.006252>,  <31.272539, 41.574951, 41.105850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057302, 41.611740, 41.006252>,  <30.698574, 41.673058, 40.840260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057302, 41.611740, 41.006252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310522, -0.450012, -0.837297,
		0.315097, 0.879768, -0.355981,
		0.896822, -0.153290, 0.414984,
		31.326349, 41.565754, 41.130749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099417, 41.808727, 40.284126>,  <30.698574, 41.673058, 40.840260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099417, 41.808727, 40.284126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334049, 41.595882, 40.528351>,  <31.474829, 41.468178, 40.674885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334049, 41.595882, 40.528351>,  <31.099417, 41.808727, 40.284126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334049, 41.595882, 40.528351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362288, -0.501847, -0.785428,
		0.724341, 0.681915, -0.101597,
		0.586581, -0.532110, 0.610558,
		31.510023, 41.436249, 40.711517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870216, 41.848186, 40.123959>,  <31.099417, 41.808727, 40.284126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870216, 41.848186, 40.123959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827301, 41.501553, 40.318905>,  <31.801552, 41.293571, 40.435875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827301, 41.501553, 40.318905>,  <31.870216, 41.848186, 40.123959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827301, 41.501553, 40.318905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420491, -0.483747, -0.767578,
		0.900931, 0.122582, 0.416289,
		-0.107288, -0.866581, 0.487367,
		31.795115, 41.241577, 40.465115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.712025, 42.451027, 40.680603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.315262, 42.491531, 40.711231>,  <42.077206, 42.515835, 40.729610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.315262, 42.491531, 40.711231>,  <42.712025, 42.451027, 40.680603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315262, 42.491531, 40.711231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124587, -0.660432, -0.740478,
		-0.024414, -0.744026, 0.667704,
		-0.991908, 0.101265, 0.076573,
		42.017689, 42.521912, 40.734203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413509, 41.744068, 40.679104>,  <42.712025, 42.451027, 40.680603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413509, 41.744068, 40.679104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117855, 41.991409, 40.572281>,  <41.940464, 42.139816, 40.508186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117855, 41.991409, 40.572281>,  <42.413509, 41.744068, 40.679104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117855, 41.991409, 40.572281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247503, -0.618084, -0.746133,
		-0.626458, -0.485378, 0.609884,
		-0.739116, 0.618369, -0.267071,
		41.896114, 42.176918, 40.492165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811111, 41.362106, 40.665680>,  <42.413509, 41.744068, 40.679104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811111, 41.362106, 40.665680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.786896, 41.676723, 40.419857>,  <41.772366, 41.865494, 40.272362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.786896, 41.676723, 40.419857>,  <41.811111, 41.362106, 40.665680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786896, 41.676723, 40.419857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148792, -0.615921, -0.773629,
		-0.987014, 0.044608, 0.154317,
		-0.060537, 0.786544, -0.614560,
		41.768734, 41.912685, 40.235489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144764, 41.292656, 40.232784>,  <41.811111, 41.362106, 40.665680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144764, 41.292656, 40.232784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397217, 41.540260, 40.045811>,  <41.548687, 41.688824, 39.933624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397217, 41.540260, 40.045811>,  <41.144764, 41.292656, 40.232784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397217, 41.540260, 40.045811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041802, -0.628886, -0.776373,
		-0.774547, 0.470455, -0.422787,
		0.631133, 0.619011, -0.467436,
		41.586555, 41.725964, 39.905579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981941, 41.189362, 39.662045>,  <41.144764, 41.292656, 40.232784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981941, 41.189362, 39.662045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330391, 41.364353, 39.572815>,  <41.539459, 41.469349, 39.519279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330391, 41.364353, 39.572815>,  <40.981941, 41.189362, 39.662045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330391, 41.364353, 39.572815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043313, -0.520938, -0.852495,
		-0.489150, 0.732967, -0.472749,
		0.871123, 0.437475, -0.223070,
		41.591728, 41.495594, 39.505894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955242, 41.242496, 39.043751>,  <40.981941, 41.189362, 39.662045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955242, 41.242496, 39.043751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350220, 41.291634, 39.083485>,  <41.587204, 41.321117, 39.107327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350220, 41.291634, 39.083485>,  <40.955242, 41.242496, 39.043751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350220, 41.291634, 39.083485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154995, -0.631575, -0.759664,
		-0.030583, 0.765521, -0.642684,
		0.987442, 0.122845, 0.099336,
		41.646454, 41.328487, 39.113285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080135, 41.312706, 38.347424>,  <40.955242, 41.242496, 39.043751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080135, 41.312706, 38.347424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422497, 41.233391, 38.538467>,  <41.627914, 41.185802, 38.653095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422497, 41.233391, 38.538467>,  <41.080135, 41.312706, 38.347424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422497, 41.233391, 38.538467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226996, -0.685789, -0.691495,
		0.464654, 0.700269, -0.541960,
		0.855903, -0.198284, 0.477613,
		41.679268, 41.173904, 38.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536114, 41.040157, 37.826370>,  <41.080135, 41.312706, 38.347424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536114, 41.040157, 37.826370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780453, 40.956272, 38.131756>,  <41.927055, 40.905941, 38.314987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.780453, 40.956272, 38.131756>,  <41.536114, 41.040157, 37.826370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780453, 40.956272, 38.131756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231463, -0.874855, -0.425504,
		0.757156, 0.436634, -0.485866,
		0.610851, -0.209713, 0.763467,
		41.963707, 40.893360, 38.360794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224838, 40.995178, 37.574604>,  <41.536114, 41.040157, 37.826370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224838, 40.995178, 37.574604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.211624, 40.759933, 37.897846>,  <42.203697, 40.618786, 38.091793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.211624, 40.759933, 37.897846>,  <42.224838, 40.995178, 37.574604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211624, 40.759933, 37.897846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398995, -0.749082, -0.528847,
		0.916358, 0.304959, 0.259400,
		-0.033035, -0.588113, 0.808104,
		42.201714, 40.583500, 38.140278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981739, 40.702171, 37.676731>,  <42.224838, 40.995178, 37.574604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981739, 40.702171, 37.676731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717834, 40.475506, 37.874161>,  <42.559494, 40.339508, 37.992619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717834, 40.475506, 37.874161>,  <42.981739, 40.702171, 37.676731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717834, 40.475506, 37.874161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438253, -0.823682, -0.359837,
		0.610454, -0.021094, 0.791771,
		-0.659758, -0.566660, 0.493575,
		42.519909, 40.305508, 38.022232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376083, 40.222393, 37.923752>,  <42.981739, 40.702171, 37.676731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376083, 40.222393, 37.923752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005997, 40.070702, 37.918617>,  <42.783947, 39.979687, 37.915535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.005997, 40.070702, 37.918617>,  <43.376083, 40.222393, 37.923752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005997, 40.070702, 37.918617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333542, -0.796680, -0.504035,
		0.180921, -0.470620, 0.863588,
		-0.925212, -0.379233, -0.012836,
		42.728432, 39.956932, 37.914768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556812, 39.539104, 38.106121>,  <43.376083, 40.222393, 37.923752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556812, 39.539104, 38.106121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.185890, 39.534775, 37.956459>,  <42.963337, 39.532177, 37.866661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.185890, 39.534775, 37.956459>,  <43.556812, 39.539104, 38.106121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185890, 39.534775, 37.956459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240998, -0.782093, -0.574675,
		-0.286403, -0.623068, 0.727846,
		-0.927304, -0.010820, -0.374152,
		42.907700, 39.531528, 37.844215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324638, 38.806240, 38.174366>,  <43.556812, 39.539104, 38.106121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324638, 38.806240, 38.174366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.149418, 39.017311, 37.883251>,  <43.044285, 39.143955, 37.708584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.149418, 39.017311, 37.883251>,  <43.324638, 38.806240, 38.174366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149418, 39.017311, 37.883251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209810, -0.727218, -0.653555,
		-0.874125, -0.438984, 0.207843,
		-0.438048, 0.527681, -0.727783,
		43.018005, 39.175613, 37.664917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947823, 38.351070, 37.911083>,  <43.324638, 38.806240, 38.174366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947823, 38.351070, 37.911083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.963997, 38.627335, 37.622265>,  <42.973701, 38.793095, 37.448975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.963997, 38.627335, 37.622265>,  <42.947823, 38.351070, 37.911083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963997, 38.627335, 37.622265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044586, -0.723164, -0.689235,
		-0.998187, -0.004326, -0.060033,
		0.040432, 0.690662, -0.722046,
		42.976128, 38.834534, 37.405651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484726, 38.027645, 37.447189>,  <42.947823, 38.351070, 37.911083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484726, 38.027645, 37.447189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713188, 38.289585, 37.249222>,  <42.850266, 38.446751, 37.130440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713188, 38.289585, 37.249222>,  <42.484726, 38.027645, 37.447189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713188, 38.289585, 37.249222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172807, -0.685358, -0.707405,
		-0.802446, 0.318511, -0.504609,
		0.571155, 0.654854, -0.494922,
		42.884533, 38.486042, 37.100746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387032, 37.813450, 36.790585>,  <42.484726, 38.027645, 37.447189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387032, 37.813450, 36.790585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726536, 38.023682, 36.767380>,  <42.930241, 38.149822, 36.753456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726536, 38.023682, 36.767380>,  <42.387032, 37.813450, 36.790585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726536, 38.023682, 36.767380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402375, -0.713162, -0.574016,
		-0.343064, 0.463862, -0.816786,
		0.848765, 0.525578, -0.058014,
		42.981167, 38.181355, 36.749977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562920, 37.826576, 36.071087>,  <42.387032, 37.813450, 36.790585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562920, 37.826576, 36.071087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891594, 37.889038, 36.290340>,  <43.088799, 37.926514, 36.421894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891594, 37.889038, 36.290340>,  <42.562920, 37.826576, 36.071087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891594, 37.889038, 36.290340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495219, -0.671669, -0.551017,
		0.282120, 0.724208, -0.629231,
		0.821685, 0.156154, 0.548133,
		43.138100, 37.935883, 36.454781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031559, 37.985756, 35.594265>,  <42.562920, 37.826576, 36.071087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031559, 37.985756, 35.594265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203968, 37.855865, 35.931019>,  <43.307415, 37.777931, 36.133072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203968, 37.855865, 35.931019>,  <43.031559, 37.985756, 35.594265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203968, 37.855865, 35.931019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323138, -0.815574, -0.480022,
		0.842495, 0.478947, -0.246602,
		0.431027, -0.324730, 0.841882,
		43.333275, 37.758446, 36.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611183, 37.663486, 35.262829>,  <43.031559, 37.985756, 35.594265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611183, 37.663486, 35.262829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606300, 37.552616, 35.647125>,  <43.603371, 37.486095, 35.877705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606300, 37.552616, 35.647125>,  <43.611183, 37.663486, 35.262829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606300, 37.552616, 35.647125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463513, -0.852918, -0.240178,
		0.886006, 0.442385, 0.138884,
		-0.012206, -0.277174, 0.960742,
		43.602638, 37.469463, 35.935349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286419, 37.568573, 35.441002>,  <43.611183, 37.663486, 35.262829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286419, 37.568573, 35.441002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067909, 37.338856, 35.684895>,  <43.936802, 37.201027, 35.831230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067909, 37.338856, 35.684895>,  <44.286419, 37.568573, 35.441002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067909, 37.338856, 35.684895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606124, -0.773449, -0.185446,
		0.578097, 0.268270, 0.770607,
		-0.546275, -0.574290, 0.609733,
		43.904026, 37.166569, 35.867813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780960, 37.208084, 35.920071>,  <44.286419, 37.568573, 35.441002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780960, 37.208084, 35.920071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.454292, 36.977356, 35.927410>,  <44.258293, 36.838921, 35.931816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.454292, 36.977356, 35.927410>,  <44.780960, 37.208084, 35.920071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454292, 36.977356, 35.927410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574615, -0.815677, -0.066991,
		0.053611, -0.044164, 0.997585,
		-0.816666, -0.576819, 0.018352,
		44.209293, 36.804310, 35.932915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970226, 36.562172, 36.324001>,  <44.780960, 37.208084, 35.920071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970226, 36.562172, 36.324001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660351, 36.503620, 36.077930>,  <44.474426, 36.468491, 35.930290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.660351, 36.503620, 36.077930>,  <44.970226, 36.562172, 36.324001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660351, 36.503620, 36.077930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513965, -0.712490, -0.477701,
		-0.368381, -0.686245, 0.627186,
		-0.774684, -0.146376, -0.615174,
		44.427944, 36.459709, 35.893379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573086, 36.286060, 36.600834>,  <44.970226, 36.562172, 36.324001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573086, 36.286060, 36.600834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.790165, 36.113277, 36.888973>,  <45.920410, 36.009609, 37.061855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.790165, 36.113277, 36.888973>,  <45.573086, 36.286060, 36.600834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790165, 36.113277, 36.888973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495444, 0.527908, 0.689818,
		-0.678245, -0.731252, 0.072484,
		0.542696, -0.431954, 0.720345,
		45.952972, 35.983692, 37.105076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082390, 36.124290, 37.048054>,  <45.573086, 36.286060, 36.600834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082390, 36.124290, 37.048054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.445728, 36.197594, 37.198425>,  <45.663731, 36.241577, 37.288647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.445728, 36.197594, 37.198425>,  <45.082390, 36.124290, 37.048054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.445728, 36.197594, 37.198425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399808, 0.644283, 0.651961,
		-0.122725, -0.742505, 0.658502,
		0.908346, 0.183262, 0.375929,
		45.718231, 36.252571, 37.311203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017200, 35.890671, 37.735363>,  <45.082390, 36.124290, 37.048054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017200, 35.890671, 37.735363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331596, 36.137928, 37.739609>,  <45.520233, 36.286282, 37.742157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331596, 36.137928, 37.739609>,  <45.017200, 35.890671, 37.735363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331596, 36.137928, 37.739609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399861, 0.495196, 0.771292,
		0.471508, -0.610479, 0.636393,
		0.785997, 0.618139, 0.010618,
		45.567394, 36.323372, 37.742790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175499, 35.934647, 38.458233>,  <45.017200, 35.890671, 37.735363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175499, 35.934647, 38.458233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.344318, 36.258327, 38.294739>,  <45.445610, 36.452538, 38.196644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.344318, 36.258327, 38.294739>,  <45.175499, 35.934647, 38.458233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344318, 36.258327, 38.294739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286022, 0.546683, 0.786975,
		0.860271, -0.215236, 0.462178,
		0.422050, 0.809204, -0.408733,
		45.470932, 36.501087, 38.172119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570404, 36.367046, 39.115868>,  <45.175499, 35.934647, 38.458233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570404, 36.367046, 39.115868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522900, 36.621304, 38.810749>,  <45.494396, 36.773857, 38.627678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522900, 36.621304, 38.810749>,  <45.570404, 36.367046, 39.115868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522900, 36.621304, 38.810749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562510, 0.589986, 0.579223,
		0.818216, 0.497868, 0.287488,
		-0.118763, 0.635644, -0.762792,
		45.487270, 36.811996, 38.581913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855644, 37.021172, 39.354084>,  <45.570404, 36.367046, 39.115868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855644, 37.021172, 39.354084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.626629, 37.105125, 39.037060>,  <45.489220, 37.155499, 38.846848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.626629, 37.105125, 39.037060>,  <45.855644, 37.021172, 39.354084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626629, 37.105125, 39.037060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448494, 0.729048, 0.517052,
		0.686333, 0.651490, -0.323277,
		-0.572538, 0.209882, -0.792559,
		45.454868, 37.168091, 38.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875320, 37.756710, 39.109795>,  <45.855644, 37.021172, 39.354084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875320, 37.756710, 39.109795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.517849, 37.608070, 39.009193>,  <45.303368, 37.518887, 38.948833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.517849, 37.608070, 39.009193>,  <45.875320, 37.756710, 39.109795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517849, 37.608070, 39.009193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448219, 0.765393, 0.461816,
		0.020887, 0.525443, -0.850573,
		-0.893680, -0.371597, -0.251500,
		45.249744, 37.496590, 38.933743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586449, 38.333778, 38.886135>,  <45.875320, 37.756710, 39.109795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586449, 38.333778, 38.886135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273403, 38.087631, 38.923759>,  <45.085575, 37.939941, 38.946335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273403, 38.087631, 38.923759>,  <45.586449, 38.333778, 38.886135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273403, 38.087631, 38.923759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571648, 0.770231, 0.282778,
		-0.246458, 0.167537, -0.954563,
		-0.782610, -0.615366, 0.094058,
		45.038620, 37.903023, 38.951977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098412, 38.734791, 38.748867>,  <45.586449, 38.333778, 38.886135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098412, 38.734791, 38.748867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919048, 38.422779, 38.923450>,  <44.811432, 38.235573, 39.028198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919048, 38.422779, 38.923450>,  <45.098412, 38.734791, 38.748867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919048, 38.422779, 38.923450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461641, 0.620232, 0.634192,
		-0.765390, 0.082889, -0.638207,
		-0.448404, -0.780027, 0.436455,
		44.784527, 38.188770, 39.054386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421307, 38.963051, 38.684513>,  <45.098412, 38.734791, 38.748867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421307, 38.963051, 38.684513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.454224, 38.680424, 38.965649>,  <44.473976, 38.510849, 39.134331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.454224, 38.680424, 38.965649>,  <44.421307, 38.963051, 38.684513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454224, 38.680424, 38.965649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578772, 0.540239, 0.610872,
		-0.811326, -0.457059, -0.364482,
		0.082297, -0.706568, 0.702843,
		44.478912, 38.468452, 39.176502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758785, 38.803120, 38.881290>,  <44.421307, 38.963051, 38.684513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758785, 38.803120, 38.881290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.976631, 38.703331, 39.201580>,  <44.107338, 38.643459, 39.393753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.976631, 38.703331, 39.201580>,  <43.758785, 38.803120, 38.881290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976631, 38.703331, 39.201580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676783, 0.433154, 0.595267,
		-0.495338, -0.866108, 0.067064,
		0.544614, -0.249471, 0.800725,
		44.140015, 38.628490, 39.441799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202827, 38.763493, 39.315468>,  <43.758785, 38.803120, 38.881290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202827, 38.763493, 39.315468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530880, 38.775181, 39.544041>,  <43.727711, 38.782192, 39.681183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530880, 38.775181, 39.544041>,  <43.202827, 38.763493, 39.315468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530880, 38.775181, 39.544041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532066, 0.406270, 0.742866,
		-0.210451, -0.913286, 0.348740,
		0.820132, 0.029216, 0.571429,
		43.776920, 38.783947, 39.715469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936626, 38.570457, 40.010014>,  <43.202827, 38.763493, 39.315468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936626, 38.570457, 40.010014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285923, 38.752583, 40.079445>,  <43.495502, 38.861858, 40.121105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285923, 38.752583, 40.079445>,  <42.936626, 38.570457, 40.010014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285923, 38.752583, 40.079445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405337, 0.481026, 0.777378,
		0.270456, -0.749200, 0.604610,
		0.873245, 0.455317, 0.173582,
		43.547897, 38.889179, 40.131519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887623, 38.596184, 40.641438>,  <42.936626, 38.570457, 40.010014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887623, 38.596184, 40.641438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.186005, 38.855526, 40.580536>,  <43.365036, 39.011131, 40.543995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.186005, 38.855526, 40.580536>,  <42.887623, 38.596184, 40.641438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186005, 38.855526, 40.580536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263875, 0.497635, 0.826274,
		0.611488, -0.576189, 0.542300,
		0.745957, 0.648357, -0.152256,
		43.409794, 39.050034, 40.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323620, 38.519196, 41.269260>,  <42.887623, 38.596184, 40.641438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323620, 38.519196, 41.269260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372128, 38.877186, 41.097530>,  <43.401234, 39.091980, 40.994492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372128, 38.877186, 41.097530>,  <43.323620, 38.519196, 41.269260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372128, 38.877186, 41.097530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392249, 0.440522, 0.807515,
		0.911830, 0.070476, 0.404473,
		0.121269, 0.894971, -0.429326,
		43.408508, 39.145676, 40.968731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638653, 38.892658, 41.749043>,  <43.323620, 38.519196, 41.269260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638653, 38.892658, 41.749043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460014, 39.152271, 41.502689>,  <43.352833, 39.308037, 41.354877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460014, 39.152271, 41.502689>,  <43.638653, 38.892658, 41.749043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460014, 39.152271, 41.502689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367491, 0.494544, 0.787640,
		0.815783, 0.578089, 0.017651,
		-0.446596, 0.649030, -0.615883,
		43.326035, 39.346981, 41.317924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637943, 39.472115, 42.154247>,  <43.638653, 38.892658, 41.749043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637943, 39.472115, 42.154247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376427, 39.562046, 41.865246>,  <43.219517, 39.616005, 41.691845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.376427, 39.562046, 41.865246>,  <43.637943, 39.472115, 42.154247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376427, 39.562046, 41.865246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514727, 0.567730, 0.642448,
		0.554627, 0.791918, -0.255451,
		-0.653793, 0.224831, -0.722499,
		43.180290, 39.629494, 41.648495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705193, 40.196964, 42.100052>,  <43.637943, 39.472115, 42.154247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705193, 40.196964, 42.100052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351711, 40.111198, 41.933628>,  <43.139622, 40.059738, 41.833775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351711, 40.111198, 41.933628>,  <43.705193, 40.196964, 42.100052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351711, 40.111198, 41.933628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444689, 0.661951, 0.603384,
		0.146037, 0.718226, -0.680312,
		-0.883699, -0.214411, -0.416057,
		43.086601, 40.046875, 41.808811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330894, 40.803238, 41.821865>,  <43.705193, 40.196964, 42.100052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330894, 40.803238, 41.821865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059933, 40.521858, 41.907917>,  <42.897358, 40.353031, 41.959549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059933, 40.521858, 41.907917>,  <43.330894, 40.803238, 41.821865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059933, 40.521858, 41.907917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369595, 0.578329, 0.727279,
		-0.636024, 0.413149, -0.651753,
		-0.677402, -0.703451, 0.215133,
		42.856712, 40.310822, 41.972458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693203, 41.112110, 41.751678>,  <43.330894, 40.803238, 41.821865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693203, 41.112110, 41.751678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648098, 40.799820, 41.997524>,  <42.621037, 40.612446, 42.145031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648098, 40.799820, 41.997524>,  <42.693203, 41.112110, 41.751678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648098, 40.799820, 41.997524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275010, 0.618914, 0.735741,
		-0.954806, -0.086059, -0.284499,
		-0.112764, -0.780730, 0.614610,
		42.614269, 40.565601, 42.181908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.372169, 41.935814, 37.371761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128994, 41.623749, 37.312771>,  <35.983089, 41.436508, 37.277378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128994, 41.623749, 37.312771>,  <36.372169, 41.935814, 37.371761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128994, 41.623749, 37.312771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714061, -0.456016, -0.531194,
		0.347170, -0.428239, 0.834317,
		-0.607939, -0.780167, -0.147473,
		35.946613, 41.389698, 37.268528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895176, 41.491196, 37.284878>,  <36.372169, 41.935814, 37.371761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895176, 41.491196, 37.284878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553722, 41.324547, 37.159824>,  <36.348850, 41.224556, 37.084793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553722, 41.324547, 37.159824>,  <36.895176, 41.491196, 37.284878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553722, 41.324547, 37.159824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515406, -0.588848, -0.622587,
		0.075292, -0.692591, 0.717390,
		-0.853632, -0.416623, -0.312630,
		36.297634, 41.199558, 37.066036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000858, 40.712185, 37.313675>,  <36.895176, 41.491196, 37.284878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000858, 40.712185, 37.313675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709957, 40.771324, 37.045570>,  <36.535416, 40.806808, 36.884708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709957, 40.771324, 37.045570>,  <37.000858, 40.712185, 37.313675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709957, 40.771324, 37.045570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483192, -0.583266, -0.652937,
		-0.487474, -0.798713, 0.352743,
		-0.727252, 0.147847, -0.670258,
		36.491783, 40.815678, 36.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771046, 40.052734, 37.135086>,  <37.000858, 40.712185, 37.313675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771046, 40.052734, 37.135086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655163, 40.285126, 36.830841>,  <36.585632, 40.424561, 36.648293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655163, 40.285126, 36.830841>,  <36.771046, 40.052734, 37.135086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655163, 40.285126, 36.830841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380186, -0.659457, -0.648517,
		-0.878367, -0.477055, -0.029831,
		-0.289706, 0.580978, -0.760615,
		36.568253, 40.459419, 36.602657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491581, 39.575283, 36.646824>,  <36.771046, 40.052734, 37.135086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491581, 39.575283, 36.646824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574490, 39.908421, 36.441528>,  <36.624233, 40.108303, 36.318352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574490, 39.908421, 36.441528>,  <36.491581, 39.575283, 36.646824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574490, 39.908421, 36.441528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128679, -0.543282, -0.829631,
		-0.969784, 0.105915, -0.219776,
		0.207271, 0.832843, -0.513237,
		36.636669, 40.158272, 36.287556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328140, 39.384827, 35.997684>,  <36.491581, 39.575283, 36.646824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328140, 39.384827, 35.997684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520676, 39.731457, 35.944981>,  <36.636196, 39.939434, 35.913357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520676, 39.731457, 35.944981>,  <36.328140, 39.384827, 35.997684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520676, 39.731457, 35.944981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486650, -0.389222, -0.782098,
		-0.729032, 0.312331, -0.609066,
		0.481336, 0.866577, -0.131760,
		36.665077, 39.991428, 35.905453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384972, 39.307056, 35.277016>,  <36.328140, 39.384827, 35.997684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384972, 39.307056, 35.277016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639969, 39.575298, 35.428749>,  <36.792969, 39.736244, 35.519791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639969, 39.575298, 35.428749>,  <36.384972, 39.307056, 35.277016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639969, 39.575298, 35.428749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659115, -0.219736, -0.719225,
		-0.398959, 0.708527, -0.582083,
		0.637495, 0.670601, 0.379335,
		36.831219, 39.776478, 35.542549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569756, 39.830551, 34.681366>,  <36.384972, 39.307056, 35.277016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569756, 39.830551, 34.681366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847652, 39.811569, 34.968441>,  <37.014389, 39.800179, 35.140686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847652, 39.811569, 34.968441>,  <36.569756, 39.830551, 34.681366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847652, 39.811569, 34.968441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667539, -0.328990, -0.667951,
		0.267813, 0.943140, -0.196882,
		0.694743, -0.047459, 0.717690,
		37.056076, 39.797333, 35.183746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137012, 39.847031, 34.217880>,  <36.569756, 39.830551, 34.681366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137012, 39.847031, 34.217880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295681, 39.724712, 34.564095>,  <37.390881, 39.651321, 34.771824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295681, 39.724712, 34.564095>,  <37.137012, 39.847031, 34.217880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295681, 39.724712, 34.564095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621986, -0.603916, -0.498417,
		0.675121, 0.736054, -0.049354,
		0.396668, -0.305794, 0.865532,
		37.414680, 39.632973, 34.823753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839695, 39.871193, 34.165028>,  <37.137012, 39.847031, 34.217880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839695, 39.871193, 34.165028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777618, 39.603306, 34.455513>,  <37.740372, 39.442574, 34.629803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777618, 39.603306, 34.455513>,  <37.839695, 39.871193, 34.165028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777618, 39.603306, 34.455513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628531, -0.634080, -0.450434,
		0.762144, 0.386543, 0.519347,
		-0.155195, -0.669721, 0.726215,
		37.731060, 39.402390, 34.673378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469765, 39.616821, 34.394382>,  <37.839695, 39.871193, 34.165028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469765, 39.616821, 34.394382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206306, 39.327854, 34.478565>,  <38.048229, 39.154472, 34.529076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206306, 39.327854, 34.478565>,  <38.469765, 39.616821, 34.394382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206306, 39.327854, 34.478565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672493, -0.690632, -0.266047,
		0.337546, -0.033701, 0.940706,
		-0.658648, -0.722421, 0.210456,
		38.008713, 39.111130, 34.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926163, 39.114586, 34.658676>,  <38.469765, 39.616821, 34.394382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926163, 39.114586, 34.658676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590084, 38.931824, 34.541851>,  <38.388435, 38.822166, 34.471756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590084, 38.931824, 34.541851>,  <38.926163, 39.114586, 34.658676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590084, 38.931824, 34.541851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539295, -0.760446, -0.361776,
		-0.056798, -0.461471, 0.885335,
		-0.840199, -0.456909, -0.292061,
		38.338024, 38.794750, 34.454231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097450, 38.439621, 34.500027>,  <38.926163, 39.114586, 34.658676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097450, 38.439621, 34.500027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737907, 38.400711, 34.329105>,  <38.522182, 38.377365, 34.226551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737907, 38.400711, 34.329105>,  <39.097450, 38.439621, 34.500027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737907, 38.400711, 34.329105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275791, -0.883319, -0.379061,
		-0.340571, -0.458569, 0.820808,
		-0.898861, -0.097274, -0.427302,
		38.468250, 38.371529, 34.200916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795311, 37.848240, 34.857185>,  <39.097450, 38.439621, 34.500027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795311, 37.848240, 34.857185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636494, 37.898766, 34.493561>,  <38.541203, 37.929081, 34.275387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636494, 37.898766, 34.493561>,  <38.795311, 37.848240, 34.857185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636494, 37.898766, 34.493561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019791, -0.989076, -0.146075,
		-0.917585, -0.075990, 0.390209,
		-0.397047, 0.126314, -0.909065,
		38.517380, 37.936661, 34.220840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491352, 37.710796, 35.234447>,  <38.795311, 37.848240, 34.857185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491352, 37.710796, 35.234447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288994, 37.475697, 34.981903>,  <39.167580, 37.334637, 34.830376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288994, 37.475697, 34.981903>,  <39.491352, 37.710796, 35.234447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288994, 37.475697, 34.981903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857736, -0.420324, -0.296001,
		-0.091401, -0.691287, 0.716776,
		-0.505900, -0.587750, -0.631360,
		39.137222, 37.299370, 34.792496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535259, 37.225231, 35.834743>,  <39.491352, 37.710796, 35.234447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535259, 37.225231, 35.834743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792953, 36.955643, 35.979362>,  <39.947571, 36.793888, 36.066132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792953, 36.955643, 35.979362>,  <39.535259, 37.225231, 35.834743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792953, 36.955643, 35.979362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525065, -0.046030, 0.849816,
		-0.556113, -0.737319, -0.383535,
		0.644240, -0.673974, 0.361543,
		39.986225, 36.753452, 36.087826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121010, 36.824734, 36.296776>,  <39.535259, 37.225231, 35.834743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121010, 36.824734, 36.296776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499329, 36.766235, 36.412758>,  <39.726322, 36.731136, 36.482349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499329, 36.766235, 36.412758>,  <39.121010, 36.824734, 36.296776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499329, 36.766235, 36.412758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294262, -0.008216, 0.955690,
		-0.137381, -0.989214, -0.050805,
		0.945800, -0.146244, 0.289959,
		39.783070, 36.722363, 36.499744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154797, 36.229065, 36.779018>,  <39.121010, 36.824734, 36.296776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154797, 36.229065, 36.779018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426014, 36.510532, 36.863983>,  <39.588745, 36.679413, 36.914963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426014, 36.510532, 36.863983>,  <39.154797, 36.229065, 36.779018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426014, 36.510532, 36.863983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335457, 0.039116, 0.941243,
		0.654012, -0.709454, 0.262572,
		0.678039, 0.703666, 0.212409,
		39.629425, 36.721634, 36.927704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345547, 36.055916, 37.493896>,  <39.154797, 36.229065, 36.779018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345547, 36.055916, 37.493896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495281, 36.421898, 37.433598>,  <39.585121, 36.641487, 37.397419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495281, 36.421898, 37.433598>,  <39.345547, 36.055916, 37.493896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495281, 36.421898, 37.433598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149538, 0.220005, 0.963969,
		0.915156, -0.338306, 0.219177,
		0.374336, 0.914957, -0.150750,
		39.607582, 36.696384, 37.388374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716629, 36.128117, 38.087032>,  <39.345547, 36.055916, 37.493896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716629, 36.128117, 38.087032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657246, 36.492016, 37.931953>,  <39.621616, 36.710358, 37.838905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657246, 36.492016, 37.931953>,  <39.716629, 36.128117, 38.087032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657246, 36.492016, 37.931953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050123, 0.398464, 0.915813,
		0.987647, 0.116530, -0.104756,
		-0.148461, 0.909751, -0.387701,
		39.612709, 36.764942, 37.815643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025208, 36.532219, 38.545547>,  <39.716629, 36.128117, 38.087032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025208, 36.532219, 38.545547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820126, 36.803383, 38.334808>,  <39.697075, 36.966080, 38.208363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820126, 36.803383, 38.334808>,  <40.025208, 36.532219, 38.545547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820126, 36.803383, 38.334808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209250, 0.496474, 0.842453,
		0.832674, 0.542176, -0.112693,
		-0.512707, 0.677908, -0.526852,
		39.666313, 37.006756, 38.176754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114418, 37.204994, 38.895317>,  <40.025208, 36.532219, 38.545547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114418, 37.204994, 38.895317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792130, 37.282650, 38.671486>,  <39.598759, 37.329243, 38.537186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792130, 37.282650, 38.671486>,  <40.114418, 37.204994, 38.895317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792130, 37.282650, 38.671486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377737, 0.559265, 0.737927,
		0.456215, 0.805935, -0.377276,
		-0.805719, 0.194142, -0.559577,
		39.550415, 37.340893, 38.503613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939476, 37.866917, 38.965160>,  <40.114418, 37.204994, 38.895317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939476, 37.866917, 38.965160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600986, 37.678944, 38.864704>,  <39.397892, 37.566162, 38.804432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600986, 37.678944, 38.864704>,  <39.939476, 37.866917, 38.965160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600986, 37.678944, 38.864704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466427, 0.425468, 0.775515,
		-0.257585, 0.773398, -0.579229,
		-0.846225, -0.469928, -0.251140,
		39.347118, 37.537964, 38.789364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588970, 38.371742, 39.219303>,  <39.939476, 37.866917, 38.965160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588970, 38.371742, 39.219303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339405, 38.066547, 39.151672>,  <39.189667, 37.883430, 39.111095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339405, 38.066547, 39.151672>,  <39.588970, 38.371742, 39.219303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339405, 38.066547, 39.151672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539572, 0.264064, 0.799457,
		-0.565328, 0.590019, -0.576439,
		-0.623912, -0.762986, -0.169076,
		39.152233, 37.837650, 39.100948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951046, 38.674793, 39.191921>,  <39.588970, 38.371742, 39.219303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951046, 38.674793, 39.191921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870392, 38.292038, 39.275547>,  <38.821999, 38.062386, 39.325722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870392, 38.292038, 39.275547>,  <38.951046, 38.674793, 39.191921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870392, 38.292038, 39.275547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610264, 0.289693, 0.737330,
		-0.766107, 0.021089, -0.642367,
		-0.201639, -0.956888, 0.209066,
		38.809898, 38.004971, 39.338268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200603, 38.577633, 39.173714>,  <38.951046, 38.674793, 39.191921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200603, 38.577633, 39.173714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367638, 38.296494, 39.404060>,  <38.467857, 38.127811, 39.542267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367638, 38.296494, 39.404060>,  <38.200603, 38.577633, 39.173714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367638, 38.296494, 39.404060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525157, 0.330507, 0.784203,
		-0.741505, -0.629894, -0.231091,
		0.417588, -0.702850, 0.575867,
		38.492912, 38.085640, 39.576820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641430, 38.298969, 39.537891>,  <38.200603, 38.577633, 39.173714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641430, 38.298969, 39.537891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953197, 38.177250, 39.756947>,  <38.140259, 38.104218, 39.888382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953197, 38.177250, 39.756947>,  <37.641430, 38.298969, 39.537891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953197, 38.177250, 39.756947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511744, 0.195046, 0.836705,
		-0.361426, -0.932393, -0.003703,
		0.779416, -0.304302, 0.547641,
		38.187023, 38.085960, 39.921238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363811, 37.889122, 40.018246>,  <37.641430, 38.298969, 39.537891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363811, 37.889122, 40.018246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712093, 37.979393, 40.193035>,  <37.921062, 38.033554, 40.297909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712093, 37.979393, 40.193035>,  <37.363811, 37.889122, 40.018246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712093, 37.979393, 40.193035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482011, 0.215150, 0.849339,
		0.097661, -0.950148, 0.296111,
		0.870706, 0.225676, 0.436970,
		37.973305, 38.047096, 40.324127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551025, 37.158318, 39.995106>,  <37.363811, 37.889122, 40.018246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551025, 37.158318, 39.995106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335976, 36.849182, 40.129974>,  <37.206947, 36.663700, 40.210896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335976, 36.849182, 40.129974>,  <37.551025, 37.158318, 39.995106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335976, 36.849182, 40.129974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254181, -0.529825, -0.809121,
		0.803961, -0.349299, 0.481287,
		-0.537623, -0.772836, 0.337174,
		37.174690, 36.617332, 40.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939781, 36.654755, 39.924194>,  <37.551025, 37.158318, 39.995106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939781, 36.654755, 39.924194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578613, 36.483025, 39.916042>,  <37.361912, 36.379986, 39.911152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578613, 36.483025, 39.916042>,  <37.939781, 36.654755, 39.924194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578613, 36.483025, 39.916042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187124, -0.349959, -0.917885,
		0.386941, -0.832590, 0.396322,
		-0.902918, -0.429329, -0.020384,
		37.307739, 36.354225, 39.909927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994720, 35.960445, 39.637501>,  <37.939781, 36.654755, 39.924194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994720, 35.960445, 39.637501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607399, 36.043621, 39.582157>,  <37.375004, 36.093529, 39.548950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607399, 36.043621, 39.582157>,  <37.994720, 35.960445, 39.637501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607399, 36.043621, 39.582157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027773, -0.460887, -0.887024,
		-0.248218, -0.862754, 0.440505,
		-0.968306, 0.207941, -0.138361,
		37.316906, 36.106003, 39.540649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626057, 35.277470, 39.439659>,  <37.994720, 35.960445, 39.637501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626057, 35.277470, 39.439659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392826, 35.576027, 39.311337>,  <37.252888, 35.755161, 39.234341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392826, 35.576027, 39.311337>,  <37.626057, 35.277470, 39.439659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392826, 35.576027, 39.311337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096249, -0.455567, -0.884983,
		-0.806697, -0.485133, 0.337469,
		-0.583074, 0.746395, -0.320811,
		37.217903, 35.799946, 39.215092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121887, 34.941048, 39.124962>,  <37.626057, 35.277470, 39.439659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121887, 34.941048, 39.124962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108589, 35.316681, 38.988129>,  <37.100609, 35.542061, 38.906029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108589, 35.316681, 38.988129>,  <37.121887, 34.941048, 39.124962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108589, 35.316681, 38.988129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116957, -0.343575, -0.931814,
		-0.992580, 0.009029, 0.121255,
		-0.033247, 0.939082, -0.342082,
		37.098614, 35.598404, 38.885506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533413, 34.986885, 38.748428>,  <37.121887, 34.941048, 39.124962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533413, 34.986885, 38.748428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755310, 35.286045, 38.602604>,  <36.888447, 35.465542, 38.515110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755310, 35.286045, 38.602604>,  <36.533413, 34.986885, 38.748428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755310, 35.286045, 38.602604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206308, -0.300834, -0.931094,
		-0.806040, 0.591727, -0.012586,
		0.554740, 0.747902, -0.364563,
		36.921734, 35.510414, 38.493237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107571, 35.334274, 38.188572>,  <36.533413, 34.986885, 38.748428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107571, 35.334274, 38.188572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496441, 35.415291, 38.141495>,  <36.729763, 35.463902, 38.113247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496441, 35.415291, 38.141495>,  <36.107571, 35.334274, 38.188572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496441, 35.415291, 38.141495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060662, -0.267626, -0.961611,
		-0.226263, 0.941995, -0.247893,
		0.972176, 0.202539, -0.117697,
		36.788094, 35.476051, 38.106186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008347, 35.362240, 37.613163>,  <36.107571, 35.334274, 38.188572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008347, 35.362240, 37.613163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407326, 35.340786, 37.631996>,  <36.646713, 35.327911, 37.643295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407326, 35.340786, 37.631996>,  <36.008347, 35.362240, 37.613163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407326, 35.340786, 37.631996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019612, -0.428297, -0.903425,
		0.068623, 0.902045, -0.426153,
		0.997450, -0.053638, 0.047081,
		36.706562, 35.324696, 37.646122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424809, 35.812000, 37.008446>,  <36.008347, 35.362240, 37.613163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424809, 35.812000, 37.008446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669430, 35.523369, 37.138268>,  <36.816200, 35.350189, 37.216160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669430, 35.523369, 37.138268>,  <36.424809, 35.812000, 37.008446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669430, 35.523369, 37.138268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102172, -0.334745, -0.936753,
		0.784581, 0.606032, -0.130989,
		0.611550, -0.721575, 0.324554,
		36.852894, 35.306896, 37.235634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009811, 35.749207, 36.574528>,  <36.424809, 35.812000, 37.008446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009811, 35.749207, 36.574528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063160, 35.392605, 36.747700>,  <37.095169, 35.178642, 36.851604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063160, 35.392605, 36.747700>,  <37.009811, 35.749207, 36.574528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063160, 35.392605, 36.747700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309337, -0.377563, -0.872787,
		0.941553, 0.250327, 0.225419,
		0.133372, -0.891506, 0.432931,
		37.103172, 35.125153, 36.877579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594887, 35.523350, 36.250401>,  <37.009811, 35.749207, 36.574528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594887, 35.523350, 36.250401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392574, 35.208561, 36.391743>,  <37.271187, 35.019688, 36.476547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392574, 35.208561, 36.391743>,  <37.594887, 35.523350, 36.250401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392574, 35.208561, 36.391743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186810, -0.499808, -0.845750,
		0.842194, -0.361751, 0.399806,
		-0.505778, -0.786974, 0.353357,
		37.240841, 34.972469, 36.497749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983200, 34.951569, 35.921352>,  <37.594887, 35.523350, 36.250401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983200, 34.951569, 35.921352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626987, 34.809334, 36.034843>,  <37.413258, 34.723991, 36.102940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626987, 34.809334, 36.034843>,  <37.983200, 34.951569, 35.921352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626987, 34.809334, 36.034843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050814, -0.697553, -0.714730,
		0.452068, -0.622074, 0.639264,
		-0.890535, -0.355590, 0.283731,
		37.359825, 34.702656, 36.119965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.991268, 37.978027, 43.652508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727020, 37.733227, 43.478596>,  <35.568470, 37.586346, 43.374249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.727020, 37.733227, 43.478596>,  <35.991268, 37.978027, 43.652508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727020, 37.733227, 43.478596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740113, -0.433932, -0.513746,
		0.125747, -0.661180, 0.739614,
		-0.660621, -0.612000, -0.434782,
		35.528835, 37.549625, 43.348160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120132, 37.253716, 43.763771>,  <35.991268, 37.978027, 43.652508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120132, 37.253716, 43.763771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907051, 37.284149, 43.426620>,  <35.779202, 37.302410, 43.224331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907051, 37.284149, 43.426620>,  <36.120132, 37.253716, 43.763771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907051, 37.284149, 43.426620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708860, -0.503962, -0.493497,
		-0.462324, -0.860368, 0.214529,
		-0.532704, 0.076085, -0.842875,
		35.747238, 37.306973, 43.173759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243690, 36.503967, 43.367020>,  <36.120132, 37.253716, 43.763771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243690, 36.503967, 43.367020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.065048, 36.746338, 43.103687>,  <35.957863, 36.891758, 42.945686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.065048, 36.746338, 43.103687>,  <36.243690, 36.503967, 43.367020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065048, 36.746338, 43.103687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552767, -0.391725, -0.735527,
		-0.703558, -0.692394, -0.159988,
		-0.446604, 0.605922, -0.658334,
		35.931068, 36.928116, 42.906189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055637, 36.101715, 42.775070>,  <36.243690, 36.503967, 43.367020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055637, 36.101715, 42.775070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071793, 36.478157, 42.640797>,  <36.081486, 36.704021, 42.560230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071793, 36.478157, 42.640797>,  <36.055637, 36.101715, 42.775070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071793, 36.478157, 42.640797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389453, -0.324218, -0.862096,
		-0.920160, -0.095914, -0.379613,
		0.040390, 0.941108, -0.335686,
		36.083908, 36.760490, 42.540092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799248, 36.087799, 42.011936>,  <36.055637, 36.101715, 42.775070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799248, 36.087799, 42.011936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001656, 36.428715, 42.064907>,  <36.123100, 36.633266, 42.096691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001656, 36.428715, 42.064907>,  <35.799248, 36.087799, 42.011936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001656, 36.428715, 42.064907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453651, -0.132405, -0.881289,
		-0.733582, 0.506029, -0.453643,
		0.506022, 0.852293, 0.132431,
		36.153461, 36.684402, 42.104637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759178, 36.468189, 41.398289>,  <35.799248, 36.087799, 42.011936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759178, 36.468189, 41.398289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089943, 36.642265, 41.540745>,  <36.288403, 36.746712, 41.626217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089943, 36.642265, 41.540745>,  <35.759178, 36.468189, 41.398289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089943, 36.642265, 41.540745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345403, 0.106702, -0.932369,
		-0.443757, 0.893994, -0.062082,
		0.826908, 0.435188, 0.356138,
		36.338017, 36.772823, 41.647587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853870, 36.942696, 40.933197>,  <35.759178, 36.468189, 41.398289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853870, 36.942696, 40.933197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.204105, 36.906654, 41.123032>,  <36.414246, 36.885029, 41.236931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.204105, 36.906654, 41.123032>,  <35.853870, 36.942696, 40.933197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204105, 36.906654, 41.123032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471597, -0.053321, -0.880201,
		0.104616, 0.994504, -0.004194,
		0.875586, -0.090105, 0.474584,
		36.466782, 36.879623, 41.265408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260658, 37.443268, 40.593113>,  <35.853870, 36.942696, 40.933197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260658, 37.443268, 40.593113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468796, 37.151905, 40.771397>,  <36.593678, 36.977085, 40.878368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468796, 37.151905, 40.771397>,  <36.260658, 37.443268, 40.593113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468796, 37.151905, 40.771397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267449, -0.356671, -0.895130,
		0.810994, 0.584982, 0.009220,
		0.520346, -0.728411, 0.445710,
		36.624901, 36.933380, 40.905109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747952, 37.428623, 40.146381>,  <36.260658, 37.443268, 40.593113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747952, 37.428623, 40.146381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802910, 37.083252, 40.340542>,  <36.835884, 36.876030, 40.457039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802910, 37.083252, 40.340542>,  <36.747952, 37.428623, 40.146381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802910, 37.083252, 40.340542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484185, -0.368967, -0.793365,
		0.864111, 0.344026, 0.367366,
		0.137392, -0.863429, 0.485400,
		36.844128, 36.824223, 40.486160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224426, 37.677784, 40.694252>,  <36.747952, 37.428623, 40.146381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224426, 37.677784, 40.694252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524563, 37.942043, 40.684940>,  <37.704643, 38.100597, 40.679352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524563, 37.942043, 40.684940>,  <37.224426, 37.677784, 40.694252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524563, 37.942043, 40.684940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319916, 0.393717, 0.861766,
		0.578487, -0.639168, 0.506771,
		0.750338, 0.660645, -0.023279,
		37.749664, 38.140236, 40.677956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484882, 37.708832, 41.423424>,  <37.224426, 37.677784, 40.694252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484882, 37.708832, 41.423424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621429, 38.041523, 41.248287>,  <37.703358, 38.241138, 41.143208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.621429, 38.041523, 41.248287>,  <37.484882, 37.708832, 41.423424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621429, 38.041523, 41.248287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374413, 0.547593, 0.748302,
		0.862139, -0.091512, 0.498339,
		0.341366, 0.831725, -0.437839,
		37.723839, 38.291042, 41.116936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912430, 38.109135, 41.904453>,  <37.484882, 37.708832, 41.423424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912430, 38.109135, 41.904453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.793839, 38.379372, 41.634438>,  <37.722683, 38.541515, 41.472427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.793839, 38.379372, 41.634438>,  <37.912430, 38.109135, 41.904453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793839, 38.379372, 41.634438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287008, 0.611116, 0.737674,
		0.910894, 0.412445, 0.012718,
		-0.296477, 0.675593, -0.675037,
		37.704895, 38.582050, 41.431927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121433, 38.701015, 42.260300>,  <37.912430, 38.109135, 41.904453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121433, 38.701015, 42.260300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884064, 38.834827, 41.967468>,  <37.741642, 38.915115, 41.791771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884064, 38.834827, 41.967468>,  <38.121433, 38.701015, 42.260300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884064, 38.834827, 41.967468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351161, 0.710808, 0.609458,
		0.724249, 0.618743, -0.304336,
		-0.593422, 0.334528, -0.732080,
		37.706036, 38.935184, 41.747845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144722, 39.421329, 42.296135>,  <38.121433, 38.701015, 42.260300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144722, 39.421329, 42.296135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803646, 39.349201, 42.100010>,  <37.598999, 39.305923, 41.982334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803646, 39.349201, 42.100010>,  <38.144722, 39.421329, 42.296135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803646, 39.349201, 42.100010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471949, 0.668338, 0.574967,
		0.224018, 0.721672, -0.654986,
		-0.852690, -0.180317, -0.490312,
		37.547840, 39.295105, 41.952915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800133, 40.099426, 42.072338>,  <38.144722, 39.421329, 42.296135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800133, 40.099426, 42.072338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535252, 39.806545, 42.136051>,  <37.376324, 39.630817, 42.174278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535252, 39.806545, 42.136051>,  <37.800133, 40.099426, 42.072338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535252, 39.806545, 42.136051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504048, 0.592554, 0.628343,
		-0.554457, 0.335803, -0.761454,
		-0.662203, -0.732199, 0.159285,
		37.336590, 39.586884, 42.183838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156517, 40.500885, 42.078720>,  <37.800133, 40.099426, 42.072338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156517, 40.500885, 42.078720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115948, 40.149189, 42.264900>,  <37.091606, 39.938171, 42.376610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115948, 40.149189, 42.264900>,  <37.156517, 40.500885, 42.078720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115948, 40.149189, 42.264900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655205, 0.411102, 0.633799,
		-0.748611, -0.240684, -0.617780,
		-0.101426, -0.879242, 0.465453,
		37.085522, 39.885418, 42.404537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415844, 40.609295, 42.258808>,  <37.156517, 40.500885, 42.078720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415844, 40.609295, 42.258808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535118, 40.272964, 42.439518>,  <36.606682, 40.071167, 42.547943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535118, 40.272964, 42.439518>,  <36.415844, 40.609295, 42.258808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535118, 40.272964, 42.439518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616535, 0.191659, 0.763643,
		-0.728678, -0.506240, -0.461249,
		0.298184, -0.840826, 0.451772,
		36.624573, 40.020718, 42.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787102, 40.257473, 42.511330>,  <36.415844, 40.609295, 42.258808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787102, 40.257473, 42.511330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084538, 40.113113, 42.736481>,  <36.262997, 40.026497, 42.871571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.084538, 40.113113, 42.736481>,  <35.787102, 40.257473, 42.511330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084538, 40.113113, 42.736481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546810, 0.156256, 0.822547,
		-0.384811, -0.919421, -0.081154,
		0.743585, -0.360901, 0.562877,
		36.307613, 40.004845, 42.905342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474297, 39.852394, 43.053650>,  <35.787102, 40.257473, 42.511330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474297, 39.852394, 43.053650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839993, 39.975590, 43.158958>,  <36.059410, 40.049507, 43.222145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839993, 39.975590, 43.158958>,  <35.474297, 39.852394, 43.053650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839993, 39.975590, 43.158958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379023, 0.420386, 0.824389,
		0.143228, -0.853473, 0.501068,
		0.914236, 0.307992, 0.263275,
		36.114262, 40.067989, 43.237942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442776, 39.650578, 43.697346>,  <35.474297, 39.852394, 43.053650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442776, 39.650578, 43.697346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761009, 39.891846, 43.720081>,  <35.951950, 40.036606, 43.733723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761009, 39.891846, 43.720081>,  <35.442776, 39.650578, 43.697346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761009, 39.891846, 43.720081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349585, 0.380414, 0.856199,
		0.494813, -0.701047, 0.513511,
		0.795582, 0.603174, 0.056842,
		35.999683, 40.072796, 43.737133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967682, 39.470528, 44.181316>,  <35.442776, 39.650578, 43.697346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967682, 39.470528, 44.181316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018616, 39.863750, 44.128571>,  <36.049175, 40.099682, 44.096924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018616, 39.863750, 44.128571>,  <35.967682, 39.470528, 44.181316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018616, 39.863750, 44.128571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236982, 0.159253, 0.958372,
		0.963133, -0.090786, 0.253245,
		0.127337, 0.983054, -0.131868,
		36.056816, 40.158669, 44.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150841, 39.726635, 44.840004>,  <35.967682, 39.470528, 44.181316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150841, 39.726635, 44.840004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053570, 40.073559, 44.666275>,  <35.995205, 40.281712, 44.562038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053570, 40.073559, 44.666275>,  <36.150841, 39.726635, 44.840004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053570, 40.073559, 44.666275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347174, 0.340276, 0.873889,
		0.905722, 0.363300, 0.218358,
		-0.243182, 0.867309, -0.434324,
		35.980614, 40.333752, 44.535976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506393, 40.265263, 45.303753>,  <36.150841, 39.726635, 44.840004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506393, 40.265263, 45.303753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211006, 40.424667, 45.086182>,  <36.033775, 40.520309, 44.955639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211006, 40.424667, 45.086182>,  <36.506393, 40.265263, 45.303753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211006, 40.424667, 45.086182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341226, 0.474900, 0.811193,
		0.581581, 0.784641, -0.214715,
		-0.738464, 0.398508, -0.543933,
		35.989468, 40.544220, 44.923000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.234322, 39.734810, 41.600285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.479647, 39.474857, 41.779842>,  <29.626841, 39.318886, 41.887577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.479647, 39.474857, 41.779842>,  <29.234322, 39.734810, 41.600285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479647, 39.474857, 41.779842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106505, -0.495100, -0.862283,
		0.782628, 0.576658, -0.234435,
		0.613311, -0.649879, 0.448896,
		29.663639, 39.279892, 41.914513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773932, 39.566620, 41.097267>,  <29.234322, 39.734810, 41.600285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773932, 39.566620, 41.097267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.839735, 39.280102, 41.368519>,  <29.879217, 39.108192, 41.531269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.839735, 39.280102, 41.368519>,  <29.773932, 39.566620, 41.097267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839735, 39.280102, 41.368519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154858, -0.660217, -0.734938,
		0.974144, 0.225916, 0.002313,
		0.164507, -0.716293, 0.678131,
		29.889088, 39.065212, 41.571957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406193, 39.438618, 40.957329>,  <29.773932, 39.566620, 41.097267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406193, 39.438618, 40.957329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232412, 39.126396, 41.137104>,  <30.128143, 38.939064, 41.244968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.232412, 39.126396, 41.137104>,  <30.406193, 39.438618, 40.957329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232412, 39.126396, 41.137104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201439, -0.570552, -0.796174,
		0.877881, -0.255365, 0.405111,
		-0.434451, -0.780551, 0.449436,
		30.102077, 38.892231, 41.271935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907421, 38.907024, 41.067974>,  <30.406193, 39.438618, 40.957329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907421, 38.907024, 41.067974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.564489, 38.701294, 41.076466>,  <30.358730, 38.577854, 41.081562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.564489, 38.701294, 41.076466>,  <30.907421, 38.907024, 41.067974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564489, 38.701294, 41.076466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356524, -0.623025, -0.696226,
		0.371317, -0.589326, 0.717508,
		-0.857330, -0.514329, 0.021231,
		30.307291, 38.546997, 41.082836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048065, 38.141644, 41.063560>,  <30.907421, 38.907024, 41.067974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048065, 38.141644, 41.063560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.677263, 38.178226, 40.918068>,  <30.454782, 38.200176, 40.830772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.677263, 38.178226, 40.918068>,  <31.048065, 38.141644, 41.063560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677263, 38.178226, 40.918068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252125, -0.566038, -0.784879,
		-0.277667, -0.819291, 0.501661,
		-0.927003, 0.091454, -0.363734,
		30.399162, 38.205662, 40.808949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973856, 37.481480, 40.692646>,  <31.048065, 38.141644, 41.063560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973856, 37.481480, 40.692646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680794, 37.715797, 40.554047>,  <30.504957, 37.856388, 40.470886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.680794, 37.715797, 40.554047>,  <30.973856, 37.481480, 40.692646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680794, 37.715797, 40.554047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037066, -0.474002, -0.879744,
		-0.679592, -0.657390, 0.325565,
		-0.732653, 0.585799, -0.346495,
		30.460999, 37.891537, 40.450100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492676, 37.057404, 40.363842>,  <30.973856, 37.481480, 40.692646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492676, 37.057404, 40.363842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.429989, 37.422668, 40.213337>,  <30.392376, 37.641827, 40.123035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.429989, 37.422668, 40.213337>,  <30.492676, 37.057404, 40.363842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429989, 37.422668, 40.213337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103889, -0.394099, -0.913177,
		-0.982164, -0.104022, 0.156630,
		-0.156718, 0.913162, -0.376263,
		30.382973, 37.696617, 40.100456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153528, 36.865299, 39.734108>,  <30.492676, 37.057404, 40.363842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153528, 36.865299, 39.734108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270151, 37.243290, 39.674767>,  <30.340124, 37.470085, 39.639160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.270151, 37.243290, 39.674767>,  <30.153528, 36.865299, 39.734108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270151, 37.243290, 39.674767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508797, -0.284536, -0.812505,
		-0.810013, 0.161410, -0.563761,
		0.291557, 0.944979, -0.148353,
		30.357618, 37.526783, 39.630260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968405, 37.043846, 39.045792>,  <30.153528, 36.865299, 39.734108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968405, 37.043846, 39.045792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263432, 37.283489, 39.170410>,  <30.440449, 37.427277, 39.245182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.263432, 37.283489, 39.170410>,  <29.968405, 37.043846, 39.045792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263432, 37.283489, 39.170410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470750, -0.125408, -0.873308,
		-0.484136, 0.790785, -0.374527,
		0.737568, 0.599109, 0.311548,
		30.484701, 37.463223, 39.263874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997759, 37.551308, 38.413845>,  <29.968405, 37.043846, 39.045792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997759, 37.551308, 38.413845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343241, 37.570564, 38.614521>,  <30.550529, 37.582119, 38.734928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343241, 37.570564, 38.614521>,  <29.997759, 37.551308, 38.413845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343241, 37.570564, 38.614521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503695, -0.116802, -0.855949,
		0.017389, 0.991987, -0.125134,
		0.863706, 0.048146, 0.501691,
		30.602352, 37.585007, 38.765030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331297, 38.026531, 38.111893>,  <29.997759, 37.551308, 38.413845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331297, 38.026531, 38.111893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.610363, 37.801277, 38.289047>,  <30.777802, 37.666126, 38.395340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.610363, 37.801277, 38.289047>,  <30.331297, 38.026531, 38.111893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610363, 37.801277, 38.289047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506930, -0.048805, -0.860604,
		0.506249, 0.824925, 0.251418,
		0.697663, -0.563131, 0.442887,
		30.819662, 37.632339, 38.421913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968410, 38.361904, 37.978172>,  <30.331297, 38.026531, 38.111893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968410, 38.361904, 37.978172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.069986, 37.997093, 38.106998>,  <31.130932, 37.778206, 38.184296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.069986, 37.997093, 38.106998>,  <30.968410, 38.361904, 37.978172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069986, 37.997093, 38.106998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622260, -0.100874, -0.776284,
		0.740478, 0.397538, 0.541901,
		0.253938, -0.912024, 0.322067,
		31.146168, 37.723484, 38.203617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768095, 38.299793, 38.053505>,  <30.968410, 38.361904, 37.978172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768095, 38.299793, 38.053505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633577, 37.923683, 38.032387>,  <31.552866, 37.698017, 38.019718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633577, 37.923683, 38.032387>,  <31.768095, 38.299793, 38.053505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633577, 37.923683, 38.032387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594749, -0.168581, -0.786037,
		0.730191, -0.295739, 0.615921,
		-0.336294, -0.940276, -0.052794,
		31.532688, 37.641602, 38.016548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401924, 37.895008, 37.914658>,  <31.768095, 38.299793, 38.053505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401924, 37.895008, 37.914658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.094780, 37.662422, 37.807110>,  <31.910494, 37.522869, 37.742580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.094780, 37.662422, 37.807110>,  <32.401924, 37.895008, 37.914658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094780, 37.662422, 37.807110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478123, -0.240841, -0.844626,
		0.426367, -0.777106, 0.462945,
		-0.767860, -0.581465, -0.268865,
		31.864422, 37.487984, 37.726452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034031, 38.243240, 37.963696>,  <32.401924, 37.895008, 37.914658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034031, 38.243240, 37.963696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117153, 38.549671, 37.720406>,  <33.167027, 38.733532, 37.574432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117153, 38.549671, 37.720406>,  <33.034031, 38.243240, 37.963696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117153, 38.549671, 37.720406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104503, 0.635627, 0.764891,
		0.972571, -0.095390, 0.212146,
		0.207809, 0.766081, -0.608224,
		33.179497, 38.779495, 37.537937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526718, 38.637997, 38.179520>,  <33.034031, 38.243240, 37.963696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526718, 38.637997, 38.179520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293678, 38.895233, 37.980717>,  <33.153854, 39.049576, 37.861435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293678, 38.895233, 37.980717>,  <33.526718, 38.637997, 38.179520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293678, 38.895233, 37.980717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069022, 0.570146, 0.818639,
		0.809824, 0.511242, -0.287779,
		-0.582599, 0.643090, -0.497005,
		33.118900, 39.088161, 37.831615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809135, 39.262016, 38.320271>,  <33.526718, 38.637997, 38.179520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809135, 39.262016, 38.320271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439533, 39.354988, 38.198814>,  <33.217773, 39.410770, 38.125942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439533, 39.354988, 38.198814>,  <33.809135, 39.262016, 38.320271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439533, 39.354988, 38.198814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143678, 0.524844, 0.838984,
		0.354371, 0.818849, -0.451561,
		-0.924001, 0.232433, -0.303641,
		33.162334, 39.424717, 38.107723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623203, 40.056004, 38.535675>,  <33.809135, 39.262016, 38.320271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623203, 40.056004, 38.535675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269794, 39.873337, 38.494038>,  <33.057747, 39.763737, 38.469055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269794, 39.873337, 38.494038>,  <33.623203, 40.056004, 38.535675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269794, 39.873337, 38.494038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348598, 0.492699, 0.797325,
		-0.312827, 0.740744, -0.594507,
		-0.883526, -0.456669, -0.104092,
		33.004738, 39.736336, 38.462811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196590, 40.602478, 38.540897>,  <33.623203, 40.056004, 38.535675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196590, 40.602478, 38.540897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940891, 40.299557, 38.594337>,  <32.787472, 40.117802, 38.626400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.940891, 40.299557, 38.594337>,  <33.196590, 40.602478, 38.540897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940891, 40.299557, 38.594337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477700, 0.527206, 0.702750,
		-0.602630, 0.385413, -0.698781,
		-0.639250, -0.757305, 0.133598,
		32.749115, 40.072365, 38.634418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543777, 40.869823, 38.562000>,  <33.196590, 40.602478, 38.540897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543777, 40.869823, 38.562000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514580, 40.522358, 38.757999>,  <32.497059, 40.313881, 38.875599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.514580, 40.522358, 38.757999>,  <32.543777, 40.869823, 38.562000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514580, 40.522358, 38.757999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512834, 0.454074, 0.728573,
		-0.855379, -0.198103, -0.478625,
		-0.072999, -0.868661, 0.490000,
		32.492680, 40.261761, 38.904999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919256, 40.786716, 38.821075>,  <32.543777, 40.869823, 38.562000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919256, 40.786716, 38.821075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111599, 40.515781, 39.043785>,  <32.227005, 40.353222, 39.177410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111599, 40.515781, 39.043785>,  <31.919256, 40.786716, 38.821075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111599, 40.515781, 39.043785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527523, 0.283730, 0.800760,
		-0.700355, -0.678761, -0.220876,
		0.480856, -0.677333, 0.556774,
		32.255856, 40.312580, 39.210819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406317, 40.351112, 39.035652>,  <31.919256, 40.786716, 38.821075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406317, 40.351112, 39.035652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711746, 40.315685, 39.291500>,  <31.895004, 40.294430, 39.445007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.711746, 40.315685, 39.291500>,  <31.406317, 40.351112, 39.035652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711746, 40.315685, 39.291500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579444, 0.343140, 0.739256,
		-0.284953, -0.935099, 0.210692,
		0.763575, -0.088569, 0.639616,
		31.940819, 40.289116, 39.483383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060274, 40.231934, 39.672340>,  <31.406317, 40.351112, 39.035652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060274, 40.231934, 39.672340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.431530, 40.307312, 39.800739>,  <31.654284, 40.352539, 39.877781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.431530, 40.307312, 39.800739>,  <31.060274, 40.231934, 39.672340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431530, 40.307312, 39.800739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369934, 0.371388, 0.851598,
		0.041268, -0.909152, 0.414415,
		0.928141, 0.188450, 0.321000,
		31.709972, 40.363846, 39.897038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158609, 40.090481, 40.464504>,  <31.060274, 40.231934, 39.672340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158609, 40.090481, 40.464504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.454563, 40.350422, 40.394924>,  <31.632135, 40.506386, 40.353176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.454563, 40.350422, 40.394924>,  <31.158609, 40.090481, 40.464504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454563, 40.350422, 40.394924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231334, 0.488582, 0.841292,
		0.631708, -0.582218, 0.511828,
		0.739885, 0.649853, -0.173955,
		31.676529, 40.545380, 40.342739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686628, 40.097240, 41.042122>,  <31.158609, 40.090481, 40.464504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686628, 40.097240, 41.042122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690622, 40.456261, 40.865803>,  <31.693018, 40.671673, 40.760010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.690622, 40.456261, 40.865803>,  <31.686628, 40.097240, 41.042122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690622, 40.456261, 40.865803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194907, 0.434113, 0.879521,
		0.980771, 0.077133, 0.179274,
		0.009985, 0.897550, -0.440799,
		31.693617, 40.725525, 40.733562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053242, 40.598988, 41.568451>,  <31.686628, 40.097240, 41.042122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053242, 40.598988, 41.568451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925207, 40.880074, 41.314289>,  <31.848387, 41.048725, 41.161793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925207, 40.880074, 41.314289>,  <32.053242, 40.598988, 41.568451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925207, 40.880074, 41.314289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014306, 0.667031, 0.744892,
		0.947281, 0.247518, -0.203453,
		-0.320084, 0.702712, -0.635407,
		31.829182, 41.090889, 41.123669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442989, 41.214615, 41.668934>,  <32.053242, 40.598988, 41.568451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442989, 41.214615, 41.668934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115520, 41.343941, 41.479095>,  <31.919039, 41.421535, 41.365192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115520, 41.343941, 41.479095>,  <32.442989, 41.214615, 41.668934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115520, 41.343941, 41.479095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149515, 0.677932, 0.719759,
		0.554453, 0.660207, -0.506665,
		-0.818674, 0.323318, -0.474592,
		31.869919, 41.440937, 41.336720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496445, 41.989471, 41.611965>,  <32.442989, 41.214615, 41.668934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496445, 41.989471, 41.611965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.109722, 41.888329, 41.597225>,  <31.877689, 41.827644, 41.588379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.109722, 41.888329, 41.597225>,  <32.496445, 41.989471, 41.611965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109722, 41.888329, 41.597225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177008, 0.558713, 0.810251,
		-0.184286, 0.789876, -0.584923,
		-0.966802, -0.252854, -0.036852,
		31.819681, 41.812473, 41.586170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622414, 42.786518, 41.633701>,  <32.496445, 41.989471, 41.611965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622414, 42.786518, 41.633701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990070, 42.824894, 41.786526>,  <33.210667, 42.847919, 41.878220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990070, 42.824894, 41.786526>,  <32.622414, 42.786518, 41.633701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990070, 42.824894, 41.786526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392289, -0.311106, -0.865634,
		0.035812, 0.945520, -0.323587,
		0.919145, 0.095939, 0.382058,
		33.265812, 42.853676, 41.901142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069508, 43.031273, 41.024807>,  <32.622414, 42.786518, 41.633701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069508, 43.031273, 41.024807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328865, 42.903378, 41.301167>,  <33.484482, 42.826641, 41.466984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328865, 42.903378, 41.301167>,  <33.069508, 43.031273, 41.024807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328865, 42.903378, 41.301167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597932, -0.347859, -0.722130,
		0.471230, 0.881341, -0.034369,
		0.648398, -0.319739, 0.690903,
		33.523384, 42.807457, 41.508438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771488, 43.225262, 40.861965>,  <33.069508, 43.031273, 41.024807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771488, 43.225262, 40.861965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825485, 42.928566, 41.124752>,  <33.857883, 42.750549, 41.282425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825485, 42.928566, 41.124752>,  <33.771488, 43.225262, 40.861965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825485, 42.928566, 41.124752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609158, -0.460803, -0.645435,
		0.781474, 0.487328, 0.389627,
		0.134997, -0.741736, 0.656966,
		33.865986, 42.706047, 41.321842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505630, 43.116940, 40.896091>,  <33.771488, 43.225262, 40.861965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505630, 43.116940, 40.896091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.342785, 42.769871, 41.010220>,  <34.245079, 42.561630, 41.078697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.342785, 42.769871, 41.010220>,  <34.505630, 43.116940, 40.896091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342785, 42.769871, 41.010220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515726, -0.476185, -0.712232,
		0.753846, -0.142815, 0.641342,
		-0.407115, -0.867670, 0.285316,
		34.220650, 42.509571, 41.095814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066467, 42.669857, 40.690731>,  <34.505630, 43.116940, 40.896091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066467, 42.669857, 40.690731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729500, 42.456158, 40.718735>,  <34.527317, 42.327938, 40.735535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729500, 42.456158, 40.718735>,  <35.066467, 42.669857, 40.690731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729500, 42.456158, 40.718735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341962, -0.630518, -0.696784,
		0.416399, -0.563046, 0.713856,
		-0.842421, -0.534253, 0.070007,
		34.476772, 42.295883, 40.739738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349236, 42.018936, 40.728207>,  <35.066467, 42.669857, 40.690731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349236, 42.018936, 40.728207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978241, 42.002102, 40.579620>,  <34.755642, 41.992001, 40.490467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.978241, 42.002102, 40.579620>,  <35.349236, 42.018936, 40.728207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978241, 42.002102, 40.579620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318871, -0.607740, -0.727306,
		-0.195145, -0.793020, 0.577094,
		-0.927491, -0.042088, -0.371468,
		34.699993, 41.989475, 40.468182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459908, 41.684631, 40.210602>,  <35.349236, 42.018936, 40.728207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459908, 41.684631, 40.210602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072495, 41.748756, 40.134453>,  <34.840046, 41.787231, 40.088764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072495, 41.748756, 40.134453>,  <35.459908, 41.684631, 40.210602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072495, 41.748756, 40.134453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098525, -0.455449, -0.884793,
		-0.228552, -0.875708, 0.425323,
		-0.968534, 0.160316, -0.190373,
		34.781933, 41.796852, 40.077339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048489, 41.012398, 40.107693>,  <35.459908, 41.684631, 40.210602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048489, 41.012398, 40.107693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886341, 41.327488, 39.922153>,  <34.789051, 41.516544, 39.810829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886341, 41.327488, 39.922153>,  <35.048489, 41.012398, 40.107693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886341, 41.327488, 39.922153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223842, -0.406433, -0.885837,
		-0.886324, -0.462921, -0.011571,
		-0.405370, 0.787728, -0.463852,
		34.764729, 41.563805, 39.782997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717457, 40.730869, 39.587597>,  <35.048489, 41.012398, 40.107693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717457, 40.730869, 39.587597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722607, 41.105915, 39.448624>,  <34.725697, 41.330944, 39.365238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722607, 41.105915, 39.448624>,  <34.717457, 40.730869, 39.587597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722607, 41.105915, 39.448624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258108, -0.338805, -0.904760,
		-0.966030, -0.078023, -0.246369,
		0.012879, 0.937616, -0.347435,
		34.726471, 41.387199, 39.344395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376163, 40.782101, 38.941105>,  <34.717457, 40.730869, 39.587597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376163, 40.782101, 38.941105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602039, 41.111633, 38.960815>,  <34.737564, 41.309353, 38.972641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602039, 41.111633, 38.960815>,  <34.376163, 40.782101, 38.941105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602039, 41.111633, 38.960815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360195, -0.192289, -0.912844,
		-0.742555, 0.533220, -0.405324,
		0.564687, 0.823833, 0.049278,
		34.771446, 41.358784, 38.975597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286125, 41.165810, 38.264244>,  <34.376163, 40.782101, 38.941105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286125, 41.165810, 38.264244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.615265, 41.355007, 38.390224>,  <34.812748, 41.468525, 38.465813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.615265, 41.355007, 38.390224>,  <34.286125, 41.165810, 38.264244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615265, 41.355007, 38.390224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460054, -0.229161, -0.857809,
		-0.333560, 0.850745, -0.406167,
		0.822854, 0.472989, 0.314949,
		34.862122, 41.496902, 38.484711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446751, 41.715141, 37.714062>,  <34.286125, 41.165810, 38.264244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446751, 41.715141, 37.714062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782234, 41.631847, 37.915340>,  <34.983524, 41.581871, 38.036106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782234, 41.631847, 37.915340>,  <34.446751, 41.715141, 37.714062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782234, 41.631847, 37.915340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481379, -0.148579, -0.863828,
		0.254646, 0.966727, -0.024373,
		0.838707, -0.208238, 0.503197,
		35.033848, 41.569378, 38.066299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009686, 42.240852, 37.451141>,  <34.446751, 41.715141, 37.714062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009686, 42.240852, 37.451141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.190166, 41.919964, 37.607529>,  <35.298454, 41.727432, 37.701363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.190166, 41.919964, 37.607529>,  <35.009686, 42.240852, 37.451141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190166, 41.919964, 37.607529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651758, -0.003044, -0.758420,
		0.609611, 0.597020, 0.521481,
		0.451205, -0.802221, 0.390968,
		35.325527, 41.679298, 37.724819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710678, 42.273716, 37.351517>,  <35.009686, 42.240852, 37.451141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710678, 42.273716, 37.351517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652607, 41.885967, 37.430756>,  <35.617764, 41.653316, 37.478298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.652607, 41.885967, 37.430756>,  <35.710678, 42.273716, 37.351517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652607, 41.885967, 37.430756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678389, -0.243267, -0.693260,
		0.720217, 0.033741, 0.692927,
		-0.145175, -0.969372, 0.198095,
		35.609055, 41.595154, 37.490185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.654978, 27.476042, 34.992352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921185, 27.604229, 35.261986>,  <30.080908, 27.681141, 35.423767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921185, 27.604229, 35.261986>,  <29.654978, 27.476042, 34.992352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921185, 27.604229, 35.261986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419450, 0.907612, -0.017370,
		-0.617374, -0.271186, 0.738449,
		0.665515, 0.320466, 0.674085,
		30.120838, 27.700369, 35.464211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194370, 27.825954, 35.503010>,  <29.654978, 27.476042, 34.992352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194370, 27.825954, 35.503010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570068, 27.954807, 35.550423>,  <29.795486, 28.032118, 35.578873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570068, 27.954807, 35.550423>,  <29.194370, 27.825954, 35.503010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570068, 27.954807, 35.550423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334875, 0.935770, 0.110425,
		-0.075351, -0.143411, 0.986791,
		0.939245, 0.322131, 0.118536,
		29.851841, 28.051447, 35.585983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353275, 28.116245, 36.194321>,  <29.194370, 27.825954, 35.503010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353275, 28.116245, 36.194321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633123, 28.298510, 35.974174>,  <29.801033, 28.407867, 35.842087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633123, 28.298510, 35.974174>,  <29.353275, 28.116245, 36.194321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633123, 28.298510, 35.974174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322539, 0.888724, 0.325787,
		0.637571, -0.050414, 0.768740,
		0.699622, 0.455661, -0.550364,
		29.843010, 28.435207, 35.809067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514469, 28.704638, 36.584007>,  <29.353275, 28.116245, 36.194321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514469, 28.704638, 36.584007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663551, 28.790657, 36.222931>,  <29.753000, 28.842268, 36.006287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663551, 28.790657, 36.222931>,  <29.514469, 28.704638, 36.584007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663551, 28.790657, 36.222931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199483, 0.968601, 0.148387,
		0.906255, 0.124766, 0.403901,
		0.372705, 0.215048, -0.902688,
		29.775362, 28.855171, 35.952126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896839, 29.320122, 36.668621>,  <29.514469, 28.704638, 36.584007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896839, 29.320122, 36.668621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801117, 29.265736, 36.284069>,  <29.743683, 29.233103, 36.053337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.801117, 29.265736, 36.284069>,  <29.896839, 29.320122, 36.668621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801117, 29.265736, 36.284069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310338, 0.948919, -0.056955,
		0.920013, 0.284722, -0.269278,
		-0.239306, -0.135967, -0.961377,
		29.729324, 29.224945, 35.995655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083490, 29.951509, 36.424927>,  <29.896839, 29.320122, 36.668621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083490, 29.951509, 36.424927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835480, 29.795282, 36.152744>,  <29.686674, 29.701546, 35.989433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.835480, 29.795282, 36.152744>,  <30.083490, 29.951509, 36.424927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835480, 29.795282, 36.152744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361521, 0.911952, -0.194026,
		0.696327, 0.125700, -0.706632,
		-0.620025, -0.390568, -0.680460,
		29.649471, 29.678112, 35.948605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091942, 30.502926, 36.015957>,  <30.083490, 29.951509, 36.424927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091942, 30.502926, 36.015957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.786947, 30.268335, 35.906662>,  <29.603951, 30.127581, 35.841084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.786947, 30.268335, 35.906662>,  <30.091942, 30.502926, 36.015957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786947, 30.268335, 35.906662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541611, 0.809595, -0.226305,
		0.353937, -0.024564, -0.934947,
		-0.762487, -0.586475, -0.273241,
		29.558201, 30.092392, 35.824688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901543, 30.738625, 35.392990>,  <30.091942, 30.502926, 36.015957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901543, 30.738625, 35.392990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581663, 30.538536, 35.525814>,  <29.389736, 30.418484, 35.605507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581663, 30.538536, 35.525814>,  <29.901543, 30.738625, 35.392990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581663, 30.538536, 35.525814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575783, 0.795692, -0.188013,
		-0.170166, -0.341546, -0.924332,
		-0.799699, -0.500221, 0.332056,
		29.341753, 30.388470, 35.625431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320665, 30.799446, 34.938900>,  <29.901543, 30.738625, 35.392990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320665, 30.799446, 34.938900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121492, 30.743971, 35.281322>,  <29.001989, 30.710686, 35.486774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121492, 30.743971, 35.281322>,  <29.320665, 30.799446, 34.938900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121492, 30.743971, 35.281322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684798, 0.668540, -0.290010,
		-0.532087, -0.730630, -0.427859,
		-0.497931, -0.138686, 0.856055,
		28.972113, 30.702366, 35.538139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672754, 30.922010, 34.667473>,  <29.320665, 30.799446, 34.938900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672754, 30.922010, 34.667473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627590, 30.938782, 35.064560>,  <28.600492, 30.948845, 35.302814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627590, 30.938782, 35.064560>,  <28.672754, 30.922010, 34.667473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627590, 30.938782, 35.064560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652952, 0.749953, -0.105940,
		-0.748936, -0.660160, -0.057300,
		-0.112909, 0.041928, 0.992720,
		28.593718, 30.951359, 35.362377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952444, 30.957890, 34.750904>,  <28.672754, 30.922010, 34.667473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952444, 30.957890, 34.750904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108601, 31.100931, 35.090248>,  <28.202295, 31.186756, 35.293854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108601, 31.100931, 35.090248>,  <27.952444, 30.957890, 34.750904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108601, 31.100931, 35.090248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697246, 0.716585, 0.018795,
		-0.601200, -0.598853, 0.529087,
		0.390392, 0.357604, 0.848359,
		28.225718, 31.208212, 35.344757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438126, 31.081310, 35.279240>,  <27.952444, 30.957890, 34.750904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438126, 31.081310, 35.279240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744881, 31.315434, 35.384537>,  <27.928934, 31.455908, 35.447716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.744881, 31.315434, 35.384537>,  <27.438126, 31.081310, 35.279240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744881, 31.315434, 35.384537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605088, 0.796125, -0.007378,
		-0.213892, -0.153627, 0.964701,
		0.766889, 0.585307, 0.263243,
		27.974947, 31.491026, 35.463509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194786, 31.482553, 35.840816>,  <27.438126, 31.081310, 35.279240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194786, 31.482553, 35.840816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511192, 31.670599, 35.684208>,  <27.701036, 31.783426, 35.590240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.511192, 31.670599, 35.684208>,  <27.194786, 31.482553, 35.840816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511192, 31.670599, 35.684208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514107, 0.857680, -0.008839,
		0.331649, 0.208278, 0.920125,
		0.791014, 0.470112, -0.391526,
		27.748497, 31.811632, 35.566750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156054, 32.185867, 36.078800>,  <27.194786, 31.482553, 35.840816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156054, 32.185867, 36.078800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384907, 32.215759, 35.752102>,  <27.522219, 32.233692, 35.556084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.384907, 32.215759, 35.752102>,  <27.156054, 32.185867, 36.078800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384907, 32.215759, 35.752102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406304, 0.890878, -0.203109,
		0.712447, 0.448054, 0.540062,
		0.572133, 0.074725, -0.816749,
		27.556547, 32.238178, 35.507076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435532, 32.861866, 36.171108>,  <27.156054, 32.185867, 36.078800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435532, 32.861866, 36.171108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478617, 32.741425, 35.792114>,  <27.504469, 32.669159, 35.564716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478617, 32.741425, 35.792114>,  <27.435532, 32.861866, 36.171108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478617, 32.741425, 35.792114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489409, 0.813498, -0.314165,
		0.865376, 0.497549, -0.059739,
		0.107715, -0.301108, -0.947487,
		27.510931, 32.651093, 35.507870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741817, 33.422684, 35.816177>,  <27.435532, 32.861866, 36.171108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741817, 33.422684, 35.816177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555944, 33.213818, 35.530125>,  <27.444420, 33.088497, 35.358494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555944, 33.213818, 35.530125>,  <27.741817, 33.422684, 35.816177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555944, 33.213818, 35.530125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419233, 0.841106, -0.341738,
		0.779944, 0.141006, -0.609758,
		-0.464684, -0.522167, -0.715129,
		27.416540, 33.057167, 35.315586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697969, 33.913326, 35.310738>,  <27.741817, 33.422684, 35.816177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697969, 33.913326, 35.310738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.448397, 33.630882, 35.176800>,  <27.298653, 33.461418, 35.096436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.448397, 33.630882, 35.176800>,  <27.697969, 33.913326, 35.310738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448397, 33.630882, 35.176800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623752, 0.708100, -0.330950,
		0.470792, 0.002372, -0.882241,
		-0.623930, -0.706108, -0.334848,
		27.261217, 33.419048, 35.076344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545313, 34.068718, 34.687378>,  <27.697969, 33.913326, 35.310738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545313, 34.068718, 34.687378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230928, 33.844341, 34.791386>,  <27.042297, 33.709717, 34.853790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230928, 33.844341, 34.791386>,  <27.545313, 34.068718, 34.687378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230928, 33.844341, 34.791386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613096, 0.652793, -0.444943,
		0.079849, -0.509125, -0.856981,
		-0.785963, -0.560940, 0.260018,
		26.995140, 33.676060, 34.869392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055788, 33.985901, 34.060337>,  <27.545313, 34.068718, 34.687378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055788, 33.985901, 34.060337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827118, 33.940586, 34.385384>,  <26.689915, 33.913395, 34.580414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827118, 33.940586, 34.385384>,  <27.055788, 33.985901, 34.060337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827118, 33.940586, 34.385384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725234, 0.532939, -0.435903,
		-0.383693, -0.838536, -0.386830,
		-0.571677, -0.113289, 0.812620,
		26.655615, 33.906601, 34.629169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262270, 33.975170, 33.395287>,  <27.055788, 33.985901, 34.060337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262270, 33.975170, 33.395287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580685, 34.169937, 33.251488>,  <27.771734, 34.286797, 33.165211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580685, 34.169937, 33.251488>,  <27.262270, 33.975170, 33.395287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580685, 34.169937, 33.251488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369498, -0.861394, -0.348528,
		-0.479369, 0.144610, -0.865617,
		0.796038, 0.486917, -0.359492,
		27.819496, 34.316013, 33.143639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345474, 33.780121, 32.650246>,  <27.262270, 33.975170, 33.395287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345474, 33.780121, 32.650246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701351, 33.912006, 32.776569>,  <27.914877, 33.991138, 32.852364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.701351, 33.912006, 32.776569>,  <27.345474, 33.780121, 32.650246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701351, 33.912006, 32.776569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433712, -0.826431, -0.359034,
		0.142612, 0.456398, -0.878272,
		0.889694, 0.329715, 0.315805,
		27.968260, 34.010921, 32.871311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770393, 33.560913, 32.182217>,  <27.345474, 33.780121, 32.650246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770393, 33.560913, 32.182217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013063, 33.606052, 32.496975>,  <28.158667, 33.633137, 32.685829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013063, 33.606052, 32.496975>,  <27.770393, 33.560913, 32.182217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013063, 33.606052, 32.496975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498454, -0.825111, -0.265962,
		0.619263, 0.553585, -0.556828,
		0.606677, 0.112853, 0.786897,
		28.195066, 33.639908, 32.733044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401608, 33.406368, 31.893690>,  <27.770393, 33.560913, 32.182217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401608, 33.406368, 31.893690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437948, 33.360973, 32.289440>,  <28.459753, 33.333736, 32.526890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.437948, 33.360973, 32.289440>,  <28.401608, 33.406368, 31.893690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437948, 33.360973, 32.289440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546015, -0.825168, -0.144795,
		0.832835, 0.553369, -0.013002,
		0.090854, -0.113491, 0.989376,
		28.465204, 33.326927, 32.586254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162203, 33.155636, 32.020222>,  <28.401608, 33.406368, 31.893690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162203, 33.155636, 32.020222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936138, 33.029697, 32.325237>,  <28.800499, 32.954136, 32.508247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936138, 33.029697, 32.325237>,  <29.162203, 33.155636, 32.020222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936138, 33.029697, 32.325237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464786, -0.885174, -0.021002,
		0.681591, 0.342548, 0.646602,
		-0.565161, -0.314846, 0.762538,
		28.766590, 32.935242, 32.553997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580627, 32.717037, 32.290794>,  <29.162203, 33.155636, 32.020222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580627, 32.717037, 32.290794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242006, 32.628735, 32.484543>,  <29.038834, 32.575752, 32.600792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242006, 32.628735, 32.484543>,  <29.580627, 32.717037, 32.290794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242006, 32.628735, 32.484543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220285, -0.973664, -0.058767,
		0.484589, 0.056951, 0.872886,
		-0.846550, -0.220761, 0.484373,
		28.988041, 32.562508, 32.629856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769335, 32.260254, 32.881168>,  <29.580627, 32.717037, 32.290794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769335, 32.260254, 32.881168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382156, 32.189911, 32.809441>,  <29.149849, 32.147705, 32.766403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382156, 32.189911, 32.809441>,  <29.769335, 32.260254, 32.881168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382156, 32.189911, 32.809441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173683, -0.984407, 0.027889,
		-0.181431, -0.004150, 0.983395,
		-0.967945, -0.175859, -0.179323,
		29.091772, 32.137154, 32.755642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607168, 31.727070, 33.358967>,  <29.769335, 32.260254, 32.881168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607168, 31.727070, 33.358967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324177, 31.710119, 33.076782>,  <29.154383, 31.699949, 32.907471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324177, 31.710119, 33.076782>,  <29.607168, 31.727070, 33.358967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324177, 31.710119, 33.076782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025983, -0.995966, 0.085884,
		-0.706259, 0.079091, 0.703522,
		-0.707477, -0.042377, -0.705465,
		29.111935, 31.697407, 32.865143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187330, 31.251665, 33.527550>,  <29.607168, 31.727070, 33.358967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187330, 31.251665, 33.527550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082733, 31.251165, 33.141468>,  <29.019976, 31.250866, 32.909821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082733, 31.251165, 33.141468>,  <29.187330, 31.251665, 33.527550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082733, 31.251165, 33.141468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286341, -0.954881, 0.078813,
		-0.921754, 0.296986, 0.249336,
		-0.261492, -0.001251, -0.965205,
		29.004286, 31.250790, 32.851906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680546, 30.746071, 33.562164>,  <29.187330, 31.251665, 33.527550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680546, 30.746071, 33.562164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776646, 30.787228, 33.176067>,  <28.834305, 30.811922, 32.944408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.776646, 30.787228, 33.176067>,  <28.680546, 30.746071, 33.562164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776646, 30.787228, 33.176067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278541, -0.945244, -0.170087,
		-0.929890, 0.309723, -0.198434,
		0.240248, 0.102891, -0.965243,
		28.848721, 30.818094, 32.886494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128269, 30.518883, 33.205410>,  <28.680546, 30.746071, 33.562164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128269, 30.518883, 33.205410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.441299, 30.489656, 32.958107>,  <28.629118, 30.472120, 32.809727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.441299, 30.489656, 32.958107>,  <28.128269, 30.518883, 33.205410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441299, 30.489656, 32.958107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273518, -0.932462, -0.236014,
		-0.559254, 0.353802, -0.749706,
		0.782574, -0.073066, -0.618255,
		28.676071, 30.467737, 32.772629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898792, 30.005167, 32.726311>,  <28.128269, 30.518883, 33.205410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898792, 30.005167, 32.726311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291630, 30.025316, 32.653694>,  <28.527332, 30.037405, 32.610123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291630, 30.025316, 32.653694>,  <27.898792, 30.005167, 32.726311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291630, 30.025316, 32.653694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001254, -0.965322, -0.261061,
		-0.188396, 0.256158, -0.948098,
		0.982092, 0.050372, -0.181542,
		28.586258, 30.040428, 32.599232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018633, 29.772266, 32.022663>,  <27.898792, 30.005167, 32.726311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018633, 29.772266, 32.022663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362404, 29.712305, 32.218178>,  <28.568666, 29.676329, 32.335487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.362404, 29.712305, 32.218178>,  <28.018633, 29.772266, 32.022663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362404, 29.712305, 32.218178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075925, -0.982870, -0.167935,
		0.505589, 0.107217, -0.856087,
		0.859427, -0.149905, 0.488788,
		28.620232, 29.667334, 32.364815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383114, 29.342587, 31.607803>,  <28.018633, 29.772266, 32.022663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383114, 29.342587, 31.607803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536003, 29.308138, 31.975822>,  <28.627737, 29.287468, 32.196632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536003, 29.308138, 31.975822>,  <28.383114, 29.342587, 31.607803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536003, 29.308138, 31.975822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008375, -0.995284, -0.096644,
		0.924031, 0.044645, -0.379701,
		0.382225, -0.086122, 0.920047,
		28.650671, 29.282301, 32.251835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961788, 28.988798, 31.492023>,  <28.383114, 29.342587, 31.607803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961788, 28.988798, 31.492023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866549, 28.944622, 31.878000>,  <28.809404, 28.918116, 32.109585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866549, 28.944622, 31.878000>,  <28.961788, 28.988798, 31.492023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866549, 28.944622, 31.878000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136430, -0.979860, -0.145814,
		0.961611, -0.166365, 0.218234,
		-0.238097, -0.110443, 0.964942,
		28.795118, 28.911489, 32.167484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272366, 28.366449, 31.734144>,  <28.961788, 28.988798, 31.492023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272366, 28.366449, 31.734144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972828, 28.416315, 31.994511>,  <28.793104, 28.446234, 32.150730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972828, 28.416315, 31.994511>,  <29.272366, 28.366449, 31.734144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972828, 28.416315, 31.994511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236077, -0.967902, -0.086220,
		0.619272, -0.218231, 0.754239,
		-0.748846, 0.124665, 0.650914,
		28.748175, 28.453714, 32.189785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441563, 27.909613, 32.245033>,  <29.272366, 28.366449, 31.734144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441563, 27.909613, 32.245033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056828, 27.990688, 32.318554>,  <28.825987, 28.039333, 32.362667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056828, 27.990688, 32.318554>,  <29.441563, 27.909613, 32.245033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056828, 27.990688, 32.318554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173585, -0.971282, 0.162722,
		0.211502, 0.124608, 0.969402,
		-0.961839, 0.202690, 0.183798,
		28.768276, 28.051495, 32.373692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311449, 27.532324, 32.770462>,  <29.441563, 27.909613, 32.245033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311449, 27.532324, 32.770462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947515, 27.623337, 32.631645>,  <28.729156, 27.677944, 32.548355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947515, 27.623337, 32.631645>,  <29.311449, 27.532324, 32.770462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947515, 27.623337, 32.631645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263387, -0.962870, 0.059230,
		-0.320676, 0.145295, 0.935979,
		-0.909832, 0.227531, -0.347038,
		28.674566, 27.691595, 32.527534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844595, 27.180939, 33.237827>,  <29.311449, 27.532324, 32.770462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844595, 27.180939, 33.237827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654291, 27.234737, 32.890137>,  <28.540108, 27.267017, 32.681522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.654291, 27.234737, 32.890137>,  <28.844595, 27.180939, 33.237827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654291, 27.234737, 32.890137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391579, -0.917293, 0.072390,
		-0.787602, 0.374813, 0.489079,
		-0.475761, 0.134499, -0.869231,
		28.511562, 27.275087, 32.629368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255123, 26.844351, 33.398697>,  <28.844595, 27.180939, 33.237827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255123, 26.844351, 33.398697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286207, 26.860987, 33.000252>,  <28.304857, 26.870968, 32.761185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286207, 26.860987, 33.000252>,  <28.255123, 26.844351, 33.398697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286207, 26.860987, 33.000252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172575, -0.983486, -0.054527,
		-0.981926, 0.176140, -0.069249,
		0.077710, 0.041591, -0.996108,
		28.309521, 26.873465, 32.701420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743616, 26.436346, 33.251339>,  <28.255123, 26.844351, 33.398697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743616, 26.436346, 33.251339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960739, 26.457560, 32.916065>,  <28.091013, 26.470287, 32.714901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960739, 26.457560, 32.916065>,  <27.743616, 26.436346, 33.251339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960739, 26.457560, 32.916065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028833, -0.998593, -0.044513,
		-0.839361, -0.000006, -0.543574,
		0.542808, 0.053035, -0.838180,
		28.123581, 26.473471, 32.664612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366642, 26.027304, 32.776432>,  <27.743616, 26.436346, 33.251339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366642, 26.027304, 32.776432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755255, 26.059864, 32.687439>,  <27.988422, 26.079399, 32.634041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755255, 26.059864, 32.687439>,  <27.366642, 26.027304, 32.776432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755255, 26.059864, 32.687439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073741, -0.996370, -0.042527,
		-0.225139, 0.024910, -0.974009,
		0.971532, 0.081399, -0.222485,
		28.046715, 26.084284, 32.620693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575577, 25.411613, 32.212204>,  <27.366642, 26.027304, 32.776432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575577, 25.411613, 32.212204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934071, 25.504919, 32.363121>,  <28.149168, 25.560902, 32.453671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934071, 25.504919, 32.363121>,  <27.575577, 25.411613, 32.212204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934071, 25.504919, 32.363121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252802, -0.967515, -0.002346,
		0.364489, 0.097483, -0.926091,
		0.896236, 0.233262, 0.377293,
		28.202942, 25.574898, 32.476307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.528156, 40.971088, 45.335430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141678, 40.943466, 45.236080>,  <35.909790, 40.926891, 45.176472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.141678, 40.943466, 45.236080>,  <36.528156, 40.971088, 45.335430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141678, 40.943466, 45.236080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242080, 0.574269, 0.782057,
		0.088628, 0.815749, -0.571575,
		-0.966200, -0.069055, -0.248372,
		35.851818, 40.922749, 45.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261909, 41.666046, 45.229340>,  <36.528156, 40.971088, 45.335430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261909, 41.666046, 45.229340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947266, 41.431732, 45.307419>,  <35.758480, 41.291145, 45.354267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.947266, 41.431732, 45.307419>,  <36.261909, 41.666046, 45.229340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947266, 41.431732, 45.307419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317554, 0.654929, 0.685731,
		-0.529530, 0.477418, -0.701192,
		-0.786611, -0.585781, 0.195199,
		35.711281, 41.255997, 45.365978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654346, 42.143147, 45.202370>,  <36.261909, 41.666046, 45.229340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654346, 42.143147, 45.202370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522648, 41.832355, 45.416992>,  <35.443626, 41.645882, 45.545765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522648, 41.832355, 45.416992>,  <35.654346, 42.143147, 45.202370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522648, 41.832355, 45.416992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464298, 0.628019, 0.624516,
		-0.822206, -0.043502, -0.567525,
		-0.329248, -0.776981, 0.536559,
		35.423874, 41.599262, 45.577961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967064, 42.420918, 45.296917>,  <35.654346, 42.143147, 45.202370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967064, 42.420918, 45.296917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070938, 42.135742, 45.557468>,  <35.133263, 41.964638, 45.713799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070938, 42.135742, 45.557468>,  <34.967064, 42.420918, 45.296917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070938, 42.135742, 45.557468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531293, 0.457782, 0.712856,
		-0.806408, -0.531186, -0.259900,
		0.259682, -0.712936, 0.651374,
		35.148842, 41.921860, 45.752880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399265, 42.240856, 45.658146>,  <34.967064, 42.420918, 45.296917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399265, 42.240856, 45.658146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618519, 42.030769, 45.918514>,  <34.750072, 41.904716, 46.074734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618519, 42.030769, 45.918514>,  <34.399265, 42.240856, 45.658146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618519, 42.030769, 45.918514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627473, 0.256344, 0.735231,
		-0.553015, -0.811440, -0.189048,
		0.548135, -0.525217, 0.650919,
		34.782959, 41.873203, 46.113789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905586, 41.779293, 45.981762>,  <34.399265, 42.240856, 45.658146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905586, 41.779293, 45.981762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.224709, 41.838219, 46.215618>,  <34.416183, 41.873573, 46.355930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.224709, 41.838219, 46.215618>,  <33.905586, 41.779293, 45.981762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224709, 41.838219, 46.215618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599181, 0.301434, 0.741701,
		-0.066964, -0.942038, 0.328756,
		0.797808, 0.147317, 0.584636,
		34.464050, 41.882412, 46.391010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778522, 41.394405, 46.619205>,  <33.905586, 41.779293, 45.981762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778522, 41.394405, 46.619205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047646, 41.678963, 46.700455>,  <34.209118, 41.849697, 46.749203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047646, 41.678963, 46.700455>,  <33.778522, 41.394405, 46.619205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047646, 41.678963, 46.700455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582805, 0.340526, 0.737821,
		0.455712, -0.614788, 0.643710,
		0.672804, 0.711391, 0.203120,
		34.249489, 41.892380, 46.761391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890102, 41.473011, 47.408783>,  <33.778522, 41.394405, 46.619205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890102, 41.473011, 47.408783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046383, 41.814674, 47.271515>,  <34.140152, 42.019672, 47.189156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046383, 41.814674, 47.271515>,  <33.890102, 41.473011, 47.408783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046383, 41.814674, 47.271515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511864, 0.511445, 0.690232,
		0.765079, -0.094021, 0.637036,
		0.390704, 0.854157, -0.343170,
		34.163593, 42.070923, 47.168564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836460, 41.826542, 47.989944>,  <33.890102, 41.473011, 47.408783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836460, 41.826542, 47.989944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874210, 42.110008, 47.710262>,  <33.896862, 42.280087, 47.542454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874210, 42.110008, 47.710262>,  <33.836460, 41.826542, 47.989944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874210, 42.110008, 47.710262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500574, 0.640879, 0.581979,
		0.860534, 0.295079, 0.415223,
		0.094378, 0.708663, -0.699207,
		33.902523, 42.322609, 47.500500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166687, 42.455078, 48.333885>,  <33.836460, 41.826542, 47.989944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166687, 42.455078, 48.333885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992374, 42.598419, 48.003628>,  <33.887787, 42.684422, 47.805473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992374, 42.598419, 48.003628>,  <34.166687, 42.455078, 48.333885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992374, 42.598419, 48.003628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437399, 0.717401, 0.542233,
		0.786626, 0.597427, -0.155885,
		-0.435777, 0.358351, -0.825641,
		33.861641, 42.705925, 47.755936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202618, 43.171349, 48.409988>,  <34.166687, 42.455078, 48.333885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202618, 43.171349, 48.409988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915619, 43.084927, 48.145107>,  <33.743420, 43.033073, 47.986179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.915619, 43.084927, 48.145107>,  <34.202618, 43.171349, 48.409988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915619, 43.084927, 48.145107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616429, 0.639651, 0.459197,
		0.324367, 0.737676, -0.592132,
		-0.717497, -0.216058, -0.662207,
		33.700371, 43.020107, 47.946445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846687, 43.847221, 48.241749>,  <34.202618, 43.171349, 48.409988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846687, 43.847221, 48.241749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580086, 43.559937, 48.161804>,  <33.420124, 43.387566, 48.113838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580086, 43.559937, 48.161804>,  <33.846687, 43.847221, 48.241749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580086, 43.559937, 48.161804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717753, 0.545744, 0.432428,
		-0.201499, 0.431670, -0.879238,
		-0.666505, -0.718209, -0.199865,
		33.380135, 43.344475, 48.101845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221100, 44.132603, 47.879959>,  <33.846687, 43.847221, 48.241749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221100, 44.132603, 47.879959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119301, 43.808441, 48.091042>,  <33.058224, 43.613945, 48.217693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119301, 43.808441, 48.091042>,  <33.221100, 44.132603, 47.879959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119301, 43.808441, 48.091042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729737, 0.519003, 0.445106,
		-0.634599, -0.271813, -0.723465,
		-0.254495, -0.810404, 0.527711,
		33.042953, 43.565319, 48.249355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493244, 43.943729, 47.712914>,  <33.221100, 44.132603, 47.879959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493244, 43.943729, 47.712914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645657, 43.880348, 48.077267>,  <32.737103, 43.842319, 48.295879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645657, 43.880348, 48.077267>,  <32.493244, 43.943729, 47.712914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645657, 43.880348, 48.077267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677213, 0.622899, 0.391638,
		-0.629443, -0.766088, 0.130041,
		0.381031, -0.158448, 0.910884,
		32.759968, 43.832813, 48.350533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974884, 43.765934, 47.233547>,  <32.493244, 43.943729, 47.712914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974884, 43.765934, 47.233547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691511, 43.983700, 47.053886>,  <31.521488, 44.114357, 46.946091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691511, 43.983700, 47.053886>,  <31.974884, 43.765934, 47.233547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691511, 43.983700, 47.053886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392234, -0.225380, -0.891827,
		-0.586752, -0.807973, -0.053871,
		-0.708431, 0.544411, -0.449157,
		31.478981, 44.147022, 46.919140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549417, 43.391556, 46.594894>,  <31.974884, 43.765934, 47.233547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549417, 43.391556, 46.594894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561769, 43.787579, 46.540009>,  <31.569181, 44.025192, 46.507076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561769, 43.787579, 46.540009>,  <31.549417, 43.391556, 46.594894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561769, 43.787579, 46.540009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244315, -0.140592, -0.959450,
		-0.969204, -0.003895, -0.246228,
		0.030881, 0.990060, -0.137214,
		31.571033, 44.084595, 46.498844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127005, 43.499123, 46.069717>,  <31.549417, 43.391556, 46.594894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127005, 43.499123, 46.069717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352545, 43.829464, 46.067162>,  <31.487869, 44.027668, 46.065628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352545, 43.829464, 46.067162>,  <31.127005, 43.499123, 46.069717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352545, 43.829464, 46.067162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117826, -0.088096, -0.989119,
		-0.817430, 0.556960, -0.146980,
		0.563848, 0.825854, -0.006388,
		31.521700, 44.077221, 46.065247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037291, 43.792366, 45.441513>,  <31.127005, 43.499123, 46.069717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037291, 43.792366, 45.441513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359499, 44.003178, 45.549870>,  <31.552824, 44.129665, 45.614883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359499, 44.003178, 45.549870>,  <31.037291, 43.792366, 45.441513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359499, 44.003178, 45.549870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294305, 0.040956, -0.954834,
		-0.514315, 0.848862, -0.122115,
		0.805521, 0.527025, 0.270888,
		31.601156, 44.161285, 45.631138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196098, 44.323956, 44.915428>,  <31.037291, 43.792366, 45.441513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196098, 44.323956, 44.915428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530397, 44.268345, 45.127918>,  <31.730976, 44.234978, 45.255413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530397, 44.268345, 45.127918>,  <31.196098, 44.323956, 44.915428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530397, 44.268345, 45.127918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540810, 0.040799, -0.840155,
		0.095129, 0.989448, 0.109284,
		0.835748, -0.139026, 0.531222,
		31.781122, 44.226639, 45.287285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737896, 44.819050, 44.825302>,  <31.196098, 44.323956, 44.915428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737896, 44.819050, 44.825302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934244, 44.483849, 44.920628>,  <32.052052, 44.282726, 44.977821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.934244, 44.483849, 44.920628>,  <31.737896, 44.819050, 44.825302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934244, 44.483849, 44.920628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577840, 0.108440, -0.808914,
		0.652032, 0.534778, 0.537464,
		0.490872, -0.838006, 0.238310,
		32.081505, 44.232449, 44.992119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230389, 44.961769, 44.365021>,  <31.737896, 44.819050, 44.825302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230389, 44.961769, 44.365021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291882, 44.594929, 44.512154>,  <32.328777, 44.374825, 44.600433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291882, 44.594929, 44.512154>,  <32.230389, 44.961769, 44.365021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291882, 44.594929, 44.512154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624272, -0.198410, -0.755591,
		0.765931, 0.345786, 0.542016,
		0.153731, -0.917096, 0.367833,
		32.338001, 44.319801, 44.622505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931187, 44.823025, 44.189133>,  <32.230389, 44.961769, 44.365021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931187, 44.823025, 44.189133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823650, 44.451756, 44.292061>,  <32.759129, 44.228992, 44.353817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823650, 44.451756, 44.292061>,  <32.931187, 44.823025, 44.189133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823650, 44.451756, 44.292061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435326, -0.355401, -0.827152,
		0.859195, -0.110353, 0.499606,
		-0.268839, -0.928177, 0.257319,
		32.743000, 44.173302, 44.369255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491852, 44.467308, 44.268509>,  <32.931187, 44.823025, 44.189133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491852, 44.467308, 44.268509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199226, 44.213596, 44.168507>,  <33.023651, 44.061371, 44.108505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.199226, 44.213596, 44.168507>,  <33.491852, 44.467308, 44.268509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199226, 44.213596, 44.168507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533171, -0.303717, -0.789611,
		0.424904, -0.710946, 0.560368,
		-0.731564, -0.634280, -0.250005,
		32.979755, 44.023312, 44.093506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797421, 43.826248, 44.194466>,  <33.491852, 44.467308, 44.268509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797421, 43.826248, 44.194466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453968, 43.831554, 43.989494>,  <33.247898, 43.834740, 43.866512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453968, 43.831554, 43.989494>,  <33.797421, 43.826248, 44.194466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453968, 43.831554, 43.989494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496286, -0.228683, -0.837499,
		-0.128298, -0.973410, 0.189768,
		-0.858627, 0.013270, -0.512429,
		33.196381, 43.835537, 43.835766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840652, 43.131577, 43.819118>,  <33.797421, 43.826248, 44.194466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840652, 43.131577, 43.819118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538635, 43.320679, 43.637390>,  <33.357426, 43.434139, 43.528355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538635, 43.320679, 43.637390>,  <33.840652, 43.131577, 43.819118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538635, 43.320679, 43.637390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197801, -0.496387, -0.845266,
		-0.625125, -0.728079, 0.281282,
		-0.755045, 0.472760, -0.454319,
		33.312122, 43.462505, 43.501095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493793, 42.625507, 43.495174>,  <33.840652, 43.131577, 43.819118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493793, 42.625507, 43.495174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392445, 42.962212, 43.304497>,  <33.331635, 43.164234, 43.190090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.392445, 42.962212, 43.304497>,  <33.493793, 42.625507, 43.495174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392445, 42.962212, 43.304497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145435, -0.454024, -0.879040,
		-0.956373, -0.292054, -0.007383,
		-0.253374, 0.841764, -0.476691,
		33.316433, 43.214741, 43.161488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874809, 42.498920, 43.019016>,  <33.493793, 42.625507, 43.495174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874809, 42.498920, 43.019016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044701, 42.832413, 42.877880>,  <33.146637, 43.032509, 42.793198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044701, 42.832413, 42.877880>,  <32.874809, 42.498920, 43.019016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044701, 42.832413, 42.877880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035885, -0.404942, -0.913638,
		-0.904607, 0.375390, -0.201911,
		0.424733, 0.833729, -0.352843,
		33.172119, 43.082531, 42.772026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519440, 42.698231, 42.340511>,  <32.874809, 42.498920, 43.019016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519440, 42.698231, 42.340511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855610, 42.914371, 42.323986>,  <33.057312, 43.044056, 42.314072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855610, 42.914371, 42.323986>,  <32.519440, 42.698231, 42.340511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855610, 42.914371, 42.323986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239135, -0.438173, -0.866498,
		-0.486315, 0.718348, -0.497469,
		0.840424, 0.540352, -0.041308,
		33.107738, 43.076477, 42.311592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906401, 42.766800, 41.746056>,  <32.519440, 42.698231, 42.340511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906401, 42.766800, 41.746056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734697, 42.414673, 41.826820>,  <31.631676, 42.203396, 41.875278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734697, 42.414673, 41.826820>,  <31.906401, 42.766800, 41.746056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734697, 42.414673, 41.826820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232250, 0.323631, 0.917236,
		-0.872810, 0.346837, -0.343377,
		-0.429259, -0.880322, 0.201915,
		31.605919, 42.150578, 41.887394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379358, 42.991627, 42.030418>,  <31.906401, 42.766800, 41.746056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379358, 42.991627, 42.030418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384661, 42.602043, 42.120949>,  <31.387842, 42.368294, 42.175266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384661, 42.602043, 42.120949>,  <31.379358, 42.991627, 42.030418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384661, 42.602043, 42.120949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335607, 0.208885, 0.918550,
		-0.941909, -0.088136, -0.324099,
		0.013258, -0.973960, 0.226329,
		31.388638, 42.309856, 42.188847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653700, 42.702656, 42.289047>,  <31.379358, 42.991627, 42.030418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653700, 42.702656, 42.289047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.925032, 42.450344, 42.439774>,  <31.087830, 42.298958, 42.530209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.925032, 42.450344, 42.439774>,  <30.653700, 42.702656, 42.289047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925032, 42.450344, 42.439774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459663, 0.035790, 0.887372,
		-0.573221, -0.775138, -0.265668,
		0.678327, -0.630777, 0.376818,
		31.128531, 42.261112, 42.552818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158241, 42.325539, 42.769512>,  <30.653700, 42.702656, 42.289047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158241, 42.325539, 42.769512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533859, 42.240673, 42.877720>,  <30.759230, 42.189754, 42.942642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533859, 42.240673, 42.877720>,  <30.158241, 42.325539, 42.769512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533859, 42.240673, 42.877720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288768, -0.059766, 0.955532,
		-0.186565, -0.975404, -0.117391,
		0.939045, -0.212168, 0.270515,
		30.815573, 42.177025, 42.958874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030430, 41.807114, 43.093163>,  <30.158241, 42.325539, 42.769512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030430, 41.807114, 43.093163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.392185, 41.915607, 43.224926>,  <30.609240, 41.980705, 43.303986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.392185, 41.915607, 43.224926>,  <30.030430, 41.807114, 43.093163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392185, 41.915607, 43.224926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275544, -0.218232, 0.936189,
		0.325815, -0.937447, -0.122630,
		0.904390, 0.271235, 0.329411,
		30.663502, 41.996979, 43.323750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137949, 41.360893, 43.561947>,  <30.030430, 41.807114, 43.093163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137949, 41.360893, 43.561947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.390921, 41.658726, 43.647400>,  <30.542704, 41.837425, 43.698673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.390921, 41.658726, 43.647400>,  <30.137949, 41.360893, 43.561947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390921, 41.658726, 43.647400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283437, -0.034235, 0.958380,
		0.720901, -0.666658, 0.189390,
		0.632428, 0.744577, 0.213635,
		30.580648, 41.882099, 43.711491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609922, 41.125347, 44.136978>,  <30.137949, 41.360893, 43.561947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609922, 41.125347, 44.136978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.563665, 41.522659, 44.138306>,  <30.535912, 41.761047, 44.139103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.563665, 41.522659, 44.138306>,  <30.609922, 41.125347, 44.136978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563665, 41.522659, 44.138306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440740, -0.054305, 0.895991,
		0.890155, 0.102155, 0.444060,
		-0.115645, 0.993285, 0.003316,
		30.528973, 41.820644, 44.139301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000565, 40.507061, 44.426579>,  <30.609922, 41.125347, 44.136978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000565, 40.507061, 44.426579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631012, 40.392776, 44.528408>,  <30.409281, 40.324207, 44.589508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.631012, 40.392776, 44.528408>,  <31.000565, 40.507061, 44.426579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631012, 40.392776, 44.528408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157398, -0.322666, -0.933334,
		0.348805, -0.902362, 0.253136,
		-0.923883, -0.285709, 0.254577,
		30.353848, 40.307064, 44.604782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934637, 39.749798, 44.318214>,  <31.000565, 40.507061, 44.426579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934637, 39.749798, 44.318214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.568480, 39.909740, 44.299606>,  <30.348785, 40.005707, 44.288441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.568480, 39.909740, 44.299606>,  <30.934637, 39.749798, 44.318214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568480, 39.909740, 44.299606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126077, -0.394522, -0.910196,
		-0.382299, -0.827326, 0.411557,
		-0.915397, 0.399855, -0.046519,
		30.293861, 40.029697, 44.285648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487703, 39.146561, 44.145351>,  <30.934637, 39.749798, 44.318214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487703, 39.146561, 44.145351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279671, 39.477287, 44.059666>,  <30.154852, 39.675724, 44.008255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.279671, 39.477287, 44.059666>,  <30.487703, 39.146561, 44.145351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279671, 39.477287, 44.059666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297592, -0.410497, -0.861934,
		-0.800596, -0.384529, 0.459547,
		-0.520081, 0.826819, -0.214210,
		30.123646, 39.725334, 43.995403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768967, 38.912918, 43.878056>,  <30.487703, 39.146561, 44.145351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768967, 38.912918, 43.878056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.852953, 39.274391, 43.728779>,  <29.903345, 39.491276, 43.639214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.852953, 39.274391, 43.728779>,  <29.768967, 38.912918, 43.878056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852953, 39.274391, 43.728779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312254, -0.299729, -0.901476,
		-0.926505, 0.305812, 0.219245,
		0.209968, 0.903682, -0.373192,
		29.915943, 39.545494, 43.616821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274637, 38.950233, 43.420433>,  <29.768967, 38.912918, 43.878056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274637, 38.950233, 43.420433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.535711, 39.234741, 43.316051>,  <29.692356, 39.405445, 43.253422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.535711, 39.234741, 43.316051>,  <29.274637, 38.950233, 43.420433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535711, 39.234741, 43.316051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011164, -0.335366, -0.942022,
		-0.757547, 0.617756, -0.210948,
		0.652685, 0.711271, -0.260952,
		29.731516, 39.448124, 43.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899475, 39.221081, 42.881496>,  <29.274637, 38.950233, 43.420433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899475, 39.221081, 42.881496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283478, 39.324539, 42.838631>,  <29.513880, 39.386616, 42.812912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283478, 39.324539, 42.838631>,  <28.899475, 39.221081, 42.881496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283478, 39.324539, 42.838631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013034, -0.341056, -0.939953,
		-0.279667, 0.903759, -0.324045,
		0.960009, 0.258650, -0.107162,
		29.571480, 39.402134, 42.806480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916267, 39.737316, 42.299267>,  <28.899475, 39.221081, 42.881496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916267, 39.737316, 42.299267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283155, 39.588146, 42.355324>,  <29.503288, 39.498646, 42.388958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283155, 39.588146, 42.355324>,  <28.916267, 39.737316, 42.299267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283155, 39.588146, 42.355324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042519, -0.441399, -0.896303,
		0.396110, 0.816147, -0.420715,
		0.917218, -0.372923, 0.140141,
		29.558321, 39.476269, 42.397366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.861034, 40.679680, 47.874641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810879, 40.931774, 47.568157>,  <31.780787, 41.083031, 47.384266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.810879, 40.931774, 47.568157>,  <31.861034, 40.679680, 47.874641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810879, 40.931774, 47.568157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621478, -0.552103, -0.555830,
		-0.773332, -0.545876, -0.322454,
		-0.125387, 0.630239, -0.766209,
		31.773262, 41.120846, 47.338295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568233, 40.361885, 47.360443>,  <31.861034, 40.679680, 47.874641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568233, 40.361885, 47.360443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.763142, 40.667755, 47.191757>,  <31.880087, 40.851276, 47.090546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.763142, 40.667755, 47.191757>,  <31.568233, 40.361885, 47.360443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763142, 40.667755, 47.191757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470177, -0.636688, -0.611198,
		-0.735867, 0.099538, -0.669770,
		0.487272, 0.764670, -0.421717,
		31.909323, 40.897156, 47.065243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608850, 40.282780, 46.634148>,  <31.568233, 40.361885, 47.360443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608850, 40.282780, 46.634148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.903692, 40.535126, 46.731045>,  <32.080597, 40.686535, 46.789185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.903692, 40.535126, 46.731045>,  <31.608850, 40.282780, 46.634148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903692, 40.535126, 46.731045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612271, -0.471739, -0.634497,
		-0.286005, 0.616013, -0.733982,
		0.737107, 0.630865, 0.242247,
		32.124825, 40.724384, 46.803719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846876, 40.605316, 46.050129>,  <31.608850, 40.282780, 46.634148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846876, 40.605316, 46.050129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.167614, 40.619774, 46.288704>,  <32.360058, 40.628448, 46.431850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.167614, 40.619774, 46.288704>,  <31.846876, 40.605316, 46.050129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167614, 40.619774, 46.288704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515766, -0.545876, -0.660307,
		0.301716, 0.837086, -0.456349,
		0.801844, 0.036144, 0.596439,
		32.408169, 40.630619, 46.467636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385300, 40.913723, 45.729263>,  <31.846876, 40.605316, 46.050129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385300, 40.913723, 45.729263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585365, 40.702946, 46.004120>,  <32.705402, 40.576481, 46.169033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.585365, 40.702946, 46.004120>,  <32.385300, 40.913723, 45.729263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585365, 40.702946, 46.004120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549795, -0.419824, -0.722131,
		0.669003, 0.738971, 0.079731,
		0.500161, -0.526944, 0.687146,
		32.735413, 40.544861, 46.210262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977772, 40.748856, 45.353943>,  <32.385300, 40.913723, 45.729263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977772, 40.748856, 45.353943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948540, 40.480938, 45.649521>,  <32.931000, 40.320187, 45.826866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948540, 40.480938, 45.649521>,  <32.977772, 40.748856, 45.353943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948540, 40.480938, 45.649521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459657, -0.680160, -0.571050,
		0.885085, 0.297931, 0.357577,
		-0.073076, -0.669791, 0.738945,
		32.926617, 40.279999, 45.871204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564117, 40.347816, 45.174511>,  <32.977772, 40.748856, 45.353943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564117, 40.347816, 45.174511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356358, 40.126537, 45.435032>,  <33.231701, 39.993771, 45.591343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356358, 40.126537, 45.435032>,  <33.564117, 40.347816, 45.174511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356358, 40.126537, 45.435032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469308, -0.821607, -0.323590,
		0.714126, 0.137590, 0.686362,
		-0.519397, -0.553200, 0.651304,
		33.200539, 39.960579, 45.630424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040993, 39.861942, 45.412857>,  <33.564117, 40.347816, 45.174511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040993, 39.861942, 45.412857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.682564, 39.698116, 45.481335>,  <33.467506, 39.599819, 45.522423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.682564, 39.698116, 45.481335>,  <34.040993, 39.861942, 45.412857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682564, 39.698116, 45.481335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278022, -0.818451, -0.502835,
		0.346062, -0.402980, 0.847259,
		-0.896072, -0.409568, 0.171197,
		33.413742, 39.575245, 45.532692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107330, 39.159016, 45.567860>,  <34.040993, 39.861942, 45.412857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107330, 39.159016, 45.567860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.720348, 39.140667, 45.468315>,  <33.488159, 39.129658, 45.408588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.720348, 39.140667, 45.468315>,  <34.107330, 39.159016, 45.567860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720348, 39.140667, 45.468315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154571, -0.885773, -0.437624,
		-0.200363, -0.461847, 0.864032,
		-0.967452, -0.045871, -0.248864,
		33.430115, 39.126907, 45.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824265, 38.452225, 45.778618>,  <34.107330, 39.159016, 45.567860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824265, 38.452225, 45.778618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587173, 38.612171, 45.498966>,  <33.444920, 38.708138, 45.331177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.587173, 38.612171, 45.498966>,  <33.824265, 38.452225, 45.778618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587173, 38.612171, 45.498966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131812, -0.808182, -0.573993,
		-0.794538, -0.432379, 0.426331,
		-0.592735, 0.399864, -0.699124,
		33.409355, 38.732132, 45.289227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299572, 38.064262, 45.571358>,  <33.824265, 38.452225, 45.778618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299572, 38.064262, 45.571358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.341354, 38.295612, 45.247734>,  <33.366425, 38.434422, 45.053562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.341354, 38.295612, 45.247734>,  <33.299572, 38.064262, 45.571358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341354, 38.295612, 45.247734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028522, -0.811428, -0.583755,
		-0.994120, 0.084054, -0.068264,
		0.104458, 0.578376, -0.809055,
		33.372692, 38.469124, 45.005016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914856, 37.804543, 44.998516>,  <33.299572, 38.064262, 45.571358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914856, 37.804543, 44.998516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177563, 38.037960, 44.807465>,  <33.335186, 38.178009, 44.692833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.177563, 38.037960, 44.807465>,  <32.914856, 37.804543, 44.998516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177563, 38.037960, 44.807465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105292, -0.698147, -0.708170,
		-0.746704, 0.414813, -0.519964,
		0.656770, 0.583541, -0.477633,
		33.374592, 38.213024, 44.664173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459480, 37.920856, 44.347355>,  <32.914856, 37.804543, 44.998516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459480, 37.920856, 44.347355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189621, 37.626106, 44.364620>,  <32.027706, 37.449257, 44.374981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.189621, 37.626106, 44.364620>,  <32.459480, 37.920856, 44.347355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189621, 37.626106, 44.364620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469996, 0.473932, 0.744642,
		-0.569165, 0.482086, -0.666066,
		-0.674652, -0.736873, 0.043167,
		31.987225, 37.405045, 44.377571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837170, 38.282104, 44.525330>,  <32.459480, 37.920856, 44.347355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837170, 38.282104, 44.525330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706892, 37.922871, 44.643562>,  <31.628725, 37.707329, 44.714500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706892, 37.922871, 44.643562>,  <31.837170, 38.282104, 44.525330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706892, 37.922871, 44.643562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521165, 0.431373, 0.736413,
		-0.788867, 0.085798, -0.608546,
		-0.325693, -0.898084, 0.295581,
		31.609184, 37.653446, 44.732235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312382, 38.430607, 44.761501>,  <31.837170, 38.282104, 44.525330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312382, 38.430607, 44.761501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.313122, 38.072994, 44.940701>,  <31.313566, 37.858425, 45.048222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.313122, 38.072994, 44.940701>,  <31.312382, 38.430607, 44.761501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313122, 38.072994, 44.940701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464541, 0.395957, 0.792098,
		-0.885550, -0.209577, -0.414583,
		0.001849, -0.894033, 0.447997,
		31.313677, 37.804783, 45.075100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610140, 38.371685, 45.134987>,  <31.312382, 38.430607, 44.761501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610140, 38.371685, 45.134987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870003, 38.109802, 45.289547>,  <31.025921, 37.952675, 45.382282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.870003, 38.109802, 45.289547>,  <30.610140, 38.371685, 45.134987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870003, 38.109802, 45.289547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409464, 0.126910, 0.903456,
		-0.640535, -0.745155, -0.185630,
		0.649657, -0.654704, 0.386405,
		31.064899, 37.913391, 45.405468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128635, 37.986938, 45.547310>,  <30.610140, 38.371685, 45.134987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128635, 37.986938, 45.547310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495773, 37.931465, 45.696079>,  <30.716055, 37.898182, 45.785343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.495773, 37.931465, 45.696079>,  <30.128635, 37.986938, 45.547310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495773, 37.931465, 45.696079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332865, 0.241539, 0.911515,
		-0.216251, -0.960429, 0.175530,
		0.917843, -0.138688, 0.371926,
		30.771126, 37.889858, 45.807655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113100, 37.527473, 46.154797>,  <30.128635, 37.986938, 45.547310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113100, 37.527473, 46.154797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443823, 37.749130, 46.193420>,  <30.642256, 37.882122, 46.216595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.443823, 37.749130, 46.193420>,  <30.113100, 37.527473, 46.154797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443823, 37.749130, 46.193420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295797, 0.282327, 0.912576,
		0.478432, -0.783085, 0.397342,
		0.826805, 0.554138, 0.096560,
		30.691864, 37.915371, 46.222389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209715, 37.426281, 46.815311>,  <30.113100, 37.527473, 46.154797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209715, 37.426281, 46.815311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.418505, 37.753296, 46.718014>,  <30.543777, 37.949505, 46.659634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.418505, 37.753296, 46.718014>,  <30.209715, 37.426281, 46.815311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418505, 37.753296, 46.718014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306530, 0.445921, 0.840948,
		0.795980, -0.364389, 0.483360,
		0.521973, 0.817542, -0.243248,
		30.575096, 37.998558, 46.645039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636028, 37.522293, 47.345623>,  <30.209715, 37.426281, 46.815311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636028, 37.522293, 47.345623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628433, 37.883762, 47.174503>,  <30.623877, 38.100643, 47.071831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628433, 37.883762, 47.174503>,  <30.636028, 37.522293, 47.345623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628433, 37.883762, 47.174503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325043, 0.399051, 0.857383,
		0.945509, 0.155332, 0.286156,
		-0.018988, 0.903676, -0.427796,
		30.622736, 38.154865, 47.046165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970543, 37.894287, 47.833862>,  <30.636028, 37.522293, 47.345623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970543, 37.894287, 47.833862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.762539, 38.151878, 47.609406>,  <30.637735, 38.306431, 47.474731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.762539, 38.151878, 47.609406>,  <30.970543, 37.894287, 47.833862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762539, 38.151878, 47.609406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266660, 0.501728, 0.822898,
		0.811468, 0.577552, -0.089182,
		-0.520012, 0.643974, -0.561146,
		30.606535, 38.345070, 47.441063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036964, 38.524235, 48.184143>,  <30.970543, 37.894287, 47.833862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036964, 38.524235, 48.184143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.709566, 38.569363, 47.958813>,  <30.513126, 38.596439, 47.823616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.709566, 38.569363, 47.958813>,  <31.036964, 38.524235, 48.184143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709566, 38.569363, 47.958813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409879, 0.572405, 0.710178,
		0.402571, 0.812173, -0.422269,
		-0.818496, 0.112818, -0.563326,
		30.464018, 38.603207, 47.789814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964108, 39.196785, 48.160950>,  <31.036964, 38.524235, 48.184143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964108, 39.196785, 48.160950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.606001, 39.040882, 48.074619>,  <30.391136, 38.947338, 48.022820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.606001, 39.040882, 48.074619>,  <30.964108, 39.196785, 48.160950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606001, 39.040882, 48.074619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433307, 0.649040, 0.625294,
		-0.103632, 0.653326, -0.749950,
		-0.895268, -0.389760, -0.215830,
		30.337420, 38.923954, 48.009869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468264, 39.814198, 48.131596>,  <30.964108, 39.196785, 48.160950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468264, 39.814198, 48.131596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.229832, 39.494839, 48.165638>,  <30.086773, 39.303223, 48.186062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.229832, 39.494839, 48.165638>,  <30.468264, 39.814198, 48.131596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229832, 39.494839, 48.165638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619132, 0.524536, 0.584413,
		-0.511237, 0.295666, -0.806981,
		-0.596081, -0.798401, 0.085106,
		30.051008, 39.255318, 48.191170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738331, 39.973297, 48.167641>,  <30.468264, 39.814198, 48.131596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738331, 39.973297, 48.167641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.695349, 39.611797, 48.333382>,  <29.669559, 39.394897, 48.432827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.695349, 39.611797, 48.333382>,  <29.738331, 39.973297, 48.167641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695349, 39.611797, 48.333382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616330, 0.387573, 0.685511,
		-0.780122, -0.181714, -0.598656,
		-0.107457, -0.903752, 0.414350,
		29.663113, 39.340672, 48.457687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033461, 39.911518, 48.288349>,  <29.738331, 39.973297, 48.167641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033461, 39.911518, 48.288349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.226925, 39.651516, 48.522808>,  <29.343002, 39.495514, 48.663483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.226925, 39.651516, 48.522808>,  <29.033461, 39.911518, 48.288349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226925, 39.651516, 48.522808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537159, 0.308300, 0.785118,
		-0.691038, -0.694586, -0.200042,
		0.483659, -0.650002, 0.586150,
		29.372023, 39.456516, 48.698654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970133, 39.620045, 47.547832>,  <29.033461, 39.911518, 48.288349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970133, 39.620045, 47.547832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.940950, 40.018322, 47.524929>,  <28.923441, 40.257286, 47.511189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.940950, 40.018322, 47.524929>,  <28.970133, 39.620045, 47.547832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940950, 40.018322, 47.524929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259464, -0.036487, -0.965063,
		-0.962993, -0.085262, -0.255684,
		-0.072954, 0.995691, -0.057259,
		28.919064, 40.317028, 47.507751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601549, 39.681850, 46.951405>,  <28.970133, 39.620045, 47.547832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601549, 39.681850, 46.951405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.812662, 40.015526, 47.015377>,  <28.939331, 40.215729, 47.053761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.812662, 40.015526, 47.015377>,  <28.601549, 39.681850, 46.951405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812662, 40.015526, 47.015377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316119, -0.018149, -0.948546,
		-0.788361, 0.551185, -0.273280,
		0.527784, 0.834185, 0.159932,
		28.970997, 40.265781, 47.063358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448721, 40.190125, 46.363899>,  <28.601549, 39.681850, 46.951405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448721, 40.190125, 46.363899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.793823, 40.344135, 46.494987>,  <29.000885, 40.436543, 46.573643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.793823, 40.344135, 46.494987>,  <28.448721, 40.190125, 46.363899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793823, 40.344135, 46.494987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249931, 0.238684, -0.938384,
		-0.439527, 0.891506, 0.109696,
		0.862758, 0.385029, 0.327723,
		29.052650, 40.459644, 46.593304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543037, 40.741016, 45.903053>,  <28.448721, 40.190125, 46.363899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543037, 40.741016, 45.903053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.908602, 40.664791, 46.046413>,  <29.127941, 40.619057, 46.132431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.908602, 40.664791, 46.046413>,  <28.543037, 40.741016, 45.903053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908602, 40.664791, 46.046413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365778, 0.003791, -0.930695,
		0.175995, 0.981668, 0.073168,
		0.913911, -0.190561, 0.358405,
		29.182775, 40.607624, 46.153934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932253, 41.196529, 45.433140>,  <28.543037, 40.741016, 45.903053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932253, 41.196529, 45.433140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147539, 40.898834, 45.591351>,  <29.276711, 40.720219, 45.686275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147539, 40.898834, 45.591351>,  <28.932253, 41.196529, 45.433140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147539, 40.898834, 45.591351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466341, -0.127937, -0.875305,
		0.702034, 0.655552, 0.278209,
		0.538214, -0.744234, 0.395526,
		29.309004, 40.675564, 45.710007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619017, 41.382107, 45.276680>,  <28.932253, 41.196529, 45.433140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619017, 41.382107, 45.276680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.653767, 40.990784, 45.351906>,  <29.674618, 40.755989, 45.397041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.653767, 40.990784, 45.351906>,  <29.619017, 41.382107, 45.276680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653767, 40.990784, 45.351906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527581, -0.114955, -0.841691,
		0.845051, 0.172345, 0.506149,
		0.086877, -0.978306, 0.188068,
		29.679831, 40.697292, 45.408325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340931, 41.129341, 45.316742>,  <29.619017, 41.382107, 45.276680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340931, 41.129341, 45.316742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.103392, 40.840542, 45.174725>,  <29.960867, 40.667263, 45.089512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.103392, 40.840542, 45.174725>,  <30.340931, 41.129341, 45.316742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103392, 40.840542, 45.174725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619355, -0.128553, -0.774515,
		0.513559, -0.679844, 0.523516,
		-0.593849, -0.722001, -0.355045,
		29.925238, 40.623943, 45.068211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705751, 41.385708, 44.877949>,  <30.340931, 41.129341, 45.316742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705751, 41.385708, 44.877949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.548595, 41.723503, 44.732361>,  <30.454302, 41.926182, 44.645008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.548595, 41.723503, 44.732361>,  <30.705751, 41.385708, 44.877949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548595, 41.723503, 44.732361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486581, 0.144937, 0.861529,
		0.780305, 0.515588, 0.353968,
		-0.392891, 0.844489, -0.363970,
		30.430729, 41.976849, 44.623169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837591, 41.873192, 45.300831>,  <30.705751, 41.385708, 44.877949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837591, 41.873192, 45.300831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524019, 42.053555, 45.130119>,  <30.335876, 42.161770, 45.027691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.524019, 42.053555, 45.130119>,  <30.837591, 41.873192, 45.300831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524019, 42.053555, 45.130119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336069, 0.269806, 0.902365,
		0.522028, 0.850817, -0.059973,
		-0.783929, 0.450905, -0.426779,
		30.288841, 42.188828, 45.002087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855911, 42.514572, 45.568127>,  <30.837591, 41.873192, 45.300831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855911, 42.514572, 45.568127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.482000, 42.456657, 45.438370>,  <30.257654, 42.421909, 45.360516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.482000, 42.456657, 45.438370>,  <30.855911, 42.514572, 45.568127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482000, 42.456657, 45.438370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355197, 0.367759, 0.859412,
		-0.005133, 0.918581, -0.395200,
		-0.934777, -0.144785, -0.324389,
		30.201567, 42.413223, 45.341053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513847, 42.957375, 45.877068>,  <30.855911, 42.514572, 45.568127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513847, 42.957375, 45.877068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.206688, 42.754013, 45.721191>,  <30.022392, 42.631996, 45.627666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.206688, 42.754013, 45.721191>,  <30.513847, 42.957375, 45.877068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206688, 42.754013, 45.721191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632243, 0.503737, 0.588658,
		-0.102976, 0.698407, -0.708254,
		-0.767896, -0.508406, -0.389690,
		29.976318, 42.601490, 45.604286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144417, 43.455841, 45.814934>,  <30.513847, 42.957375, 45.877068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144417, 43.455841, 45.814934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.904331, 43.135910, 45.813438>,  <29.760279, 42.943951, 45.812542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.904331, 43.135910, 45.813438>,  <30.144417, 43.455841, 45.814934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904331, 43.135910, 45.813438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570737, 0.425015, 0.702582,
		-0.560358, 0.423833, -0.711593,
		-0.600216, -0.799830, -0.003737,
		29.724266, 42.895962, 45.812317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454914, 43.695339, 45.658955>,  <30.144417, 43.455841, 45.814934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454914, 43.695339, 45.658955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.435564, 43.355465, 45.868984>,  <29.423954, 43.151543, 45.995003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.435564, 43.355465, 45.868984>,  <29.454914, 43.695339, 45.658955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435564, 43.355465, 45.868984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470236, 0.483161, 0.738535,
		-0.881214, -0.211181, -0.422925,
		-0.048376, -0.849681, 0.525073,
		29.421051, 43.100559, 46.026505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876030, 43.758209, 45.927586>,  <29.454914, 43.695339, 45.658955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876030, 43.758209, 45.927586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.047384, 43.462978, 46.136097>,  <29.150198, 43.285839, 46.261204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.047384, 43.462978, 46.136097>,  <28.876030, 43.758209, 45.927586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047384, 43.462978, 46.136097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471174, 0.309796, 0.825846,
		-0.771025, -0.599396, -0.215048,
		0.428388, -0.738073, 0.521280,
		29.175900, 43.241558, 46.292480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372587, 43.551582, 46.421352>,  <28.876030, 43.758209, 45.927586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372587, 43.551582, 46.421352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717499, 43.422958, 46.577854>,  <28.924446, 43.345783, 46.671753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717499, 43.422958, 46.577854>,  <28.372587, 43.551582, 46.421352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717499, 43.422958, 46.577854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360350, 0.153265, 0.920140,
		-0.355841, -0.934404, 0.016285,
		0.862279, -0.321556, 0.391250,
		28.976183, 43.326492, 46.695229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155514, 43.028091, 46.942074>,  <28.372587, 43.551582, 46.421352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155514, 43.028091, 46.942074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.515047, 43.195038, 46.995590>,  <28.730766, 43.295208, 47.027702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.515047, 43.195038, 46.995590>,  <28.155514, 43.028091, 46.942074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515047, 43.195038, 46.995590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226014, 0.179836, 0.957380,
		0.375520, -0.890765, 0.255974,
		0.898834, 0.417369, 0.133793,
		28.784697, 43.320248, 47.035728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.855503, 36.088596, 34.299767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076519, 36.419567, 34.339893>,  <36.209129, 36.618149, 34.363972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076519, 36.419567, 34.339893>,  <35.855503, 36.088596, 34.299767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076519, 36.419567, 34.339893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695469, 0.391357, 0.602630,
		0.459371, -0.402747, 0.791690,
		0.552541, 0.827427, 0.100320,
		36.242283, 36.667793, 34.369987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809956, 36.338112, 35.018158>,  <35.855503, 36.088596, 34.299767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809956, 36.338112, 35.018158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909492, 36.676239, 34.829048>,  <35.969215, 36.879116, 34.715584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909492, 36.676239, 34.829048>,  <35.809956, 36.338112, 35.018158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909492, 36.676239, 34.829048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579241, 0.521103, 0.626842,
		0.776245, 0.117866, 0.619315,
		0.248844, 0.845316, -0.472776,
		35.984146, 36.929832, 34.687214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872810, 36.705639, 35.508839>,  <35.809956, 36.338112, 35.018158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872810, 36.705639, 35.508839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846786, 36.964115, 35.204678>,  <35.831173, 37.119202, 35.022182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846786, 36.964115, 35.204678>,  <35.872810, 36.705639, 35.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846786, 36.964115, 35.204678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471821, 0.651533, 0.594045,
		0.879290, 0.397422, 0.262495,
		-0.065062, 0.646189, -0.760399,
		35.827267, 37.157970, 34.976559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221680, 37.382595, 35.732979>,  <35.872810, 36.705639, 35.508839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221680, 37.382595, 35.732979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947800, 37.456562, 35.450989>,  <35.783470, 37.500942, 35.281796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947800, 37.456562, 35.450989>,  <36.221680, 37.382595, 35.732979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947800, 37.456562, 35.450989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454792, 0.647445, 0.611538,
		0.569515, 0.739339, -0.359209,
		-0.684702, 0.184914, -0.704975,
		35.742390, 37.512035, 35.239498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064240, 38.131733, 35.827202>,  <36.221680, 37.382595, 35.732979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064240, 38.131733, 35.827202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772411, 37.962986, 35.611889>,  <35.597313, 37.861736, 35.482700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772411, 37.962986, 35.611889>,  <36.064240, 38.131733, 35.827202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772411, 37.962986, 35.611889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670522, 0.596171, 0.441566,
		0.134627, 0.683087, -0.717822,
		-0.729572, -0.421868, -0.538286,
		35.553539, 37.836426, 35.450401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653839, 38.695305, 35.508087>,  <36.064240, 38.131733, 35.827202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653839, 38.695305, 35.508087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423267, 38.369167, 35.529762>,  <35.284924, 38.173485, 35.542767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423267, 38.369167, 35.529762>,  <35.653839, 38.695305, 35.508087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423267, 38.369167, 35.529762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704369, 0.529400, 0.472864,
		-0.414233, 0.234408, -0.879468,
		-0.576434, -0.815345, 0.054186,
		35.250336, 38.124565, 35.546017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027592, 38.966816, 35.581654>,  <35.653839, 38.695305, 35.508087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027592, 38.966816, 35.581654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922119, 38.593086, 35.677586>,  <34.858837, 38.368851, 35.735146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922119, 38.593086, 35.677586>,  <35.027592, 38.966816, 35.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922119, 38.593086, 35.677586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845275, 0.343591, 0.409212,
		-0.464738, -0.094820, -0.880356,
		-0.263681, -0.934320, 0.239829,
		34.843014, 38.312790, 35.749535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315071, 38.885212, 35.360321>,  <35.027592, 38.966816, 35.581654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315071, 38.885212, 35.360321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423058, 38.629875, 35.648666>,  <34.487850, 38.476673, 35.821674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423058, 38.629875, 35.648666>,  <34.315071, 38.885212, 35.360321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423058, 38.629875, 35.648666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812959, 0.250063, 0.525896,
		-0.515961, -0.728005, -0.451435,
		0.269967, -0.638340, 0.720860,
		34.504047, 38.438374, 35.864925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670490, 38.485420, 35.484234>,  <34.315071, 38.885212, 35.360321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670490, 38.485420, 35.484234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912128, 38.457607, 35.801785>,  <34.057110, 38.440918, 35.992313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912128, 38.457607, 35.801785>,  <33.670490, 38.485420, 35.484234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912128, 38.457607, 35.801785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786029, 0.112102, 0.607940,
		-0.131269, -0.991261, 0.013061,
		0.604092, -0.069538, 0.793875,
		34.093357, 38.436745, 36.039948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310104, 37.995899, 35.977951>,  <33.670490, 38.485420, 35.484234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310104, 37.995899, 35.977951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565025, 38.228817, 36.179855>,  <33.717976, 38.368568, 36.300999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565025, 38.228817, 36.179855>,  <33.310104, 37.995899, 35.977951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565025, 38.228817, 36.179855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712448, 0.195557, 0.673925,
		0.293712, -0.789109, 0.539482,
		0.637299, 0.582293, 0.504762,
		33.756214, 38.403503, 36.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047710, 37.914879, 36.648277>,  <33.310104, 37.995899, 35.977951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047710, 37.914879, 36.648277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305820, 38.211571, 36.721443>,  <33.460686, 38.389587, 36.765343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305820, 38.211571, 36.721443>,  <33.047710, 37.914879, 36.648277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305820, 38.211571, 36.721443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599997, 0.343835, 0.722344,
		0.472895, -0.575854, 0.666905,
		0.645270, 0.741733, 0.182912,
		33.499401, 38.434090, 36.776318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095551, 37.967136, 37.305759>,  <33.047710, 37.914879, 36.648277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095551, 37.967136, 37.305759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217403, 38.331676, 37.195023>,  <33.290516, 38.550400, 37.128578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217403, 38.331676, 37.195023>,  <33.095551, 37.967136, 37.305759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217403, 38.331676, 37.195023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520857, 0.402743, 0.752666,
		0.797439, -0.085088, 0.597370,
		0.304629, 0.911350, -0.276844,
		33.308792, 38.605080, 37.111969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742928, 37.323841, 37.608490>,  <33.095551, 37.967136, 37.305759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742928, 37.323841, 37.608490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372581, 37.254978, 37.473946>,  <32.150375, 37.213661, 37.393219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372581, 37.254978, 37.473946>,  <32.742928, 37.323841, 37.608490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372581, 37.254978, 37.473946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375194, -0.313222, -0.872423,
		0.044841, -0.933944, 0.354594,
		-0.925861, -0.172162, -0.336365,
		32.094822, 37.203331, 37.373035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759331, 36.748741, 37.228340>,  <32.742928, 37.323841, 37.608490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759331, 36.748741, 37.228340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411167, 36.900417, 37.102734>,  <32.202271, 36.991425, 37.027370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411167, 36.900417, 37.102734>,  <32.759331, 36.748741, 37.228340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411167, 36.900417, 37.102734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182360, -0.344140, -0.921039,
		-0.457315, -0.858943, 0.230392,
		-0.870407, 0.379190, -0.314017,
		32.150043, 37.014175, 37.008530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521763, 36.259132, 36.821079>,  <32.759331, 36.748741, 37.228340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521763, 36.259132, 36.821079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293938, 36.560135, 36.688816>,  <32.157242, 36.740738, 36.609459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293938, 36.560135, 36.688816>,  <32.521763, 36.259132, 36.821079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293938, 36.560135, 36.688816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141135, -0.306771, -0.941261,
		-0.809739, -0.582776, 0.068521,
		-0.569565, 0.752505, -0.330655,
		32.123070, 36.785885, 36.589619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961432, 35.985706, 36.336578>,  <32.521763, 36.259132, 36.821079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961432, 35.985706, 36.336578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013683, 36.368069, 36.231373>,  <32.045033, 36.597488, 36.168251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013683, 36.368069, 36.231373>,  <31.961432, 35.985706, 36.336578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013683, 36.368069, 36.231373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118722, -0.278460, -0.953082,
		-0.984297, 0.093274, -0.149862,
		0.130629, 0.955908, -0.263014,
		32.052872, 36.654842, 36.152470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403419, 36.067989, 35.818466>,  <31.961432, 35.985706, 36.336578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403419, 36.067989, 35.818466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642796, 36.381001, 35.749748>,  <31.786421, 36.568810, 35.708519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642796, 36.381001, 35.749748>,  <31.403419, 36.067989, 35.818466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642796, 36.381001, 35.749748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099372, -0.285272, -0.953281,
		-0.794979, 0.553413, -0.248480,
		0.598442, 0.782531, -0.171792,
		31.822329, 36.615761, 35.698212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116573, 36.349796, 35.211864>,  <31.403419, 36.067989, 35.818466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116573, 36.349796, 35.211864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493368, 36.480453, 35.242756>,  <31.719446, 36.558846, 35.261292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493368, 36.480453, 35.242756>,  <31.116573, 36.349796, 35.211864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493368, 36.480453, 35.242756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166395, -0.254646, -0.952611,
		-0.291495, 0.910199, -0.294225,
		0.941989, 0.326639, 0.077225,
		31.775965, 36.578445, 35.265923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212540, 36.778126, 34.683796>,  <31.116573, 36.349796, 35.211864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212540, 36.778126, 34.683796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593374, 36.687347, 34.765797>,  <31.821875, 36.632881, 34.814999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593374, 36.687347, 34.765797>,  <31.212540, 36.778126, 34.683796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593374, 36.687347, 34.765797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129792, -0.307116, -0.942780,
		0.276916, 0.924217, -0.262946,
		0.952088, -0.226943, 0.205002,
		31.879000, 36.619267, 34.827297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598766, 37.103390, 34.133999>,  <31.212540, 36.778126, 34.683796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598766, 37.103390, 34.133999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783953, 36.786274, 34.292568>,  <31.895063, 36.596004, 34.387711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783953, 36.786274, 34.292568>,  <31.598766, 37.103390, 34.133999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783953, 36.786274, 34.292568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301011, -0.280046, -0.911574,
		0.833700, 0.541356, 0.108985,
		0.462965, -0.792785, 0.396428,
		31.922842, 36.548439, 34.411495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210434, 37.090809, 33.756363>,  <31.598766, 37.103390, 34.133999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210434, 37.090809, 33.756363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218449, 36.724339, 33.916477>,  <32.223259, 36.504456, 34.012547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218449, 36.724339, 33.916477>,  <32.210434, 37.090809, 33.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218449, 36.724339, 33.916477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214209, -0.387132, -0.896796,
		0.976582, 0.103716, 0.188494,
		0.020039, -0.916172, 0.400283,
		32.224461, 36.449486, 34.036564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905037, 36.818130, 33.523117>,  <32.210434, 37.090809, 33.756363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905037, 36.818130, 33.523117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701687, 36.490807, 33.630390>,  <32.579678, 36.294411, 33.694752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701687, 36.490807, 33.630390>,  <32.905037, 36.818130, 33.523117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701687, 36.490807, 33.630390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467788, -0.523899, -0.711831,
		0.722998, -0.236428, 0.649135,
		-0.508378, -0.818310, 0.268180,
		32.549175, 36.245312, 33.710846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376980, 36.280956, 33.542614>,  <32.905037, 36.818130, 33.523117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376980, 36.280956, 33.542614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020023, 36.104057, 33.506699>,  <32.805851, 35.997917, 33.485149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020023, 36.104057, 33.506699>,  <33.376980, 36.280956, 33.542614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020023, 36.104057, 33.506699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375600, -0.617612, -0.690999,
		0.250139, -0.650363, 0.717257,
		-0.892387, -0.442248, -0.089788,
		32.752308, 35.971382, 33.479763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420143, 35.404339, 33.588108>,  <33.376980, 36.280956, 33.542614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420143, 35.404339, 33.588108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112347, 35.546097, 33.375584>,  <32.927670, 35.631153, 33.248070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112347, 35.546097, 33.375584>,  <33.420143, 35.404339, 33.588108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112347, 35.546097, 33.375584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228924, -0.623583, -0.747487,
		-0.596224, -0.696812, 0.398710,
		-0.769487, 0.354396, -0.531313,
		32.881500, 35.652416, 33.216190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053181, 35.509846, 33.980873>,  <33.420143, 35.404339, 33.588108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053181, 35.509846, 33.980873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353390, 35.773624, 33.998043>,  <34.533516, 35.931892, 34.008343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353390, 35.773624, 33.998043>,  <34.053181, 35.509846, 33.980873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353390, 35.773624, 33.998043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387437, -0.491705, 0.779820,
		0.535353, -0.568646, -0.624531,
		0.750527, 0.659445, 0.042921,
		34.578548, 35.971458, 34.010918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597843, 35.134922, 34.202854>,  <34.053181, 35.509846, 33.980873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597843, 35.134922, 34.202854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697052, 35.516102, 34.272572>,  <34.756577, 35.744808, 34.314404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697052, 35.516102, 34.272572>,  <34.597843, 35.134922, 34.202854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697052, 35.516102, 34.272572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232047, -0.233119, 0.944357,
		0.940552, -0.193778, -0.278947,
		0.248023, 0.952946, 0.174295,
		34.771458, 35.801987, 34.324860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053486, 35.103889, 34.771965>,  <34.597843, 35.134922, 34.202854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053486, 35.103889, 34.771965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900921, 35.472107, 34.805721>,  <34.809380, 35.693039, 34.825974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900921, 35.472107, 34.805721>,  <35.053486, 35.103889, 34.771965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900921, 35.472107, 34.805721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150196, -0.151790, 0.976934,
		0.912120, 0.359944, 0.196157,
		-0.381417, 0.920543, 0.084389,
		34.786495, 35.748268, 34.831039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752735, 34.467155, 34.789570>,  <35.053486, 35.103889, 34.771965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752735, 34.467155, 34.789570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094620, 34.288364, 34.895157>,  <35.299751, 34.181091, 34.958511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094620, 34.288364, 34.895157>,  <34.752735, 34.467155, 34.789570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094620, 34.288364, 34.895157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333231, -0.082527, 0.939227,
		-0.398031, -0.890729, -0.219484,
		0.854710, -0.446980, 0.263971,
		35.351032, 34.154270, 34.974350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556389, 33.844376, 35.094330>,  <34.752735, 34.467155, 34.789570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556389, 33.844376, 35.094330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906567, 33.961857, 35.247864>,  <35.116673, 34.032345, 35.339985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906567, 33.961857, 35.247864>,  <34.556389, 33.844376, 35.094330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906567, 33.961857, 35.247864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366777, -0.113477, 0.923362,
		0.314757, -0.949135, 0.008383,
		0.875444, 0.293709, 0.383839,
		35.169201, 34.049969, 35.363014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646469, 33.363598, 35.582531>,  <34.556389, 33.844376, 35.094330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646469, 33.363598, 35.582531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857647, 33.690281, 35.675713>,  <34.984352, 33.886292, 35.731621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857647, 33.690281, 35.675713>,  <34.646469, 33.363598, 35.582531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857647, 33.690281, 35.675713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240062, -0.119600, 0.963362,
		0.814643, -0.564526, 0.132917,
		0.527946, 0.816705, 0.232952,
		35.016029, 33.935291, 35.745598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201977, 33.161957, 36.163376>,  <34.646469, 33.363598, 35.582531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201977, 33.161957, 36.163376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055824, 33.533989, 36.148178>,  <34.968132, 33.757210, 36.139061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055824, 33.533989, 36.148178>,  <35.201977, 33.161957, 36.163376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055824, 33.533989, 36.148178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341591, -0.096002, 0.934933,
		0.865917, 0.354586, 0.352785,
		-0.365382, 0.930082, -0.037993,
		34.946209, 33.813015, 36.136780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431606, 33.474751, 36.756229>,  <35.201977, 33.161957, 36.163376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431606, 33.474751, 36.756229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145493, 33.737087, 36.659706>,  <34.973824, 33.894489, 36.601791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145493, 33.737087, 36.659706>,  <35.431606, 33.474751, 36.756229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145493, 33.737087, 36.659706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192200, 0.147365, 0.970228,
		0.671879, 0.740374, 0.020645,
		-0.715289, 0.655843, -0.241311,
		34.930904, 33.933842, 36.587315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526043, 34.127487, 37.253418>,  <35.431606, 33.474751, 36.756229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526043, 34.127487, 37.253418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156357, 34.174854, 37.108200>,  <34.934544, 34.203274, 37.021069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156357, 34.174854, 37.108200>,  <35.526043, 34.127487, 37.253418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156357, 34.174854, 37.108200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352264, 0.102645, 0.930255,
		0.147426, 0.987644, -0.053151,
		-0.924216, 0.118421, -0.363044,
		34.879093, 34.210381, 36.999287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255959, 34.671169, 37.647015>,  <35.526043, 34.127487, 37.253418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255959, 34.671169, 37.647015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934502, 34.494381, 37.487602>,  <34.741627, 34.388309, 37.391956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934502, 34.494381, 37.487602>,  <35.255959, 34.671169, 37.647015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934502, 34.494381, 37.487602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513552, 0.176657, 0.839677,
		-0.300706, 0.879465, -0.368942,
		-0.803642, -0.441967, -0.398529,
		34.693409, 34.361790, 37.368042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679970, 35.124180, 37.718319>,  <35.255959, 34.671169, 37.647015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679970, 35.124180, 37.718319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516548, 34.760246, 37.689240>,  <34.418495, 34.541885, 37.671791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516548, 34.760246, 37.689240>,  <34.679970, 35.124180, 37.718319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516548, 34.760246, 37.689240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625067, 0.220858, 0.748674,
		-0.665112, 0.351318, -0.658939,
		-0.408555, -0.909833, -0.072702,
		34.393982, 34.487297, 37.667431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804741, 35.179653, 37.754704>,  <34.679970, 35.124180, 37.718319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804741, 35.179653, 37.754704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923515, 34.815018, 37.868431>,  <33.994781, 34.596237, 37.936668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923515, 34.815018, 37.868431>,  <33.804741, 35.179653, 37.754704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923515, 34.815018, 37.868431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664242, 0.016716, 0.747330,
		-0.686010, -0.410765, -0.600552,
		0.296939, -0.911588, 0.284315,
		34.012596, 34.541542, 37.953724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135853, 34.945484, 38.152908>,  <33.804741, 35.179653, 37.754704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135853, 34.945484, 38.152908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394772, 34.650963, 38.231773>,  <33.550121, 34.474251, 38.279095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394772, 34.650963, 38.231773>,  <33.135853, 34.945484, 38.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394772, 34.650963, 38.231773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377723, -0.085173, 0.921993,
		-0.662071, -0.671273, -0.333250,
		0.647292, -0.736301, 0.197165,
		33.588959, 34.430073, 38.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758419, 34.339096, 38.414288>,  <33.135853, 34.945484, 38.152908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758419, 34.339096, 38.414288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139721, 34.307770, 38.531029>,  <33.368500, 34.288975, 38.601074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139721, 34.307770, 38.531029>,  <32.758419, 34.339096, 38.414288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139721, 34.307770, 38.531029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295606, -0.041315, 0.954416,
		-0.062681, -0.996073, -0.062532,
		0.953251, -0.078309, 0.291855,
		33.425697, 34.284275, 38.618584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730427, 33.843529, 38.918625>,  <32.758419, 34.339096, 38.414288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730427, 33.843529, 38.918625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079620, 34.026756, 38.985638>,  <33.289135, 34.136692, 39.025845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079620, 34.026756, 38.985638>,  <32.730427, 33.843529, 38.918625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079620, 34.026756, 38.985638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192337, 0.007660, 0.981299,
		0.448224, -0.888881, 0.094792,
		0.872984, 0.458073, 0.167531,
		33.341515, 34.164177, 39.035896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921471, 33.513927, 39.544342>,  <32.730427, 33.843529, 38.918625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921471, 33.513927, 39.544342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139889, 33.846718, 39.505054>,  <33.270939, 34.046394, 39.481480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139889, 33.846718, 39.505054>,  <32.921471, 33.513927, 39.544342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139889, 33.846718, 39.505054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033131, 0.095705, 0.994858,
		0.837101, -0.546491, 0.024694,
		0.546044, 0.831979, -0.098221,
		33.303703, 34.096310, 39.475590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324917, 33.457371, 40.207077>,  <32.921471, 33.513927, 39.544342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324917, 33.457371, 40.207077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367123, 33.827938, 40.062511>,  <33.392445, 34.050278, 39.975773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367123, 33.827938, 40.062511>,  <33.324917, 33.457371, 40.207077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367123, 33.827938, 40.062511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006934, 0.364121, 0.931326,
		0.994394, -0.095759, 0.044842,
		0.105511, 0.926416, -0.361416,
		33.398777, 34.105862, 39.954086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929886, 33.753078, 40.587547>,  <33.324917, 33.457371, 40.207077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929886, 33.753078, 40.587547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714500, 34.050240, 40.428474>,  <33.585270, 34.228535, 40.333031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714500, 34.050240, 40.428474>,  <33.929886, 33.753078, 40.587547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714500, 34.050240, 40.428474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157872, 0.374645, 0.913629,
		0.827725, 0.554742, -0.084451,
		-0.538468, 0.742901, -0.397682,
		33.552959, 34.273109, 40.309170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187382, 34.357883, 40.953594>,  <33.929886, 33.753078, 40.587547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187382, 34.357883, 40.953594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814922, 34.446957, 40.838093>,  <33.591446, 34.500401, 40.768791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814922, 34.446957, 40.838093>,  <34.187382, 34.357883, 40.953594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814922, 34.446957, 40.838093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124325, 0.550555, 0.825489,
		0.342802, 0.804550, -0.484961,
		-0.931145, 0.222686, -0.288757,
		33.535580, 34.513763, 40.751465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062698, 35.016682, 41.161221>,  <34.187382, 34.357883, 40.953594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062698, 35.016682, 41.161221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688110, 34.919502, 41.060036>,  <33.463356, 34.861195, 40.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688110, 34.919502, 41.060036>,  <34.062698, 35.016682, 41.161221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688110, 34.919502, 41.060036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350350, 0.681774, 0.642215,
		0.016441, 0.690044, -0.723581,
		-0.936475, -0.242948, -0.252966,
		33.407169, 34.846619, 40.984146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746922, 35.624847, 41.078850>,  <34.062698, 35.016682, 41.161221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746922, 35.624847, 41.078850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457703, 35.360939, 41.160736>,  <33.284172, 35.202595, 41.209866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457703, 35.360939, 41.160736>,  <33.746922, 35.624847, 41.078850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457703, 35.360939, 41.160736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430765, 0.662292, 0.613034,
		-0.540041, 0.355068, -0.763074,
		-0.723047, -0.659769, 0.204714,
		33.240788, 35.163010, 41.222149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071888, 36.042435, 40.988468>,  <33.746922, 35.624847, 41.078850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071888, 36.042435, 40.988468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009514, 35.719555, 41.216190>,  <32.972092, 35.525826, 41.352825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009514, 35.719555, 41.216190>,  <33.071888, 36.042435, 40.988468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009514, 35.719555, 41.216190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433798, 0.573765, 0.694704,
		-0.887415, -0.138639, -0.439629,
		-0.155931, -0.807201, 0.569309,
		32.962734, 35.477394, 41.386982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440826, 36.164986, 41.258106>,  <33.071888, 36.042435, 40.988468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440826, 36.164986, 41.258106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591183, 35.880417, 41.495621>,  <32.681396, 35.709675, 41.638130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591183, 35.880417, 41.495621>,  <32.440826, 36.164986, 41.258106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591183, 35.880417, 41.495621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383058, 0.464175, 0.798629,
		-0.843784, -0.527652, -0.098038,
		0.375891, -0.711425, 0.593785,
		32.703949, 35.666988, 41.673756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806791, 35.705040, 41.579987>,  <32.440826, 36.164986, 41.258106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806791, 35.705040, 41.579987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124329, 35.682663, 41.822205>,  <32.314850, 35.669235, 41.967533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124329, 35.682663, 41.822205>,  <31.806791, 35.705040, 41.579987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124329, 35.682663, 41.822205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544236, 0.378923, 0.748482,
		-0.271326, -0.923736, 0.270359,
		0.793844, -0.055944, 0.605542,
		32.362480, 35.665878, 42.003868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546593, 35.734703, 42.258469>,  <31.806791, 35.705040, 41.579987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546593, 35.734703, 42.258469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923107, 35.748211, 42.392838>,  <32.149014, 35.756317, 42.473457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923107, 35.748211, 42.392838>,  <31.546593, 35.734703, 42.258469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923107, 35.748211, 42.392838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332787, 0.260488, 0.906310,
		-0.056898, -0.964886, 0.256431,
		0.941284, 0.033770, 0.335923,
		32.205494, 35.758343, 42.493614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622095, 35.410088, 42.902996>,  <31.546593, 35.734703, 42.258469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622095, 35.410088, 42.902996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922297, 35.673763, 42.884167>,  <32.102417, 35.831970, 42.872868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922297, 35.673763, 42.884167>,  <31.622095, 35.410088, 42.902996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922297, 35.673763, 42.884167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348850, 0.455657, 0.818951,
		0.561294, -0.598201, 0.571930,
		0.750501, 0.659190, -0.047075,
		32.147446, 35.871521, 42.870045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000450, 35.473579, 43.559738>,  <31.622095, 35.410088, 42.902996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000450, 35.473579, 43.559738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056175, 35.810917, 43.352139>,  <32.089611, 36.013321, 43.227581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056175, 35.810917, 43.352139>,  <32.000450, 35.473579, 43.559738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056175, 35.810917, 43.352139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223501, 0.537360, 0.813198,
		0.964697, 0.002710, 0.263349,
		0.139309, 0.843349, -0.518995,
		32.097969, 36.063923, 43.196442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476913, 35.859550, 43.985580>,  <32.000450, 35.473579, 43.559738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476913, 35.859550, 43.985580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298695, 36.125282, 43.745533>,  <32.191761, 36.284721, 43.601505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298695, 36.125282, 43.745533>,  <32.476913, 35.859550, 43.985580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298695, 36.125282, 43.745533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028781, 0.680618, 0.732073,
		0.894794, 0.308904, -0.322370,
		-0.445551, 0.664333, -0.600122,
		32.165028, 36.324581, 43.565495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816803, 36.426407, 44.103104>,  <32.476913, 35.859550, 43.985580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816803, 36.426407, 44.103104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476444, 36.556141, 43.937798>,  <32.272228, 36.633980, 43.838615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476444, 36.556141, 43.937798>,  <32.816803, 36.426407, 44.103104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476444, 36.556141, 43.937798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071013, 0.708432, 0.702198,
		0.520518, 0.626842, -0.579767,
		-0.850892, 0.324336, -0.413265,
		32.221176, 36.653442, 43.813816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874954, 37.177650, 44.258091>,  <32.816803, 36.426407, 44.103104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874954, 37.177650, 44.258091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494354, 37.070492, 44.197590>,  <32.265995, 37.006199, 44.161289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494354, 37.070492, 44.197590>,  <32.874954, 37.177650, 44.258091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494354, 37.070492, 44.197590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298372, 0.683834, 0.665841,
		-0.074945, 0.678678, -0.730602,
		-0.951503, -0.267893, -0.151249,
		32.208904, 36.990124, 44.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225967, 37.416237, 43.672035>,  <32.874954, 37.177650, 44.258091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225967, 37.416237, 43.672035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436611, 37.731888, 43.798504>,  <33.562996, 37.921280, 43.874386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436611, 37.731888, 43.798504>,  <33.225967, 37.416237, 43.672035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436611, 37.731888, 43.798504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814089, -0.361004, -0.454900,
		-0.244837, 0.496942, -0.832528,
		0.526605, 0.789129, 0.316168,
		33.594593, 37.968628, 43.893353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572094, 37.894852, 43.105434>,  <33.225967, 37.416237, 43.672035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572094, 37.894852, 43.105434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780869, 37.909233, 43.446323>,  <33.906136, 37.917862, 43.650856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780869, 37.909233, 43.446323>,  <33.572094, 37.894852, 43.105434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780869, 37.909233, 43.446323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812227, -0.326095, -0.483684,
		0.260515, 0.944653, -0.199406,
		0.521938, 0.035956, 0.852225,
		33.937450, 37.920021, 43.701992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158180, 38.107193, 42.821415>,  <33.572094, 37.894852, 43.105434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158180, 38.107193, 42.821415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268356, 38.000313, 43.190788>,  <34.334461, 37.936184, 43.412415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268356, 38.000313, 43.190788>,  <34.158180, 38.107193, 42.821415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268356, 38.000313, 43.190788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845909, -0.388983, -0.364870,
		0.456694, 0.881645, 0.118880,
		0.275444, -0.267196, 0.923438,
		34.350990, 37.920155, 43.467819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782627, 38.502773, 43.014862>,  <34.158180, 38.107193, 42.821415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782627, 38.502773, 43.014862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757931, 38.149864, 43.201534>,  <34.743114, 37.938118, 43.313538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757931, 38.149864, 43.201534>,  <34.782627, 38.502773, 43.014862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757931, 38.149864, 43.201534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867838, -0.278403, -0.411520,
		0.492997, 0.379597, 0.782854,
		-0.061737, -0.882268, 0.466681,
		34.739410, 37.885185, 43.341537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443794, 38.419453, 43.402401>,  <34.782627, 38.502773, 43.014862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443794, 38.419453, 43.402401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283123, 38.053806, 43.424469>,  <35.186722, 37.834419, 43.437710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283123, 38.053806, 43.424469>,  <35.443794, 38.419453, 43.402401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283123, 38.053806, 43.424469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752045, -0.363634, -0.549725,
		0.522577, -0.179320, 0.833521,
		-0.401674, -0.914119, 0.055170,
		35.162621, 37.779572, 43.441021>
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
