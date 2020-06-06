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
	<24.488518, 35.015305, 35.153168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246162, 34.996677, 34.835495>,  <24.100748, 34.985500, 34.644890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246162, 34.996677, 34.835495>,  <24.488518, 35.015305, 35.153168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246162, 34.996677, 34.835495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639676, -0.622034, -0.451539,
		-0.472983, -0.781604, 0.406673,
		-0.605889, -0.046569, -0.794185,
		24.064396, 34.982708, 34.597240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977177, 35.219940, 34.583851>,  <24.488518, 35.015305, 35.153168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.977177, 35.219940, 34.583851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707136, 35.474228, 34.733570>,  <24.545111, 35.626801, 34.823402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707136, 35.474228, 34.733570>,  <24.977177, 35.219940, 34.583851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707136, 35.474228, 34.733570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407490, 0.744284, -0.529144,
		-0.614970, -0.204704, -0.761517,
		-0.675103, 0.635718, 0.374297,
		24.504604, 35.664944, 34.845860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494440, 34.890163, 34.194908>,  <24.977177, 35.219940, 34.583851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494440, 34.890163, 34.194908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838045, 35.027218, 34.347061>,  <26.044209, 35.109451, 34.438354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838045, 35.027218, 34.347061>,  <25.494440, 34.890163, 34.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838045, 35.027218, 34.347061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511779, -0.594013, -0.620670,
		0.013289, 0.727838, -0.685621,
		0.859014, 0.342638, 0.380386,
		26.095749, 35.130009, 34.461178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042688, 34.987617, 33.631512>,  <25.494440, 34.890163, 34.194908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042688, 34.987617, 33.631512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261240, 34.962940, 33.965618>,  <26.392372, 34.948135, 34.166080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261240, 34.962940, 33.965618>,  <26.042688, 34.987617, 33.631512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261240, 34.962940, 33.965618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667824, -0.569766, -0.478934,
		0.505449, 0.819488, -0.270111,
		0.546381, -0.061690, 0.835262,
		26.425154, 34.944435, 34.216198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726938, 35.068699, 33.418510>,  <26.042688, 34.987617, 33.631512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726938, 35.068699, 33.418510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763006, 34.870159, 33.763882>,  <26.784647, 34.751034, 33.971104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763006, 34.870159, 33.763882>,  <26.726938, 35.068699, 33.418510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763006, 34.870159, 33.763882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748189, -0.538447, -0.387669,
		0.657330, 0.680961, 0.322816,
		0.090168, -0.496354, 0.863425,
		26.790056, 34.721252, 34.022907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310492, 34.926922, 33.192810>,  <26.726938, 35.068699, 33.418510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310492, 34.926922, 33.192810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230524, 34.625916, 33.443810>,  <27.182543, 34.445312, 33.594410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230524, 34.625916, 33.443810>,  <27.310492, 34.926922, 33.192810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230524, 34.625916, 33.443810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576893, -0.608055, -0.545402,
		0.791976, 0.252962, 0.555683,
		-0.199920, -0.752515, 0.627497,
		27.170547, 34.400162, 33.632057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984093, 34.569717, 33.421989>,  <27.310492, 34.926922, 33.192810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984093, 34.569717, 33.421989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687012, 34.302795, 33.444260>,  <27.508762, 34.142643, 33.457623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687012, 34.302795, 33.444260>,  <27.984093, 34.569717, 33.421989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687012, 34.302795, 33.444260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597040, -0.697555, -0.396182,
		0.303212, -0.261003, 0.916482,
		-0.742702, -0.667304, 0.055678,
		27.464201, 34.102604, 33.460964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269749, 33.975075, 33.735600>,  <27.984093, 34.569717, 33.421989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269749, 33.975075, 33.735600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952303, 33.840508, 33.532818>,  <27.761835, 33.759766, 33.411148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952303, 33.840508, 33.532818>,  <28.269749, 33.975075, 33.735600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952303, 33.840508, 33.532818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541244, -0.770957, -0.335680,
		-0.277906, -0.540784, 0.793928,
		-0.793614, -0.336421, -0.506950,
		27.714218, 33.739582, 33.380733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293713, 33.302479, 33.868683>,  <28.269749, 33.975075, 33.735600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293713, 33.302479, 33.868683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063463, 33.340405, 33.543804>,  <27.925314, 33.363159, 33.348877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063463, 33.340405, 33.543804>,  <28.293713, 33.302479, 33.868683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063463, 33.340405, 33.543804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390678, -0.840672, -0.375022,
		-0.718349, -0.533180, 0.446871,
		-0.575626, 0.094814, -0.812198,
		27.890776, 33.368847, 33.300144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078369, 32.681644, 33.781639>,  <28.293713, 33.302479, 33.868683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078369, 32.681644, 33.781639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030844, 32.856575, 33.425072>,  <28.002329, 32.961533, 33.211132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030844, 32.856575, 33.425072>,  <28.078369, 32.681644, 33.781639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030844, 32.856575, 33.425072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504323, -0.746769, -0.433584,
		-0.855303, -0.501077, -0.131832,
		-0.118811, 0.437331, -0.891418,
		27.995201, 32.987774, 33.157646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826618, 32.122215, 33.430958>,  <28.078369, 32.681644, 33.781639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826618, 32.122215, 33.430958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992035, 32.387367, 33.181297>,  <28.091284, 32.546459, 33.031502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992035, 32.387367, 33.181297>,  <27.826618, 32.122215, 33.430958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992035, 32.387367, 33.181297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581434, -0.719804, -0.379232,
		-0.700656, -0.206077, -0.683091,
		0.413541, 0.662883, -0.624155,
		28.116096, 32.586231, 32.994049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908638, 31.797455, 32.794651>,  <27.826618, 32.122215, 33.430958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908638, 31.797455, 32.794651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164055, 32.105175, 32.786312>,  <28.317305, 32.289806, 32.781311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164055, 32.105175, 32.786312>,  <27.908638, 31.797455, 32.794651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164055, 32.105175, 32.786312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677285, -0.574616, -0.459459,
		-0.365440, 0.279267, -0.887955,
		0.638544, 0.769303, -0.020844,
		28.355618, 32.335964, 32.780060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268969, 31.718756, 32.144714>,  <27.908638, 31.797455, 32.794651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268969, 31.718756, 32.144714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480988, 31.891424, 32.436661>,  <28.608198, 31.995026, 32.611832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480988, 31.891424, 32.436661>,  <28.268969, 31.718756, 32.144714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480988, 31.891424, 32.436661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822493, -0.471115, -0.318677,
		0.206289, 0.769228, -0.604759,
		0.530047, 0.431670, 0.729871,
		28.640001, 32.020924, 32.655621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918621, 31.945841, 31.895922>,  <28.268969, 31.718756, 32.144714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918621, 31.945841, 31.895922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987482, 31.924940, 32.289394>,  <29.028799, 31.912399, 32.525478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987482, 31.924940, 32.289394>,  <28.918621, 31.945841, 31.895922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987482, 31.924940, 32.289394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926218, -0.331403, -0.179701,
		0.335385, 0.942041, -0.008656,
		0.172154, -0.052252, 0.983683,
		29.039127, 31.909266, 32.584499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489790, 32.369301, 32.090889>,  <28.918621, 31.945841, 31.895922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489790, 32.369301, 32.090889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438725, 32.058556, 32.337528>,  <29.408085, 31.872108, 32.485512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438725, 32.058556, 32.337528>,  <29.489790, 32.369301, 32.090889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438725, 32.058556, 32.337528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967553, -0.234220, -0.094773,
		0.218044, 0.584488, 0.781556,
		-0.127663, -0.776862, 0.616593,
		29.400425, 31.825497, 32.522507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197628, 33.059952, 32.312099>,  <29.489790, 32.369301, 32.090889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197628, 33.059952, 32.312099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909996, 32.804104, 32.420773>,  <28.737417, 32.650597, 32.485977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909996, 32.804104, 32.420773>,  <29.197628, 33.059952, 32.312099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909996, 32.804104, 32.420773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628157, 0.765470, 0.139550,
		-0.297226, -0.070314, -0.952214,
		-0.719080, -0.639618, 0.271686,
		28.694273, 32.612217, 32.502277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560518, 33.539608, 32.198730>,  <29.197628, 33.059952, 32.312099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560518, 33.539608, 32.198730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408360, 33.223846, 32.391453>,  <28.317064, 33.034389, 32.507084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408360, 33.223846, 32.391453>,  <28.560518, 33.539608, 32.198730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408360, 33.223846, 32.391453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794538, 0.545571, 0.266575,
		-0.473293, -0.281404, -0.834749,
		-0.380399, -0.789408, 0.481801,
		28.294239, 32.987022, 32.535992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860598, 33.650322, 32.065346>,  <28.560518, 33.539608, 32.198730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860598, 33.650322, 32.065346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880983, 33.424393, 32.394798>,  <27.893215, 33.288834, 32.592472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880983, 33.424393, 32.394798>,  <27.860598, 33.650322, 32.065346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880983, 33.424393, 32.394798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830300, 0.434330, 0.349228,
		-0.554982, -0.701660, -0.446842,
		0.050963, -0.564828, 0.823634,
		27.896273, 33.254944, 32.641888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111614, 33.407646, 32.284771>,  <27.860598, 33.650322, 32.065346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111614, 33.407646, 32.284771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345085, 33.364113, 32.606636>,  <27.485168, 33.337994, 32.799755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345085, 33.364113, 32.606636>,  <27.111614, 33.407646, 32.284771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345085, 33.364113, 32.606636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692327, 0.451089, 0.563207,
		-0.424268, -0.885818, 0.187942,
		0.583678, -0.108833, 0.804659,
		27.520189, 33.331463, 32.848034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660873, 33.243359, 32.855209>,  <27.111614, 33.407646, 32.284771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660873, 33.243359, 32.855209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995316, 33.398827, 33.010056>,  <27.195982, 33.492107, 33.102962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995316, 33.398827, 33.010056>,  <26.660873, 33.243359, 32.855209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995316, 33.398827, 33.010056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533071, 0.409129, 0.740573,
		0.129458, -0.825560, 0.549264,
		0.836107, 0.388670, 0.387117,
		27.246147, 33.515427, 33.126190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864473, 32.833199, 33.427555>,  <26.660873, 33.243359, 32.855209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864473, 32.833199, 33.427555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053068, 32.650192, 33.125992>,  <27.166225, 32.540386, 32.945053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053068, 32.650192, 33.125992>,  <26.864473, 32.833199, 33.427555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053068, 32.650192, 33.125992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319390, 0.708265, -0.629564,
		0.822005, 0.537621, 0.187809,
		0.471486, -0.457520, -0.753907,
		27.194513, 32.512936, 32.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441671, 33.322708, 33.550053>,  <26.864473, 32.833199, 33.427555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441671, 33.322708, 33.550053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777241, 33.539772, 33.533398>,  <26.978582, 33.670010, 33.523403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777241, 33.539772, 33.533398>,  <26.441671, 33.322708, 33.550053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777241, 33.539772, 33.533398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387675, 0.649516, 0.654093,
		0.381992, -0.532591, 0.755268,
		0.838922, 0.542657, -0.041638,
		27.028917, 33.702568, 33.520905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725855, 33.419533, 34.240768>,  <26.441671, 33.322708, 33.550053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725855, 33.419533, 34.240768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857574, 33.743195, 34.046108>,  <26.936607, 33.937393, 33.929314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857574, 33.743195, 34.046108>,  <26.725855, 33.419533, 34.240768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857574, 33.743195, 34.046108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330285, 0.581548, 0.743448,
		0.884575, -0.084084, 0.458755,
		0.329300, 0.809155, -0.486651,
		26.956364, 33.985943, 33.900112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192638, 33.712711, 34.695602>,  <26.725855, 33.419533, 34.240768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192638, 33.712711, 34.695602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083057, 34.003643, 34.443905>,  <27.017309, 34.178204, 34.292889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083057, 34.003643, 34.443905>,  <27.192638, 33.712711, 34.695602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083057, 34.003643, 34.443905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194587, 0.598821, 0.776885,
		0.941852, 0.335272, -0.022520,
		-0.273953, 0.727328, -0.629240,
		27.000872, 34.221840, 34.255135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102730, 34.280045, 35.185795>,  <27.192638, 33.712711, 34.695602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102730, 34.280045, 35.185795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007324, 34.445789, 34.834473>,  <26.950081, 34.545235, 34.623680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007324, 34.445789, 34.834473>,  <27.102730, 34.280045, 35.185795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007324, 34.445789, 34.834473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452612, 0.752746, 0.478034,
		0.859217, 0.511548, 0.008004,
		-0.238512, 0.414358, -0.878305,
		26.935770, 34.570095, 34.570980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088591, 34.942806, 35.328445>,  <27.102730, 34.280045, 35.185795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088591, 34.942806, 35.328445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903755, 34.956417, 34.973972>,  <26.792854, 34.964584, 34.761288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903755, 34.956417, 34.973972>,  <27.088591, 34.942806, 35.328445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903755, 34.956417, 34.973972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526933, 0.793208, 0.305225,
		0.713312, 0.607999, -0.348602,
		-0.462090, 0.034030, -0.886180,
		26.765127, 34.966625, 34.708118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161514, 35.651115, 35.075676>,  <27.088591, 34.942806, 35.328445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161514, 35.651115, 35.075676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837765, 35.469143, 34.927109>,  <26.643515, 35.359959, 34.837967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837765, 35.469143, 34.927109>,  <27.161514, 35.651115, 35.075676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837765, 35.469143, 34.927109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569857, 0.761312, 0.309300,
		0.142057, 0.461996, -0.875431,
		-0.809372, -0.454932, -0.371421,
		26.594954, 35.332664, 34.815681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812035, 36.012779, 34.636608>,  <27.161514, 35.651115, 35.075676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812035, 36.012779, 34.636608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554897, 35.773045, 34.827415>,  <26.400614, 35.629204, 34.941898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554897, 35.773045, 34.827415>,  <26.812035, 36.012779, 34.636608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554897, 35.773045, 34.827415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463968, 0.800166, 0.380090,
		-0.609494, 0.023019, -0.792456,
		-0.642846, -0.599337, 0.477017,
		26.362043, 35.593243, 34.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031895, 36.681644, 34.734768>,  <26.812035, 36.012779, 34.636608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031895, 36.681644, 34.734768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356741, 36.793297, 34.939728>,  <27.551649, 36.860291, 35.062702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356741, 36.793297, 34.939728>,  <27.031895, 36.681644, 34.734768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356741, 36.793297, 34.939728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308880, 0.950679, -0.028338,
		-0.495039, -0.135257, 0.858279,
		0.812114, 0.279134, 0.512401,
		27.600376, 36.877037, 35.093449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871572, 37.055721, 35.293770>,  <27.031895, 36.681644, 34.734768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871572, 37.055721, 35.293770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243475, 37.176617, 35.209671>,  <27.466616, 37.249153, 35.159210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243475, 37.176617, 35.209671>,  <26.871572, 37.055721, 35.293770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243475, 37.176617, 35.209671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317096, 0.947545, -0.040109,
		0.187100, 0.103961, 0.976824,
		0.929755, 0.302242, -0.210251,
		27.522402, 37.267288, 35.146595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918587, 37.601059, 35.700146>,  <26.871572, 37.055721, 35.293770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918587, 37.601059, 35.700146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184793, 37.635876, 35.403629>,  <27.344517, 37.656765, 35.225719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184793, 37.635876, 35.403629>,  <26.918587, 37.601059, 35.700146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184793, 37.635876, 35.403629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146123, 0.989152, -0.015046,
		0.731939, 0.118333, 0.671016,
		0.665517, 0.087038, -0.741290,
		27.384449, 37.661987, 35.181244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496178, 38.143143, 35.862919>,  <26.918587, 37.601059, 35.700146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496178, 38.143143, 35.862919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409845, 38.096210, 35.475178>,  <27.358046, 38.068050, 35.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409845, 38.096210, 35.475178>,  <27.496178, 38.143143, 35.862919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409845, 38.096210, 35.475178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334055, 0.941721, -0.039606,
		0.917510, 0.315270, -0.242446,
		-0.215830, -0.117329, -0.969356,
		27.345097, 38.061012, 35.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765142, 38.778835, 35.525234>,  <27.496178, 38.143143, 35.862919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765142, 38.778835, 35.525234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489590, 38.633137, 35.274551>,  <27.324259, 38.545715, 35.124142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489590, 38.633137, 35.274551>,  <27.765142, 38.778835, 35.525234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489590, 38.633137, 35.274551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431864, 0.900621, -0.048743,
		0.582181, 0.237074, -0.777728,
		-0.688882, -0.364250, -0.626708,
		27.282925, 38.523861, 35.086540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720053, 39.361538, 34.995331>,  <27.765142, 38.778835, 35.525234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720053, 39.361538, 34.995331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395868, 39.136066, 34.931557>,  <27.201357, 39.000786, 34.893291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395868, 39.136066, 34.931557>,  <27.720053, 39.361538, 34.995331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395868, 39.136066, 34.931557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542130, 0.824847, -0.160379,
		0.221916, -0.043544, -0.974093,
		-0.810462, -0.563676, -0.159440,
		27.152729, 38.966965, 34.883724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359785, 39.682514, 34.416050>,  <27.720053, 39.361538, 34.995331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359785, 39.682514, 34.416050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067522, 39.457336, 34.570572>,  <26.892164, 39.322231, 34.663284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067522, 39.457336, 34.570572>,  <27.359785, 39.682514, 34.416050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067522, 39.457336, 34.570572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664576, 0.716081, -0.213465,
		-0.156458, -0.412700, -0.897329,
		-0.730657, -0.562945, 0.386307,
		26.848326, 39.288452, 34.686462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065205, 39.147568, 34.159744>,  <27.359785, 39.682514, 34.416050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065205, 39.147568, 34.159744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759354, 38.902164, 34.238682>,  <26.575842, 38.754921, 34.286045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759354, 38.902164, 34.238682>,  <27.065205, 39.147568, 34.159744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759354, 38.902164, 34.238682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640811, 0.756350, -0.131515,
		-0.068577, -0.227021, -0.971472,
		-0.764629, -0.613511, 0.197346,
		26.529964, 38.718109, 34.297886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518093, 39.241482, 33.592537>,  <27.065205, 39.147568, 34.159744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518093, 39.241482, 33.592537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348848, 39.089130, 33.921391>,  <26.247301, 38.997719, 34.118702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348848, 39.089130, 33.921391>,  <26.518093, 39.241482, 33.592537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348848, 39.089130, 33.921391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618182, 0.784723, 0.045396,
		-0.662439, -0.489022, -0.567479,
		-0.423114, -0.380877, 0.822136,
		26.221914, 38.974869, 34.168030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749275, 39.191536, 33.492435>,  <26.518093, 39.241482, 33.592537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749275, 39.191536, 33.492435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829954, 39.195454, 33.884193>,  <25.878361, 39.197803, 34.119247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829954, 39.195454, 33.884193>,  <25.749275, 39.191536, 33.492435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829954, 39.195454, 33.884193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620250, 0.775174, 0.119982,
		-0.758030, -0.631672, 0.162424,
		0.201697, 0.009793, 0.979399,
		25.890463, 39.198391, 34.178013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158384, 39.361832, 33.806938>,  <25.749275, 39.191536, 33.492435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158384, 39.361832, 33.806938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411606, 39.430355, 34.108906>,  <25.563538, 39.471470, 34.290085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411606, 39.430355, 34.108906>,  <25.158384, 39.361832, 33.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411606, 39.430355, 34.108906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490700, 0.843052, 0.220174,
		-0.598714, -0.509819, 0.617759,
		0.633052, 0.171313, 0.754915,
		25.601521, 39.481750, 34.335381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753798, 39.592239, 34.571396>,  <25.158384, 39.361832, 33.806938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753798, 39.592239, 34.571396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129274, 39.716366, 34.511307>,  <25.354561, 39.790840, 34.475254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129274, 39.716366, 34.511307>,  <24.753798, 39.592239, 34.571396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129274, 39.716366, 34.511307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292497, 0.947465, 0.129443,
		0.182498, -0.077568, 0.980142,
		0.938691, 0.310311, -0.150222,
		25.410881, 39.809460, 34.466240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107996, 40.057617, 35.072258>,  <24.753798, 39.592239, 34.571396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107996, 40.057617, 35.072258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255140, 40.132774, 34.707977>,  <25.343428, 40.177868, 34.489410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255140, 40.132774, 34.707977>,  <25.107996, 40.057617, 35.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255140, 40.132774, 34.707977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100185, 0.981680, 0.162072,
		0.924468, 0.031618, 0.379946,
		0.367861, 0.187895, -0.910700,
		25.365499, 40.189144, 34.434769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639429, 40.316853, 35.504818>,  <25.107996, 40.057617, 35.072258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639429, 40.316853, 35.504818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430931, 40.587852, 35.297245>,  <25.305832, 40.750454, 35.172699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430931, 40.587852, 35.297245>,  <25.639429, 40.316853, 35.504818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430931, 40.587852, 35.297245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014175, -0.601118, -0.799035,
		-0.853289, -0.423849, 0.303726,
		-0.521246, 0.677502, -0.518935,
		25.274557, 40.791103, 35.141563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222164, 40.379219, 34.980122>,  <25.639429, 40.316853, 35.504818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222164, 40.379219, 34.980122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924389, 40.119080, 34.919640>,  <25.745724, 39.962997, 34.883350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924389, 40.119080, 34.919640>,  <26.222164, 40.379219, 34.980122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924389, 40.119080, 34.919640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662922, -0.746939, -0.051159,
		-0.079672, -0.138323, 0.987177,
		-0.744438, -0.650345, -0.151208,
		25.701057, 39.923977, 34.874279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456921, 39.743401, 35.308758>,  <26.222164, 40.379219, 34.980122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456921, 39.743401, 35.308758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174479, 39.658779, 35.038452>,  <26.005013, 39.608006, 34.876270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174479, 39.658779, 35.038452>,  <26.456921, 39.743401, 35.308758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174479, 39.658779, 35.038452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429618, -0.886605, -0.171349,
		-0.562886, -0.411311, 0.716926,
		-0.706108, -0.211555, -0.675764,
		25.962646, 39.595314, 34.835724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055544, 39.170643, 35.481270>,  <26.456921, 39.743401, 35.308758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055544, 39.170643, 35.481270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008797, 39.179558, 35.084110>,  <25.980747, 39.184906, 34.845814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008797, 39.179558, 35.084110>,  <26.055544, 39.170643, 35.481270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008797, 39.179558, 35.084110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099722, -0.994432, -0.034061,
		-0.988128, -0.102994, 0.113996,
		-0.116869, 0.022289, -0.992897,
		25.973736, 39.186245, 34.786240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741749, 38.457733, 35.302982>,  <26.055544, 39.170643, 35.481270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741749, 38.457733, 35.302982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899782, 38.616314, 34.971504>,  <25.994602, 38.711464, 34.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899782, 38.616314, 34.971504>,  <25.741749, 38.457733, 35.302982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899782, 38.616314, 34.971504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055458, -0.910731, -0.409260,
		-0.916970, 0.115735, -0.381802,
		0.395084, 0.396452, -0.828694,
		26.018307, 38.735249, 34.722897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082029, 38.221420, 34.758087>,  <25.741749, 38.457733, 35.302982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082029, 38.221420, 34.758087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409698, 38.450581, 34.769009>,  <26.606300, 38.588078, 34.775562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409698, 38.450581, 34.769009>,  <26.082029, 38.221420, 34.758087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409698, 38.450581, 34.769009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572022, -0.812603, -0.111659,
		-0.041785, 0.107084, -0.993372,
		0.819173, 0.572896, 0.027300,
		26.655451, 38.622448, 34.777199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548231, 38.043411, 34.145039>,  <26.082029, 38.221420, 34.758087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548231, 38.043411, 34.145039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752851, 38.201786, 34.450077>,  <26.875624, 38.296810, 34.633099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752851, 38.201786, 34.450077>,  <26.548231, 38.043411, 34.145039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752851, 38.201786, 34.450077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698119, -0.708932, -0.100225,
		0.500943, 0.583650, -0.639068,
		0.511552, 0.395939, 0.762592,
		26.906317, 38.320568, 34.678856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274343, 38.081470, 33.945137>,  <26.548231, 38.043411, 34.145039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274343, 38.081470, 33.945137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245476, 38.041859, 34.342121>,  <27.228155, 38.018093, 34.580311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245476, 38.041859, 34.342121>,  <27.274343, 38.081470, 33.945137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245476, 38.041859, 34.342121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650092, -0.759321, -0.028491,
		0.756420, 0.643138, 0.119174,
		-0.072168, -0.099025, 0.992465,
		27.223825, 38.012150, 34.639862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033800, 37.630032, 34.068241>,  <27.274343, 38.081470, 33.945137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033800, 37.630032, 34.068241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790018, 37.605846, 34.384445>,  <27.643749, 37.591335, 34.574169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790018, 37.605846, 34.384445>,  <28.033800, 37.630032, 34.068241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790018, 37.605846, 34.384445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613881, -0.666965, 0.422266,
		0.501712, 0.742632, 0.443602,
		-0.609455, -0.060463, 0.790512,
		27.607182, 37.587708, 34.621597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435276, 37.808186, 34.638584>,  <28.033800, 37.630032, 34.068241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435276, 37.808186, 34.638584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126841, 37.572594, 34.735355>,  <27.941780, 37.431240, 34.793419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126841, 37.572594, 34.735355>,  <28.435276, 37.808186, 34.638584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126841, 37.572594, 34.735355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627274, -0.637437, 0.447439,
		-0.109317, 0.496770, 0.860970,
		-0.771088, -0.588977, 0.241929,
		27.895514, 37.395901, 34.807934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403187, 37.708874, 35.356052>,  <28.435276, 37.808186, 34.638584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403187, 37.708874, 35.356052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289753, 37.408966, 35.116913>,  <28.221693, 37.229023, 34.973427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.289753, 37.408966, 35.116913>,  <28.403187, 37.708874, 35.356052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.289753, 37.408966, 35.116913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739016, -0.568168, 0.361995,
		-0.611093, -0.339166, 0.715215,
		-0.283586, -0.749768, -0.597852,
		28.204678, 37.184036, 34.937557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446012, 37.059315, 35.789413>,  <28.403187, 37.708874, 35.356052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446012, 37.059315, 35.789413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475731, 36.962364, 35.402481>,  <28.493563, 36.904194, 35.170322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475731, 36.962364, 35.402481>,  <28.446012, 37.059315, 35.789413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475731, 36.962364, 35.402481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698667, -0.679503, 0.223920,
		-0.711579, -0.692480, 0.118858,
		0.074296, -0.242379, -0.967333,
		28.498020, 36.889652, 35.112282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311350, 36.237206, 35.567310>,  <28.446012, 37.059315, 35.789413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311350, 36.237206, 35.567310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580538, 36.453411, 35.365334>,  <28.742050, 36.583134, 35.244148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580538, 36.453411, 35.365334>,  <28.311350, 36.237206, 35.567310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580538, 36.453411, 35.365334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716723, -0.645233, 0.264543,
		-0.182815, -0.539930, -0.821617,
		0.672969, 0.540509, -0.504938,
		28.782429, 36.615562, 35.213852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693626, 35.736992, 35.197178>,  <28.311350, 36.237206, 35.567310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693626, 35.736992, 35.197178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899414, 36.074917, 35.255978>,  <29.022886, 36.277672, 35.291256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899414, 36.074917, 35.255978>,  <28.693626, 35.736992, 35.197178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899414, 36.074917, 35.255978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789572, -0.533572, 0.303112,
		0.334508, -0.039876, -0.941549,
		0.514471, 0.844814, 0.146999,
		29.053755, 36.328362, 35.300076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382143, 35.650837, 34.918736>,  <28.693626, 35.736992, 35.197178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382143, 35.650837, 34.918736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439350, 35.949520, 35.178574>,  <29.473675, 36.128731, 35.334476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439350, 35.949520, 35.178574>,  <29.382143, 35.650837, 34.918736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439350, 35.949520, 35.178574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751320, -0.509154, 0.419858,
		0.644255, 0.428009, -0.633833,
		0.143016, 0.746707, 0.649596,
		29.482254, 36.173531, 35.373451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154804, 35.679256, 34.993240>,  <29.382143, 35.650837, 34.918736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154804, 35.679256, 34.993240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011389, 35.845661, 35.327518>,  <29.925339, 35.945503, 35.528084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011389, 35.845661, 35.327518>,  <30.154804, 35.679256, 34.993240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011389, 35.845661, 35.327518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620480, -0.562646, 0.546291,
		0.697463, 0.714398, -0.056396,
		-0.358538, 0.416011, 0.835695,
		29.903828, 35.970463, 35.578228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635223, 36.003613, 35.357265>,  <30.154804, 35.679256, 34.993240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635223, 36.003613, 35.357265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371750, 35.874458, 35.629112>,  <30.213667, 35.796967, 35.792221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371750, 35.874458, 35.629112>,  <30.635223, 36.003613, 35.357265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371750, 35.874458, 35.629112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748801, -0.369801, 0.550041,
		0.073720, 0.871200, 0.485361,
		-0.658683, -0.322890, 0.679617,
		30.174145, 35.777592, 35.832996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924479, 35.848061, 35.959175>,  <30.635223, 36.003613, 35.357265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924479, 35.848061, 35.959175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568390, 35.722504, 36.091221>,  <30.354736, 35.647171, 36.170448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568390, 35.722504, 36.091221>,  <30.924479, 35.848061, 35.959175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568390, 35.722504, 36.091221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440282, -0.407011, 0.800309,
		-0.116852, 0.857795, 0.500532,
		-0.890223, -0.313893, 0.330112,
		30.301323, 35.628334, 36.190254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758589, 36.050549, 36.599564>,  <30.924479, 35.848061, 35.959175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758589, 36.050549, 36.599564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575367, 35.701283, 36.532906>,  <30.465433, 35.491722, 36.492912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575367, 35.701283, 36.532906>,  <30.758589, 36.050549, 36.599564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575367, 35.701283, 36.532906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500302, -0.408187, 0.763597,
		-0.734766, 0.266400, 0.623819,
		-0.458057, -0.873164, -0.166642,
		30.437950, 35.439335, 36.482914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517925, 35.792797, 37.251434>,  <30.758589, 36.050549, 36.599564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517925, 35.792797, 37.251434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566130, 35.482704, 37.003403>,  <30.595053, 35.296650, 36.854584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566130, 35.482704, 37.003403>,  <30.517925, 35.792797, 37.251434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566130, 35.482704, 37.003403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408246, -0.530665, 0.742786,
		-0.904883, -0.342656, 0.252535,
		0.120509, -0.775230, -0.620077,
		30.602282, 35.250134, 36.817379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950415, 35.458977, 36.730057>,  <30.517925, 35.792797, 37.251434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950415, 35.458977, 36.730057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093946, 35.808022, 36.597523>,  <30.180065, 36.017448, 36.518002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093946, 35.808022, 36.597523>,  <29.950415, 35.458977, 36.730057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093946, 35.808022, 36.597523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834745, 0.141167, -0.532233,
		-0.417660, 0.467564, 0.779066,
		0.358832, 0.872614, -0.331337,
		30.201595, 36.069805, 36.498123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337137, 35.859669, 36.580296>,  <29.950415, 35.458977, 36.730057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337137, 35.859669, 36.580296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661699, 35.993622, 36.388680>,  <29.856436, 36.073994, 36.273708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661699, 35.993622, 36.388680>,  <29.337137, 35.859669, 36.580296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661699, 35.993622, 36.388680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579634, 0.355641, -0.733174,
		-0.075159, 0.872568, 0.482677,
		0.811403, 0.334880, -0.479040,
		29.905121, 36.094086, 36.244968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372787, 36.611767, 36.510475>,  <29.337137, 35.859669, 36.580296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372787, 36.611767, 36.510475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564337, 36.419086, 36.216904>,  <29.679266, 36.303478, 36.040760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564337, 36.419086, 36.216904>,  <29.372787, 36.611767, 36.510475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564337, 36.419086, 36.216904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510789, 0.527049, -0.679201,
		0.713986, 0.700132, 0.006343,
		0.478873, -0.481699, -0.733925,
		29.707998, 36.274578, 35.996727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750175, 37.177151, 36.140995>,  <29.372787, 36.611767, 36.510475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750175, 37.177151, 36.140995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694241, 36.859951, 35.903809>,  <29.660681, 36.669632, 35.761497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694241, 36.859951, 35.903809>,  <29.750175, 37.177151, 36.140995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694241, 36.859951, 35.903809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623018, 0.535913, -0.569776,
		0.769606, 0.289752, -0.568990,
		-0.139836, -0.792995, -0.592963,
		29.652290, 36.622051, 35.725918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722698, 37.487015, 35.549419>,  <29.750175, 37.177151, 36.140995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722698, 37.487015, 35.549419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527662, 37.146492, 35.471924>,  <29.410641, 36.942177, 35.425426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527662, 37.146492, 35.471924>,  <29.722698, 37.487015, 35.549419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527662, 37.146492, 35.471924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606608, 0.489920, -0.626103,
		0.627921, -0.187759, -0.755289,
		-0.487588, -0.851308, -0.193735,
		29.381386, 36.891098, 35.413803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431046, 37.453491, 35.737480>,  <29.722698, 37.487015, 35.549419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431046, 37.453491, 35.737480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316458, 37.798363, 35.570347>,  <30.247705, 38.005283, 35.470066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316458, 37.798363, 35.570347>,  <30.431046, 37.453491, 35.737480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316458, 37.798363, 35.570347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577182, -0.192796, -0.793531,
		-0.764721, -0.468489, -0.442403,
		-0.286467, 0.862176, -0.417838,
		30.230518, 38.057014, 35.444996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241611, 37.322231, 35.066216>,  <30.431046, 37.453491, 35.737480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241611, 37.322231, 35.066216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370750, 37.699173, 35.101418>,  <30.448235, 37.925339, 35.122540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370750, 37.699173, 35.101418>,  <30.241611, 37.322231, 35.066216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370750, 37.699173, 35.101418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522726, -0.100019, -0.846613,
		-0.789004, 0.319330, -0.524882,
		0.322848, 0.942350, 0.088007,
		30.467606, 37.981876, 35.127819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035927, 37.750813, 34.373276>,  <30.241611, 37.322231, 35.066216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035927, 37.750813, 34.373276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343758, 37.920734, 34.563976>,  <30.528456, 38.022686, 34.678398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343758, 37.920734, 34.563976>,  <30.035927, 37.750813, 34.373276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343758, 37.920734, 34.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533967, -0.018664, -0.845299,
		-0.350185, 0.905095, -0.241192,
		0.769577, 0.424800, 0.476755,
		30.574631, 38.048176, 34.707005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271818, 38.315598, 33.975990>,  <30.035927, 37.750813, 34.373276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271818, 38.315598, 33.975990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590166, 38.212296, 34.195042>,  <30.781176, 38.150314, 34.326473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590166, 38.212296, 34.195042>,  <30.271818, 38.315598, 33.975990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590166, 38.212296, 34.195042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571530, 0.021877, -0.820290,
		0.199862, 0.965830, 0.165011,
		0.795870, -0.258253, 0.547628,
		30.828928, 38.134819, 34.359329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831352, 38.605858, 33.694260>,  <30.271818, 38.315598, 33.975990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831352, 38.605858, 33.694260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066456, 38.370697, 33.916576>,  <31.207518, 38.229599, 34.049965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066456, 38.370697, 33.916576>,  <30.831352, 38.605858, 33.694260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066456, 38.370697, 33.916576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657300, -0.053527, -0.751726,
		0.471694, 0.807156, 0.354970,
		0.587759, -0.587906, 0.555792,
		31.242785, 38.194324, 34.083313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523075, 38.877659, 33.751652>,  <30.831352, 38.605858, 33.694260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523075, 38.877659, 33.751652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563782, 38.482029, 33.794304>,  <31.588205, 38.244652, 33.819893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563782, 38.482029, 33.794304>,  <31.523075, 38.877659, 33.751652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563782, 38.482029, 33.794304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783461, 0.013632, -0.621292,
		0.613052, 0.146767, 0.776290,
		0.101768, -0.989077, 0.106628,
		31.594313, 38.185307, 33.826294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257214, 38.716545, 33.763035>,  <31.523075, 38.877659, 33.751652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257214, 38.716545, 33.763035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074211, 38.377636, 33.655094>,  <31.964409, 38.174290, 33.590328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074211, 38.377636, 33.655094>,  <32.257214, 38.716545, 33.763035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074211, 38.377636, 33.655094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594578, -0.065833, -0.801338,
		0.661183, -0.527068, 0.533887,
		-0.457507, -0.847269, -0.269856,
		31.936958, 38.123455, 33.574139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756634, 38.248417, 33.646175>,  <32.257214, 38.716545, 33.763035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756634, 38.248417, 33.646175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455650, 38.064770, 33.457279>,  <32.275059, 37.954582, 33.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455650, 38.064770, 33.457279>,  <32.756634, 38.248417, 33.646175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455650, 38.064770, 33.457279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558868, -0.065662, -0.826653,
		0.348525, -0.885944, 0.305996,
		-0.752460, -0.459120, -0.472241,
		32.229912, 37.927032, 33.315605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085587, 37.678749, 33.334621>,  <32.756634, 38.248417, 33.646175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085587, 37.678749, 33.334621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743446, 37.740993, 33.136971>,  <32.538162, 37.778339, 33.018379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743446, 37.740993, 33.136971>,  <33.085587, 37.678749, 33.334621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743446, 37.740993, 33.136971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500743, 0.003847, -0.865588,
		-0.132790, -0.987812, -0.081209,
		-0.855350, 0.155606, -0.494129,
		32.486843, 37.787674, 32.988731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091610, 37.229145, 32.717731>,  <33.085587, 37.678749, 33.334621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091610, 37.229145, 32.717731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810013, 37.503452, 32.643848>,  <32.641052, 37.668037, 32.599518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810013, 37.503452, 32.643848>,  <33.091610, 37.229145, 32.717731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810013, 37.503452, 32.643848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393874, 0.160586, -0.905028,
		-0.590977, -0.709885, -0.383157,
		-0.703995, 0.685766, -0.184703,
		32.598816, 37.709183, 32.588436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738487, 36.970371, 32.136703>,  <33.091610, 37.229145, 32.717731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738487, 36.970371, 32.136703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689754, 37.367161, 32.150253>,  <32.660515, 37.605232, 32.158382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689754, 37.367161, 32.150253>,  <32.738487, 36.970371, 32.136703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689754, 37.367161, 32.150253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351889, 0.075082, -0.933026,
		-0.928079, -0.101755, -0.358212,
		-0.121836, 0.991972, 0.033876,
		32.653202, 37.664753, 32.160416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357983, 37.040794, 31.573624>,  <32.738487, 36.970371, 32.136703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357983, 37.040794, 31.573624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474579, 37.412704, 31.663553>,  <32.544537, 37.635853, 31.717510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474579, 37.412704, 31.663553>,  <32.357983, 37.040794, 31.573624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474579, 37.412704, 31.663553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208726, 0.167543, -0.963516,
		-0.933522, 0.327786, -0.145231,
		0.291495, 0.929777, 0.224823,
		32.562027, 37.691639, 31.731001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980154, 37.560314, 31.145674>,  <32.357983, 37.040794, 31.573624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980154, 37.560314, 31.145674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320930, 37.742054, 31.249800>,  <32.525398, 37.851097, 31.312275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320930, 37.742054, 31.249800>,  <31.980154, 37.560314, 31.145674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320930, 37.742054, 31.249800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141719, 0.278512, -0.949919,
		-0.504092, 0.846168, 0.172887,
		0.851943, 0.454346, 0.260314,
		32.576515, 37.878357, 31.327894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104485, 38.058578, 30.641352>,  <31.980154, 37.560314, 31.145674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104485, 38.058578, 30.641352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476124, 38.055580, 30.789251>,  <32.699108, 38.053780, 30.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476124, 38.055580, 30.789251>,  <32.104485, 38.058578, 30.641352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476124, 38.055580, 30.789251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330919, 0.463216, -0.822145,
		-0.165112, 0.886214, 0.432855,
		0.929102, -0.007494, 0.369748,
		32.754856, 38.053333, 30.900175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329277, 38.670982, 30.471981>,  <32.104485, 38.058578, 30.641352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329277, 38.670982, 30.471981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654644, 38.446316, 30.532494>,  <32.849865, 38.311516, 30.568802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654644, 38.446316, 30.532494>,  <32.329277, 38.670982, 30.471981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654644, 38.446316, 30.532494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475667, 0.492580, -0.728770,
		0.334805, 0.664754, 0.667838,
		0.813417, -0.561664, 0.151283,
		32.898670, 38.277817, 30.577879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832760, 39.128395, 30.494253>,  <32.329277, 38.670982, 30.471981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832760, 39.128395, 30.494253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021290, 38.789909, 30.394829>,  <33.134407, 38.586819, 30.335175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021290, 38.789909, 30.394829>,  <32.832760, 39.128395, 30.494253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021290, 38.789909, 30.394829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393670, 0.454047, -0.799291,
		0.789227, 0.278871, 0.547130,
		0.471322, -0.846211, -0.248563,
		33.162685, 38.536045, 30.320259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498844, 39.350231, 30.313379>,  <32.832760, 39.128395, 30.494253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498844, 39.350231, 30.313379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451401, 38.991920, 30.142023>,  <33.422935, 38.776936, 30.039209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451401, 38.991920, 30.142023>,  <33.498844, 39.350231, 30.313379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451401, 38.991920, 30.142023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244126, 0.391884, -0.887034,
		0.962463, -0.209792, 0.172201,
		-0.118610, -0.895776, -0.428389,
		33.415817, 38.723186, 30.013506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090778, 39.413776, 29.946125>,  <33.498844, 39.350231, 30.313379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090778, 39.413776, 29.946125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870316, 39.119827, 29.788040>,  <33.738037, 38.943459, 29.693190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870316, 39.119827, 29.788040>,  <34.090778, 39.413776, 29.946125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870316, 39.119827, 29.788040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209532, 0.336577, -0.918048,
		0.807666, -0.588796, -0.031527,
		-0.551155, -0.734871, -0.395213,
		33.704967, 38.899364, 29.669476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474876, 39.318420, 29.367743>,  <34.090778, 39.413776, 29.946125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474876, 39.318420, 29.367743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138798, 39.118450, 29.283701>,  <33.937149, 38.998470, 29.233276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138798, 39.118450, 29.283701>,  <34.474876, 39.318420, 29.367743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138798, 39.118450, 29.283701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093669, 0.247833, -0.964264,
		0.534129, -0.829853, -0.161402,
		-0.840198, -0.499923, -0.210106,
		33.886738, 38.968472, 29.220669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614315, 38.934631, 28.741148>,  <34.474876, 39.318420, 29.367743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614315, 38.934631, 28.741148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221889, 39.005566, 28.772278>,  <33.986435, 39.048126, 28.790956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221889, 39.005566, 28.772278>,  <34.614315, 38.934631, 28.741148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221889, 39.005566, 28.772278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069173, 0.054472, -0.996116,
		-0.180891, -0.982641, -0.041174,
		-0.981068, 0.177341, 0.077826,
		33.927570, 39.058769, 28.795626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542900, 38.845978, 28.109493>,  <34.614315, 38.934631, 28.741148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542900, 38.845978, 28.109493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200394, 39.011982, 28.232510>,  <33.994892, 39.111584, 28.306320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200394, 39.011982, 28.232510>,  <34.542900, 38.845978, 28.109493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200394, 39.011982, 28.232510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175697, 0.325881, -0.928941,
		-0.485740, -0.849452, -0.206124,
		-0.856263, 0.415009, 0.307540,
		33.943516, 39.136486, 28.324772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034668, 38.560982, 27.673872>,  <34.542900, 38.845978, 28.109493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034668, 38.560982, 27.673872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921719, 38.919434, 27.810818>,  <33.853951, 39.134506, 27.892986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921719, 38.919434, 27.810818>,  <34.034668, 38.560982, 27.673872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921719, 38.919434, 27.810818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214156, 0.288997, -0.933069,
		-0.935095, -0.336794, 0.110307,
		-0.282374, 0.896131, 0.342366,
		33.837006, 39.188274, 27.913528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526417, 38.678940, 27.305069>,  <34.034668, 38.560982, 27.673872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526417, 38.678940, 27.305069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627411, 39.034542, 27.457867>,  <33.688007, 39.247902, 27.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627411, 39.034542, 27.457867>,  <33.526417, 38.678940, 27.305069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627411, 39.034542, 27.457867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185499, 0.431937, -0.882621,
		-0.949652, 0.151992, 0.273968,
		0.252489, 0.889004, 0.381996,
		33.703159, 39.301243, 27.572466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008720, 39.149857, 27.001835>,  <33.526417, 38.678940, 27.305069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008720, 39.149857, 27.001835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328606, 39.348766, 27.136400>,  <33.520538, 39.468113, 27.217140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328606, 39.348766, 27.136400>,  <33.008720, 39.149857, 27.001835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328606, 39.348766, 27.136400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017974, 0.579913, -0.814480,
		-0.600110, 0.645306, 0.472704,
		0.799716, 0.497274, 0.336413,
		33.568520, 39.497948, 27.237324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820213, 39.795086, 26.924719>,  <33.008720, 39.149857, 27.001835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820213, 39.795086, 26.924719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219746, 39.807072, 26.939924>,  <33.459465, 39.814262, 26.949047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219746, 39.807072, 26.939924>,  <32.820213, 39.795086, 26.924719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219746, 39.807072, 26.939924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011191, 0.621151, -0.783611,
		-0.047092, 0.783118, 0.620087,
		0.998828, 0.029962, 0.038015,
		33.519394, 39.816059, 26.951328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008854, 40.441528, 26.749773>,  <32.820213, 39.795086, 26.924719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008854, 40.441528, 26.749773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348846, 40.243626, 26.677391>,  <33.552841, 40.124886, 26.633961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348846, 40.243626, 26.677391>,  <33.008854, 40.441528, 26.749773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348846, 40.243626, 26.677391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132029, 0.532591, -0.836011,
		0.509998, 0.686704, 0.518015,
		0.849982, -0.494757, -0.180956,
		33.603840, 40.095200, 26.623104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408836, 40.911243, 26.386507>,  <33.008854, 40.441528, 26.749773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408836, 40.911243, 26.386507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617878, 40.576378, 26.321947>,  <33.743301, 40.375458, 26.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617878, 40.576378, 26.321947>,  <33.408836, 40.911243, 26.386507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617878, 40.576378, 26.321947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315616, 0.365825, -0.875534,
		0.792006, 0.406615, 0.455401,
		0.522602, -0.837160, -0.161402,
		33.774658, 40.325230, 26.273527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078747, 41.141026, 26.116371>,  <33.408836, 40.911243, 26.386507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078747, 41.141026, 26.116371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042023, 40.755730, 26.015383>,  <34.019989, 40.524551, 25.954790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042023, 40.755730, 26.015383>,  <34.078747, 41.141026, 26.116371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042023, 40.755730, 26.015383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457203, 0.184461, -0.870023,
		0.884611, -0.195312, 0.423459,
		-0.091814, -0.963238, -0.252473,
		34.014477, 40.466759, 25.939640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723541, 40.921947, 25.881811>,  <34.078747, 41.141026, 26.116371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723541, 40.921947, 25.881811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474060, 40.660614, 25.710157>,  <34.324371, 40.503815, 25.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474060, 40.660614, 25.710157>,  <34.723541, 40.921947, 25.881811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474060, 40.660614, 25.710157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477666, 0.116006, -0.870849,
		0.618737, -0.748129, 0.239723,
		-0.623699, -0.653334, -0.429133,
		34.286949, 40.464615, 25.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149281, 40.460857, 25.594900>,  <34.723541, 40.921947, 25.881811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149281, 40.460857, 25.594900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797012, 40.440006, 25.406563>,  <34.585651, 40.427498, 25.293560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797012, 40.440006, 25.406563>,  <35.149281, 40.460857, 25.594900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797012, 40.440006, 25.406563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472724, -0.032219, -0.880622,
		0.030734, -0.998121, 0.053016,
		-0.880674, -0.052127, -0.470845,
		34.532810, 40.424370, 25.265308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281189, 39.910439, 25.021126>,  <35.149281, 40.460857, 25.594900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281189, 39.910439, 25.021126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986084, 40.161755, 24.922363>,  <34.809021, 40.312542, 24.863106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986084, 40.161755, 24.922363>,  <35.281189, 39.910439, 25.021126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986084, 40.161755, 24.922363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480487, 0.231825, -0.845807,
		-0.474170, -0.742640, -0.472915,
		-0.737764, 0.628286, -0.246904,
		34.764755, 40.350239, 24.848291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235725, 39.752865, 24.373919>,  <35.281189, 39.910439, 25.021126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235725, 39.752865, 24.373919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037170, 40.099350, 24.396820>,  <34.918037, 40.307240, 24.410561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037170, 40.099350, 24.396820>,  <35.235725, 39.752865, 24.373919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037170, 40.099350, 24.396820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348810, 0.259412, -0.900576,
		-0.794940, -0.427066, -0.430912,
		-0.496389, 0.866210, 0.057252,
		34.888252, 40.359215, 24.413996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995415, 39.827339, 23.670254>,  <35.235725, 39.752865, 24.373919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995415, 39.827339, 23.670254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990322, 40.176617, 23.865137>,  <34.987267, 40.386185, 23.982067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990322, 40.176617, 23.865137>,  <34.995415, 39.827339, 23.670254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990322, 40.176617, 23.865137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615177, 0.390963, -0.684620,
		-0.788286, 0.291004, -0.542145,
		-0.012732, 0.873192, 0.487209,
		34.986504, 40.438576, 24.011299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860428, 40.309109, 23.121353>,  <34.995415, 39.827339, 23.670254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860428, 40.309109, 23.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032349, 40.502987, 23.426075>,  <35.135502, 40.619312, 23.608908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032349, 40.502987, 23.426075>,  <34.860428, 40.309109, 23.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032349, 40.502987, 23.426075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575382, 0.503192, -0.644774,
		-0.695852, 0.715451, -0.062613,
		0.429798, 0.484694, 0.761804,
		35.161289, 40.648396, 23.654615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812069, 41.045910, 22.909781>,  <34.860428, 40.309109, 23.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812069, 41.045910, 22.909781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098007, 40.999611, 23.185633>,  <35.269569, 40.971832, 23.351145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098007, 40.999611, 23.185633>,  <34.812069, 41.045910, 22.909781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098007, 40.999611, 23.185633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622129, 0.555566, -0.551636,
		-0.319288, 0.823377, 0.469155,
		0.714850, -0.115744, 0.689632,
		35.312462, 40.964890, 23.392523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098709, 41.709869, 23.081451>,  <34.812069, 41.045910, 22.909781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098709, 41.709869, 23.081451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383507, 41.444675, 23.173990>,  <35.554386, 41.285561, 23.229513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383507, 41.444675, 23.173990>,  <35.098709, 41.709869, 23.081451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383507, 41.444675, 23.173990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701812, 0.661095, -0.265355,
		0.022985, 0.351291, 0.935984,
		0.711992, -0.662984, 0.231345,
		35.597103, 41.245781, 23.243393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639019, 41.985809, 23.612516>,  <35.098709, 41.709869, 23.081451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639019, 41.985809, 23.612516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824085, 41.699245, 23.403637>,  <35.935123, 41.527306, 23.278309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824085, 41.699245, 23.403637>,  <35.639019, 41.985809, 23.612516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824085, 41.699245, 23.403637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723275, 0.645652, -0.244963,
		0.512654, -0.264358, 0.816885,
		0.462665, -0.716414, -0.522199,
		35.962883, 41.484322, 23.246977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297974, 42.071308, 23.810221>,  <35.639019, 41.985809, 23.612516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297974, 42.071308, 23.810221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332970, 41.849342, 23.479303>,  <36.353966, 41.716164, 23.280752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332970, 41.849342, 23.479303>,  <36.297974, 42.071308, 23.810221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332970, 41.849342, 23.479303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819153, 0.512656, -0.257241,
		0.566864, -0.655174, 0.499412,
		0.087489, -0.554916, -0.827293,
		36.359215, 41.682869, 23.231115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913540, 41.794872, 23.823681>,  <36.297974, 42.071308, 23.810221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913540, 41.794872, 23.823681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852383, 41.762100, 23.429745>,  <36.815689, 41.742439, 23.193382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852383, 41.762100, 23.429745>,  <36.913540, 41.794872, 23.823681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852383, 41.762100, 23.429745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895724, 0.409520, -0.173126,
		0.417496, -0.908615, 0.010771,
		-0.152894, -0.081927, -0.984841,
		36.806515, 41.737522, 23.134293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519382, 41.575535, 23.521048>,  <36.913540, 41.794872, 23.823681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519382, 41.575535, 23.521048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320007, 41.737225, 23.214279>,  <37.200382, 41.834236, 23.030218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320007, 41.737225, 23.214279>,  <37.519382, 41.575535, 23.521048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320007, 41.737225, 23.214279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840086, 0.443633, -0.312164,
		0.214048, -0.799872, -0.560703,
		-0.498437, 0.404221, -0.766920,
		37.170475, 41.858490, 22.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931561, 41.604755, 23.006491>,  <37.519382, 41.575535, 23.521048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931561, 41.604755, 23.006491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676258, 41.889656, 22.889654>,  <37.523075, 42.060596, 22.819551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676258, 41.889656, 22.889654>,  <37.931561, 41.604755, 23.006491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676258, 41.889656, 22.889654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760799, 0.525686, -0.380578,
		-0.117520, -0.465131, -0.877407,
		-0.638259, 0.712255, -0.292092,
		37.484779, 42.103333, 22.802027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264553, 41.904587, 22.446209>,  <37.931561, 41.604755, 23.006491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264553, 41.904587, 22.446209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983532, 42.179764, 22.519037>,  <37.814919, 42.344872, 22.562735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983532, 42.179764, 22.519037>,  <38.264553, 41.904587, 22.446209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983532, 42.179764, 22.519037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652324, 0.724826, -0.221587,
		-0.284408, -0.036909, -0.957993,
		-0.702556, 0.687943, 0.182070,
		37.772766, 42.386147, 22.573658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369919, 42.373806, 21.850908>,  <38.264553, 41.904587, 22.446209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369919, 42.373806, 21.850908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157879, 42.607777, 22.096460>,  <38.030655, 42.748161, 22.243792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157879, 42.607777, 22.096460>,  <38.369919, 42.373806, 21.850908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157879, 42.607777, 22.096460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480571, 0.803721, -0.350833,
		-0.698603, 0.109038, -0.707152,
		-0.530099, 0.584930, 0.613882,
		37.998848, 42.783257, 22.280624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080811, 42.853085, 21.462259>,  <38.369919, 42.373806, 21.850908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080811, 42.853085, 21.462259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087337, 42.989376, 21.838266>,  <38.091255, 43.071152, 22.063871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087337, 42.989376, 21.838266>,  <38.080811, 42.853085, 21.462259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087337, 42.989376, 21.838266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572479, 0.767607, -0.288178,
		-0.819757, 0.542845, -0.182534,
		0.016322, 0.340733, 0.940018,
		38.092236, 43.091595, 22.120272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902111, 43.482849, 21.496607>,  <38.080811, 42.853085, 21.462259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902111, 43.482849, 21.496607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125351, 43.464569, 21.828012>,  <38.259296, 43.453602, 22.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125351, 43.464569, 21.828012>,  <37.902111, 43.482849, 21.496607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125351, 43.464569, 21.828012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608933, 0.700830, -0.371535,
		-0.563668, 0.711863, 0.418962,
		0.558103, -0.045697, 0.828513,
		38.292782, 43.450859, 22.076567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328804, 43.836914, 21.141184>,  <37.902111, 43.482849, 21.496607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328804, 43.836914, 21.141184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513134, 43.675320, 20.825098>,  <37.623730, 43.578365, 20.635447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513134, 43.675320, 20.825098>,  <37.328804, 43.836914, 21.141184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513134, 43.675320, 20.825098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487952, 0.628405, -0.605814,
		0.741314, 0.664760, 0.092458,
		0.460822, -0.403983, -0.790216,
		37.651379, 43.554123, 20.588034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952129, 44.425350, 21.396467>,  <37.328804, 43.836914, 21.141184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952129, 44.425350, 21.396467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208656, 44.581249, 21.660833>,  <37.362572, 44.674789, 21.819452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208656, 44.581249, 21.660833>,  <36.952129, 44.425350, 21.396467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208656, 44.581249, 21.660833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434241, 0.525783, -0.731428,
		-0.632572, 0.756073, 0.167947,
		0.641317, 0.389752, 0.660913,
		37.401051, 44.698174, 21.859108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960014, 45.075645, 21.455803>,  <36.952129, 44.425350, 21.396467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960014, 45.075645, 21.455803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330330, 44.986149, 21.577688>,  <37.552521, 44.932453, 21.650820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330330, 44.986149, 21.577688>,  <36.960014, 45.075645, 21.455803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330330, 44.986149, 21.577688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378028, 0.552035, -0.743204,
		-0.001931, 0.803243, 0.595649,
		0.925792, -0.223737, 0.304714,
		37.608067, 44.919029, 21.669102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347725, 45.701706, 21.547678>,  <36.960014, 45.075645, 21.455803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347725, 45.701706, 21.547678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609058, 45.405525, 21.484570>,  <37.765858, 45.227818, 21.446705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609058, 45.405525, 21.484570>,  <37.347725, 45.701706, 21.547678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609058, 45.405525, 21.484570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621965, 0.643771, -0.445779,
		0.431647, 0.193113, 0.881129,
		0.653331, -0.740451, -0.157772,
		37.805058, 45.183392, 21.437239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942242, 45.711208, 21.974890>,  <37.347725, 45.701706, 21.547678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942242, 45.711208, 21.974890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949894, 45.576820, 21.598217>,  <37.954487, 45.496189, 21.372213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949894, 45.576820, 21.598217>,  <37.942242, 45.711208, 21.974890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949894, 45.576820, 21.598217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606208, 0.752879, -0.256292,
		0.795076, -0.565951, 0.218067,
		0.019129, -0.335966, -0.941680,
		37.955631, 45.476032, 21.315714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353409, 45.079433, 21.773546>,  <37.942242, 45.711208, 21.974890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353409, 45.079433, 21.773546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390137, 45.363533, 22.052721>,  <38.412174, 45.533993, 22.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390137, 45.363533, 22.052721>,  <38.353409, 45.079433, 21.773546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390137, 45.363533, 22.052721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055813, -0.696127, 0.715746,
		0.994210, -0.104674, -0.024279,
		0.091821, 0.710247, 0.697939,
		38.417683, 45.576607, 22.262102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871983, 44.805584, 22.323215>,  <38.353409, 45.079433, 21.773546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871983, 44.805584, 22.323215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617542, 45.083698, 22.457054>,  <38.464878, 45.250568, 22.537357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617542, 45.083698, 22.457054>,  <38.871983, 44.805584, 22.323215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617542, 45.083698, 22.457054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137477, -0.528821, 0.837525,
		0.759260, 0.486752, 0.431970,
		-0.636101, 0.695285, 0.334595,
		38.426712, 45.292282, 22.557432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021351, 45.045170, 22.956121>,  <38.871983, 44.805584, 22.323215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021351, 45.045170, 22.956121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623260, 45.073578, 22.929373>,  <38.384407, 45.090622, 22.913322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623260, 45.073578, 22.929373>,  <39.021351, 45.045170, 22.956121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623260, 45.073578, 22.929373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093142, -0.488078, 0.867816,
		0.028995, 0.869906, 0.492365,
		-0.995231, 0.071022, -0.066873,
		38.324692, 45.094883, 22.909311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817066, 45.226524, 23.617468>,  <39.021351, 45.045170, 22.956121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817066, 45.226524, 23.617468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541424, 44.999916, 23.436720>,  <38.376038, 44.863953, 23.328272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541424, 44.999916, 23.436720>,  <38.817066, 45.226524, 23.617468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541424, 44.999916, 23.436720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021440, -0.639231, 0.768716,
		-0.724340, 0.520042, 0.452646,
		-0.689110, -0.566516, -0.451871,
		38.334690, 44.829960, 23.301159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231297, 45.038662, 24.072092>,  <38.817066, 45.226524, 23.617468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231297, 45.038662, 24.072092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272095, 44.759983, 23.788063>,  <38.296574, 44.592773, 23.617645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272095, 44.759983, 23.788063>,  <38.231297, 45.038662, 24.072092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272095, 44.759983, 23.788063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013415, -0.712770, 0.701270,
		-0.994694, -0.081054, -0.063355,
		0.101999, -0.696699, -0.710075,
		38.302696, 44.550972, 23.575041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679508, 44.589924, 24.174774>,  <38.231297, 45.038662, 24.072092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679508, 44.589924, 24.174774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978104, 44.389297, 23.999878>,  <38.157261, 44.268921, 23.894939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978104, 44.389297, 23.999878>,  <37.679508, 44.589924, 24.174774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978104, 44.389297, 23.999878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097994, -0.732820, 0.673329,
		-0.658139, -0.459787, -0.596195,
		0.746492, -0.501568, -0.437241,
		38.202049, 44.238827, 23.868706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413914, 43.959026, 24.068132>,  <37.679508, 44.589924, 24.174774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413914, 43.959026, 24.068132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812286, 43.923431, 24.073866>,  <38.051308, 43.902077, 24.077307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812286, 43.923431, 24.073866>,  <37.413914, 43.959026, 24.068132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812286, 43.923431, 24.073866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072205, -0.692510, 0.717785,
		-0.053943, -0.715899, -0.696117,
		0.995930, -0.088983, 0.014335,
		38.111065, 43.896736, 24.078167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607616, 43.151741, 24.018599>,  <37.413914, 43.959026, 24.068132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607616, 43.151741, 24.018599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921597, 43.351303, 24.165543>,  <38.109985, 43.471039, 24.253708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921597, 43.351303, 24.165543>,  <37.607616, 43.151741, 24.018599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921597, 43.351303, 24.165543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122774, -0.706429, 0.697054,
		0.607276, -0.502048, -0.615762,
		0.784947, 0.498904, 0.367359,
		38.157082, 43.500973, 24.275751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035404, 42.691658, 24.149385>,  <37.607616, 43.151741, 24.018599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035404, 42.691658, 24.149385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160088, 42.990868, 24.383751>,  <38.234898, 43.170395, 24.524370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160088, 42.990868, 24.383751>,  <38.035404, 42.691658, 24.149385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160088, 42.990868, 24.383751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226439, -0.657351, 0.718759,
		0.922802, -0.091367, -0.374283,
		0.311706, 0.748025, 0.585916,
		38.253601, 43.215275, 24.559526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628300, 42.441231, 24.555473>,  <38.035404, 42.691658, 24.149385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628300, 42.441231, 24.555473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517620, 42.766712, 24.759954>,  <38.451210, 42.962002, 24.882643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517620, 42.766712, 24.759954>,  <38.628300, 42.441231, 24.555473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517620, 42.766712, 24.759954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089877, -0.507726, 0.856818,
		0.956744, 0.283028, 0.067356,
		-0.276702, 0.813701, 0.511201,
		38.434608, 43.010822, 24.913315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111431, 42.424267, 25.154804>,  <38.628300, 42.441231, 24.555473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111431, 42.424267, 25.154804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798908, 42.652161, 25.256756>,  <38.611393, 42.788898, 25.317926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798908, 42.652161, 25.256756>,  <39.111431, 42.424267, 25.154804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798908, 42.652161, 25.256756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030081, -0.442263, 0.896381,
		0.623422, 0.692681, 0.362681,
		-0.781307, 0.569734, 0.254880,
		38.564518, 42.823082, 25.333220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311386, 42.596428, 25.869711>,  <39.111431, 42.424267, 25.154804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311386, 42.596428, 25.869711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923748, 42.690369, 25.839518>,  <38.691166, 42.746731, 25.821402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923748, 42.690369, 25.839518>,  <39.311386, 42.596428, 25.869711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923748, 42.690369, 25.839518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136938, -0.257649, 0.956486,
		0.205181, 0.937264, 0.281847,
		-0.969097, 0.234848, -0.075482,
		38.633018, 42.760822, 25.816874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060452, 42.983379, 26.525345>,  <39.311386, 42.596428, 25.869711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060452, 42.983379, 26.525345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731472, 42.843895, 26.345581>,  <38.534084, 42.760204, 26.237722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731472, 42.843895, 26.345581>,  <39.060452, 42.983379, 26.525345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731472, 42.843895, 26.345581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311800, -0.384426, 0.868906,
		-0.475764, 0.854761, 0.207443,
		-0.822453, -0.348714, -0.449410,
		38.484737, 42.739281, 26.210758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587811, 43.130085, 26.927019>,  <39.060452, 42.983379, 26.525345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587811, 43.130085, 26.927019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411438, 42.839893, 26.715639>,  <38.305614, 42.665779, 26.588812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411438, 42.839893, 26.715639>,  <38.587811, 43.130085, 26.927019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411438, 42.839893, 26.715639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324778, -0.419912, 0.847463,
		-0.836721, 0.545298, -0.050471,
		-0.440927, -0.725482, -0.528450,
		38.279160, 42.622250, 26.557104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829376, 43.124355, 27.093819>,  <38.587811, 43.130085, 26.927019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829376, 43.124355, 27.093819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912220, 42.756351, 26.960735>,  <37.961926, 42.535549, 26.880886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912220, 42.756351, 26.960735>,  <37.829376, 43.124355, 27.093819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912220, 42.756351, 26.960735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460445, -0.391727, 0.796580,
		-0.863189, -0.011789, -0.504744,
		0.207112, -0.920006, -0.332706,
		37.974354, 42.480350, 26.860924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239395, 42.786476, 27.238106>,  <37.829376, 43.124355, 27.093819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239395, 42.786476, 27.238106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517117, 42.502552, 27.190607>,  <37.683750, 42.332195, 27.162107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517117, 42.502552, 27.190607>,  <37.239395, 42.786476, 27.238106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517117, 42.502552, 27.190607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411801, -0.527156, 0.743321,
		-0.590219, -0.467192, -0.658311,
		0.694306, -0.709816, -0.118747,
		37.725410, 42.289608, 27.154984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842163, 42.165440, 27.209120>,  <37.239395, 42.786476, 27.238106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842163, 42.165440, 27.209120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212124, 42.050491, 27.308701>,  <37.434101, 41.981522, 27.368448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212124, 42.050491, 27.308701>,  <36.842163, 42.165440, 27.209120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212124, 42.050491, 27.308701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368091, -0.512786, 0.775603,
		-0.095229, -0.808992, -0.580055,
		0.924900, -0.287373, 0.248950,
		37.489594, 41.964279, 27.383387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852959, 41.412292, 27.144592>,  <36.842163, 42.165440, 27.209120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852959, 41.412292, 27.144592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132748, 41.554287, 27.392698>,  <37.300621, 41.639484, 27.541561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132748, 41.554287, 27.392698>,  <36.852959, 41.412292, 27.144592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132748, 41.554287, 27.392698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344520, -0.592914, 0.727845,
		0.626136, -0.722800, -0.292428,
		0.699472, 0.354983, 0.620264,
		37.342590, 41.660782, 27.578777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078979, 40.768612, 27.496471>,  <36.852959, 41.412292, 27.144592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078979, 40.768612, 27.496471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213093, 41.077850, 27.711842>,  <37.293560, 41.263393, 27.841063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213093, 41.077850, 27.711842>,  <37.078979, 40.768612, 27.496471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213093, 41.077850, 27.711842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344697, -0.431213, 0.833810,
		0.876794, -0.465158, 0.121905,
		0.335286, 0.773100, 0.538423,
		37.313679, 41.309780, 27.873369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432484, 40.485207, 28.010990>,  <37.078979, 40.768612, 27.496471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432484, 40.485207, 28.010990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337334, 40.847366, 28.151653>,  <37.280243, 41.064663, 28.236052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337334, 40.847366, 28.151653>,  <37.432484, 40.485207, 28.010990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337334, 40.847366, 28.151653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450381, -0.423594, 0.785955,
		0.860564, 0.028583, 0.508539,
		-0.237879, 0.905401, 0.351656,
		37.265968, 41.118988, 28.257151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525208, 40.460506, 28.778843>,  <37.432484, 40.485207, 28.010990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525208, 40.460506, 28.778843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298119, 40.785023, 28.722975>,  <37.161865, 40.979733, 28.689455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298119, 40.785023, 28.722975>,  <37.525208, 40.460506, 28.778843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298119, 40.785023, 28.722975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584107, -0.277424, 0.762794,
		0.580097, 0.514636, 0.631377,
		-0.567720, 0.811286, -0.139669,
		37.127804, 41.028408, 28.681074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543312, 40.802689, 29.445412>,  <37.525208, 40.460506, 28.778843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543312, 40.802689, 29.445412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222370, 40.942783, 29.252096>,  <37.029804, 41.026840, 29.136106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222370, 40.942783, 29.252096>,  <37.543312, 40.802689, 29.445412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222370, 40.942783, 29.252096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580439, -0.269301, 0.768484,
		0.138998, 0.897114, 0.419363,
		-0.802353, 0.350233, -0.483288,
		36.981663, 41.047852, 29.107109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095581, 40.973728, 29.953888>,  <37.543312, 40.802689, 29.445412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095581, 40.973728, 29.953888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813770, 41.008999, 29.672216>,  <36.644684, 41.030163, 29.503214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813770, 41.008999, 29.672216>,  <37.095581, 40.973728, 29.953888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813770, 41.008999, 29.672216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709468, -0.111664, 0.695835,
		-0.017272, 0.989826, 0.141232,
		-0.704526, 0.088181, -0.704178,
		36.602413, 41.035454, 29.460962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668434, 41.612339, 30.084517>,  <37.095581, 40.973728, 29.953888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668434, 41.612339, 30.084517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470932, 41.351360, 29.854551>,  <36.352432, 41.194775, 29.716572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470932, 41.351360, 29.854551>,  <36.668434, 41.612339, 30.084517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470932, 41.351360, 29.854551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667050, -0.139986, 0.731744,
		-0.557901, 0.744796, -0.366093,
		-0.493752, -0.652443, -0.574915,
		36.322807, 41.155628, 29.682077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037979, 41.825603, 30.115751>,  <36.668434, 41.612339, 30.084517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037979, 41.825603, 30.115751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004101, 41.442646, 30.005318>,  <35.983776, 41.212872, 29.939058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004101, 41.442646, 30.005318>,  <36.037979, 41.825603, 30.115751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004101, 41.442646, 30.005318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745227, -0.123059, 0.655357,
		-0.661410, 0.261249, -0.703054,
		-0.084694, -0.957395, -0.276082,
		35.978691, 41.155426, 29.922493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326424, 41.635353, 30.050022>,  <36.037979, 41.825603, 30.115751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326424, 41.635353, 30.050022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488194, 41.272018, 30.092682>,  <35.585255, 41.054020, 30.118277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488194, 41.272018, 30.092682>,  <35.326424, 41.635353, 30.050022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488194, 41.272018, 30.092682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706929, -0.236487, 0.666577,
		-0.580253, -0.344971, -0.737768,
		0.404422, -0.908333, 0.106648,
		35.609520, 40.999519, 30.124676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742081, 41.105381, 29.937647>,  <35.326424, 41.635353, 30.050022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742081, 41.105381, 29.937647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043995, 40.945011, 30.145321>,  <35.225143, 40.848789, 30.269926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043995, 40.945011, 30.145321>,  <34.742081, 41.105381, 29.937647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043995, 40.945011, 30.145321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647301, -0.326975, 0.688541,
		-0.106292, -0.855772, -0.506316,
		0.754787, -0.400925, 0.519187,
		35.270432, 40.824734, 30.301077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445789, 40.538101, 30.215809>,  <34.742081, 41.105381, 29.937647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445789, 40.538101, 30.215809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770542, 40.529934, 30.449194>,  <34.965393, 40.525036, 30.589224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770542, 40.529934, 30.449194>,  <34.445789, 40.538101, 30.215809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770542, 40.529934, 30.449194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571819, -0.229377, 0.787661,
		0.117753, -0.973123, -0.197901,
		0.811885, -0.020414, 0.583460,
		35.014107, 40.523811, 30.624231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452114, 39.932343, 30.637100>,  <34.445789, 40.538101, 30.215809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452114, 39.932343, 30.637100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691795, 40.181095, 30.838779>,  <34.835606, 40.330349, 30.959787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691795, 40.181095, 30.838779>,  <34.452114, 39.932343, 30.637100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691795, 40.181095, 30.838779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483500, -0.220861, 0.847023,
		0.638107, -0.751319, 0.168339,
		0.599205, 0.621884, 0.504196,
		34.871555, 40.367661, 30.990038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756195, 39.551838, 31.230968>,  <34.452114, 39.932343, 30.637100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756195, 39.551838, 31.230968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786385, 39.932098, 31.351339>,  <34.804497, 40.160255, 31.423563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786385, 39.932098, 31.351339>,  <34.756195, 39.551838, 31.230968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786385, 39.932098, 31.351339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443435, -0.238310, 0.864045,
		0.893124, -0.198651, 0.403569,
		0.075469, 0.950656, 0.300929,
		34.809025, 40.217297, 31.441618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741421, 39.484711, 31.947155>,  <34.756195, 39.551838, 31.230968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741421, 39.484711, 31.947155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679581, 39.878605, 31.915192>,  <34.642475, 40.114944, 31.896013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679581, 39.878605, 31.915192>,  <34.741421, 39.484711, 31.947155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679581, 39.878605, 31.915192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542450, -0.017008, 0.839916,
		0.825740, 0.173198, 0.536801,
		-0.154601, 0.984740, -0.079907,
		34.633202, 40.174026, 31.891220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860210, 39.755630, 32.539204>,  <34.741421, 39.484711, 31.947155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860210, 39.755630, 32.539204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632130, 40.049133, 32.391434>,  <34.495281, 40.225235, 32.302773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632130, 40.049133, 32.391434>,  <34.860210, 39.755630, 32.539204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632130, 40.049133, 32.391434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532073, 0.012761, 0.846602,
		0.625913, 0.679294, 0.383136,
		-0.570202, 0.733756, -0.369421,
		34.461067, 40.269260, 32.280609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690025, 40.278366, 33.147141>,  <34.860210, 39.755630, 32.539204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690025, 40.278366, 33.147141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416965, 40.389645, 32.876854>,  <34.253128, 40.456409, 32.714684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416965, 40.389645, 32.876854>,  <34.690025, 40.278366, 33.147141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416965, 40.389645, 32.876854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641758, 0.213995, 0.736446,
		0.349474, 0.936384, 0.032448,
		-0.682653, 0.278193, -0.675717,
		34.212170, 40.473103, 32.674137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425743, 40.934155, 33.376118>,  <34.690025, 40.278366, 33.147141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425743, 40.934155, 33.376118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139870, 40.797699, 33.131870>,  <33.968346, 40.715828, 32.985321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139870, 40.797699, 33.131870>,  <34.425743, 40.934155, 33.376118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139870, 40.797699, 33.131870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694726, 0.244898, 0.676300,
		-0.081170, 0.907552, -0.412020,
		-0.714680, -0.341136, -0.610622,
		33.925465, 40.695358, 32.948685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892899, 41.412479, 33.341263>,  <34.425743, 40.934155, 33.376118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892899, 41.412479, 33.341263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740078, 41.053715, 33.252182>,  <33.648388, 40.838455, 33.198734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740078, 41.053715, 33.252182>,  <33.892899, 41.412479, 33.341263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740078, 41.053715, 33.252182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741365, 0.153582, 0.653292,
		-0.551740, 0.414691, -0.723612,
		-0.382048, -0.896908, -0.222700,
		33.625462, 40.784641, 33.185371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276260, 41.531139, 33.390614>,  <33.892899, 41.412479, 33.341263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276260, 41.531139, 33.390614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247955, 41.136841, 33.329548>,  <33.230972, 40.900261, 33.292908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247955, 41.136841, 33.329548>,  <33.276260, 41.531139, 33.390614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247955, 41.136841, 33.329548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767798, -0.043875, 0.639188,
		-0.636773, 0.162441, -0.753746,
		-0.070760, -0.985743, -0.152660,
		33.226727, 40.841118, 33.283749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569221, 41.428608, 33.218449>,  <33.276260, 41.531139, 33.390614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569221, 41.428608, 33.218449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723385, 41.084015, 33.350693>,  <32.815884, 40.877258, 33.430038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723385, 41.084015, 33.350693>,  <32.569221, 41.428608, 33.218449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723385, 41.084015, 33.350693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801982, -0.135525, 0.581772,
		-0.456380, -0.489369, -0.743125,
		0.385413, -0.861482, 0.330615,
		32.839008, 40.825569, 33.449879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946524, 41.086266, 33.292717>,  <32.569221, 41.428608, 33.218449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946524, 41.086266, 33.292717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213966, 40.876846, 33.503948>,  <32.374432, 40.751194, 33.630688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213966, 40.876846, 33.503948>,  <31.946524, 41.086266, 33.292717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213966, 40.876846, 33.503948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691653, -0.177033, 0.700196,
		-0.273101, -0.833399, -0.480480,
		0.668604, -0.523550, 0.528076,
		32.414547, 40.719784, 33.662373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709021, 40.279888, 33.442402>,  <31.946524, 41.086266, 33.292717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709021, 40.279888, 33.442402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966169, 40.397243, 33.725426>,  <32.120457, 40.467655, 33.895241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966169, 40.397243, 33.725426>,  <31.709021, 40.279888, 33.442402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966169, 40.397243, 33.725426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694047, -0.167689, 0.700127,
		0.324059, -0.941171, 0.095823,
		0.642871, 0.293389, 0.707559,
		32.159031, 40.485260, 33.937695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733940, 39.684093, 33.965199>,  <31.709021, 40.279888, 33.442402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733940, 39.684093, 33.965199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884701, 39.989861, 34.174431>,  <31.975157, 40.173321, 34.299973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884701, 39.989861, 34.174431>,  <31.733940, 39.684093, 33.965199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884701, 39.989861, 34.174431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468579, -0.329782, 0.819560,
		0.798987, -0.553997, 0.233894,
		0.376900, 0.764416, 0.523082,
		31.997770, 40.219185, 34.331356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983650, 39.390537, 34.642097>,  <31.733940, 39.684093, 33.965199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983650, 39.390537, 34.642097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934467, 39.782059, 34.707615>,  <31.904959, 40.016972, 34.746925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934467, 39.782059, 34.707615>,  <31.983650, 39.390537, 34.642097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934467, 39.782059, 34.707615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192683, -0.185454, 0.963577,
		0.973527, 0.086917, 0.211402,
		-0.122956, 0.978801, 0.163797,
		31.897581, 40.075699, 34.756756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286652, 39.548592, 35.286957>,  <31.983650, 39.390537, 34.642097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286652, 39.548592, 35.286957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073879, 39.881069, 35.222256>,  <31.946215, 40.080555, 35.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073879, 39.881069, 35.222256>,  <32.286652, 39.548592, 35.286957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073879, 39.881069, 35.222256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356835, -0.046801, 0.932994,
		0.767928, 0.554011, 0.321494,
		-0.531936, 0.831192, -0.161751,
		31.914299, 40.130428, 35.173729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553585, 40.106026, 35.766327>,  <32.286652, 39.548592, 35.286957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553585, 40.106026, 35.766327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170719, 40.129105, 35.652828>,  <31.941000, 40.142952, 35.584728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170719, 40.129105, 35.652828>,  <32.553585, 40.106026, 35.766327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170719, 40.129105, 35.652828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286904, -0.056735, 0.956278,
		0.039080, 0.996720, 0.070859,
		-0.957162, 0.057701, -0.283746,
		31.883570, 40.146416, 35.567703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113796, 40.117542, 36.261974>,  <32.553585, 40.106026, 35.766327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113796, 40.117542, 36.261974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384777, 39.886528, 36.444183>,  <33.547367, 39.747917, 36.553509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384777, 39.886528, 36.444183>,  <33.113796, 40.117542, 36.261974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384777, 39.886528, 36.444183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438430, -0.180207, -0.880514,
		0.590620, 0.796224, 0.131128,
		0.677456, -0.577540, 0.455523,
		33.588013, 39.713264, 36.580841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841122, 40.379456, 36.034042>,  <33.113796, 40.117542, 36.261974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841122, 40.379456, 36.034042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867805, 39.995590, 36.143295>,  <33.883816, 39.765270, 36.208847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867805, 39.995590, 36.143295>,  <33.841122, 40.379456, 36.034042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867805, 39.995590, 36.143295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700171, -0.149996, -0.698042,
		0.710852, 0.237807, 0.661919,
		0.066714, -0.959661, 0.273131,
		33.887821, 39.707691, 36.225235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597729, 40.253132, 36.160072>,  <33.841122, 40.379456, 36.034042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597729, 40.253132, 36.160072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422695, 39.899471, 36.094582>,  <34.317677, 39.687275, 36.055286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422695, 39.899471, 36.094582>,  <34.597729, 40.253132, 36.160072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422695, 39.899471, 36.094582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666408, -0.196638, -0.719190,
		0.603674, -0.423813, 0.675248,
		-0.437582, -0.884147, -0.163727,
		34.291420, 39.634228, 36.045464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068043, 39.772701, 36.399853>,  <34.597729, 40.253132, 36.160072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068043, 39.772701, 36.399853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827438, 39.588486, 36.138748>,  <34.683075, 39.477959, 35.982086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827438, 39.588486, 36.138748>,  <35.068043, 39.772701, 36.399853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827438, 39.588486, 36.138748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794913, -0.263873, -0.546337,
		0.079362, -0.847513, 0.524807,
		-0.601510, -0.460535, -0.652758,
		34.646984, 39.450325, 35.942921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432377, 39.210060, 36.096561>,  <35.068043, 39.772701, 36.399853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432377, 39.210060, 36.096561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127907, 39.253143, 35.840744>,  <34.945225, 39.278992, 35.687256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127907, 39.253143, 35.840744>,  <35.432377, 39.210060, 36.096561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127907, 39.253143, 35.840744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598263, -0.264106, -0.756524,
		-0.250381, -0.958462, 0.136601,
		-0.761177, 0.107696, -0.639540,
		34.899555, 39.285454, 35.648880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614281, 38.599300, 35.644958>,  <35.432377, 39.210060, 36.096561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614281, 38.599300, 35.644958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369598, 38.851799, 35.454239>,  <35.222790, 39.003300, 35.339806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369598, 38.851799, 35.454239>,  <35.614281, 38.599300, 35.644958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369598, 38.851799, 35.454239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561225, -0.078487, -0.823934,
		-0.557528, -0.771601, -0.306261,
		-0.611710, 0.631247, -0.476800,
		35.186085, 39.041172, 35.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342457, 38.242020, 34.946682>,  <35.614281, 38.599300, 35.644958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342457, 38.242020, 34.946682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326141, 38.641243, 34.927868>,  <35.316353, 38.880779, 34.916580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326141, 38.641243, 34.927868>,  <35.342457, 38.242020, 34.946682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326141, 38.641243, 34.927868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476471, -0.021951, -0.878916,
		-0.878244, -0.058263, -0.474651,
		-0.040789, 0.998060, -0.047039,
		35.313904, 38.940662, 34.913757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167904, 38.397831, 34.185570>,  <35.342457, 38.242020, 34.946682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167904, 38.397831, 34.185570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315037, 38.715790, 34.378582>,  <35.403316, 38.906567, 34.494389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315037, 38.715790, 34.378582>,  <35.167904, 38.397831, 34.185570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315037, 38.715790, 34.378582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386131, 0.341494, -0.856904,
		-0.845932, 0.501519, -0.181322,
		0.367833, 0.794897, 0.482532,
		35.425388, 38.954258, 34.523342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276676, 38.850956, 33.609581>,  <35.167904, 38.397831, 34.185570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276676, 38.850956, 33.609581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501427, 39.006496, 33.901634>,  <35.636276, 39.099819, 34.076866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501427, 39.006496, 33.901634>,  <35.276676, 38.850956, 33.609581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501427, 39.006496, 33.901634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521211, 0.518977, -0.677497,
		-0.642364, 0.761223, 0.088929,
		0.561878, 0.388849, 0.730129,
		35.669991, 39.123150, 34.120674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405014, 39.458107, 33.276455>,  <35.276676, 38.850956, 33.609581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405014, 39.458107, 33.276455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655106, 39.424423, 33.586811>,  <35.805161, 39.404213, 33.773026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655106, 39.424423, 33.586811>,  <35.405014, 39.458107, 33.276455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655106, 39.424423, 33.586811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714754, 0.461003, -0.525931,
		-0.313397, 0.883394, 0.348423,
		0.625228, -0.084212, 0.775886,
		35.842674, 39.399158, 33.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680412, 40.158272, 33.400288>,  <35.405014, 39.458107, 33.276455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680412, 40.158272, 33.400288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937511, 39.914566, 33.586048>,  <36.091770, 39.768341, 33.697506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937511, 39.914566, 33.586048>,  <35.680412, 40.158272, 33.400288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937511, 39.914566, 33.586048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739403, 0.334802, -0.584116,
		0.200400, 0.718819, 0.665687,
		0.642747, -0.609267, 0.464402,
		36.130337, 39.731785, 33.725368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267593, 40.581501, 33.537155>,  <35.680412, 40.158272, 33.400288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267593, 40.581501, 33.537155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414322, 40.209736, 33.521004>,  <36.502357, 39.986675, 33.511314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414322, 40.209736, 33.521004>,  <36.267593, 40.581501, 33.537155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414322, 40.209736, 33.521004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787784, 0.333420, -0.517907,
		0.494814, 0.158168, 0.854483,
		0.366818, -0.929416, -0.040378,
		36.524368, 39.930912, 33.508892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024323, 40.688618, 33.733212>,  <36.267593, 40.581501, 33.537155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024323, 40.688618, 33.733212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991467, 40.333836, 33.551418>,  <36.971752, 40.120964, 33.442341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991467, 40.333836, 33.551418>,  <37.024323, 40.688618, 33.733212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991467, 40.333836, 33.551418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835059, 0.187662, -0.517165,
		0.543994, -0.422002, 0.725248,
		-0.082143, -0.886959, -0.454484,
		36.966824, 40.067749, 33.415073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701405, 40.518345, 33.635464>,  <37.024323, 40.688618, 33.733212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701405, 40.518345, 33.635464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485180, 40.260830, 33.418823>,  <37.355446, 40.106319, 33.288841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485180, 40.260830, 33.418823>,  <37.701405, 40.518345, 33.635464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485180, 40.260830, 33.418823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677271, 0.048904, -0.734107,
		0.499097, -0.763638, 0.409584,
		-0.540562, -0.643789, -0.541598,
		37.323013, 40.067692, 33.256344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198589, 40.019764, 33.434578>,  <37.701405, 40.518345, 33.635464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198589, 40.019764, 33.434578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895275, 40.011730, 33.173935>,  <37.713287, 40.006908, 33.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895275, 40.011730, 33.173935>,  <38.198589, 40.019764, 33.434578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895275, 40.011730, 33.173935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649577, 0.061418, -0.757811,
		0.055247, -0.997910, -0.033521,
		-0.758286, -0.020093, -0.651612,
		37.667789, 40.005707, 32.978451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416882, 39.632866, 32.900696>,  <38.198589, 40.019764, 33.434578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416882, 39.632866, 32.900696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113064, 39.862530, 32.778427>,  <37.930775, 40.000328, 32.705067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113064, 39.862530, 32.778427>,  <38.416882, 39.632866, 32.900696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113064, 39.862530, 32.778427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542915, 0.300787, -0.784073,
		-0.358244, -0.761489, -0.540181,
		-0.759542, 0.574162, -0.305668,
		37.885201, 40.034779, 32.686726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355591, 39.474716, 32.200417>,  <38.416882, 39.632866, 32.900696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355591, 39.474716, 32.200417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171234, 39.828304, 32.231861>,  <38.060619, 40.040455, 32.250729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171234, 39.828304, 32.231861>,  <38.355591, 39.474716, 32.200417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171234, 39.828304, 32.231861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497140, 0.330548, -0.802241,
		-0.735138, -0.330668, -0.591803,
		-0.460895, 0.883966, 0.078610,
		38.032967, 40.093494, 32.255444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034317, 39.589710, 31.537539>,  <38.355591, 39.474716, 32.200417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034317, 39.589710, 31.537539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067730, 39.944717, 31.718798>,  <38.087780, 40.157722, 31.827553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067730, 39.944717, 31.718798>,  <38.034317, 39.589710, 31.537539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067730, 39.944717, 31.718798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400769, 0.386418, -0.830702,
		-0.912363, 0.251001, -0.323408,
		0.083536, 0.887514, 0.453147,
		38.092793, 40.210972, 31.854742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804077, 39.936771, 31.043297>,  <38.034317, 39.589710, 31.537539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804077, 39.936771, 31.043297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987320, 40.209801, 31.271063>,  <38.097267, 40.373619, 31.407722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987320, 40.209801, 31.271063>,  <37.804077, 39.936771, 31.043297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987320, 40.209801, 31.271063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140486, 0.576937, -0.804616,
		-0.877724, 0.448597, 0.168409,
		0.458110, 0.682571, 0.569413,
		38.124752, 40.414574, 31.441887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586952, 40.618649, 30.764975>,  <37.804077, 39.936771, 31.043297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586952, 40.618649, 30.764975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926659, 40.692196, 30.962938>,  <38.130482, 40.736324, 31.081717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926659, 40.692196, 30.962938>,  <37.586952, 40.618649, 30.764975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926659, 40.692196, 30.962938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343681, 0.519065, -0.782595,
		-0.400784, 0.834724, 0.377634,
		0.849268, 0.183866, 0.494912,
		38.181438, 40.747356, 31.111412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751617, 41.312756, 30.642992>,  <37.586952, 40.618649, 30.764975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751617, 41.312756, 30.642992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087185, 41.145416, 30.782248>,  <38.288525, 41.045013, 30.865801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087185, 41.145416, 30.782248>,  <37.751617, 41.312756, 30.642992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087185, 41.145416, 30.782248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497993, 0.331951, -0.801131,
		0.219590, 0.845453, 0.486815,
		0.838918, -0.418351, 0.348137,
		38.338860, 41.019909, 30.886688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114384, 41.803604, 30.507635>,  <37.751617, 41.312756, 30.642992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114384, 41.803604, 30.507635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350143, 41.480625, 30.517807>,  <38.491600, 41.286839, 30.523911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350143, 41.480625, 30.517807>,  <38.114384, 41.803604, 30.507635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350143, 41.480625, 30.517807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624769, 0.435644, -0.647980,
		0.512130, 0.397803, 0.761233,
		0.589395, -0.807444, 0.025429,
		38.526962, 41.238392, 30.525436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832436, 42.068115, 30.429758>,  <38.114384, 41.803604, 30.507635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832436, 42.068115, 30.429758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819229, 41.683941, 30.319145>,  <38.811306, 41.453434, 30.252777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819229, 41.683941, 30.319145>,  <38.832436, 42.068115, 30.429758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819229, 41.683941, 30.319145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686204, 0.179378, -0.704945,
		0.726659, -0.213031, 0.653134,
		-0.033017, -0.960438, -0.276530,
		38.809322, 41.395809, 30.236187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586517, 41.919777, 30.284906>,  <38.832436, 42.068115, 30.429758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586517, 41.919777, 30.284906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360909, 41.633621, 30.119932>,  <39.225544, 41.461929, 30.020948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360909, 41.633621, 30.119932>,  <39.586517, 41.919777, 30.284906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360909, 41.633621, 30.119932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533417, 0.065628, -0.843302,
		0.630354, -0.695641, 0.344583,
		-0.564021, -0.715386, -0.412436,
		39.191704, 41.419006, 29.996201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114136, 41.525948, 29.990042>,  <39.586517, 41.919777, 30.284906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114136, 41.525948, 29.990042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782974, 41.398548, 29.805372>,  <39.584278, 41.322109, 29.694571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782974, 41.398548, 29.805372>,  <40.114136, 41.525948, 29.990042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782974, 41.398548, 29.805372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528864, -0.169182, -0.831673,
		0.186778, -0.932704, 0.308506,
		-0.827899, -0.318496, -0.461674,
		39.534603, 41.302998, 29.666870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270443, 40.866188, 29.707460>,  <40.114136, 41.525948, 29.990042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270443, 40.866188, 29.707460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960003, 41.005951, 29.497475>,  <39.773739, 41.089809, 29.371483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960003, 41.005951, 29.497475>,  <40.270443, 40.866188, 29.707460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960003, 41.005951, 29.497475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511587, -0.137890, -0.848095,
		-0.368719, -0.926769, -0.071737,
		-0.776096, 0.349409, -0.524965,
		39.727173, 41.110775, 29.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264057, 40.472111, 29.108990>,  <40.270443, 40.866188, 29.707460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264057, 40.472111, 29.108990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044083, 40.788273, 29.001038>,  <39.912098, 40.977970, 28.936266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044083, 40.788273, 29.001038>,  <40.264057, 40.472111, 29.108990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044083, 40.788273, 29.001038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295701, -0.117943, -0.947971,
		-0.781112, -0.601124, -0.168863,
		-0.549932, 0.790405, -0.269880,
		39.879105, 41.025394, 28.920074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902493, 40.262585, 28.439032>,  <40.264057, 40.472111, 29.108990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902493, 40.262585, 28.439032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912323, 40.662270, 28.426512>,  <39.918221, 40.902081, 28.419001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912323, 40.662270, 28.426512>,  <39.902493, 40.262585, 28.439032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912323, 40.662270, 28.426512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470903, -0.039187, -0.881314,
		-0.881842, 0.006918, -0.471493,
		0.024573, 0.999208, -0.031299,
		39.919697, 40.962032, 28.417122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770355, 40.348915, 27.734306>,  <39.902493, 40.262585, 28.439032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770355, 40.348915, 27.734306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912949, 40.703526, 27.852287>,  <39.998505, 40.916290, 27.923077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912949, 40.703526, 27.852287>,  <39.770355, 40.348915, 27.734306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912949, 40.703526, 27.852287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221677, 0.226424, -0.948468,
		-0.907623, 0.403496, -0.115806,
		0.356482, 0.886523, 0.294954,
		40.019894, 40.969482, 27.940773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521408, 40.867939, 27.207287>,  <39.770355, 40.348915, 27.734306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521408, 40.867939, 27.207287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814823, 41.028316, 27.426800>,  <39.990871, 41.124542, 27.558508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814823, 41.028316, 27.426800>,  <39.521408, 40.867939, 27.207287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814823, 41.028316, 27.426800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379976, 0.427536, -0.820263,
		-0.563504, 0.810220, 0.161265,
		0.733540, 0.400944, 0.548783,
		40.034885, 41.148602, 27.591434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548374, 41.600590, 27.067072>,  <39.521408, 40.867939, 27.207287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548374, 41.600590, 27.067072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916962, 41.517361, 27.198286>,  <40.138115, 41.467422, 27.277014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916962, 41.517361, 27.198286>,  <39.548374, 41.600590, 27.067072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916962, 41.517361, 27.198286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388026, 0.453044, -0.802613,
		0.018391, 0.866865, 0.498203,
		0.921465, -0.208076, 0.328034,
		40.193401, 41.454937, 27.296696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944851, 42.223873, 26.969244>,  <39.548374, 41.600590, 27.067072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944851, 42.223873, 26.969244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230968, 41.947571, 27.011587>,  <40.402641, 41.781788, 27.036993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230968, 41.947571, 27.011587>,  <39.944851, 42.223873, 26.969244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230968, 41.947571, 27.011587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507718, 0.409607, -0.757921,
		0.480178, 0.595885, 0.643700,
		0.715298, -0.690755, 0.105858,
		40.445557, 41.740345, 27.043344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726498, 42.574959, 27.140604>,  <39.944851, 42.223873, 26.969244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726498, 42.574959, 27.140604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801704, 42.203018, 27.014097>,  <40.846828, 41.979855, 26.938194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801704, 42.203018, 27.014097>,  <40.726498, 42.574959, 27.140604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801704, 42.203018, 27.014097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603808, 0.363399, -0.709477,
		0.774640, -0.057573, 0.629776,
		0.188013, -0.929853, -0.316266,
		40.858109, 41.924061, 26.919218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459080, 42.502857, 26.989574>,  <40.726498, 42.574959, 27.140604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459080, 42.502857, 26.989574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297871, 42.192978, 26.794674>,  <41.201145, 42.007050, 26.677732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297871, 42.192978, 26.794674>,  <41.459080, 42.502857, 26.989574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297871, 42.192978, 26.794674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464859, 0.285328, -0.838149,
		0.788342, -0.564293, 0.245134,
		-0.403018, -0.774701, -0.487253,
		41.176964, 41.960567, 26.648499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030701, 42.063038, 26.758974>,  <41.459080, 42.502857, 26.989574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030701, 42.063038, 26.758974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718449, 41.988373, 26.520388>,  <41.531097, 41.943573, 26.377235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.718449, 41.988373, 26.520388>,  <42.030701, 42.063038, 26.758974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718449, 41.988373, 26.520388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515838, 0.346422, -0.783520,
		0.352900, -0.919316, -0.174127,
		-0.780624, -0.186682, -0.596470,
		41.484261, 41.932373, 26.341448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369087, 41.878338, 26.185900>,  <42.030701, 42.063038, 26.758974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369087, 41.878338, 26.185900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990669, 41.948986, 26.077238>,  <41.763618, 41.991375, 26.012041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990669, 41.948986, 26.077238>,  <42.369087, 41.878338, 26.185900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990669, 41.948986, 26.077238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324005, 0.507184, -0.798615,
		-0.003275, -0.843546, -0.537047,
		-0.946050, 0.176621, -0.271652,
		41.706856, 42.001972, 25.995743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320179, 41.524391, 25.588911>,  <42.369087, 41.878338, 26.185900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320179, 41.524391, 25.588911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010445, 41.775284, 25.555473>,  <41.824604, 41.925819, 25.535410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010445, 41.775284, 25.555473>,  <42.320179, 41.524391, 25.588911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010445, 41.775284, 25.555473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374324, 0.347538, -0.859709,
		-0.510182, -0.696995, -0.503898,
		-0.774336, 0.627229, -0.083595,
		41.778145, 41.963451, 25.530396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061089, 41.408936, 24.943224>,  <42.320179, 41.524391, 25.588911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061089, 41.408936, 24.943224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926514, 41.774860, 25.032606>,  <41.845768, 41.994415, 25.086235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926514, 41.774860, 25.032606>,  <42.061089, 41.408936, 24.943224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926514, 41.774860, 25.032606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226906, 0.309049, -0.923582,
		-0.913960, -0.260026, -0.311552,
		-0.336440, 0.914809, 0.223457,
		41.825581, 42.049305, 25.099644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707363, 40.782303, 24.599077>,  <42.061089, 41.408936, 24.943224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707363, 40.782303, 24.599077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484825, 40.586803, 24.330269>,  <41.351303, 40.469505, 24.168983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484825, 40.586803, 24.330269>,  <41.707363, 40.782303, 24.599077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484825, 40.586803, 24.330269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652280, -0.244164, 0.717576,
		-0.514796, 0.837562, -0.182961,
		-0.556342, -0.488747, -0.672020,
		41.317924, 40.440178, 24.128662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044914, 40.940365, 24.719648>,  <41.707363, 40.782303, 24.599077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044914, 40.940365, 24.719648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078671, 40.569191, 24.574423>,  <41.098927, 40.346485, 24.487288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078671, 40.569191, 24.574423>,  <41.044914, 40.940365, 24.719648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078671, 40.569191, 24.574423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594680, -0.339266, 0.728872,
		-0.799520, 0.154395, -0.580456,
		0.084395, -0.927933, -0.363066,
		41.103989, 40.290810, 24.465504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398853, 40.750298, 24.571991>,  <41.044914, 40.940365, 24.719648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398853, 40.750298, 24.571991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563522, 40.386421, 24.593857>,  <40.662323, 40.168095, 24.606976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563522, 40.386421, 24.593857>,  <40.398853, 40.750298, 24.571991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563522, 40.386421, 24.593857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825426, -0.346771, 0.445445,
		-0.386264, -0.228493, -0.893639,
		0.411669, -0.909693, 0.054660,
		40.687023, 40.113514, 24.610256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850983, 40.267262, 24.298586>,  <40.398853, 40.750298, 24.571991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850983, 40.267262, 24.298586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119484, 40.067738, 24.517899>,  <40.280582, 39.948025, 24.649487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119484, 40.067738, 24.517899>,  <39.850983, 40.267262, 24.298586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119484, 40.067738, 24.517899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739734, -0.497795, 0.452763,
		0.047089, -0.709499, -0.703132,
		0.671250, -0.498810, 0.548281,
		40.320858, 39.918095, 24.682383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596626, 39.583237, 24.294094>,  <39.850983, 40.267262, 24.298586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596626, 39.583237, 24.294094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847637, 39.611145, 24.604280>,  <39.998241, 39.627892, 24.790392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847637, 39.611145, 24.604280>,  <39.596626, 39.583237, 24.294094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847637, 39.611145, 24.604280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685614, -0.422479, 0.592828,
		0.368980, -0.903683, -0.217279,
		0.627524, 0.069772, 0.775465,
		40.035896, 39.632076, 24.836920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657227, 38.861210, 24.648527>,  <39.596626, 39.583237, 24.294094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657227, 38.861210, 24.648527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760342, 39.141518, 24.914600>,  <39.822208, 39.309700, 25.074245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760342, 39.141518, 24.914600>,  <39.657227, 38.861210, 24.648527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760342, 39.141518, 24.914600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679022, -0.358379, 0.640698,
		0.687368, -0.616838, 0.383452,
		0.257786, 0.700768, 0.665185,
		39.837677, 39.351749, 25.114157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694347, 38.489597, 25.192955>,  <39.657227, 38.861210, 24.648527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694347, 38.489597, 25.192955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667351, 38.856743, 25.349401>,  <39.651154, 39.077030, 25.443270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667351, 38.856743, 25.349401>,  <39.694347, 38.489597, 25.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667351, 38.856743, 25.349401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565800, -0.358091, 0.742725,
		0.821776, -0.171165, 0.543495,
		-0.067492, 0.917863, 0.391116,
		39.647102, 39.132103, 25.466736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761337, 38.396294, 25.904331>,  <39.694347, 38.489597, 25.192955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761337, 38.396294, 25.904331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585255, 38.753719, 25.869083>,  <39.479607, 38.968174, 25.847935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585255, 38.753719, 25.869083>,  <39.761337, 38.396294, 25.904331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585255, 38.753719, 25.869083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618896, -0.230852, 0.750782,
		0.650528, 0.385036, 0.654645,
		-0.440205, 0.893563, -0.088122,
		39.453194, 39.021790, 25.842648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612480, 38.535164, 26.612986>,  <39.761337, 38.396294, 25.904331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612480, 38.535164, 26.612986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413666, 38.808151, 26.398624>,  <39.294376, 38.971943, 26.270008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413666, 38.808151, 26.398624>,  <39.612480, 38.535164, 26.612986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413666, 38.808151, 26.398624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745915, -0.020485, 0.665726,
		0.443362, 0.730624, 0.519248,
		-0.497033, 0.682472, -0.535901,
		39.264557, 39.012894, 26.237854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500389, 39.141087, 27.103062>,  <39.612480, 38.535164, 26.612986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500389, 39.141087, 27.103062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232994, 39.151871, 26.805769>,  <39.072556, 39.158340, 26.627394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232994, 39.151871, 26.805769>,  <39.500389, 39.141087, 27.103062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232994, 39.151871, 26.805769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728583, 0.176853, 0.661732,
		0.149284, 0.983868, -0.098581,
		-0.668491, 0.026961, -0.743231,
		39.032448, 39.159958, 26.582800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163376, 39.642864, 27.333368>,  <39.500389, 39.141087, 27.103062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163376, 39.642864, 27.333368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917801, 39.474888, 27.066015>,  <38.770458, 39.374104, 26.905603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917801, 39.474888, 27.066015>,  <39.163376, 39.642864, 27.333368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917801, 39.474888, 27.066015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709640, -0.077185, 0.700324,
		-0.345685, 0.904263, -0.250621,
		-0.613933, -0.419942, -0.668383,
		38.733620, 39.348904, 26.865501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438248, 40.014229, 27.297342>,  <39.163376, 39.642864, 27.333368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438248, 40.014229, 27.297342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393208, 39.632755, 27.185772>,  <38.366184, 39.403870, 27.118830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393208, 39.632755, 27.185772>,  <38.438248, 40.014229, 27.297342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393208, 39.632755, 27.185772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786576, -0.085970, 0.611479,
		-0.607140, 0.288249, -0.740468,
		-0.112601, -0.953688, -0.278926,
		38.359428, 39.346649, 27.102095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703049, 39.893230, 27.187325>,  <38.438248, 40.014229, 27.297342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703049, 39.893230, 27.187325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886967, 39.544369, 27.254171>,  <37.997318, 39.335052, 27.294279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886967, 39.544369, 27.254171>,  <37.703049, 39.893230, 27.187325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886967, 39.544369, 27.254171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680464, -0.225115, 0.697347,
		-0.570575, -0.434356, -0.696978,
		0.459797, -0.872157, 0.167119,
		38.024906, 39.282722, 27.304308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154453, 39.430676, 27.220448>,  <37.703049, 39.893230, 27.187325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154453, 39.430676, 27.220448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 39.229107, 27.397161>,  <37.629471, 39.108166, 27.503191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451340, 39.229107, 27.397161>,  <37.154453, 39.430676, 27.220448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451340, 39.229107, 27.397161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595982, -0.194863, 0.778996,
		-0.306470, -0.841478, -0.444962,
		0.742214, -0.503928, 0.441786,
		37.674004, 39.077930, 27.529697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775322, 38.967194, 27.673122>,  <37.154453, 39.430676, 27.220448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775322, 38.967194, 27.673122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154385, 38.936024, 27.796972>,  <37.381824, 38.917320, 27.871283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154385, 38.936024, 27.796972>,  <36.775322, 38.967194, 27.673122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154385, 38.936024, 27.796972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316311, -0.361054, 0.877261,
		0.043433, -0.929284, -0.366805,
		0.947660, -0.077922, 0.309625,
		37.438683, 38.912647, 27.889860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914989, 38.342892, 27.890377>,  <36.775322, 38.967194, 27.673122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914989, 38.342892, 27.890377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196712, 38.542965, 28.091875>,  <37.365746, 38.663010, 28.212774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196712, 38.542965, 28.091875>,  <36.914989, 38.342892, 27.890377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196712, 38.542965, 28.091875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354776, -0.366630, 0.860068,
		0.614882, -0.784472, -0.080767,
		0.704311, 0.500186, 0.503746,
		37.408005, 38.693020, 28.242998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139011, 37.913452, 28.304529>,  <36.914989, 38.342892, 27.890377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139011, 37.913452, 28.304529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266804, 38.258522, 28.461363>,  <37.343479, 38.465565, 28.555464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266804, 38.258522, 28.461363>,  <37.139011, 37.913452, 28.304529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266804, 38.258522, 28.461363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365189, -0.269716, 0.891005,
		0.874395, -0.427846, 0.228868,
		0.319484, 0.862671, 0.392083,
		37.362648, 38.517323, 28.578987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347340, 37.729385, 28.968237>,  <37.139011, 37.913452, 28.304529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347340, 37.729385, 28.968237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329597, 38.128136, 28.994375>,  <37.318951, 38.367386, 29.010057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329597, 38.128136, 28.994375>,  <37.347340, 37.729385, 28.968237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329597, 38.128136, 28.994375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273266, -0.075020, 0.959008,
		0.960915, 0.024682, 0.275740,
		-0.044356, 0.996876, 0.065343,
		37.316292, 38.427200, 29.013979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709221, 37.922543, 29.529367>,  <37.347340, 37.729385, 28.968237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709221, 37.922543, 29.529367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459648, 38.228703, 29.466284>,  <37.309902, 38.412399, 29.428434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459648, 38.228703, 29.466284>,  <37.709221, 37.922543, 29.529367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459648, 38.228703, 29.466284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289621, -0.039039, 0.956345,
		0.725828, 0.642372, 0.246033,
		-0.623934, 0.765398, -0.157709,
		37.272469, 38.458321, 29.418972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850197, 38.422165, 30.094301>,  <37.709221, 37.922543, 29.529367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850197, 38.422165, 30.094301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483746, 38.505165, 29.957096>,  <37.263874, 38.554966, 29.874773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483746, 38.505165, 29.957096>,  <37.850197, 38.422165, 30.094301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483746, 38.505165, 29.957096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356045, -0.027889, 0.934053,
		0.184254, 0.977836, 0.099431,
		-0.916124, 0.207504, -0.343015,
		37.208908, 38.567417, 29.854191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595840, 38.940319, 30.544355>,  <37.850197, 38.422165, 30.094301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595840, 38.940319, 30.544355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274532, 38.767151, 30.380726>,  <37.081749, 38.663250, 30.282549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274532, 38.767151, 30.380726>,  <37.595840, 38.940319, 30.544355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274532, 38.767151, 30.380726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435770, -0.041042, 0.899122,
		-0.406039, 0.900497, -0.155686,
		-0.803266, -0.432922, -0.409074,
		37.033554, 38.637276, 30.258003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981380, 39.316517, 31.008287>,  <37.595840, 38.940319, 30.544355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981380, 39.316517, 31.008287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832626, 38.991188, 30.829309>,  <36.743374, 38.795990, 30.721922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832626, 38.991188, 30.829309>,  <36.981380, 39.316517, 31.008287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832626, 38.991188, 30.829309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609873, -0.149318, 0.778306,
		-0.699824, 0.562328, -0.440493,
		-0.371890, -0.813321, -0.447445,
		36.721058, 38.747192, 30.695076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335140, 39.288288, 31.232899>,  <36.981380, 39.316517, 31.008287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335140, 39.288288, 31.232899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408203, 38.920193, 31.094454>,  <36.452042, 38.699333, 31.011387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408203, 38.920193, 31.094454>,  <36.335140, 39.288288, 31.232899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408203, 38.920193, 31.094454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473415, -0.390859, 0.789371,
		-0.861693, 0.019673, -0.507049,
		0.182655, -0.920241, -0.346114,
		36.463001, 38.644119, 30.990620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732342, 38.957592, 31.321079>,  <36.335140, 39.288288, 31.232899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732342, 38.957592, 31.321079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022579, 38.682873, 31.338120>,  <36.196724, 38.518040, 31.348343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022579, 38.682873, 31.338120>,  <35.732342, 38.957592, 31.321079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022579, 38.682873, 31.338120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370240, -0.337472, 0.865468,
		-0.580028, -0.643752, -0.499149,
		0.725596, -0.686801, 0.042600,
		36.240257, 38.476833, 31.350899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499748, 38.455063, 31.725140>,  <35.732342, 38.957592, 31.321079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499748, 38.455063, 31.725140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872387, 38.309765, 31.730381>,  <36.095970, 38.222584, 31.733526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872387, 38.309765, 31.730381>,  <35.499748, 38.455063, 31.725140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872387, 38.309765, 31.730381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258414, -0.636522, 0.726679,
		-0.255623, -0.680361, -0.686852,
		0.931601, -0.363247, 0.013105,
		36.151867, 38.200790, 31.734312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387711, 37.663929, 31.764593>,  <35.499748, 38.455063, 31.725140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387711, 37.663929, 31.764593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753693, 37.762730, 31.892250>,  <35.973282, 37.822010, 31.968845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753693, 37.762730, 31.892250>,  <35.387711, 37.663929, 31.764593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753693, 37.762730, 31.892250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121146, -0.586238, 0.801030,
		0.384951, -0.771567, -0.506456,
		0.914952, 0.247002, 0.319145,
		36.028179, 37.836830, 31.987993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788338, 37.023094, 31.807671>,  <35.387711, 37.663929, 31.764593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788338, 37.023094, 31.807671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003876, 37.282707, 32.022484>,  <36.133198, 37.438473, 32.151371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003876, 37.282707, 32.022484>,  <35.788338, 37.023094, 31.807671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003876, 37.282707, 32.022484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209154, -0.720616, 0.661035,
		0.816026, -0.243875, -0.524048,
		0.538847, 0.649029, 0.537034,
		36.165531, 37.477417, 32.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503410, 36.792526, 31.846533>,  <35.788338, 37.023094, 31.807671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503410, 36.792526, 31.846533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437817, 37.026184, 32.164497>,  <36.398460, 37.166378, 32.355278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437817, 37.026184, 32.164497>,  <36.503410, 36.792526, 31.846533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437817, 37.026184, 32.164497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319115, -0.731079, 0.603067,
		0.933421, 0.352562, -0.066522,
		-0.163986, 0.584144, 0.794912,
		36.388622, 37.201427, 32.402969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100548, 36.688950, 32.376049>,  <36.503410, 36.792526, 31.846533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100548, 36.688950, 32.376049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804493, 36.848923, 32.592289>,  <36.626862, 36.944908, 32.722034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804493, 36.848923, 32.592289>,  <37.100548, 36.688950, 32.376049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804493, 36.848923, 32.592289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191735, -0.645039, 0.739704,
		0.644543, 0.651134, 0.400735,
		-0.740136, 0.399936, 0.540601,
		36.582451, 36.968903, 32.754471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416908, 36.799465, 33.006359>,  <37.100548, 36.688950, 32.376049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416908, 36.799465, 33.006359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025208, 36.827892, 33.082268>,  <36.790188, 36.844948, 33.127815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025208, 36.827892, 33.082268>,  <37.416908, 36.799465, 33.006359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025208, 36.827892, 33.082268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131108, -0.491891, 0.860728,
		0.154518, 0.867751, 0.472368,
		-0.979252, 0.071067, 0.189775,
		36.731430, 36.849213, 33.139202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250519, 37.109962, 33.654724>,  <37.416908, 36.799465, 33.006359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250519, 37.109962, 33.654724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934498, 36.877842, 33.575661>,  <36.744884, 36.738571, 33.528225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934498, 36.877842, 33.575661>,  <37.250519, 37.109962, 33.654724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934498, 36.877842, 33.575661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214752, -0.563967, 0.797384,
		-0.574195, 0.587528, 0.570185,
		-0.790052, -0.580302, -0.197654,
		36.697483, 36.703751, 33.516365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817539, 37.062412, 34.298920>,  <37.250519, 37.109962, 33.654724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817539, 37.062412, 34.298920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695812, 36.753628, 34.075684>,  <36.622776, 36.568359, 33.941742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695812, 36.753628, 34.075684>,  <36.817539, 37.062412, 34.298920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695812, 36.753628, 34.075684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129496, -0.613969, 0.778635,
		-0.943726, 0.164684, 0.286810,
		-0.304321, -0.771959, -0.558093,
		36.604515, 36.522041, 33.908257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404591, 36.630455, 34.701763>,  <36.817539, 37.062412, 34.298920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404591, 36.630455, 34.701763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 36.384548, 34.412109>,  <36.604622, 36.237003, 34.238316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 36.384548, 34.412109>,  <36.404591, 36.630455, 34.701763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529610, 36.384548, 34.412109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000246, -0.762381, 0.647129,
		-0.949901, -0.202083, -0.238435,
		0.312552, -0.614766, -0.724136,
		36.623375, 36.200119, 34.194870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021164, 36.036777, 34.772118>,  <36.404591, 36.630455, 34.701763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021164, 36.036777, 34.772118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346771, 35.928482, 34.566563>,  <36.542133, 35.863503, 34.443230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346771, 35.928482, 34.566563>,  <36.021164, 36.036777, 34.772118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346771, 35.928482, 34.566563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106550, -0.800106, 0.590319,
		-0.570986, -0.535284, -0.622452,
		0.814016, -0.270742, -0.513884,
		36.590977, 35.847260, 34.412399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969654, 35.257519, 34.735176>,  <36.021164, 36.036777, 34.772118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969654, 35.257519, 34.735176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350159, 35.319283, 34.628399>,  <36.578461, 35.356342, 34.564331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350159, 35.319283, 34.628399>,  <35.969654, 35.257519, 34.735176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350159, 35.319283, 34.628399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256246, -0.877390, 0.405617,
		-0.171579, -0.454250, -0.874195,
		0.951261, 0.154414, -0.266942,
		36.635536, 35.365608, 34.548317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311798, 34.620083, 34.464390>,  <35.969654, 35.257519, 34.735176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311798, 34.620083, 34.464390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638474, 34.832611, 34.554478>,  <36.834480, 34.960129, 34.608528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638474, 34.832611, 34.554478>,  <36.311798, 34.620083, 34.464390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638474, 34.832611, 34.554478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419236, -0.814448, 0.401143,
		0.396561, -0.233191, -0.887898,
		0.816689, 0.531316, 0.225216,
		36.883480, 34.992004, 34.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027485, 34.320858, 34.121098>,  <36.311798, 34.620083, 34.464390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027485, 34.320858, 34.121098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095901, 34.516861, 34.463005>,  <37.136951, 34.634464, 34.668152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095901, 34.516861, 34.463005>,  <37.027485, 34.320858, 34.121098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095901, 34.516861, 34.463005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574387, -0.754470, 0.317576,
		0.800515, 0.436651, -0.410501,
		0.171041, 0.490011, 0.854771,
		37.147213, 34.663864, 34.719437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761517, 34.247250, 34.269928>,  <37.027485, 34.320858, 34.121098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761517, 34.247250, 34.269928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611561, 34.362522, 34.622387>,  <37.521587, 34.431686, 34.833862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611561, 34.362522, 34.622387>,  <37.761517, 34.247250, 34.269928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611561, 34.362522, 34.622387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492548, -0.743305, 0.452652,
		0.785403, 0.603698, 0.136713,
		-0.374885, 0.288177, 0.881144,
		37.499096, 34.448975, 34.886730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345001, 34.036324, 34.755283>,  <37.761517, 34.247250, 34.269928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345001, 34.036324, 34.755283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027534, 34.120090, 34.983753>,  <37.837055, 34.170349, 35.120834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027534, 34.120090, 34.983753>,  <38.345001, 34.036324, 34.755283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027534, 34.120090, 34.983753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148053, -0.844168, 0.515229,
		0.590068, 0.493483, 0.638980,
		-0.793663, 0.209417, 0.571178,
		37.789436, 34.182915, 35.155106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638741, 34.069363, 35.474537>,  <38.345001, 34.036324, 34.755283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638741, 34.069363, 35.474537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247017, 33.989723, 35.460041>,  <38.011982, 33.941940, 35.451344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247017, 33.989723, 35.460041>,  <38.638741, 34.069363, 35.474537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247017, 33.989723, 35.460041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122430, -0.725480, 0.677266,
		-0.161133, 0.658816, 0.734845,
		-0.979309, -0.199098, -0.036240,
		37.953224, 33.929993, 35.449169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383049, 34.701969, 35.835884>,  <38.638741, 34.069363, 35.474537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383049, 34.701969, 35.835884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688438, 34.864166, 36.036957>,  <38.871674, 34.961483, 36.157600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688438, 34.864166, 36.036957>,  <38.383049, 34.701969, 35.835884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688438, 34.864166, 36.036957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483958, -0.156201, 0.861038,
		0.427662, -0.900655, 0.076986,
		0.763473, 0.405491, 0.502680,
		38.917480, 34.985813, 36.187759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534016, 34.315525, 36.478401>,  <38.383049, 34.701969, 35.835884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534016, 34.315525, 36.478401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664310, 34.687214, 36.548199>,  <38.742489, 34.910225, 36.590076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664310, 34.687214, 36.548199>,  <38.534016, 34.315525, 36.478401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664310, 34.687214, 36.548199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474203, 0.000901, 0.880415,
		0.817940, -0.369532, 0.440931,
		0.325739, 0.929218, 0.174496,
		38.762032, 34.965981, 36.600548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891575, 34.273602, 37.216434>,  <38.534016, 34.315525, 36.478401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891575, 34.273602, 37.216434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779644, 34.648693, 37.134106>,  <38.712486, 34.873749, 37.084709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779644, 34.648693, 37.134106>,  <38.891575, 34.273602, 37.216434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779644, 34.648693, 37.134106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147929, 0.169709, 0.974329,
		0.948587, 0.303086, 0.091229,
		-0.279823, 0.937730, -0.205818,
		38.695698, 34.930012, 37.072361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185955, 34.794704, 37.504494>,  <38.891575, 34.273602, 37.216434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185955, 34.794704, 37.504494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818676, 34.942974, 37.448605>,  <38.598309, 35.031937, 37.415070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818676, 34.942974, 37.448605>,  <39.185955, 34.794704, 37.504494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818676, 34.942974, 37.448605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095403, 0.135417, 0.986185,
		0.384471, 0.918839, -0.088976,
		-0.918194, 0.370671, -0.139724,
		38.543217, 35.054176, 37.406689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148598, 35.512783, 37.798344>,  <39.185955, 34.794704, 37.504494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148598, 35.512783, 37.798344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788868, 35.338219, 37.809425>,  <38.573032, 35.233479, 37.816074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788868, 35.338219, 37.809425>,  <39.148598, 35.512783, 37.798344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788868, 35.338219, 37.809425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091886, 0.250533, 0.963738,
		-0.427527, 0.864164, -0.265409,
		-0.899321, -0.436411, 0.027705,
		38.519073, 35.207294, 37.817738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862309, 35.454147, 38.453167>,  <39.148598, 35.512783, 37.798344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862309, 35.454147, 38.453167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518532, 35.332340, 38.288906>,  <38.312267, 35.259254, 38.190350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518532, 35.332340, 38.288906>,  <38.862309, 35.454147, 38.453167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518532, 35.332340, 38.288906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428499, -0.009047, 0.903497,
		-0.278847, 0.952463, -0.122711,
		-0.859437, -0.304519, -0.410652,
		38.260700, 35.240986, 38.165710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295536, 35.887440, 38.735592>,  <38.862309, 35.454147, 38.453167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295536, 35.887440, 38.735592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136650, 35.547726, 38.596493>,  <38.041317, 35.343895, 38.513031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136650, 35.547726, 38.596493>,  <38.295536, 35.887440, 38.735592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136650, 35.547726, 38.596493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455107, -0.146757, 0.878259,
		-0.796930, 0.507121, -0.328223,
		-0.397215, -0.849288, -0.347750,
		38.017487, 35.292938, 38.492168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598454, 35.833405, 38.987919>,  <38.295536, 35.887440, 38.735592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598454, 35.833405, 38.987919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671890, 35.450611, 38.898056>,  <37.715954, 35.220936, 38.844139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671890, 35.450611, 38.898056>,  <37.598454, 35.833405, 38.987919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671890, 35.450611, 38.898056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491247, -0.287280, 0.822282,
		-0.851453, -0.040599, -0.522858,
		0.183591, -0.956986, -0.224661,
		37.726967, 35.163517, 38.830658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043724, 35.465916, 38.785912>,  <37.598454, 35.833405, 38.987919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043724, 35.465916, 38.785912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290928, 35.210678, 38.969608>,  <37.439251, 35.057537, 39.079826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290928, 35.210678, 38.969608>,  <37.043724, 35.465916, 38.785912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290928, 35.210678, 38.969608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628550, -0.050163, 0.776150,
		-0.472220, -0.768323, -0.432075,
		0.618008, -0.638094, 0.459241,
		37.476330, 35.019249, 39.107380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628876, 34.982513, 39.183609>,  <37.043724, 35.465916, 38.785912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628876, 34.982513, 39.183609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990540, 34.971268, 39.354118>,  <37.207539, 34.964520, 39.456425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990540, 34.971268, 39.354118>,  <36.628876, 34.982513, 39.183609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990540, 34.971268, 39.354118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425294, -0.153301, 0.891977,
		0.040275, -0.987780, -0.150563,
		0.904159, -0.028110, 0.426271,
		37.261787, 34.962833, 39.481998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835175, 34.423927, 39.561699>,  <36.628876, 34.982513, 39.183609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835175, 34.423927, 39.561699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230728, 34.385883, 39.607430>,  <37.468060, 34.363056, 39.634869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230728, 34.385883, 39.607430>,  <36.835175, 34.423927, 39.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230728, 34.385883, 39.607430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084425, 0.273811, 0.958071,
		-0.122428, -0.957069, 0.262737,
		0.988880, -0.095113, 0.114323,
		37.527393, 34.357349, 39.641727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092743, 33.902031, 40.032146>,  <36.835175, 34.423927, 39.561699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092743, 33.902031, 40.032146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338673, 34.217499, 40.032482>,  <37.486229, 34.406780, 40.032684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338673, 34.217499, 40.032482>,  <37.092743, 33.902031, 40.032146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338673, 34.217499, 40.032482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227173, 0.176084, 0.957803,
		0.755241, -0.589067, 0.287423,
		0.614820, 0.788667, 0.000834,
		37.523117, 34.454098, 40.032734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529716, 33.851349, 40.635876>,  <37.092743, 33.902031, 40.032146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529716, 33.851349, 40.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468475, 34.237484, 40.551327>,  <37.431732, 34.469166, 40.500599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468475, 34.237484, 40.551327>,  <37.529716, 33.851349, 40.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468475, 34.237484, 40.551327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162589, 0.186369, 0.968933,
		0.974744, 0.182708, 0.128421,
		-0.153098, 0.965341, -0.211368,
		37.422546, 34.527088, 40.487915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862522, 34.301216, 41.105915>,  <37.529716, 33.851349, 40.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862522, 34.301216, 41.105915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583572, 34.543694, 40.952976>,  <37.416203, 34.689182, 40.861214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583572, 34.543694, 40.952976>,  <37.862522, 34.301216, 41.105915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583572, 34.543694, 40.952976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369566, 0.152925, 0.916534,
		0.614071, 0.780473, 0.117384,
		-0.697379, 0.606198, -0.382343,
		37.374359, 34.725552, 40.838272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845840, 34.797173, 41.542404>,  <37.862522, 34.301216, 41.105915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845840, 34.797173, 41.542404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489742, 34.852383, 41.368774>,  <37.276085, 34.885509, 41.264595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489742, 34.852383, 41.368774>,  <37.845840, 34.797173, 41.542404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489742, 34.852383, 41.368774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318648, 0.492250, 0.810033,
		0.325475, 0.859442, -0.394242,
		-0.890241, 0.138021, -0.434074,
		37.222672, 34.893787, 41.238552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561584, 35.377148, 41.840290>,  <37.845840, 34.797173, 41.542404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561584, 35.377148, 41.840290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230705, 35.297413, 41.630142>,  <37.032177, 35.249573, 41.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230705, 35.297413, 41.630142>,  <37.561584, 35.377148, 41.840290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230705, 35.297413, 41.630142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548193, 0.491631, 0.676597,
		0.123413, 0.847681, -0.515952,
		-0.827196, -0.199341, -0.525366,
		36.982548, 35.237610, 41.472534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100300, 35.976093, 41.720097>,  <37.561584, 35.377148, 41.840290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100300, 35.976093, 41.720097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894905, 35.633469, 41.740627>,  <36.771667, 35.427895, 41.752945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894905, 35.633469, 41.740627>,  <37.100300, 35.976093, 41.720097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894905, 35.633469, 41.740627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351004, 0.264244, 0.898316,
		-0.783026, 0.443257, -0.436342,
		-0.513485, -0.856562, 0.051325,
		36.740860, 35.376499, 41.756023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460438, 36.121490, 42.141136>,  <37.100300, 35.976093, 41.720097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460438, 36.121490, 42.141136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433357, 35.722618, 42.128239>,  <36.417107, 35.483295, 42.120499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433357, 35.722618, 42.128239>,  <36.460438, 36.121490, 42.141136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433357, 35.722618, 42.128239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480597, 0.004273, 0.876931,
		-0.874324, 0.074868, -0.479533,
		-0.067703, -0.997184, -0.032246,
		36.413048, 35.423462, 42.118565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783203, 35.961040, 42.162273>,  <36.460438, 36.121490, 42.141136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783203, 35.961040, 42.162273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959599, 35.634468, 42.311394>,  <36.065434, 35.438526, 42.400864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959599, 35.634468, 42.311394>,  <35.783203, 35.961040, 42.162273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959599, 35.634468, 42.311394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592766, 0.046949, 0.804005,
		-0.673915, -0.575535, -0.463247,
		0.440985, -0.816428, 0.372797,
		36.091892, 35.389538, 42.423233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279076, 35.527935, 42.523502>,  <35.783203, 35.961040, 42.162273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279076, 35.527935, 42.523502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643574, 35.458935, 42.673100>,  <35.862274, 35.417534, 42.762859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643574, 35.458935, 42.673100>,  <35.279076, 35.527935, 42.523502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643574, 35.458935, 42.673100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389022, -0.062315, 0.919119,
		-0.135250, -0.983035, -0.123893,
		0.911246, -0.172508, 0.373994,
		35.916946, 35.407185, 42.785297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384083, 34.923199, 42.862854>,  <35.279076, 35.527935, 42.523502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384083, 34.923199, 42.862854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624374, 35.197884, 43.026588>,  <35.768551, 35.362694, 43.124828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624374, 35.197884, 43.026588>,  <35.384083, 34.923199, 42.862854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624374, 35.197884, 43.026588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597543, 0.045540, 0.800543,
		0.531099, -0.725505, 0.437695,
		0.600730, 0.686709, 0.409334,
		35.804592, 35.403896, 43.149387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568790, 34.737679, 43.625336>,  <35.384083, 34.923199, 42.862854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568790, 34.737679, 43.625336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598095, 35.131653, 43.562691>,  <35.615677, 35.368038, 43.525105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598095, 35.131653, 43.562691>,  <35.568790, 34.737679, 43.625336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598095, 35.131653, 43.562691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703470, 0.162347, 0.691934,
		0.706939, 0.059482, 0.704769,
		0.073259, 0.984939, -0.156614,
		35.620071, 35.427135, 43.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737640, 35.270607, 44.261932>,  <35.568790, 34.737679, 43.625336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737640, 35.270607, 44.261932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515095, 35.428402, 43.969402>,  <35.381569, 35.523079, 43.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515095, 35.428402, 43.969402>,  <35.737640, 35.270607, 44.261932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515095, 35.428402, 43.969402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758354, 0.118686, 0.640947,
		0.339646, 0.911202, 0.233132,
		-0.556363, 0.394491, -0.731326,
		35.348186, 35.546749, 43.750004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138584, 35.756912, 43.967239>,  <35.737640, 35.270607, 44.261932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138584, 35.756912, 43.967239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 35.360500, 43.950489>,  <36.057381, 35.122654, 43.940437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 35.360500, 43.950489>,  <36.138584, 35.756912, 43.967239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087833, 35.360500, 43.950489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427597, -0.016550, -0.903818,
		0.895021, -0.132585, 0.425862,
		-0.126880, -0.991034, -0.041880,
		36.049770, 35.063190, 43.937923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682846, 35.601898, 43.425262>,  <36.138584, 35.756912, 43.967239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682846, 35.601898, 43.425262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439632, 35.285480, 43.452217>,  <36.293705, 35.095631, 43.468391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439632, 35.285480, 43.452217>,  <36.682846, 35.601898, 43.425262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439632, 35.285480, 43.452217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240187, -0.264191, -0.934084,
		0.756710, -0.551765, 0.350635,
		-0.608030, -0.791049, 0.067389,
		36.257225, 35.048164, 43.472435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929272, 34.912861, 43.391262>,  <36.682846, 35.601898, 43.425262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929272, 34.912861, 43.391262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594902, 35.011913, 43.195339>,  <36.394279, 35.071346, 43.077785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594902, 35.011913, 43.195339>,  <36.929272, 34.912861, 43.391262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594902, 35.011913, 43.195339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420693, -0.284056, -0.861585,
		-0.352489, -0.926278, 0.133271,
		-0.835924, 0.247633, -0.489805,
		36.344124, 35.086205, 43.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816624, 34.380409, 42.876293>,  <36.929272, 34.912861, 43.391262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816624, 34.380409, 42.876293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601658, 34.686867, 42.735317>,  <36.472679, 34.870739, 42.650730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601658, 34.686867, 42.735317>,  <36.816624, 34.380409, 42.876293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601658, 34.686867, 42.735317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262504, -0.245187, -0.933260,
		-0.801424, -0.594062, -0.069349,
		-0.537411, 0.766142, -0.352443,
		36.440434, 34.916710, 42.629585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427265, 34.155941, 42.307102>,  <36.816624, 34.380409, 42.876293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427265, 34.155941, 42.307102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425400, 34.547310, 42.224480>,  <36.424282, 34.782131, 42.174908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425400, 34.547310, 42.224480>,  <36.427265, 34.155941, 42.307102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425400, 34.547310, 42.224480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322675, -0.194038, -0.926407,
		-0.946498, -0.070972, -0.314808,
		-0.004664, 0.978423, -0.206557,
		36.424000, 34.840836, 42.162514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024899, 34.279285, 41.665878>,  <36.427265, 34.155941, 42.307102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024899, 34.279285, 41.665878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260231, 34.596489, 41.729122>,  <36.401428, 34.786812, 41.767071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260231, 34.596489, 41.729122>,  <36.024899, 34.279285, 41.665878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260231, 34.596489, 41.729122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398438, -0.114146, -0.910064,
		-0.703645, 0.598416, -0.383122,
		0.588329, 0.793013, 0.158114,
		36.436729, 34.834393, 41.776558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100399, 34.518982, 40.965645>,  <36.024899, 34.279285, 41.665878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100399, 34.518982, 40.965645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365658, 34.715012, 41.191944>,  <36.524811, 34.832630, 41.327724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365658, 34.715012, 41.191944>,  <36.100399, 34.518982, 40.965645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365658, 34.715012, 41.191944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719137, -0.207562, -0.663144,
		-0.207562, 0.846608, -0.490074,
		0.663144, 0.490074, 0.565746,
		36.564602, 34.862034, 41.361668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102287, 35.215660, 40.587868>,  <36.100399, 34.518982, 40.965645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102287, 35.215660, 40.587868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443756, 35.123379, 40.774639>,  <36.648636, 35.068012, 40.886703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443756, 35.123379, 40.774639>,  <36.102287, 35.215660, 40.587868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443756, 35.123379, 40.774639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502151, 0.126751, -0.855440,
		0.138167, 0.964734, 0.224051,
		0.853671, -0.230701, 0.466930,
		36.699856, 35.054169, 40.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613609, 35.634808, 40.348560>,  <36.102287, 35.215660, 40.587868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613609, 35.634808, 40.348560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848362, 35.357349, 40.515621>,  <36.989212, 35.190876, 40.615856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848362, 35.357349, 40.515621>,  <36.613609, 35.634808, 40.348560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848362, 35.357349, 40.515621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605592, 0.033662, -0.795063,
		0.537430, 0.719533, 0.439820,
		0.586879, -0.693642, 0.417653,
		37.024426, 35.149258, 40.640919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956676, 35.872360, 39.750275>,  <36.613609, 35.634808, 40.348560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956676, 35.872360, 39.750275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570190, 35.865082, 39.853107>,  <36.338299, 35.860714, 39.914806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570190, 35.865082, 39.853107>,  <36.956676, 35.872360, 39.750275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570190, 35.865082, 39.853107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237168, -0.327612, -0.914561,
		0.100869, -0.944637, 0.312228,
		-0.966218, -0.018200, 0.257083,
		36.280327, 35.859623, 39.930233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411068, 35.788208, 40.350277>,  <36.956676, 35.872360, 39.750275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411068, 35.788208, 40.350277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379208, 35.391472, 40.390095>,  <37.360092, 35.153431, 40.413986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379208, 35.391472, 40.390095>,  <37.411068, 35.788208, 40.350277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379208, 35.391472, 40.390095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602065, -0.127457, -0.788208,
		0.794465, -0.002847, 0.607304,
		-0.079650, -0.991840, 0.099546,
		37.355312, 35.093922, 40.419960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093086, 35.466724, 40.135185>,  <37.411068, 35.788208, 40.350277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093086, 35.466724, 40.135185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786716, 35.216099, 40.077518>,  <37.602894, 35.065723, 40.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786716, 35.216099, 40.077518>,  <38.093086, 35.466724, 40.135185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786716, 35.216099, 40.077518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390358, -0.275012, -0.878629,
		0.510867, -0.729238, 0.455221,
		-0.765921, -0.626562, -0.144169,
		37.556942, 35.028130, 40.034267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434994, 34.991028, 40.068268>,  <38.093086, 35.466724, 40.135185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434994, 34.991028, 40.068268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069386, 34.973072, 39.906998>,  <37.850021, 34.962299, 39.810234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069386, 34.973072, 39.906998>,  <38.434994, 34.991028, 40.068268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069386, 34.973072, 39.906998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396638, -0.307454, -0.864957,
		-0.085129, -0.950503, 0.298825,
		-0.914019, -0.044893, -0.403179,
		37.795181, 34.959606, 39.786045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434692, 34.371685, 39.752701>,  <38.434994, 34.991028, 40.068268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434692, 34.371685, 39.752701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143879, 34.566311, 39.558926>,  <37.969391, 34.683086, 39.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143879, 34.566311, 39.558926>,  <38.434692, 34.371685, 39.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143879, 34.566311, 39.558926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436613, -0.216897, -0.873112,
		-0.529901, -0.846290, -0.054751,
		-0.727031, 0.486568, -0.484435,
		37.925770, 34.712280, 39.413593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147484, 33.929291, 39.158863>,  <38.434692, 34.371685, 39.752701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147484, 33.929291, 39.158863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123524, 34.321461, 39.083832>,  <38.109150, 34.556763, 39.038815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123524, 34.321461, 39.083832>,  <38.147484, 33.929291, 39.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123524, 34.321461, 39.083832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262556, -0.165823, -0.950561,
		-0.963056, -0.106185, -0.247483,
		-0.059897, 0.980422, -0.187577,
		38.105553, 34.615589, 39.027557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927094, 33.980850, 38.487862>,  <38.147484, 33.929291, 39.158863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927094, 33.980850, 38.487862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825924, 34.355911, 38.583229>,  <37.765224, 34.580948, 38.640450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825924, 34.355911, 38.583229>,  <37.927094, 33.980850, 38.487862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825924, 34.355911, 38.583229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308212, 0.311678, -0.898812,
		-0.917081, -0.153845, -0.367825,
		-0.252921, 0.937651, 0.238416,
		37.750046, 34.637207, 38.654755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522053, 34.265423, 37.864559>,  <37.927094, 33.980850, 38.487862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522053, 34.265423, 37.864559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665009, 34.561726, 38.092083>,  <37.750782, 34.739510, 38.228596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665009, 34.561726, 38.092083>,  <37.522053, 34.265423, 37.864559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665009, 34.561726, 38.092083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259541, 0.506271, -0.822391,
		-0.897167, 0.441546, -0.011321,
		0.357392, 0.740761, 0.568810,
		37.772224, 34.783955, 38.262726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192131, 34.905769, 37.555138>,  <37.522053, 34.265423, 37.864559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192131, 34.905769, 37.555138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552593, 34.984264, 37.709747>,  <37.768871, 35.031361, 37.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552593, 34.984264, 37.709747>,  <37.192131, 34.905769, 37.555138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552593, 34.984264, 37.709747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258932, 0.471445, -0.843027,
		-0.347657, 0.859786, 0.374036,
		0.901160, 0.196234, 0.386527,
		37.822941, 35.043133, 37.825706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402431, 35.669170, 37.387615>,  <37.192131, 34.905769, 37.555138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402431, 35.669170, 37.387615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730923, 35.454594, 37.465389>,  <37.928017, 35.325848, 37.512054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730923, 35.454594, 37.465389>,  <37.402431, 35.669170, 37.387615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730923, 35.454594, 37.465389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455706, 0.411564, -0.789270,
		0.343379, 0.736779, 0.582451,
		0.821233, -0.536445, 0.194432,
		37.977291, 35.293659, 37.523720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802883, 35.886162, 36.749081>,  <37.402431, 35.669170, 37.387615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802883, 35.886162, 36.749081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055504, 35.666706, 36.968220>,  <38.207077, 35.535034, 37.099705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055504, 35.666706, 36.968220>,  <37.802883, 35.886162, 36.749081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055504, 35.666706, 36.968220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687381, 0.069323, -0.722981,
		0.358676, 0.833181, 0.420904,
		0.631553, -0.548638, 0.547848,
		38.244968, 35.502113, 37.132576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507790, 36.175968, 36.633678>,  <37.802883, 35.886162, 36.749081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507790, 36.175968, 36.633678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552555, 35.808590, 36.785431>,  <38.579414, 35.588161, 36.876480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552555, 35.808590, 36.785431>,  <38.507790, 36.175968, 36.633678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552555, 35.808590, 36.785431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763382, -0.164954, -0.624531,
		0.636179, 0.359504, 0.682666,
		0.111913, -0.918448, 0.379378,
		38.586128, 35.533054, 36.899246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202957, 36.116753, 36.842571>,  <38.507790, 36.175968, 36.633678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202957, 36.116753, 36.842571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079075, 35.740158, 36.789368>,  <39.004745, 35.514202, 36.757446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079075, 35.740158, 36.789368>,  <39.202957, 36.116753, 36.842571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079075, 35.740158, 36.789368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753043, -0.157466, -0.638851,
		0.580523, -0.298019, 0.757746,
		-0.309709, -0.941483, -0.133008,
		38.986160, 35.457714, 36.749466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776093, 35.611103, 36.895306>,  <39.202957, 36.116753, 36.842571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776093, 35.611103, 36.895306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501251, 35.452328, 36.651886>,  <39.336346, 35.357063, 36.505833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501251, 35.452328, 36.651886>,  <39.776093, 35.611103, 36.895306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501251, 35.452328, 36.651886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681913, -0.063220, -0.728696,
		0.250773, -0.915667, 0.314114,
		-0.687101, -0.396935, -0.608551,
		39.295120, 35.333248, 36.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887726, 34.896908, 36.740471>,  <39.776093, 35.611103, 36.895306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887726, 34.896908, 36.740471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744598, 35.113728, 36.436329>,  <39.658722, 35.243820, 36.253845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744598, 35.113728, 36.436329>,  <39.887726, 34.896908, 36.740471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744598, 35.113728, 36.436329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801826, -0.238966, -0.547696,
		-0.478579, -0.805651, -0.349124,
		-0.357823, 0.542053, -0.760356,
		39.637253, 35.276344, 36.208221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179672, 34.404556, 36.329941>,  <39.887726, 34.896908, 36.740471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179672, 34.404556, 36.329941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086288, 34.730438, 36.117619>,  <40.030258, 34.925968, 35.990223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086288, 34.730438, 36.117619>,  <40.179672, 34.404556, 36.329941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086288, 34.730438, 36.117619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600307, -0.308681, -0.737799,
		-0.764936, -0.490896, -0.417006,
		-0.233461, 0.814701, -0.530809,
		40.016251, 34.974850, 35.958374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023251, 34.263924, 35.591637>,  <40.179672, 34.404556, 36.329941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023251, 34.263924, 35.591637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144939, 34.643650, 35.623268>,  <40.217953, 34.871487, 35.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144939, 34.643650, 35.623268>,  <40.023251, 34.263924, 35.591637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144939, 34.643650, 35.623268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777930, -0.199669, -0.595782,
		-0.549796, 0.242764, -0.799244,
		0.304219, 0.949314, 0.079076,
		40.236206, 34.928444, 35.646992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158157, 34.575142, 34.911098>,  <40.023251, 34.263924, 35.591637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158157, 34.575142, 34.911098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392391, 34.749374, 35.184551>,  <40.532932, 34.853916, 35.348625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392391, 34.749374, 35.184551>,  <40.158157, 34.575142, 34.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392391, 34.749374, 35.184551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808997, -0.260831, -0.526774,
		-0.051142, 0.861529, -0.505126,
		0.585583, 0.435586, 0.683635,
		40.568066, 34.880051, 35.389641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610695, 35.109585, 34.662220>,  <40.158157, 34.575142, 34.911098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610695, 35.109585, 34.662220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787022, 34.937828, 34.977512>,  <40.892818, 34.834774, 35.166687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787022, 34.937828, 34.977512>,  <40.610695, 35.109585, 34.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787022, 34.937828, 34.977512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769890, -0.270594, -0.577969,
		0.461464, 0.861628, 0.211300,
		0.440818, -0.429389, 0.788228,
		40.919266, 34.809010, 35.213982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243851, 35.393101, 34.719620>,  <40.610695, 35.109585, 34.662220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243851, 35.393101, 34.719620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246475, 35.035450, 34.898727>,  <41.248051, 34.820862, 35.006191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246475, 35.035450, 34.898727>,  <41.243851, 35.393101, 34.719620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246475, 35.035450, 34.898727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843234, -0.235742, -0.483097,
		0.537507, 0.380744, 0.752410,
		0.006562, -0.894125, 0.447769,
		41.248444, 34.767212, 35.033058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958733, 35.170776, 35.083553>,  <41.243851, 35.393101, 34.719620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958733, 35.170776, 35.083553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730198, 34.855137, 34.993305>,  <41.593079, 34.665752, 34.939156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730198, 34.855137, 34.993305>,  <41.958733, 35.170776, 35.083553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730198, 34.855137, 34.993305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771102, -0.421980, -0.476796,
		0.281031, -0.446386, 0.849565,
		-0.571334, -0.789096, -0.225619,
		41.558796, 34.618408, 34.925621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185986, 34.522907, 35.429169>,  <41.958733, 35.170776, 35.083553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185986, 34.522907, 35.429169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996006, 34.486240, 35.079079>,  <41.882019, 34.464241, 34.869026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996006, 34.486240, 35.079079>,  <42.185986, 34.522907, 35.429169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996006, 34.486240, 35.079079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857880, -0.269882, -0.437272,
		-0.196124, -0.958521, 0.206820,
		-0.474951, -0.091668, -0.875225,
		41.853519, 34.458740, 34.816513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332413, 33.837879, 35.070023>,  <42.185986, 34.522907, 35.429169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332413, 33.837879, 35.070023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260502, 34.118275, 34.793964>,  <42.217354, 34.286510, 34.628330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260502, 34.118275, 34.793964>,  <42.332413, 33.837879, 35.070023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260502, 34.118275, 34.793964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828060, -0.270891, -0.490852,
		-0.531033, -0.659726, -0.531756,
		-0.179780, 0.700985, -0.690145,
		42.206570, 34.328571, 34.586922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076443, 33.569862, 34.446106>,  <42.332413, 33.837879, 35.070023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076443, 33.569862, 34.446106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322147, 33.885452, 34.451702>,  <42.469570, 34.074806, 34.455059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322147, 33.885452, 34.451702>,  <42.076443, 33.569862, 34.446106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322147, 33.885452, 34.451702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732184, -0.563255, -0.382951,
		-0.294261, 0.245474, -0.923663,
		0.614262, 0.788978, 0.013988,
		42.506428, 34.122147, 34.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395927, 33.515152, 33.791374>,  <42.076443, 33.569862, 34.446106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395927, 33.515152, 33.791374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604923, 33.710003, 34.071293>,  <42.730320, 33.826912, 34.239243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604923, 33.710003, 34.071293>,  <42.395927, 33.515152, 33.791374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604923, 33.710003, 34.071293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821630, -0.506994, -0.260540,
		0.227874, 0.711101, -0.665139,
		0.522491, 0.487128, 0.699793,
		42.761669, 33.856140, 34.281231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912373, 33.898281, 33.417057>,  <42.395927, 33.515152, 33.791374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912373, 33.898281, 33.417057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003548, 33.814713, 33.797455>,  <43.058254, 33.764572, 34.025696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003548, 33.814713, 33.797455>,  <42.912373, 33.898281, 33.417057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003548, 33.814713, 33.797455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802812, -0.512333, -0.304971,
		0.550941, 0.832988, 0.050941,
		0.227939, -0.208917, 0.950998,
		43.071930, 33.752037, 34.082756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543877, 34.251781, 33.696217>,  <42.912373, 33.898281, 33.417057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543877, 34.251781, 33.696217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458279, 33.896194, 33.858173>,  <43.406918, 33.682842, 33.955349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458279, 33.896194, 33.858173>,  <43.543877, 34.251781, 33.696217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458279, 33.896194, 33.858173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828934, -0.384550, -0.406189,
		0.516792, 0.248708, 0.819189,
		-0.213997, -0.888969, 0.404895,
		43.394081, 33.629505, 33.979641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168064, 34.300392, 33.987926>,  <43.543877, 34.251781, 33.696217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168064, 34.300392, 33.987926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491825, 34.333370, 34.220501>,  <44.686081, 34.353157, 34.360046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491825, 34.333370, 34.220501>,  <44.168064, 34.300392, 33.987926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491825, 34.333370, 34.220501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040785, -0.995598, 0.084390,
		0.585835, -0.044592, -0.809203,
		0.809404, 0.082442, 0.581437,
		44.734646, 34.358105, 34.394932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861530, 33.959885, 33.800533>,  <44.168064, 34.300392, 33.987926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861530, 33.959885, 33.800533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894745, 33.972149, 34.198963>,  <44.914673, 33.979507, 34.438023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894745, 33.972149, 34.198963>,  <44.861530, 33.959885, 33.800533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894745, 33.972149, 34.198963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287029, -0.957906, 0.005562,
		0.954316, 0.285440, -0.088343,
		0.083036, 0.030665, 0.996075,
		44.919655, 33.981350, 34.497787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586330, 33.805393, 34.012444>,  <44.861530, 33.959885, 33.800533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586330, 33.805393, 34.012444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305527, 33.702835, 34.278206>,  <45.137043, 33.641300, 34.437664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305527, 33.702835, 34.278206>,  <45.586330, 33.805393, 34.012444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305527, 33.702835, 34.278206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187184, -0.966571, -0.175220,
		0.687124, 0.001360, 0.726539,
		-0.702014, -0.256394, 0.664409,
		45.094921, 33.625916, 34.477528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910091, 33.320873, 34.514050>,  <45.586330, 33.805393, 34.012444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910091, 33.320873, 34.514050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523708, 33.219749, 34.492062>,  <45.291878, 33.159077, 34.478867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523708, 33.219749, 34.492062>,  <45.910091, 33.320873, 34.514050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523708, 33.219749, 34.492062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258613, -0.937552, -0.232628,
		0.007270, -0.238925, 0.971011,
		-0.965953, -0.252808, -0.054973,
		45.233921, 33.143906, 34.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495544, 33.563358, 34.796043>,  <45.910091, 33.320873, 34.514050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495544, 33.563358, 34.796043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481709, 33.948120, 34.687569>,  <46.473408, 34.178978, 34.622482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481709, 33.948120, 34.687569>,  <46.495544, 33.563358, 34.796043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481709, 33.948120, 34.687569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769235, 0.198855, 0.607235,
		0.638030, -0.187606, -0.746808,
		-0.034585, 0.961905, -0.271189,
		46.471333, 34.236691, 34.606213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.194683, 33.749866, 34.816795>,  <46.495544, 33.563358, 34.796043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.194683, 33.749866, 34.816795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981552, 34.084438, 34.868145>,  <46.853672, 34.285183, 34.898956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.981552, 34.084438, 34.868145>,  <47.194683, 33.749866, 34.816795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.981552, 34.084438, 34.868145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761229, 0.407499, 0.504455,
		0.369627, 0.366513, -0.853841,
		-0.532828, 0.836429, 0.128378,
		46.821705, 34.335365, 34.906658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702412, 34.321617, 34.688545>,  <47.194683, 33.749866, 34.816795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702412, 34.321617, 34.688545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380150, 34.407597, 34.909351>,  <47.186794, 34.459183, 35.041836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380150, 34.407597, 34.909351>,  <47.702412, 34.321617, 34.688545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380150, 34.407597, 34.909351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579051, 0.482354, 0.657293,
		-0.124980, 0.849194, -0.513078,
		-0.805655, 0.214950, 0.552012,
		47.138454, 34.472080, 35.074955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610313, 35.110947, 34.672798>,  <47.702412, 34.321617, 34.688545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610313, 35.110947, 34.672798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501717, 34.916878, 35.005280>,  <47.436558, 34.800438, 35.204769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.501717, 34.916878, 35.005280>,  <47.610313, 35.110947, 34.672798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501717, 34.916878, 35.005280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628390, 0.564795, 0.534913,
		-0.728985, 0.667545, 0.151540,
		-0.271489, -0.485170, 0.831206,
		47.420269, 34.771328, 35.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.935024, 36.159519, 26.754339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728497, 36.491871, 26.671341>,  <35.604580, 36.691280, 26.621542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728497, 36.491871, 26.671341>,  <35.935024, 36.159519, 26.754339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728497, 36.491871, 26.671341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297357, 0.053281, 0.953279,
		0.803113, 0.553900, 0.219557,
		-0.516323, 0.830876, -0.207497,
		35.573601, 36.741135, 26.609093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205563, 36.563835, 27.289171>,  <35.935024, 36.159519, 26.754339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205563, 36.563835, 27.289171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855087, 36.697845, 27.150576>,  <35.644802, 36.778252, 27.067419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855087, 36.697845, 27.150576>,  <36.205563, 36.563835, 27.289171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855087, 36.697845, 27.150576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405260, -0.122974, 0.905893,
		0.260892, 0.934148, 0.243523,
		-0.876185, 0.335030, -0.346490,
		35.592232, 36.798355, 27.046629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934246, 36.986664, 27.763384>,  <36.205563, 36.563835, 27.289171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934246, 36.986664, 27.763384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586517, 36.874641, 27.600489>,  <35.377880, 36.807426, 27.502750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.586517, 36.874641, 27.600489>,  <35.934246, 36.986664, 27.763384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586517, 36.874641, 27.600489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392564, -0.109356, 0.913201,
		-0.300283, 0.953734, -0.014875,
		-0.869324, -0.280058, -0.407239,
		35.325722, 36.790623, 27.478317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461819, 37.448689, 27.985365>,  <35.934246, 36.986664, 27.763384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461819, 37.448689, 27.985365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250729, 37.126312, 27.878061>,  <35.124073, 36.932884, 27.813679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250729, 37.126312, 27.878061>,  <35.461819, 37.448689, 27.985365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250729, 37.126312, 27.878061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453436, 0.000243, 0.891289,
		-0.718262, 0.591994, -0.365572,
		-0.527726, -0.805942, -0.268257,
		35.092411, 36.884529, 27.797585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797714, 37.560310, 28.120224>,  <35.461819, 37.448689, 27.985365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797714, 37.560310, 28.120224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828262, 37.163006, 28.085369>,  <34.846592, 36.924622, 28.064455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828262, 37.163006, 28.085369>,  <34.797714, 37.560310, 28.120224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828262, 37.163006, 28.085369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443923, -0.112125, 0.889022,
		-0.892804, -0.029211, -0.449496,
		0.076369, -0.993265, -0.087138,
		34.851173, 36.865025, 28.059227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243603, 37.299858, 28.378082>,  <34.797714, 37.560310, 28.120224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243603, 37.299858, 28.378082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487774, 36.983444, 28.394306>,  <34.634277, 36.793594, 28.404039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487774, 36.983444, 28.394306>,  <34.243603, 37.299858, 28.378082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487774, 36.983444, 28.394306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307917, -0.189814, 0.932287,
		-0.729772, -0.581581, -0.359440,
		0.610427, -0.791034, 0.040558,
		34.670902, 36.746136, 28.406473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840328, 36.847885, 28.735001>,  <34.243603, 37.299858, 28.378082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840328, 36.847885, 28.735001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210205, 36.699966, 28.771200>,  <34.432133, 36.611214, 28.792921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210205, 36.699966, 28.771200>,  <33.840328, 36.847885, 28.735001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210205, 36.699966, 28.771200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195729, -0.257878, 0.946144,
		-0.326552, -0.892604, -0.310839,
		0.924691, -0.369806, 0.090498,
		34.487614, 36.589027, 28.798349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753571, 36.187180, 28.953438>,  <33.840328, 36.847885, 28.735001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753571, 36.187180, 28.953438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115101, 36.306564, 29.076092>,  <34.332020, 36.378197, 29.149685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115101, 36.306564, 29.076092>,  <33.753571, 36.187180, 28.953438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115101, 36.306564, 29.076092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133650, -0.483841, 0.864891,
		0.406502, -0.822689, -0.397416,
		0.903822, 0.298465, 0.306635,
		34.386246, 36.396103, 29.168081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905941, 35.588821, 29.347082>,  <33.753571, 36.187180, 28.953438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905941, 35.588821, 29.347082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151474, 35.887272, 29.450235>,  <34.298794, 36.066341, 29.512127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151474, 35.887272, 29.450235>,  <33.905941, 35.588821, 29.347082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151474, 35.887272, 29.450235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013061, -0.336224, 0.941691,
		0.789327, -0.574674, -0.216131,
		0.613834, 0.746126, 0.257885,
		34.335625, 36.111111, 29.527601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433075, 35.234695, 29.873646>,  <33.905941, 35.588821, 29.347082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433075, 35.234695, 29.873646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.422348, 35.629009, 29.939999>,  <34.415913, 35.865597, 29.979811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.422348, 35.629009, 29.939999>,  <34.433075, 35.234695, 29.873646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422348, 35.629009, 29.939999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016895, -0.166366, 0.985919,
		0.999498, 0.023634, 0.021116,
		-0.026814, 0.985781, 0.165883,
		34.414303, 35.924744, 29.989763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903114, 35.265785, 30.374498>,  <34.433075, 35.234695, 29.873646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903114, 35.265785, 30.374498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704842, 35.613068, 30.365444>,  <34.585876, 35.821438, 30.360012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704842, 35.613068, 30.365444>,  <34.903114, 35.265785, 30.374498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704842, 35.613068, 30.365444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008482, 0.021224, 0.999739,
		0.868462, 0.495746, -0.003156,
		-0.495684, 0.868208, -0.022637,
		34.556137, 35.873531, 30.358652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324322, 35.796368, 30.779926>,  <34.903114, 35.265785, 30.374498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324322, 35.796368, 30.779926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935081, 35.884804, 30.754021>,  <34.701538, 35.937866, 30.738478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935081, 35.884804, 30.754021>,  <35.324322, 35.796368, 30.779926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935081, 35.884804, 30.754021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088884, -0.100939, 0.990914,
		0.212541, 0.970016, 0.117875,
		-0.973101, 0.221087, -0.064765,
		34.643150, 35.951130, 30.734591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180573, 36.217045, 31.344799>,  <35.324322, 35.796368, 30.779926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180573, 36.217045, 31.344799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.809807, 36.100967, 31.249617>,  <34.587349, 36.031322, 31.192507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.809807, 36.100967, 31.249617>,  <35.180573, 36.217045, 31.344799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809807, 36.100967, 31.249617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197066, -0.163237, 0.966705,
		-0.319370, 0.942944, 0.094120,
		-0.926913, -0.290189, -0.237956,
		34.531734, 36.013912, 31.178230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783863, 36.505516, 31.893452>,  <35.180573, 36.217045, 31.344799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783863, 36.505516, 31.893452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563999, 36.219406, 31.720825>,  <34.432079, 36.047741, 31.617249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563999, 36.219406, 31.720825>,  <34.783863, 36.505516, 31.893452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563999, 36.219406, 31.720825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332572, -0.286545, 0.898492,
		-0.766334, 0.637394, -0.080378,
		-0.549662, -0.715277, -0.431568,
		34.399101, 36.004822, 31.591354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199146, 36.527023, 32.224434>,  <34.783863, 36.505516, 31.893452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199146, 36.527023, 32.224434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205631, 36.155540, 32.076244>,  <34.209522, 35.932652, 31.987331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205631, 36.155540, 32.076244>,  <34.199146, 36.527023, 32.224434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205631, 36.155540, 32.076244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466842, -0.334683, 0.818563,
		-0.884192, 0.159679, -0.438984,
		0.016213, -0.928703, -0.370469,
		34.210495, 35.876930, 31.965103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512035, 36.265198, 32.343235>,  <34.199146, 36.527023, 32.224434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512035, 36.265198, 32.343235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722836, 35.928169, 32.298786>,  <33.849316, 35.725952, 32.272118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722836, 35.928169, 32.298786>,  <33.512035, 36.265198, 32.343235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722836, 35.928169, 32.298786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534887, -0.430444, 0.727058,
		-0.660428, -0.323723, -0.677523,
		0.527001, -0.842568, -0.111122,
		33.880936, 35.675400, 32.265450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010502, 35.756588, 32.520443>,  <33.512035, 36.265198, 32.343235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010502, 35.756588, 32.520443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.372406, 35.590481, 32.558311>,  <33.589546, 35.490814, 32.581032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.372406, 35.590481, 32.558311>,  <33.010502, 35.756588, 32.520443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372406, 35.590481, 32.558311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301858, -0.468367, 0.830370,
		-0.300487, -0.779862, -0.549112,
		0.904759, -0.415269, 0.094670,
		33.643833, 35.465900, 32.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938225, 35.043480, 32.731358>,  <33.010502, 35.756588, 32.520443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938225, 35.043480, 32.731358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299458, 35.162170, 32.855549>,  <33.516197, 35.233387, 32.930061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299458, 35.162170, 32.855549>,  <32.938225, 35.043480, 32.731358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299458, 35.162170, 32.855549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176437, -0.402763, 0.898138,
		0.391553, -0.865871, -0.311373,
		0.903082, 0.296731, 0.310475,
		33.570381, 35.251190, 32.948692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114792, 34.534626, 33.166168>,  <32.938225, 35.043480, 32.731358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114792, 34.534626, 33.166168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361347, 34.835365, 33.259789>,  <33.509281, 35.015808, 33.315960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361347, 34.835365, 33.259789>,  <33.114792, 34.534626, 33.166168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361347, 34.835365, 33.259789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046209, -0.331255, 0.942409,
		0.786082, -0.570079, -0.238926,
		0.616393, 0.751851, 0.234051,
		33.546265, 35.060921, 33.330002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601521, 34.253223, 33.641876>,  <33.114792, 34.534626, 33.166168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601521, 34.253223, 33.641876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627319, 34.646202, 33.711884>,  <33.642799, 34.881989, 33.753887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627319, 34.646202, 33.711884>,  <33.601521, 34.253223, 33.641876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627319, 34.646202, 33.711884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020424, -0.174047, 0.984525,
		0.997709, -0.067073, 0.008840,
		0.064497, 0.982450, 0.175018,
		33.646667, 34.940937, 33.764389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040539, 34.249935, 34.173599>,  <33.601521, 34.253223, 33.641876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040539, 34.249935, 34.173599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.894436, 34.622295, 34.175255>,  <33.806774, 34.845711, 34.176250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.894436, 34.622295, 34.175255>,  <34.040539, 34.249935, 34.173599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894436, 34.622295, 34.175255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121504, 0.043262, 0.991648,
		0.922942, 0.362713, -0.128910,
		-0.365260, 0.930896, 0.004142,
		33.784859, 34.901566, 34.176498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644440, 34.554718, 33.850220>,  <34.040539, 34.249935, 34.173599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644440, 34.554718, 33.850220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963470, 34.408062, 34.041824>,  <35.154888, 34.320068, 34.156788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963470, 34.408062, 34.041824>,  <34.644440, 34.554718, 33.850220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963470, 34.408062, 34.041824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489863, -0.069715, -0.869008,
		0.352005, 0.927748, 0.123999,
		0.797576, -0.366638, 0.479009,
		35.202744, 34.298069, 34.185528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261734, 34.896301, 33.745258>,  <34.644440, 34.554718, 33.850220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261734, 34.896301, 33.745258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354069, 34.517967, 33.836571>,  <35.409470, 34.290966, 33.891357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.354069, 34.517967, 33.836571>,  <35.261734, 34.896301, 33.745258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354069, 34.517967, 33.836571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597552, -0.047351, -0.800431,
		0.767885, 0.321176, 0.554255,
		0.230835, -0.945835, 0.228280,
		35.423321, 34.234219, 33.905056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973614, 34.758137, 33.551086>,  <35.261734, 34.896301, 33.745258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973614, 34.758137, 33.551086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904179, 34.376007, 33.646770>,  <35.862518, 34.146729, 33.704182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904179, 34.376007, 33.646770>,  <35.973614, 34.758137, 33.551086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904179, 34.376007, 33.646770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536829, -0.295424, -0.790278,
		0.825641, -0.008766, 0.564127,
		-0.173584, -0.955326, 0.239208,
		35.852104, 34.089409, 33.718533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614002, 34.472584, 33.507328>,  <35.973614, 34.758137, 33.551086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614002, 34.472584, 33.507328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324837, 34.201302, 33.454517>,  <36.151337, 34.038532, 33.422832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.324837, 34.201302, 33.454517>,  <36.614002, 34.472584, 33.507328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324837, 34.201302, 33.454517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427748, -0.289233, -0.856374,
		0.542615, -0.675556, 0.499192,
		-0.722911, -0.678210, -0.132026,
		36.107964, 33.997837, 33.414909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946381, 34.050106, 33.127884>,  <36.614002, 34.472584, 33.507328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946381, 34.050106, 33.127884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569149, 33.930092, 33.070503>,  <36.342812, 33.858082, 33.036076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.569149, 33.930092, 33.070503>,  <36.946381, 34.050106, 33.127884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569149, 33.930092, 33.070503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231850, -0.283913, -0.930397,
		0.238422, -0.910699, 0.337316,
		-0.943081, -0.300034, -0.143454,
		36.286224, 33.840080, 33.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002872, 33.412529, 32.755146>,  <36.946381, 34.050106, 33.127884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002872, 33.412529, 32.755146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618591, 33.516174, 32.715317>,  <36.388023, 33.578362, 32.691418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.618591, 33.516174, 32.715317>,  <37.002872, 33.412529, 32.755146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618591, 33.516174, 32.715317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018823, -0.297090, -0.954664,
		-0.276941, -0.919022, 0.280538,
		-0.960702, 0.259106, -0.099575,
		36.330379, 33.593906, 32.685444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621319, 32.793583, 32.509129>,  <37.002872, 33.412529, 32.755146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621319, 32.793583, 32.509129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425175, 33.125061, 32.401192>,  <36.307487, 33.323948, 32.336430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425175, 33.125061, 32.401192>,  <36.621319, 32.793583, 32.509129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425175, 33.125061, 32.401192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100621, -0.253714, -0.962031,
		-0.865692, -0.498892, 0.041028,
		-0.490359, 0.828695, -0.269838,
		36.278069, 33.373669, 32.320240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186462, 32.613884, 31.986340>,  <36.621319, 32.793583, 32.509129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186462, 32.613884, 31.986340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190239, 33.012684, 31.955616>,  <36.192505, 33.251965, 31.937181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190239, 33.012684, 31.955616>,  <36.186462, 32.613884, 31.986340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190239, 33.012684, 31.955616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091050, -0.075637, -0.992970,
		-0.995801, 0.016371, 0.090063,
		0.009444, 0.997001, -0.076810,
		36.193073, 33.311783, 31.932573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830395, 32.770340, 31.394953>,  <36.186462, 32.613884, 31.986340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830395, 32.770340, 31.394953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015816, 33.120594, 31.449200>,  <36.127068, 33.330746, 31.481749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.015816, 33.120594, 31.449200>,  <35.830395, 32.770340, 31.394953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015816, 33.120594, 31.449200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079544, 0.193561, -0.977858,
		-0.882493, 0.442499, 0.159377,
		0.463550, 0.875631, 0.135618,
		36.154881, 33.383282, 31.489885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367924, 33.202515, 30.972260>,  <35.830395, 32.770340, 31.394953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367924, 33.202515, 30.972260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.711311, 33.402966, 31.015888>,  <35.917343, 33.523235, 31.042067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.711311, 33.402966, 31.015888>,  <35.367924, 33.202515, 30.972260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711311, 33.402966, 31.015888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068973, 0.323555, -0.943692,
		-0.508202, 0.802610, 0.312328,
		0.858472, 0.501128, 0.109073,
		35.968853, 33.553303, 31.048611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238827, 33.812813, 30.600872>,  <35.367924, 33.202515, 30.972260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238827, 33.812813, 30.600872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638062, 33.805077, 30.624331>,  <35.877602, 33.800434, 30.638407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638062, 33.805077, 30.624331>,  <35.238827, 33.812813, 30.600872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638062, 33.805077, 30.624331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061265, 0.429602, -0.900938,
		-0.007767, 0.902811, 0.429967,
		0.998091, -0.019344, 0.058647,
		35.937489, 33.799274, 30.641924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469727, 34.546612, 30.431705>,  <35.238827, 33.812813, 30.600872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469727, 34.546612, 30.431705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777866, 34.303829, 30.353567>,  <35.962749, 34.158157, 30.306684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777866, 34.303829, 30.353567>,  <35.469727, 34.546612, 30.431705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777866, 34.303829, 30.353567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224631, 0.545069, -0.807738,
		0.596741, 0.578361, 0.556236,
		0.770351, -0.606959, -0.195347,
		36.008972, 34.121742, 30.294964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034416, 34.948486, 30.144999>,  <35.469727, 34.546612, 30.431705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034416, 34.948486, 30.144999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165573, 34.589321, 30.027529>,  <36.244267, 34.373821, 29.957047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165573, 34.589321, 30.027529>,  <36.034416, 34.948486, 30.144999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165573, 34.589321, 30.027529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338144, 0.401814, -0.851002,
		0.882126, 0.179730, 0.435374,
		0.327890, -0.897910, -0.293676,
		36.263939, 34.319946, 29.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704285, 35.040844, 30.007357>,  <36.034416, 34.948486, 30.144999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704285, 35.040844, 30.007357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627502, 34.685711, 29.840067>,  <36.581432, 34.472633, 29.739693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627502, 34.685711, 29.840067>,  <36.704285, 35.040844, 30.007357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627502, 34.685711, 29.840067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543710, 0.258567, -0.798450,
		0.817027, -0.380660, 0.433088,
		-0.191956, -0.887829, -0.418225,
		36.569916, 34.419361, 29.714600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341240, 34.929253, 29.777287>,  <36.704285, 35.040844, 30.007357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341240, 34.929253, 29.777287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111092, 34.695179, 29.548723>,  <36.973003, 34.554737, 29.411585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111092, 34.695179, 29.548723>,  <37.341240, 34.929253, 29.777287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111092, 34.695179, 29.548723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574992, 0.207441, -0.791424,
		0.581659, -0.783921, 0.217117,
		-0.575375, -0.585180, -0.571409,
		36.938480, 34.519627, 29.377300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790733, 34.495590, 29.312704>,  <37.341240, 34.929253, 29.777287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790733, 34.495590, 29.312704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424786, 34.501228, 29.151299>,  <37.205219, 34.504612, 29.054455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424786, 34.501228, 29.151299>,  <37.790733, 34.495590, 29.312704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424786, 34.501228, 29.151299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402774, 0.101652, -0.909637,
		0.028198, -0.994720, -0.098674,
		-0.914865, 0.014093, -0.403513,
		37.150326, 34.505455, 29.030245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803680, 34.064590, 28.719910>,  <37.790733, 34.495590, 29.312704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803680, 34.064590, 28.719910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507118, 34.331665, 28.693047>,  <37.329182, 34.491909, 28.676929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507118, 34.331665, 28.693047>,  <37.803680, 34.064590, 28.719910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507118, 34.331665, 28.693047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328822, 0.274231, -0.903700,
		-0.584973, -0.692091, -0.422867,
		-0.741406, 0.667689, -0.067157,
		37.284695, 34.531971, 28.672899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352325, 33.824276, 28.241264>,  <37.803680, 34.064590, 28.719910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352325, 33.824276, 28.241264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274204, 34.216572, 28.242542>,  <37.227333, 34.451950, 28.243309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274204, 34.216572, 28.242542>,  <37.352325, 33.824276, 28.241264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274204, 34.216572, 28.242542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098347, 0.022825, -0.994890,
		-0.975800, -0.193989, -0.100910,
		-0.195301, 0.980738, 0.003195,
		37.215614, 34.510792, 28.243502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133064, 33.940704, 27.560419>,  <37.352325, 33.824276, 28.241264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133064, 33.940704, 27.560419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151123, 34.322983, 27.676762>,  <37.161957, 34.552349, 27.746567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151123, 34.322983, 27.676762>,  <37.133064, 33.940704, 27.560419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151123, 34.322983, 27.676762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053978, 0.288397, -0.955988,
		-0.997521, 0.058859, -0.038567,
		0.045146, 0.955700, 0.290859,
		37.164665, 34.609692, 27.764019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.504982, 34.304420, 27.204525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794373, 34.560440, 27.308004>,  <36.968006, 34.714050, 27.370092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.794373, 34.560440, 27.308004>,  <36.504982, 34.304420, 27.204525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794373, 34.560440, 27.308004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139021, 0.231983, -0.962734,
		-0.676207, 0.732479, 0.078855,
		0.723476, 0.640045, 0.258699,
		37.011414, 34.752453, 27.385614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411072, 34.971519, 26.864069>,  <36.504982, 34.304420, 27.204525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411072, 34.971519, 26.864069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803352, 34.936703, 26.934090>,  <37.038723, 34.915813, 26.976103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803352, 34.936703, 26.934090>,  <36.411072, 34.971519, 26.864069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803352, 34.936703, 26.934090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191540, 0.248510, -0.949502,
		0.039149, 0.964710, 0.260387,
		0.980704, -0.087047, 0.175052,
		37.097565, 34.910587, 26.986605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621239, 35.681915, 26.575682>,  <36.411072, 34.971519, 26.864069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621239, 35.681915, 26.575682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961346, 35.477783, 26.627247>,  <37.165409, 35.355305, 26.658186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961346, 35.477783, 26.627247>,  <36.621239, 35.681915, 26.575682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961346, 35.477783, 26.627247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464362, 0.611961, -0.640211,
		0.247829, 0.604210, 0.757305,
		0.850264, -0.510327, 0.128911,
		37.216423, 35.324684, 26.665920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133965, 36.212234, 26.623697>,  <36.621239, 35.681915, 26.575682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133965, 36.212234, 26.623697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329952, 35.879154, 26.520514>,  <37.447544, 35.679306, 26.458603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329952, 35.879154, 26.520514>,  <37.133965, 36.212234, 26.623697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329952, 35.879154, 26.520514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403372, 0.478893, -0.779713,
		0.772803, 0.277979, 0.570530,
		0.489966, -0.832700, -0.257961,
		37.476944, 35.629345, 26.443125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892159, 36.407341, 26.541248>,  <37.133965, 36.212234, 26.623697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892159, 36.407341, 26.541248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830032, 36.074409, 26.328419>,  <37.792759, 35.874649, 26.200720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830032, 36.074409, 26.328419>,  <37.892159, 36.407341, 26.541248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830032, 36.074409, 26.328419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255039, 0.486568, -0.835588,
		0.954376, -0.265477, 0.136707,
		-0.155311, -0.832330, -0.532076,
		37.783440, 35.824711, 26.168797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498058, 36.229633, 26.223061>,  <37.892159, 36.407341, 26.541248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498058, 36.229633, 26.223061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222881, 36.015354, 26.027195>,  <38.057777, 35.886787, 25.909676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222881, 36.015354, 26.027195>,  <38.498058, 36.229633, 26.223061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222881, 36.015354, 26.027195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341619, 0.356257, -0.869699,
		0.640340, -0.765579, -0.062080,
		-0.687940, -0.535695, -0.489662,
		38.016499, 35.854645, 25.880297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856258, 35.855835, 25.700064>,  <38.498058, 36.229633, 26.223061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856258, 35.855835, 25.700064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478893, 35.873299, 25.568571>,  <38.252476, 35.883778, 25.489676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.478893, 35.873299, 25.568571>,  <38.856258, 35.855835, 25.700064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478893, 35.873299, 25.568571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319534, 0.384831, -0.865912,
		0.088702, -0.921954, -0.377005,
		-0.943414, 0.043658, -0.328730,
		38.195869, 35.886395, 25.469952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009373, 35.804104, 24.985840>,  <38.856258, 35.855835, 25.700064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009373, 35.804104, 24.985840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627644, 35.921566, 25.007862>,  <38.398605, 35.992043, 25.021074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.627644, 35.921566, 25.007862>,  <39.009373, 35.804104, 24.985840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627644, 35.921566, 25.007862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107001, 0.507970, -0.854703,
		-0.278954, -0.809773, -0.516189,
		-0.954324, 0.293656, 0.055054,
		38.341347, 36.009663, 25.024378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620625, 35.570477, 24.356913>,  <39.009373, 35.804104, 24.985840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620625, 35.570477, 24.356913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445724, 35.894890, 24.512365>,  <38.340786, 36.089539, 24.605637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445724, 35.894890, 24.512365>,  <38.620625, 35.570477, 24.356913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445724, 35.894890, 24.512365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104400, 0.474983, -0.873780,
		-0.893260, -0.341488, -0.292358,
		-0.437251, 0.811035, 0.388632,
		38.314548, 36.138199, 24.628954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492043, 35.877792, 23.798866>,  <38.620625, 35.570477, 24.356913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492043, 35.877792, 23.798866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423641, 36.170845, 24.062382>,  <38.382599, 36.346676, 24.220491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423641, 36.170845, 24.062382>,  <38.492043, 35.877792, 23.798866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423641, 36.170845, 24.062382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277845, 0.677359, -0.681166,
		-0.945283, 0.066558, -0.319391,
		-0.171006, 0.732635, 0.658789,
		38.372341, 36.390636, 24.260019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080273, 36.369751, 23.391926>,  <38.492043, 35.877792, 23.798866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080273, 36.369751, 23.391926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.232006, 36.564083, 23.706905>,  <38.323044, 36.680683, 23.895893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.232006, 36.564083, 23.706905>,  <38.080273, 36.369751, 23.391926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232006, 36.564083, 23.706905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296822, 0.742181, -0.600886,
		-0.876359, 0.461667, 0.137326,
		0.379330, 0.485830, 0.787450,
		38.345806, 36.709831, 23.943140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702053, 36.964256, 23.422581>,  <38.080273, 36.369751, 23.391926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702053, 36.964256, 23.422581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044491, 37.040478, 23.614746>,  <38.249954, 37.086208, 23.730045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044491, 37.040478, 23.614746>,  <37.702053, 36.964256, 23.422581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044491, 37.040478, 23.614746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199568, 0.735570, -0.647386,
		-0.476738, 0.650097, 0.591688,
		0.856092, 0.190552, 0.480413,
		38.301319, 37.097645, 23.758869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735588, 37.656399, 23.328089>,  <37.702053, 36.964256, 23.422581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735588, 37.656399, 23.328089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101727, 37.538246, 23.437550>,  <38.321411, 37.467354, 23.503227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101727, 37.538246, 23.437550>,  <37.735588, 37.656399, 23.328089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101727, 37.538246, 23.437550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402337, 0.698105, -0.592262,
		-0.016098, 0.652228, 0.757852,
		0.915350, -0.295378, 0.273654,
		38.376331, 37.449635, 23.519646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108887, 38.202263, 23.173649>,  <37.735588, 37.656399, 23.328089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108887, 38.202263, 23.173649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419193, 37.966351, 23.263405>,  <38.605377, 37.824802, 23.317259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419193, 37.966351, 23.263405>,  <38.108887, 38.202263, 23.173649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419193, 37.966351, 23.263405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604427, 0.592350, -0.532719,
		0.181267, 0.548893, 0.816001,
		0.775764, -0.589778, 0.224392,
		38.651924, 37.789417, 23.330723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706760, 38.606506, 23.554125>,  <38.108887, 38.202263, 23.173649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706760, 38.606506, 23.554125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840683, 38.289955, 23.349529>,  <38.921036, 38.100025, 23.226772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840683, 38.289955, 23.349529>,  <38.706760, 38.606506, 23.554125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840683, 38.289955, 23.349529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712703, 0.567771, -0.411936,
		0.616406, -0.226621, 0.754113,
		0.334810, -0.791378, -0.511491,
		38.941128, 38.052540, 23.196081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393299, 38.707550, 23.561138>,  <38.706760, 38.606506, 23.554125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393299, 38.707550, 23.561138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339218, 38.427734, 23.280462>,  <39.306770, 38.259846, 23.112057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339218, 38.427734, 23.280462>,  <39.393299, 38.707550, 23.561138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339218, 38.427734, 23.280462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685070, 0.445635, -0.576271,
		0.715820, -0.558622, 0.418978,
		-0.135207, -0.699536, -0.701690,
		39.298656, 38.217873, 23.069956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124447, 38.543980, 23.293039>,  <39.393299, 38.707550, 23.561138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124447, 38.543980, 23.293039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.859688, 38.440048, 23.011789>,  <39.700832, 38.377689, 22.843040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.859688, 38.440048, 23.011789>,  <40.124447, 38.543980, 23.293039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859688, 38.440048, 23.011789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471072, 0.585452, -0.659801,
		0.583035, -0.767960, -0.265158,
		-0.661938, -0.259778, -0.703103,
		39.661118, 38.362099, 22.800852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522167, 38.380177, 22.693003>,  <40.124447, 38.543980, 23.293039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522167, 38.380177, 22.693003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.156746, 38.482468, 22.566492>,  <39.937492, 38.543842, 22.490585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.156746, 38.482468, 22.566492>,  <40.522167, 38.380177, 22.693003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156746, 38.482468, 22.566492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400705, 0.699166, -0.592117,
		0.069710, -0.667662, -0.741193,
		-0.913551, 0.255723, -0.316275,
		39.882679, 38.559185, 22.471609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693295, 38.408863, 21.989498>,  <40.522167, 38.380177, 22.693003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693295, 38.408863, 21.989498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.335808, 38.580643, 22.041405>,  <40.121315, 38.683712, 22.072548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.335808, 38.580643, 22.041405>,  <40.693295, 38.408863, 21.989498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335808, 38.580643, 22.041405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173054, 0.596868, -0.783455,
		-0.413909, -0.677731, -0.607750,
		-0.893718, 0.429453, 0.129765,
		40.067692, 38.709480, 22.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490860, 38.532398, 21.322485>,  <40.693295, 38.408863, 21.989498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490860, 38.532398, 21.322485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254570, 38.778519, 21.531275>,  <40.112797, 38.926189, 21.656548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254570, 38.778519, 21.531275>,  <40.490860, 38.532398, 21.322485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254570, 38.778519, 21.531275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294358, 0.766658, -0.570604,
		-0.751266, -0.183421, -0.633999,
		-0.590722, 0.615298, 0.521973,
		40.077354, 38.963108, 21.687866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945019, 38.760777, 20.944933>,  <40.490860, 38.532398, 21.322485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945019, 38.760777, 20.944933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.978882, 39.039822, 21.229513>,  <39.999199, 39.207249, 21.400261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.978882, 39.039822, 21.229513>,  <39.945019, 38.760777, 20.944933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978882, 39.039822, 21.229513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225999, 0.681963, -0.695594,
		-0.970442, 0.219677, -0.099924,
		0.084662, 0.697617, 0.711452,
		40.004280, 39.249107, 21.442949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748772, 39.376480, 20.598286>,  <39.945019, 38.760777, 20.944933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748772, 39.376480, 20.598286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910557, 39.535938, 20.927525>,  <40.007629, 39.631615, 21.125069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910557, 39.535938, 20.927525>,  <39.748772, 39.376480, 20.598286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910557, 39.535938, 20.927525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338748, 0.770683, -0.539720,
		-0.849505, 0.497120, 0.176672,
		0.404464, 0.398648, 0.823097,
		40.031895, 39.655533, 21.174454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654373, 40.056679, 20.520388>,  <39.748772, 39.376480, 20.598286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654373, 40.056679, 20.520388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975964, 40.003361, 20.752199>,  <40.168919, 39.971371, 20.891285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975964, 40.003361, 20.752199>,  <39.654373, 40.056679, 20.520388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975964, 40.003361, 20.752199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528099, 0.608057, -0.592771,
		-0.273371, 0.782622, 0.559259,
		0.803978, -0.133297, 0.579527,
		40.217155, 39.963371, 20.926058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265953, 40.593529, 20.254454>,  <39.654373, 40.056679, 20.520388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265953, 40.593529, 20.254454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308022, 40.569645, 20.651518>,  <39.333263, 40.555313, 20.889757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308022, 40.569645, 20.651518>,  <39.265953, 40.593529, 20.254454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308022, 40.569645, 20.651518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895445, 0.439884, -0.068407,
		-0.432571, 0.896067, 0.099729,
		0.105167, -0.059711, 0.992660,
		39.339573, 40.551731, 20.949316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719814, 40.043007, 20.149509>,  <39.265953, 40.593529, 20.254454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719814, 40.043007, 20.149509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.443512, 40.330441, 20.117258>,  <38.277733, 40.502899, 20.097906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.443512, 40.330441, 20.117258>,  <38.719814, 40.043007, 20.149509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443512, 40.330441, 20.117258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449079, -0.338925, 0.826715,
		0.566734, 0.607265, 0.556813,
		-0.690753, 0.718581, -0.080630,
		38.236286, 40.546017, 20.093069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664761, 40.384460, 20.751768>,  <38.719814, 40.043007, 20.149509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664761, 40.384460, 20.751768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315247, 40.408325, 20.558710>,  <38.105537, 40.422646, 20.442875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315247, 40.408325, 20.558710>,  <38.664761, 40.384460, 20.751768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315247, 40.408325, 20.558710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478881, -0.278464, 0.832545,
		-0.084729, 0.958592, 0.271887,
		-0.873781, 0.059661, -0.482646,
		38.053112, 40.426224, 20.413916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247826, 40.616394, 21.250315>,  <38.664761, 40.384460, 20.751768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247826, 40.616394, 21.250315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983719, 40.510853, 20.969051>,  <37.825256, 40.447529, 20.800293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983719, 40.510853, 20.969051>,  <38.247826, 40.616394, 21.250315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983719, 40.510853, 20.969051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684238, -0.174656, 0.708035,
		-0.309625, 0.948619, -0.065216,
		-0.660266, -0.263849, -0.703159,
		37.785641, 40.431698, 20.758104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596134, 40.998322, 21.409920>,  <38.247826, 40.616394, 21.250315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596134, 40.998322, 21.409920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.538712, 40.651978, 21.218218>,  <37.504257, 40.444172, 21.103197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.538712, 40.651978, 21.218218>,  <37.596134, 40.998322, 21.409920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538712, 40.651978, 21.218218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599981, -0.308981, 0.737939,
		-0.787030, 0.393477, -0.475142,
		-0.143552, -0.865856, -0.479256,
		37.495647, 40.392220, 21.074442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849731, 40.790939, 21.474930>,  <37.596134, 40.998322, 21.409920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849731, 40.790939, 21.474930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010578, 40.435638, 21.386110>,  <37.107086, 40.222458, 21.332819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010578, 40.435638, 21.386110>,  <36.849731, 40.790939, 21.474930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010578, 40.435638, 21.386110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442063, -0.400735, 0.802491,
		-0.801798, -0.224538, -0.553808,
		0.402120, -0.888254, -0.222049,
		37.131214, 40.169163, 21.319496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333076, 40.297974, 21.598001>,  <36.849731, 40.790939, 21.474930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333076, 40.297974, 21.598001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664013, 40.073345, 21.593328>,  <36.862576, 39.938568, 21.590525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664013, 40.073345, 21.593328>,  <36.333076, 40.297974, 21.598001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664013, 40.073345, 21.593328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372395, -0.563971, 0.737061,
		-0.420502, -0.605453, -0.675726,
		0.827346, -0.561572, -0.011683,
		36.912216, 39.904873, 21.589823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059536, 39.679420, 21.632330>,  <36.333076, 40.297974, 21.598001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059536, 39.679420, 21.632330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442471, 39.661747, 21.746557>,  <36.672234, 39.651142, 21.815094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442471, 39.661747, 21.746557>,  <36.059536, 39.679420, 21.632330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442471, 39.661747, 21.746557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233777, -0.699298, 0.675522,
		0.169854, -0.713463, -0.679794,
		0.957339, -0.044179, 0.285570,
		36.729671, 39.648495, 21.832228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175671, 39.028992, 21.660839>,  <36.059536, 39.679420, 21.632330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175671, 39.028992, 21.660839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451748, 39.196953, 21.896572>,  <36.617393, 39.297729, 22.038012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451748, 39.196953, 21.896572>,  <36.175671, 39.028992, 21.660839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451748, 39.196953, 21.896572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212563, -0.660842, 0.719795,
		0.691698, -0.622070, -0.366855,
		0.690197, 0.419901, 0.589332,
		36.658806, 39.322922, 22.073372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454323, 38.490894, 21.907999>,  <36.175671, 39.028992, 21.660839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454323, 38.490894, 21.907999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555756, 38.771469, 22.174437>,  <36.616615, 38.939816, 22.334299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555756, 38.771469, 22.174437>,  <36.454323, 38.490894, 21.907999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555756, 38.771469, 22.174437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152921, -0.650874, 0.743625,
		0.955150, -0.290431, -0.057786,
		0.253583, 0.701436, 0.666095,
		36.631832, 38.981899, 22.374266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885921, 38.139206, 22.465084>,  <36.454323, 38.490894, 21.907999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885921, 38.139206, 22.465084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758591, 38.475304, 22.640654>,  <36.682194, 38.676964, 22.745995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.758591, 38.475304, 22.640654>,  <36.885921, 38.139206, 22.465084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758591, 38.475304, 22.640654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068672, -0.482231, 0.873349,
		0.945491, 0.247867, 0.211208,
		-0.318325, 0.840247, 0.438923,
		36.663094, 38.727379, 22.772331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188969, 38.147911, 23.062336>,  <36.885921, 38.139206, 22.465084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188969, 38.147911, 23.062336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.899792, 38.412487, 23.142189>,  <36.726284, 38.571232, 23.190102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.899792, 38.412487, 23.142189>,  <37.188969, 38.147911, 23.062336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899792, 38.412487, 23.142189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108460, -0.394009, 0.912685,
		0.682339, 0.638169, 0.356587,
		-0.722945, 0.661436, 0.199632,
		36.682907, 38.610916, 23.202078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337990, 38.274132, 23.783020>,  <37.188969, 38.147911, 23.062336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337990, 38.274132, 23.783020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969296, 38.384617, 23.674128>,  <36.748077, 38.450909, 23.608791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.969296, 38.384617, 23.674128>,  <37.337990, 38.274132, 23.783020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969296, 38.384617, 23.674128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386332, -0.592594, 0.706809,
		0.033906, 0.756664, 0.652924,
		-0.921736, 0.276211, -0.272232,
		36.692776, 38.467480, 23.592459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045330, 38.639591, 24.247635>,  <37.337990, 38.274132, 23.783020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045330, 38.639591, 24.247635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736416, 38.477684, 24.051785>,  <36.551067, 38.380539, 23.934275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736416, 38.477684, 24.051785>,  <37.045330, 38.639591, 24.247635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736416, 38.477684, 24.051785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256726, -0.506140, 0.823355,
		-0.581091, 0.761565, 0.286970,
		-0.772286, -0.404772, -0.489627,
		36.504730, 38.356251, 23.904896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524788, 38.744835, 24.638494>,  <37.045330, 38.639591, 24.247635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524788, 38.744835, 24.638494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394936, 38.440315, 24.413980>,  <36.317024, 38.257603, 24.279272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394936, 38.440315, 24.413980>,  <36.524788, 38.744835, 24.638494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394936, 38.440315, 24.413980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246919, -0.504634, 0.827270,
		-0.913044, 0.407146, -0.024161,
		-0.324627, -0.761299, -0.561285,
		36.297546, 38.211926, 24.245594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869736, 38.589283, 24.881048>,  <36.524788, 38.744835, 24.638494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869736, 38.589283, 24.881048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.946823, 38.257389, 24.671518>,  <35.993076, 38.058250, 24.545801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.946823, 38.257389, 24.671518>,  <35.869736, 38.589283, 24.881048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946823, 38.257389, 24.671518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282939, -0.558147, 0.780011,
		-0.939576, -0.002114, -0.342332,
		0.192721, -0.829739, -0.523824,
		36.004639, 38.008469, 24.514372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215584, 38.211582, 24.943724>,  <35.869736, 38.589283, 24.881048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215584, 38.211582, 24.943724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512211, 37.954090, 24.868156>,  <35.690189, 37.799595, 24.822815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512211, 37.954090, 24.868156>,  <35.215584, 38.211582, 24.943724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512211, 37.954090, 24.868156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314164, -0.582032, 0.750027,
		-0.592774, -0.496842, -0.633851,
		0.741566, -0.643729, -0.188923,
		35.734680, 37.760971, 24.811480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937366, 37.468575, 24.917770>,  <35.215584, 38.211582, 24.943724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937366, 37.468575, 24.917770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326916, 37.408649, 24.986048>,  <35.560646, 37.372696, 25.027014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326916, 37.408649, 24.986048>,  <34.937366, 37.468575, 24.917770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326916, 37.408649, 24.986048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226955, -0.669764, 0.707042,
		0.008404, -0.727306, -0.686262,
		0.973869, -0.149808, 0.170694,
		35.619076, 37.363708, 25.037256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051739, 36.795048, 24.967558>,  <34.937366, 37.468575, 24.917770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051739, 36.795048, 24.967558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351372, 36.970818, 25.165863>,  <35.531151, 37.076279, 25.284847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351372, 36.970818, 25.165863>,  <35.051739, 36.795048, 24.967558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351372, 36.970818, 25.165863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213881, -0.547860, 0.808767,
		0.627003, -0.711866, -0.316407,
		0.749081, 0.439427, 0.495765,
		35.576096, 37.102646, 25.314592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179165, 36.270386, 25.366791>,  <35.051739, 36.795048, 24.967558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179165, 36.270386, 25.366791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356865, 36.580032, 25.547186>,  <35.463486, 36.765820, 25.655422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.356865, 36.580032, 25.547186>,  <35.179165, 36.270386, 25.366791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356865, 36.580032, 25.547186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172316, -0.420158, 0.890940,
		0.879175, -0.473513, -0.053263,
		0.444251, 0.774114, 0.450986,
		35.490139, 36.812267, 25.682482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632446, 35.996201, 26.033632>,  <35.179165, 36.270386, 25.366791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632446, 35.996201, 26.033632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582600, 36.388172, 26.095881>,  <35.552692, 36.623356, 26.133230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582600, 36.388172, 26.095881>,  <35.632446, 35.996201, 26.033632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582600, 36.388172, 26.095881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300342, -0.186738, 0.935373,
		0.945657, 0.069820, 0.317583,
		-0.124613, 0.979925, 0.155621,
		35.545216, 36.682148, 26.142567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.640190, 33.086262, 29.734222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539116, 33.470325, 29.781948>,  <36.478470, 33.700764, 29.810583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539116, 33.470325, 29.781948>,  <36.640190, 33.086262, 29.734222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539116, 33.470325, 29.781948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039378, -0.133420, 0.990277,
		0.966746, 0.245533, 0.071523,
		-0.252688, 0.960163, 0.119315,
		36.463310, 33.758373, 29.817743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099499, 33.301502, 30.234741>,  <36.640190, 33.086262, 29.734222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099499, 33.301502, 30.234741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.803291, 33.570026, 30.247219>,  <36.625568, 33.731140, 30.254705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.803291, 33.570026, 30.247219>,  <37.099499, 33.301502, 30.234741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803291, 33.570026, 30.247219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130995, -0.189715, 0.973061,
		0.659146, 0.716483, 0.228426,
		-0.740518, 0.671312, 0.031194,
		36.581135, 33.771420, 30.256577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238300, 33.759144, 30.724556>,  <37.099499, 33.301502, 30.234741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238300, 33.759144, 30.724556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838654, 33.774529, 30.717838>,  <36.598866, 33.783760, 30.713808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.838654, 33.774529, 30.717838>,  <37.238300, 33.759144, 30.724556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838654, 33.774529, 30.717838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024043, -0.196520, 0.980205,
		0.034401, 0.979745, 0.197271,
		-0.999119, 0.038463, -0.016795,
		36.538918, 33.786068, 30.712799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197952, 33.969288, 31.335398>,  <37.238300, 33.759144, 30.724556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197952, 33.969288, 31.335398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814606, 33.904812, 31.241123>,  <36.584599, 33.866127, 31.184559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814606, 33.904812, 31.241123>,  <37.197952, 33.969288, 31.335398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814606, 33.904812, 31.241123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222197, -0.097406, 0.970124,
		-0.179328, 0.982105, 0.057536,
		-0.958368, -0.161186, -0.235689,
		36.527096, 33.856457, 31.170416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780041, 34.489605, 31.632326>,  <37.197952, 33.969288, 31.335398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780041, 34.489605, 31.632326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.559483, 34.160973, 31.574404>,  <36.427147, 33.963795, 31.539650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.559483, 34.160973, 31.574404>,  <36.780041, 34.489605, 31.632326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559483, 34.160973, 31.574404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281299, 0.019690, 0.959418,
		-0.785388, 0.569753, -0.241967,
		-0.551395, -0.821581, -0.144807,
		36.394066, 33.914497, 31.530962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089851, 34.611427, 31.816433>,  <36.780041, 34.489605, 31.632326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089851, 34.611427, 31.816433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136711, 34.216511, 31.859371>,  <36.164825, 33.979561, 31.885134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136711, 34.216511, 31.859371>,  <36.089851, 34.611427, 31.816433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136711, 34.216511, 31.859371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409901, 0.050388, 0.910737,
		-0.904576, -0.150691, -0.398791,
		0.117145, -0.987296, 0.107348,
		36.171856, 33.920322, 31.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479652, 34.423203, 32.012058>,  <36.089851, 34.611427, 31.816433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479652, 34.423203, 32.012058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.732468, 34.128063, 32.106808>,  <35.884155, 33.950977, 32.163658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.732468, 34.128063, 32.106808>,  <35.479652, 34.423203, 32.012058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732468, 34.128063, 32.106808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353267, -0.002273, 0.935520,
		-0.689737, -0.674959, -0.262095,
		0.632033, -0.737852, 0.236873,
		35.922077, 33.906708, 32.177868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148277, 33.979038, 32.402134>,  <35.479652, 34.423203, 32.012058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148277, 33.979038, 32.402134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521675, 33.857197, 32.477818>,  <35.745716, 33.784092, 32.523228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.521675, 33.857197, 32.477818>,  <35.148277, 33.979038, 32.402134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521675, 33.857197, 32.477818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191070, 0.023991, 0.981283,
		-0.303439, -0.952178, -0.035804,
		0.933497, -0.304600, 0.189213,
		35.801723, 33.765816, 32.534580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089794, 33.391109, 32.839432>,  <35.148277, 33.979038, 32.402134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089794, 33.391109, 32.839432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459583, 33.528778, 32.905025>,  <35.681458, 33.611378, 32.944382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459583, 33.528778, 32.905025>,  <35.089794, 33.391109, 32.839432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459583, 33.528778, 32.905025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171795, -0.007895, 0.985101,
		0.340336, -0.938875, 0.051827,
		0.924477, 0.344169, 0.163981,
		35.736927, 33.632027, 32.954220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292854, 33.017887, 33.306446>,  <35.089794, 33.391109, 32.839432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292854, 33.017887, 33.306446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.523975, 33.341721, 33.347874>,  <35.662647, 33.536018, 33.372730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.523975, 33.341721, 33.347874>,  <35.292854, 33.017887, 33.306446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523975, 33.341721, 33.347874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195677, 0.014208, 0.980565,
		0.792374, -0.586839, 0.166625,
		0.577801, 0.809579, 0.103573,
		35.697315, 33.584595, 33.378944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515347, 32.850086, 34.017250>,  <35.292854, 33.017887, 33.306446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515347, 32.850086, 34.017250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635120, 33.217392, 33.913609>,  <35.706985, 33.437775, 33.851425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.635120, 33.217392, 33.913609>,  <35.515347, 32.850086, 34.017250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635120, 33.217392, 33.913609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091569, 0.297964, 0.950175,
		0.949712, -0.260793, 0.173306,
		0.299438, 0.918262, -0.259100,
		35.724953, 33.492870, 33.835880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813381, 33.072437, 34.600552>,  <35.515347, 32.850086, 34.017250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813381, 33.072437, 34.600552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.777042, 33.420067, 34.406044>,  <35.755238, 33.628647, 34.289341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.777042, 33.420067, 34.406044>,  <35.813381, 33.072437, 34.600552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777042, 33.420067, 34.406044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020924, 0.489843, 0.871560,
		0.995645, 0.069004, -0.062685,
		-0.090846, 0.869076, -0.486266,
		35.749790, 33.680790, 34.260162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340717, 33.659122, 34.685871>,  <35.813381, 33.072437, 34.600552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340717, 33.659122, 34.685871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004856, 33.844784, 34.573051>,  <35.803341, 33.956181, 34.505360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004856, 33.844784, 34.573051>,  <36.340717, 33.659122, 34.685871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004856, 33.844784, 34.573051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039974, 0.465093, 0.884359,
		0.541656, 0.753826, -0.371961,
		-0.839649, 0.464149, -0.282053,
		35.752960, 33.984028, 34.488434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226547, 33.691727, 35.357327>,  <36.340717, 33.659122, 34.685871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226547, 33.691727, 35.357327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.941021, 33.963413, 35.289040>,  <35.769707, 34.126423, 35.248066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.941021, 33.963413, 35.289040>,  <36.226547, 33.691727, 35.357327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941021, 33.963413, 35.289040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605948, -0.476757, 0.636813,
		0.351141, 0.558009, 0.751882,
		-0.713812, 0.679212, -0.170716,
		35.726879, 34.167175, 35.237823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812328, 33.511162, 35.645798>,  <36.226547, 33.691727, 35.357327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812328, 33.511162, 35.645798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662285, 33.237835, 35.395241>,  <36.572258, 33.073837, 35.244907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662285, 33.237835, 35.395241>,  <36.812328, 33.511162, 35.645798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662285, 33.237835, 35.395241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160794, -0.713452, 0.682005,
		-0.912929, 0.155105, 0.377495,
		-0.375107, -0.683321, -0.626392,
		36.549751, 33.032837, 35.207325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755322, 34.282349, 35.851471>,  <36.812328, 33.511162, 35.645798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755322, 34.282349, 35.851471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.111412, 34.304943, 35.670673>,  <37.325066, 34.318501, 35.562195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.111412, 34.304943, 35.670673>,  <36.755322, 34.282349, 35.851471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111412, 34.304943, 35.670673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334424, 0.754765, -0.564350,
		0.309273, 0.653559, 0.690804,
		0.890231, 0.056483, -0.451994,
		37.378483, 34.321888, 35.535076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104252, 34.951843, 35.970654>,  <36.755322, 34.282349, 35.851471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104252, 34.951843, 35.970654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.201103, 34.769905, 35.627842>,  <37.259212, 34.660744, 35.422157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.201103, 34.769905, 35.627842>,  <37.104252, 34.951843, 35.970654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201103, 34.769905, 35.627842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346142, 0.784691, -0.514243,
		0.906400, 0.421164, 0.032554,
		0.242126, -0.454841, -0.857027,
		37.273743, 34.633453, 35.370735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574123, 35.403606, 35.673321>,  <37.104252, 34.951843, 35.970654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574123, 35.403606, 35.673321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438271, 35.176994, 35.373005>,  <37.356758, 35.041027, 35.192814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438271, 35.176994, 35.373005>,  <37.574123, 35.403606, 35.673321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438271, 35.176994, 35.373005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183997, 0.822840, -0.537661,
		0.922385, -0.044464, -0.383705,
		-0.339635, -0.566531, -0.750794,
		37.336380, 35.007034, 35.147766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823368, 35.728367, 35.101624>,  <37.574123, 35.403606, 35.673321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823368, 35.728367, 35.101624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.525154, 35.498684, 34.966297>,  <37.346226, 35.360874, 34.885101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.525154, 35.498684, 34.966297>,  <37.823368, 35.728367, 35.101624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525154, 35.498684, 34.966297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368737, 0.778243, -0.508302,
		0.555163, -0.254209, -0.791942,
		-0.745538, -0.574209, -0.338315,
		37.301495, 35.326420, 34.864803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895218, 35.598427, 34.375404>,  <37.823368, 35.728367, 35.101624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895218, 35.598427, 34.375404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506641, 35.537827, 34.448456>,  <37.273495, 35.501469, 34.492287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.506641, 35.537827, 34.448456>,  <37.895218, 35.598427, 34.375404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506641, 35.537827, 34.448456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237172, 0.643811, -0.727500,
		-0.007363, -0.750037, -0.661355,
		-0.971440, -0.151498, 0.182628,
		37.215210, 35.492378, 34.503242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594181, 35.352989, 33.794594>,  <37.895218, 35.598427, 34.375404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594181, 35.352989, 33.794594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.277161, 35.509754, 33.981472>,  <37.086948, 35.603813, 34.093597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.277161, 35.509754, 33.981472>,  <37.594181, 35.352989, 33.794594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277161, 35.509754, 33.981472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223037, 0.526751, -0.820237,
		-0.567557, -0.754279, -0.330064,
		-0.792549, 0.391914, 0.467193,
		37.039394, 35.627327, 34.121632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126213, 35.400036, 33.340824>,  <37.594181, 35.352989, 33.794594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126213, 35.400036, 33.340824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980442, 35.654114, 33.613213>,  <36.892979, 35.806561, 33.776646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980442, 35.654114, 33.613213>,  <37.126213, 35.400036, 33.340824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980442, 35.654114, 33.613213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302182, 0.611031, -0.731661,
		-0.880841, -0.472413, -0.030731,
		-0.364424, 0.635191, 0.680976,
		36.871117, 35.844669, 33.817505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365078, 35.479778, 33.170433>,  <37.126213, 35.400036, 33.340824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365078, 35.479778, 33.170433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438881, 35.804836, 33.391548>,  <36.483162, 35.999870, 33.524216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438881, 35.804836, 33.391548>,  <36.365078, 35.479778, 33.170433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438881, 35.804836, 33.391548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318471, 0.581530, -0.748598,
		-0.929802, -0.037921, 0.366102,
		0.184512, 0.812641, 0.552784,
		36.494236, 36.048630, 33.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738087, 35.888027, 33.133289>,  <36.365078, 35.479778, 33.170433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738087, 35.888027, 33.133289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.031898, 36.132198, 33.251842>,  <36.208187, 36.278702, 33.322975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.031898, 36.132198, 33.251842>,  <35.738087, 35.888027, 33.133289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031898, 36.132198, 33.251842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318592, 0.695873, -0.643629,
		-0.599135, 0.378340, 0.705618,
		0.734531, 0.610425, 0.296386,
		36.252258, 36.315327, 33.340759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454903, 36.653023, 33.266479>,  <35.738087, 35.888027, 33.133289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454903, 36.653023, 33.266479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.846218, 36.728935, 33.233173>,  <36.081009, 36.774483, 33.213188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.846218, 36.728935, 33.233173>,  <35.454903, 36.653023, 33.266479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846218, 36.728935, 33.233173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195934, 0.716015, -0.670024,
		-0.067541, 0.671792, 0.737655,
		0.978288, 0.189786, -0.083267,
		36.139706, 36.785870, 33.208195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607571, 37.351315, 33.531265>,  <35.454903, 36.653023, 33.266479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607571, 37.351315, 33.531265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897583, 37.242729, 33.278084>,  <36.071590, 37.177578, 33.126175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897583, 37.242729, 33.278084>,  <35.607571, 37.351315, 33.531265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897583, 37.242729, 33.278084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151510, 0.833654, -0.531098,
		0.671840, 0.480963, 0.563298,
		0.725035, -0.271468, -0.632953,
		36.115093, 37.161289, 33.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023579, 37.987392, 33.377281>,  <35.607571, 37.351315, 33.531265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023579, 37.987392, 33.377281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.145287, 37.748096, 33.080761>,  <36.218311, 37.604519, 32.902847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.145287, 37.748096, 33.080761>,  <36.023579, 37.987392, 33.377281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145287, 37.748096, 33.080761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010544, 0.780269, -0.625356,
		0.952528, 0.182460, 0.243720,
		0.304269, -0.598238, -0.741304,
		36.236568, 37.568626, 32.858372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723934, 38.200302, 33.113770>,  <36.023579, 37.987392, 33.377281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723934, 38.200302, 33.113770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556416, 38.003696, 32.808342>,  <36.455906, 37.885735, 32.625088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556416, 38.003696, 32.808342>,  <36.723934, 38.200302, 33.113770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556416, 38.003696, 32.808342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289185, 0.724890, -0.625225,
		0.860805, -0.482651, -0.161441,
		-0.418792, -0.491511, -0.763564,
		36.430779, 37.856243, 32.579273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004261, 38.741142, 33.664616>,  <36.723934, 38.200302, 33.113770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004261, 38.741142, 33.664616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867744, 39.116257, 33.639072>,  <36.785835, 39.341324, 33.623749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.867744, 39.116257, 33.639072>,  <37.004261, 38.741142, 33.664616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867744, 39.116257, 33.639072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640092, -0.182126, 0.746400,
		0.688334, 0.295613, 0.662427,
		-0.341290, 0.937786, -0.063856,
		36.765358, 39.397594, 33.619915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928371, 38.889153, 34.287678>,  <37.004261, 38.741142, 33.664616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928371, 38.889153, 34.287678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684914, 39.148491, 34.104721>,  <36.538841, 39.304092, 33.994949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.684914, 39.148491, 34.104721>,  <36.928371, 38.889153, 34.287678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684914, 39.148491, 34.104721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653631, -0.082909, 0.752258,
		0.449803, 0.756817, 0.474241,
		-0.608641, 0.648346, -0.457387,
		36.502323, 39.342995, 33.967506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706581, 39.271450, 34.786758>,  <36.928371, 38.889153, 34.287678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706581, 39.271450, 34.786758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441185, 39.315460, 34.490738>,  <36.281948, 39.341866, 34.313126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441185, 39.315460, 34.490738>,  <36.706581, 39.271450, 34.786758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441185, 39.315460, 34.490738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745672, -0.178260, 0.642026,
		-0.061285, 0.977813, 0.200314,
		-0.663489, 0.110022, -0.740052,
		36.242138, 39.348465, 34.268723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295975, 39.666149, 35.141026>,  <36.706581, 39.271450, 34.786758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295975, 39.666149, 35.141026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109623, 39.492908, 34.832382>,  <35.997814, 39.388966, 34.647194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109623, 39.492908, 34.832382>,  <36.295975, 39.666149, 35.141026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109623, 39.492908, 34.832382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814088, -0.131912, 0.565562,
		-0.346728, 0.891642, -0.291125,
		-0.465876, -0.433097, -0.771613,
		35.969860, 39.362980, 34.600899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714489, 40.146221, 34.958706>,  <36.295975, 39.666149, 35.141026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714489, 40.146221, 34.958706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.633236, 39.768604, 34.854759>,  <35.584484, 39.542034, 34.792389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.633236, 39.768604, 34.854759>,  <35.714489, 40.146221, 34.958706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633236, 39.768604, 34.854759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870725, 0.052764, 0.488931,
		-0.447858, 0.325590, -0.832715,
		-0.203129, -0.944038, -0.259869,
		35.572296, 39.485394, 34.776798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054012, 40.146141, 35.007904>,  <35.714489, 40.146221, 34.958706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054012, 40.146141, 35.007904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.143742, 39.762142, 34.940876>,  <35.197578, 39.531742, 34.900658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.143742, 39.762142, 34.940876>,  <35.054012, 40.146141, 35.007904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143742, 39.762142, 34.940876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816717, -0.279006, 0.505103,
		-0.531653, 0.023552, -0.846635,
		0.224320, -0.960001, -0.167570,
		35.211037, 39.474140, 34.890606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439476, 39.906132, 34.674068>,  <35.054012, 40.146141, 35.007904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439476, 39.906132, 34.674068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.677864, 39.655277, 34.874676>,  <34.820896, 39.504765, 34.995041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.677864, 39.655277, 34.874676>,  <34.439476, 39.906132, 34.674068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677864, 39.655277, 34.874676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735034, -0.174572, 0.655171,
		-0.323332, -0.759093, -0.565008,
		0.595971, -0.627138, 0.501514,
		34.856655, 39.467136, 35.025131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145370, 39.235973, 34.645828>,  <34.439476, 39.906132, 34.674068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145370, 39.235973, 34.645828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.364525, 39.276493, 34.977985>,  <34.496017, 39.300804, 35.177280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.364525, 39.276493, 34.977985>,  <34.145370, 39.235973, 34.645828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364525, 39.276493, 34.977985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808757, -0.189613, 0.556740,
		0.213849, -0.976620, -0.021963,
		0.547887, 0.101296, 0.830397,
		34.528893, 39.306881, 35.227104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774223, 38.904327, 35.137238>,  <34.145370, 39.235973, 34.645828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774223, 38.904327, 35.137238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.040016, 39.079731, 35.379284>,  <34.199493, 39.184975, 35.524513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.040016, 39.079731, 35.379284>,  <33.774223, 38.904327, 35.137238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040016, 39.079731, 35.379284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593092, -0.183169, 0.784022,
		0.454642, -0.879861, 0.138365,
		0.664486, 0.438513, 0.605115,
		34.239361, 39.211285, 35.560818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693409, 38.476509, 35.725830>,  <33.774223, 38.904327, 35.137238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693409, 38.476509, 35.725830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.884777, 38.818729, 35.804985>,  <33.999596, 39.024059, 35.852478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.884777, 38.818729, 35.804985>,  <33.693409, 38.476509, 35.725830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884777, 38.818729, 35.804985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529361, 0.101188, 0.842340,
		0.700638, -0.507741, 0.501303,
		0.478416, 0.855547, 0.197883,
		34.028301, 39.075394, 35.864349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039124, 38.444633, 36.347790>,  <33.693409, 38.476509, 35.725830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039124, 38.444633, 36.347790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.944256, 38.828415, 36.286873>,  <33.887333, 39.058685, 36.250324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.944256, 38.828415, 36.286873>,  <34.039124, 38.444633, 36.347790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944256, 38.828415, 36.286873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434080, 0.035581, 0.900171,
		0.869094, 0.279602, 0.408042,
		-0.237171, 0.959456, -0.152293,
		33.873104, 39.116253, 36.241184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062664, 38.751919, 36.951725>,  <34.039124, 38.444633, 36.347790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062664, 38.751919, 36.951725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.838100, 39.033817, 36.778221>,  <33.703362, 39.202957, 36.674118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.838100, 39.033817, 36.778221>,  <34.062664, 38.751919, 36.951725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838100, 39.033817, 36.778221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419979, 0.209001, 0.883140,
		0.713046, 0.677977, 0.178643,
		-0.561412, 0.704746, -0.433763,
		33.669678, 39.245239, 36.648090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.454899, 40.503395, 31.280989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108990, 40.664009, 31.160366>,  <38.901443, 40.760380, 31.087992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108990, 40.664009, 31.160366>,  <39.454899, 40.503395, 31.280989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108990, 40.664009, 31.160366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381573, -0.135037, 0.914422,
		0.326455, 0.905832, 0.269993,
		-0.864772, 0.401539, -0.301557,
		38.849560, 40.784470, 31.069899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278778, 41.006783, 31.758892>,  <39.454899, 40.503395, 31.280989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278778, 41.006783, 31.758892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937538, 40.918861, 31.569616>,  <38.732796, 40.866108, 31.456051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937538, 40.918861, 31.569616>,  <39.278778, 41.006783, 31.758892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937538, 40.918861, 31.569616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459808, -0.111877, 0.880943,
		-0.246574, 0.969108, -0.005625,
		-0.853099, -0.219804, -0.473190,
		38.681610, 40.852921, 31.427660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712086, 41.286156, 32.193829>,  <39.278778, 41.006783, 31.758892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712086, 41.286156, 32.193829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546829, 41.002800, 31.964918>,  <38.447674, 40.832787, 31.827572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546829, 41.002800, 31.964918>,  <38.712086, 41.286156, 32.193829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546829, 41.002800, 31.964918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584928, -0.275223, 0.762962,
		-0.697975, 0.649955, -0.300647,
		-0.413146, -0.708386, -0.572276,
		38.422886, 40.790283, 31.793236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086487, 41.344135, 32.432175>,  <38.712086, 41.286156, 32.193829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086487, 41.344135, 32.432175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088398, 40.993095, 32.240425>,  <38.089546, 40.782471, 32.125378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088398, 40.993095, 32.240425>,  <38.086487, 41.344135, 32.432175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088398, 40.993095, 32.240425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661849, -0.362133, 0.656366,
		-0.749622, 0.314132, -0.582570,
		0.004782, -0.877599, -0.479370,
		38.089832, 40.729816, 32.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378056, 41.189598, 32.363201>,  <38.086487, 41.344135, 32.432175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378056, 41.189598, 32.363201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585606, 40.849781, 32.325146>,  <37.710136, 40.645893, 32.302315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585606, 40.849781, 32.325146>,  <37.378056, 41.189598, 32.363201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585606, 40.849781, 32.325146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614101, -0.447850, 0.649854,
		-0.594684, -0.278769, -0.754081,
		0.518874, -0.849540, -0.095137,
		37.741268, 40.594917, 32.296604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915398, 40.660461, 32.140636>,  <37.378056, 41.189598, 32.363201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915398, 40.660461, 32.140636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217968, 40.468338, 32.318230>,  <37.399509, 40.353062, 32.424786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217968, 40.468338, 32.318230>,  <36.915398, 40.660461, 32.140636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217968, 40.468338, 32.318230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644283, -0.664178, 0.379166,
		0.112764, -0.572860, -0.811859,
		0.756428, -0.480311, 0.443979,
		37.444897, 40.324245, 32.451424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693497, 39.970909, 32.131794>,  <36.915398, 40.660461, 32.140636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693497, 39.970909, 32.131794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001484, 39.978436, 32.386913>,  <37.186275, 39.982952, 32.539986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001484, 39.978436, 32.386913>,  <36.693497, 39.970909, 32.131794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001484, 39.978436, 32.386913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477043, -0.646858, 0.594983,
		0.423760, -0.762379, -0.489087,
		0.769972, 0.018814, 0.637800,
		37.232475, 39.984081, 32.578255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696617, 39.269775, 32.455593>,  <36.693497, 39.970909, 32.131794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696617, 39.269775, 32.455593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873859, 39.510612, 32.721272>,  <36.980206, 39.655113, 32.880676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873859, 39.510612, 32.721272>,  <36.696617, 39.269775, 32.455593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873859, 39.510612, 32.721272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505489, -0.444078, 0.739781,
		0.740366, -0.663540, 0.107578,
		0.443101, 0.602088, 0.664192,
		37.006790, 39.691238, 32.920528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960331, 38.860947, 32.944149>,  <36.696617, 39.269775, 32.455593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960331, 38.860947, 32.944149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967762, 39.219852, 33.120594>,  <36.972221, 39.435196, 33.226460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967762, 39.219852, 33.120594>,  <36.960331, 38.860947, 32.944149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967762, 39.219852, 33.120594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648379, -0.325030, 0.688448,
		0.761091, -0.298797, 0.575726,
		0.018578, 0.897260, 0.441111,
		36.973335, 39.489029, 33.252926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132973, 38.299652, 32.433212>,  <36.960331, 38.860947, 32.944149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132973, 38.299652, 32.433212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782284, 38.155556, 32.305729>,  <36.571869, 38.069096, 32.229237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782284, 38.155556, 32.305729>,  <37.132973, 38.299652, 32.433212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782284, 38.155556, 32.305729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165971, 0.395336, -0.903417,
		0.451454, -0.844944, -0.286809,
		-0.876723, -0.360249, -0.318713,
		36.519268, 38.047482, 32.210117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337086, 37.759541, 31.879652>,  <37.132973, 38.299652, 32.433212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337086, 37.759541, 31.879652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963001, 37.885731, 31.815338>,  <36.738552, 37.961445, 31.776751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963001, 37.885731, 31.815338>,  <37.337086, 37.759541, 31.879652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963001, 37.885731, 31.815338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213351, 0.139655, -0.966943,
		-0.282596, -0.938600, -0.197915,
		-0.935212, 0.315479, -0.160785,
		36.682438, 37.980373, 31.767103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124683, 37.526161, 31.237638>,  <37.337086, 37.759541, 31.879652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124683, 37.526161, 31.237638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865894, 37.827034, 31.287661>,  <36.710621, 38.007557, 31.317673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865894, 37.827034, 31.287661>,  <37.124683, 37.526161, 31.237638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865894, 37.827034, 31.287661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137420, 0.276336, -0.951185,
		-0.750025, -0.598210, -0.282148,
		-0.646976, 0.752186, 0.125053,
		36.671803, 38.052689, 31.325176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659588, 37.412464, 30.700426>,  <37.124683, 37.526161, 31.237638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659588, 37.412464, 30.700426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614830, 37.799374, 30.791519>,  <36.587975, 38.031521, 30.846174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614830, 37.799374, 30.791519>,  <36.659588, 37.412464, 30.700426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614830, 37.799374, 30.791519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007807, 0.230018, -0.973155,
		-0.993690, -0.107110, -0.033289,
		-0.111892, 0.967274, 0.227731,
		36.581261, 38.089558, 30.859838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114723, 37.706409, 30.164730>,  <36.659588, 37.412464, 30.700426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114723, 37.706409, 30.164730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314651, 38.012711, 30.326618>,  <36.434608, 38.196491, 30.423752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314651, 38.012711, 30.326618>,  <36.114723, 37.706409, 30.164730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314651, 38.012711, 30.326618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095276, 0.415829, -0.904438,
		-0.860873, 0.490617, 0.134882,
		0.499821, 0.765755, 0.404720,
		36.464596, 38.242435, 30.448034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945347, 38.251839, 29.761997>,  <36.114723, 37.706409, 30.164730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945347, 38.251839, 29.761997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290768, 38.364727, 29.929155>,  <36.498020, 38.432461, 30.029449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290768, 38.364727, 29.929155>,  <35.945347, 38.251839, 29.761997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290768, 38.364727, 29.929155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206365, 0.558365, -0.803518,
		-0.460104, 0.780117, 0.423936,
		0.863549, 0.282216, 0.417895,
		36.549831, 38.449390, 30.054523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048805, 38.894459, 29.448038>,  <35.945347, 38.251839, 29.761997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048805, 38.894459, 29.448038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415703, 38.782413, 29.561321>,  <36.635841, 38.715187, 29.629292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415703, 38.782413, 29.561321>,  <36.048805, 38.894459, 29.448038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415703, 38.782413, 29.561321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369575, 0.333211, -0.867401,
		0.148599, 0.900283, 0.409156,
		0.917242, -0.280109, 0.283207,
		36.690876, 38.698380, 29.646284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390282, 39.277939, 28.947039>,  <36.048805, 38.894459, 29.448038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390282, 39.277939, 28.947039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682198, 39.065754, 29.119560>,  <36.857346, 38.938442, 29.223072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682198, 39.065754, 29.119560>,  <36.390282, 39.277939, 28.947039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682198, 39.065754, 29.119560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575382, 0.135823, -0.806528,
		0.369253, 0.836756, 0.404341,
		0.729786, -0.530463, 0.431302,
		36.901134, 38.906616, 29.248951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122974, 39.675655, 29.107613>,  <36.390282, 39.277939, 28.947039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122974, 39.675655, 29.107613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178322, 39.281231, 29.070654>,  <37.211533, 39.044575, 29.048479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178322, 39.281231, 29.070654>,  <37.122974, 39.675655, 29.107613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178322, 39.281231, 29.070654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456408, 0.146284, -0.877663,
		0.878945, 0.079274, 0.470288,
		0.138372, -0.986061, -0.092394,
		37.219833, 38.985413, 29.042936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763584, 39.753574, 28.830860>,  <37.122974, 39.675655, 29.107613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763584, 39.753574, 28.830860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652229, 39.374203, 28.770222>,  <37.585415, 39.146580, 28.733839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652229, 39.374203, 28.770222>,  <37.763584, 39.753574, 28.830860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652229, 39.374203, 28.770222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635909, -0.063717, -0.769130,
		0.719806, -0.310519, 0.620852,
		-0.278388, -0.948429, -0.151598,
		37.568714, 39.089672, 28.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359432, 39.383232, 28.853931>,  <37.763584, 39.753574, 28.830860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359432, 39.383232, 28.853931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081329, 39.177132, 28.653479>,  <37.914467, 39.053471, 28.533207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081329, 39.177132, 28.653479>,  <38.359432, 39.383232, 28.853931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081329, 39.177132, 28.653479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538646, 0.088120, -0.837911,
		0.475895, -0.852496, 0.216273,
		-0.695258, -0.515252, -0.501130,
		37.872753, 39.022556, 28.503139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669617, 38.955357, 28.425301>,  <38.359432, 39.383232, 28.853931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669617, 38.955357, 28.425301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304260, 38.939114, 28.263277>,  <38.085049, 38.929367, 28.166063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304260, 38.939114, 28.263277>,  <38.669617, 38.955357, 28.425301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304260, 38.939114, 28.263277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406361, -0.031465, -0.913171,
		0.024343, -0.998679, 0.045244,
		-0.913389, -0.040614, -0.405058,
		38.030243, 38.926929, 28.141760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608719, 38.382778, 27.993696>,  <38.669617, 38.955357, 28.425301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608719, 38.382778, 27.993696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329521, 38.631882, 27.852289>,  <38.162003, 38.781342, 27.767445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329521, 38.631882, 27.852289>,  <38.608719, 38.382778, 27.993696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329521, 38.631882, 27.852289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274335, -0.223464, -0.935310,
		-0.661469, -0.749826, -0.014867,
		-0.697997, 0.622756, -0.353518,
		38.120121, 38.818710, 27.746233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407906, 38.064758, 27.357191>,  <38.608719, 38.382778, 27.993696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407906, 38.064758, 27.357191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295288, 38.447044, 27.322935>,  <38.227718, 38.676418, 27.302382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295288, 38.447044, 27.322935>,  <38.407906, 38.064758, 27.357191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295288, 38.447044, 27.322935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321600, 0.009897, -0.946824,
		-0.904051, -0.294113, -0.310146,
		-0.281543, 0.955720, -0.085640,
		38.210827, 38.733761, 27.297243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.389568, 39.748158, 25.073858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.704811, 39.945324, 25.221325>,  <33.893959, 40.063625, 25.309805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.704811, 39.945324, 25.221325>,  <33.389568, 39.748158, 25.073858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704811, 39.945324, 25.221325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251086, -0.289400, 0.923690,
		0.561996, -0.820536, -0.104313,
		0.788109, 0.492919, 0.368667,
		33.941242, 40.093201, 25.331924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755642, 39.335003, 25.429090>,  <33.389568, 39.748158, 25.073858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755642, 39.335003, 25.429090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.838642, 39.692997, 25.587048>,  <33.888443, 39.907795, 25.681822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.838642, 39.692997, 25.587048>,  <33.755642, 39.335003, 25.429090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838642, 39.692997, 25.587048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226177, -0.348845, 0.909478,
		0.951729, -0.278033, 0.130040,
		0.207501, 0.894989, 0.394890,
		33.900894, 39.961494, 25.705515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225864, 39.153751, 25.875793>,  <33.755642, 39.335003, 25.429090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225864, 39.153751, 25.875793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.108887, 39.511887, 26.010166>,  <34.038700, 39.726768, 26.090790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.108887, 39.511887, 26.010166>,  <34.225864, 39.153751, 25.875793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108887, 39.511887, 26.010166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017028, -0.346356, 0.937949,
		0.956132, 0.280015, 0.086043,
		-0.292441, 0.895337, 0.335931,
		34.021156, 39.780487, 26.110945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712811, 39.489819, 26.381443>,  <34.225864, 39.153751, 25.875793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712811, 39.489819, 26.381443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366299, 39.679890, 26.443104>,  <34.158390, 39.793934, 26.480101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.366299, 39.679890, 26.443104>,  <34.712811, 39.489819, 26.381443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366299, 39.679890, 26.443104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053132, -0.219186, 0.974235,
		0.496726, 0.852150, 0.164630,
		-0.866279, 0.475181, 0.154152,
		34.106415, 39.822445, 26.489349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829666, 39.840050, 26.982746>,  <34.712811, 39.489819, 26.381443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829666, 39.840050, 26.982746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431206, 39.811226, 26.962790>,  <34.192131, 39.793934, 26.950815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431206, 39.811226, 26.962790>,  <34.829666, 39.840050, 26.982746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431206, 39.811226, 26.962790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030361, -0.250291, 0.967695,
		-0.082216, 0.965486, 0.247140,
		-0.996152, -0.072056, -0.049891,
		34.132359, 39.789608, 26.947823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622807, 40.133667, 27.656721>,  <34.829666, 39.840050, 26.982746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622807, 40.133667, 27.656721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.305058, 39.939320, 27.510897>,  <34.114410, 39.822712, 27.423403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.305058, 39.939320, 27.510897>,  <34.622807, 40.133667, 27.656721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305058, 39.939320, 27.510897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291374, -0.221822, 0.930535,
		-0.532988, 0.845413, 0.034639,
		-0.794371, -0.485871, -0.364561,
		34.066746, 39.793560, 27.401529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972286, 40.525692, 28.049702>,  <34.622807, 40.133667, 27.656721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972286, 40.525692, 28.049702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916130, 40.146435, 27.935638>,  <33.882435, 39.918880, 27.867201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.916130, 40.146435, 27.935638>,  <33.972286, 40.525692, 28.049702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916130, 40.146435, 27.935638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309708, -0.231502, 0.922219,
		-0.940410, 0.217788, -0.261146,
		-0.140392, -0.948143, -0.285158,
		33.874012, 39.861992, 27.850092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346680, 40.267929, 28.445705>,  <33.972286, 40.525692, 28.049702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346680, 40.267929, 28.445705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.503498, 39.938095, 28.282562>,  <33.597591, 39.740192, 28.184675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.503498, 39.938095, 28.282562>,  <33.346680, 40.267929, 28.445705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503498, 39.938095, 28.282562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235616, -0.518569, 0.821931,
		-0.889259, -0.226139, -0.397591,
		0.392050, -0.824589, -0.407860,
		33.621113, 39.690720, 28.160204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832279, 39.752796, 28.603546>,  <33.346680, 40.267929, 28.445705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832279, 39.752796, 28.603546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182800, 39.575382, 28.528324>,  <33.393112, 39.468933, 28.483191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182800, 39.575382, 28.528324>,  <32.832279, 39.752796, 28.603546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182800, 39.575382, 28.528324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078772, -0.517018, 0.852342,
		-0.475268, -0.732101, -0.488005,
		0.876307, -0.443532, -0.188053,
		33.445694, 39.442322, 28.471907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660633, 39.094669, 28.734869>,  <32.832279, 39.752796, 28.603546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660633, 39.094669, 28.734869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.058842, 39.107407, 28.770472>,  <33.297768, 39.115047, 28.791834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.058842, 39.107407, 28.770472>,  <32.660633, 39.094669, 28.734869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058842, 39.107407, 28.770472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046233, -0.657247, 0.752256,
		0.082454, -0.753002, -0.652831,
		0.995522, 0.031844, 0.089006,
		33.357498, 39.116959, 28.797173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673813, 38.511967, 29.018835>,  <32.660633, 39.094669, 28.734869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673813, 38.511967, 29.018835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.054440, 38.624676, 29.068014>,  <33.282818, 38.692303, 29.097523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.054440, 38.624676, 29.068014>,  <32.673813, 38.511967, 29.018835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054440, 38.624676, 29.068014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018117, -0.450625, 0.892529,
		0.306898, -0.847077, -0.433906,
		0.951570, 0.281776, 0.122950,
		33.339912, 38.709209, 29.104898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050251, 37.893692, 29.169655>,  <32.673813, 38.511967, 29.018835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050251, 37.893692, 29.169655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.238926, 38.214916, 29.315313>,  <33.352131, 38.407650, 29.402708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.238926, 38.214916, 29.315313>,  <33.050251, 37.893692, 29.169655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238926, 38.214916, 29.315313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006378, -0.409856, 0.912128,
		0.881741, -0.432564, -0.188203,
		0.471690, 0.803061, 0.364146,
		33.380432, 38.455833, 29.424557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486137, 37.516903, 29.564928>,  <33.050251, 37.893692, 29.169655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486137, 37.516903, 29.564928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466438, 37.896118, 29.690657>,  <33.454620, 38.123646, 29.766094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.466438, 37.896118, 29.690657>,  <33.486137, 37.516903, 29.564928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466438, 37.896118, 29.690657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037090, -0.316222, 0.947960,
		0.998098, 0.035024, 0.050735,
		-0.049245, 0.948039, 0.314322,
		33.451664, 38.180531, 29.784954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861259, 37.439766, 30.113907>,  <33.486137, 37.516903, 29.564928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861259, 37.439766, 30.113907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634243, 37.765137, 30.164862>,  <33.498032, 37.960358, 30.195435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634243, 37.765137, 30.164862>,  <33.861259, 37.439766, 30.113907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634243, 37.765137, 30.164862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235069, -0.308366, 0.921766,
		0.789072, 0.493199, 0.366223,
		-0.567545, 0.813428, 0.127388,
		33.463978, 38.009167, 30.203077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459614, 37.181934, 30.284121>,  <33.861259, 37.439766, 30.113907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459614, 37.181934, 30.284121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.457108, 36.797760, 30.172745>,  <34.455605, 36.567257, 30.105919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.457108, 36.797760, 30.172745>,  <34.459614, 37.181934, 30.284121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457108, 36.797760, 30.172745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350909, 0.258626, -0.899986,
		0.936388, -0.103343, 0.335405,
		-0.006263, -0.960434, -0.278438,
		34.455227, 36.509628, 30.089212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215523, 37.004097, 30.018085>,  <34.459614, 37.181934, 30.284121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215523, 37.004097, 30.018085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.947540, 36.749683, 29.864925>,  <34.786751, 36.597034, 29.773029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.947540, 36.749683, 29.864925>,  <35.215523, 37.004097, 30.018085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947540, 36.749683, 29.864925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308349, 0.230777, -0.922856,
		0.675337, -0.736340, 0.041511,
		-0.669956, -0.636038, -0.382902,
		34.746552, 36.558872, 29.750055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606312, 36.587475, 29.470675>,  <35.215523, 37.004097, 30.018085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606312, 36.587475, 29.470675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219322, 36.535656, 29.383768>,  <34.987129, 36.504566, 29.331625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219322, 36.535656, 29.383768>,  <35.606312, 36.587475, 29.470675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219322, 36.535656, 29.383768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209503, 0.070961, -0.975230,
		0.141755, -0.989031, -0.041513,
		-0.967478, -0.129547, -0.217264,
		34.929077, 36.496792, 29.318588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641270, 36.063484, 28.964592>,  <35.606312, 36.587475, 29.470675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641270, 36.063484, 28.964592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.270012, 36.196690, 28.898088>,  <35.047256, 36.276615, 28.858187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.270012, 36.196690, 28.898088>,  <35.641270, 36.063484, 28.964592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270012, 36.196690, 28.898088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200260, 0.070261, -0.977220,
		-0.313749, -0.940299, -0.131902,
		-0.928147, 0.333017, -0.166260,
		34.991570, 36.296593, 28.848211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354446, 35.640789, 28.421793>,  <35.641270, 36.063484, 28.964592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354446, 35.640789, 28.421793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165596, 35.993179, 28.409327>,  <35.052284, 36.204613, 28.401846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165596, 35.993179, 28.409327>,  <35.354446, 35.640789, 28.421793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165596, 35.993179, 28.409327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059419, -0.003471, -0.998227,
		-0.879524, -0.473145, -0.050708,
		-0.472130, 0.880978, -0.031167,
		35.023956, 36.257473, 28.399977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857304, 35.544704, 27.875801>,  <35.354446, 35.640789, 28.421793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857304, 35.544704, 27.875801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.871891, 35.939411, 27.938999>,  <34.880642, 36.176235, 27.976917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.871891, 35.939411, 27.938999>,  <34.857304, 35.544704, 27.875801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871891, 35.939411, 27.938999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110315, 0.153157, -0.982025,
		-0.993227, 0.053243, -0.103270,
		0.036469, 0.986767, 0.157993,
		34.882832, 36.235439, 27.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440968, 35.837685, 27.288717>,  <34.857304, 35.544704, 27.875801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440968, 35.837685, 27.288717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616405, 36.162136, 27.443483>,  <34.721668, 36.356808, 27.536343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616405, 36.162136, 27.443483>,  <34.440968, 35.837685, 27.288717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616405, 36.162136, 27.443483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251586, 0.302497, -0.919348,
		-0.862749, 0.500567, -0.071393,
		0.438599, 0.811128, 0.386915,
		34.747986, 36.405476, 27.559557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233238, 36.492973, 26.823702>,  <34.440968, 35.837685, 27.288717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233238, 36.492973, 26.823702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577068, 36.562508, 27.015911>,  <34.783367, 36.604229, 27.131237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.577068, 36.562508, 27.015911>,  <34.233238, 36.492973, 26.823702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577068, 36.562508, 27.015911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354757, 0.473806, -0.806012,
		-0.367792, 0.863300, 0.345603,
		0.859579, 0.173840, 0.480524,
		34.834942, 36.614658, 27.160069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328354, 37.204159, 26.586239>,  <34.233238, 36.492973, 26.823702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328354, 37.204159, 26.586239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.699360, 37.090691, 26.683607>,  <34.921963, 37.022610, 26.742027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.699360, 37.090691, 26.683607>,  <34.328354, 37.204159, 26.586239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699360, 37.090691, 26.683607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366888, 0.566284, -0.738048,
		0.071516, 0.773857, 0.629310,
		0.927512, -0.283668, 0.243420,
		34.977615, 37.005589, 26.756634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704056, 37.773849, 26.444164>,  <34.328354, 37.204159, 26.586239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704056, 37.773849, 26.444164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.968819, 37.476257, 26.480743>,  <35.127678, 37.297703, 26.502691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.968819, 37.476257, 26.480743>,  <34.704056, 37.773849, 26.444164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968819, 37.476257, 26.480743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518194, 0.366017, -0.772985,
		0.541615, 0.559037, 0.627798,
		0.661912, -0.743982, 0.091449,
		35.167393, 37.253063, 26.508179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409195, 37.982475, 26.392529>,  <34.704056, 37.773849, 26.444164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409195, 37.982475, 26.392529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448139, 37.594551, 26.303091>,  <35.471504, 37.361797, 26.249430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448139, 37.594551, 26.303091>,  <35.409195, 37.982475, 26.392529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448139, 37.594551, 26.303091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432367, 0.243565, -0.868179,
		0.896427, -0.012151, 0.443025,
		0.097356, -0.969808, -0.223592,
		35.477345, 37.303608, 26.236013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002296, 37.996223, 26.056049>,  <35.409195, 37.982475, 26.392529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002296, 37.996223, 26.056049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871365, 37.631027, 25.958632>,  <35.792805, 37.411911, 25.900181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871365, 37.631027, 25.958632>,  <36.002296, 37.996223, 26.056049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871365, 37.631027, 25.958632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452066, 0.075020, -0.888824,
		0.829754, -0.401035, 0.388174,
		-0.327329, -0.912986, -0.243542,
		35.773167, 37.357132, 25.885569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618336, 37.577644, 25.917727>,  <36.002296, 37.996223, 26.056049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618336, 37.577644, 25.917727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296581, 37.437141, 25.726070>,  <36.103527, 37.352840, 25.611076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296581, 37.437141, 25.726070>,  <36.618336, 37.577644, 25.917727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296581, 37.437141, 25.726070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412347, 0.250518, -0.875906,
		0.427701, -0.902142, -0.056675,
		-0.804389, -0.351256, -0.479142,
		36.055264, 37.331764, 25.582327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891960, 37.184994, 25.265112>,  <36.618336, 37.577644, 25.917727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891960, 37.184994, 25.265112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.505428, 37.248985, 25.184496>,  <36.273510, 37.287380, 25.136126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.505428, 37.248985, 25.184496>,  <36.891960, 37.184994, 25.265112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505428, 37.248985, 25.184496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242853, 0.308098, -0.919836,
		-0.085063, -0.937807, -0.336575,
		-0.966327, 0.159982, -0.201542,
		36.215530, 37.296978, 25.124033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131840, 36.416706, 25.132799>,  <36.891960, 37.184994, 25.265112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131840, 36.416706, 25.132799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506123, 36.279530, 25.099722>,  <37.730694, 36.197224, 25.079876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506123, 36.279530, 25.099722>,  <37.131840, 36.416706, 25.132799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506123, 36.279530, 25.099722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193885, -0.695785, 0.691587,
		-0.294707, -0.631093, -0.717544,
		0.935712, -0.342937, -0.082693,
		37.786835, 36.176647, 25.074913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010788, 35.713989, 25.056864>,  <37.131840, 36.416706, 25.132799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010788, 35.713989, 25.056864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385136, 35.773804, 25.184475>,  <37.609745, 35.809692, 25.261042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385136, 35.773804, 25.184475>,  <37.010788, 35.713989, 25.056864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385136, 35.773804, 25.184475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123398, -0.709005, 0.694324,
		0.330022, -0.689166, -0.645085,
		0.935873, 0.149539, 0.319029,
		37.665897, 35.818665, 25.280184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249111, 35.093838, 25.096447>,  <37.010788, 35.713989, 25.056864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249111, 35.093838, 25.096447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455818, 35.328712, 25.345659>,  <37.579842, 35.469639, 25.495186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455818, 35.328712, 25.345659>,  <37.249111, 35.093838, 25.096447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455818, 35.328712, 25.345659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040444, -0.743661, 0.667332,
		0.855170, -0.319658, -0.408048,
		0.516768, 0.587185, 0.623029,
		37.610847, 35.504868, 25.532568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684086, 34.724422, 25.554533>,  <37.249111, 35.093838, 25.096447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684086, 34.724422, 25.554533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736145, 35.064831, 25.758036>,  <37.767380, 35.269073, 25.880136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736145, 35.064831, 25.758036>,  <37.684086, 34.724422, 25.554533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736145, 35.064831, 25.758036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168691, -0.486633, 0.857165,
		0.977039, -0.197382, 0.080224,
		0.130149, 0.851017, 0.508756,
		37.775188, 35.320137, 25.910662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067741, 34.532822, 26.079517>,  <37.684086, 34.724422, 25.554533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067741, 34.532822, 26.079517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876892, 34.863842, 26.197851>,  <37.762383, 35.062454, 26.268852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876892, 34.863842, 26.197851>,  <38.067741, 34.532822, 26.079517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876892, 34.863842, 26.197851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061318, -0.367149, 0.928139,
		0.876695, 0.424697, 0.225919,
		-0.477123, 0.827547, 0.295836,
		37.733753, 35.112106, 26.286602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348000, 34.762188, 26.755932>,  <38.067741, 34.532822, 26.079517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348000, 34.762188, 26.755932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985363, 34.928200, 26.725382>,  <37.767780, 35.027809, 26.707052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.985363, 34.928200, 26.725382>,  <38.348000, 34.762188, 26.755932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985363, 34.928200, 26.725382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202019, -0.267940, 0.942017,
		0.370504, 0.869457, 0.326758,
		-0.906595, 0.415033, -0.076374,
		37.713383, 35.052711, 26.702469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304585, 35.103710, 27.407875>,  <38.348000, 34.762188, 26.755932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304585, 35.103710, 27.407875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.928844, 35.075325, 27.273659>,  <37.703400, 35.058292, 27.193129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.928844, 35.075325, 27.273659>,  <38.304585, 35.103710, 27.407875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928844, 35.075325, 27.273659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339736, 0.058606, 0.938693,
		-0.046947, 0.995756, -0.079160,
		-0.939348, -0.070963, -0.335543,
		37.647041, 35.054035, 27.172997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906879, 35.661530, 27.727985>,  <38.304585, 35.103710, 27.407875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906879, 35.661530, 27.727985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.659672, 35.367302, 27.617002>,  <37.511345, 35.190765, 27.550413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.659672, 35.367302, 27.617002>,  <37.906879, 35.661530, 27.727985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659672, 35.367302, 27.617002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405909, -0.003682, 0.913906,
		-0.673267, 0.677435, -0.296300,
		-0.618021, -0.735574, -0.277456,
		37.474266, 35.146629, 27.533766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272774, 35.871407, 28.053818>,  <37.906879, 35.661530, 27.727985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272774, 35.871407, 28.053818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.233990, 35.486191, 27.953293>,  <37.210720, 35.255062, 27.892979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.233990, 35.486191, 27.953293>,  <37.272774, 35.871407, 28.053818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233990, 35.486191, 27.953293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519947, -0.166298, 0.837854,
		-0.848678, 0.211904, -0.484605,
		-0.096956, -0.963038, -0.251313,
		37.204903, 35.197281, 27.877899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601044, 35.698906, 28.294151>,  <37.272774, 35.871407, 28.053818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601044, 35.698906, 28.294151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785236, 35.344654, 28.270115>,  <36.895752, 35.132103, 28.255693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785236, 35.344654, 28.270115>,  <36.601044, 35.698906, 28.294151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785236, 35.344654, 28.270115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402277, -0.268551, 0.875245,
		-0.791282, -0.378863, -0.479932,
		0.460484, -0.885631, -0.060092,
		36.923382, 35.078964, 28.252087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190189, 35.235588, 28.539404>,  <36.601044, 35.698906, 28.294151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190189, 35.235588, 28.539404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517910, 35.009434, 28.577518>,  <36.714542, 34.873741, 28.600388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517910, 35.009434, 28.577518>,  <36.190189, 35.235588, 28.539404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517910, 35.009434, 28.577518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337679, -0.341515, 0.877120,
		-0.463370, -0.750804, -0.470724,
		0.819305, -0.565385, 0.095283,
		36.763702, 34.839817, 28.606104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937145, 34.516605, 28.509785>,  <36.190189, 35.235588, 28.539404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937145, 34.516605, 28.509785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.310871, 34.509029, 28.652161>,  <36.535107, 34.504482, 28.737587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.310871, 34.509029, 28.652161>,  <35.937145, 34.516605, 28.509785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310871, 34.509029, 28.652161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299904, -0.581449, 0.756290,
		0.192636, -0.813362, -0.548938,
		0.934317, -0.018940, 0.355939,
		36.591167, 34.503349, 28.758942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078667, 33.846355, 28.603100>,  <35.937145, 34.516605, 28.509785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078667, 33.846355, 28.603100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321434, 34.053257, 28.844463>,  <36.467094, 34.177399, 28.989283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321434, 34.053257, 28.844463>,  <36.078667, 33.846355, 28.603100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321434, 34.053257, 28.844463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364114, -0.493901, 0.789609,
		0.706453, -0.698936, -0.111417,
		0.606915, 0.517253, 0.603410,
		36.503510, 34.208431, 29.025486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329903, 33.269810, 29.065802>,  <36.078667, 33.846355, 28.603100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329903, 33.269810, 29.065802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396492, 33.613884, 29.258619>,  <36.436443, 33.820328, 29.374310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396492, 33.613884, 29.258619>,  <36.329903, 33.269810, 29.065802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396492, 33.613884, 29.258619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344671, -0.407263, 0.845777,
		0.923845, -0.306942, 0.228685,
		0.166469, 0.860188, 0.482042,
		36.446434, 33.871941, 29.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.048244, 38.191608, 26.577518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140213, 38.548717, 26.732489>,  <38.195396, 38.762981, 26.825470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.140213, 38.548717, 26.732489>,  <38.048244, 38.191608, 26.577518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140213, 38.548717, 26.732489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444654, 0.257742, -0.857818,
		-0.865689, 0.369505, -0.337712,
		0.229926, 0.892768, 0.387426,
		38.209190, 38.816547, 26.848717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892227, 38.697575, 26.053864>,  <38.048244, 38.191608, 26.577518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892227, 38.697575, 26.053864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155457, 38.872330, 26.299162>,  <38.313393, 38.977184, 26.446341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155457, 38.872330, 26.299162>,  <37.892227, 38.697575, 26.053864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155457, 38.872330, 26.299162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495176, 0.362437, -0.789582,
		-0.567222, 0.823266, 0.022174,
		0.658073, 0.436889, 0.613244,
		38.352879, 39.003395, 26.483135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081715, 39.264549, 25.714994>,  <37.892227, 38.697575, 26.053864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081715, 39.264549, 25.714994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375000, 39.210094, 25.981487>,  <38.550972, 39.177422, 26.141382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375000, 39.210094, 25.981487>,  <38.081715, 39.264549, 25.714994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375000, 39.210094, 25.981487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677538, 0.229528, -0.698756,
		-0.057793, 0.963734, 0.260530,
		0.733214, -0.136136, 0.666232,
		38.594963, 39.169254, 26.181356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453640, 39.852493, 25.534309>,  <38.081715, 39.264549, 25.714994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453640, 39.852493, 25.534309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682041, 39.609188, 25.754845>,  <38.819080, 39.463203, 25.887165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682041, 39.609188, 25.754845>,  <38.453640, 39.852493, 25.534309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682041, 39.609188, 25.754845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810800, 0.312582, -0.494869,
		0.128672, 0.729596, 0.671664,
		0.571004, -0.608261, 0.551336,
		38.853344, 39.426708, 25.920246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021305, 40.300228, 25.814701>,  <38.453640, 39.852493, 25.534309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021305, 40.300228, 25.814701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.145290, 39.920010, 25.806898>,  <39.219681, 39.691879, 25.802217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.145290, 39.920010, 25.806898>,  <39.021305, 40.300228, 25.814701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145290, 39.920010, 25.806898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768631, 0.262612, -0.583302,
		0.559579, 0.165809, 0.812021,
		0.309963, -0.950548, -0.019506,
		39.238281, 39.634846, 25.801046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683929, 40.345718, 25.898296>,  <39.021305, 40.300228, 25.814701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683929, 40.345718, 25.898296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664692, 39.966061, 25.773844>,  <39.653149, 39.738266, 25.699171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664692, 39.966061, 25.773844>,  <39.683929, 40.345718, 25.898296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664692, 39.966061, 25.773844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806044, 0.147080, -0.573290,
		0.589898, -0.278360, 0.757981,
		-0.048097, -0.949149, -0.311132,
		39.650265, 39.681316, 25.680504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375195, 40.110939, 26.062399>,  <39.683929, 40.345718, 25.898296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375195, 40.110939, 26.062399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194733, 39.896236, 25.777203>,  <40.086456, 39.767414, 25.606085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.194733, 39.896236, 25.777203>,  <40.375195, 40.110939, 26.062399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194733, 39.896236, 25.777203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843164, 0.005452, -0.537629,
		0.292462, -0.843721, 0.450112,
		-0.451155, -0.536754, -0.712990,
		40.059387, 39.735210, 25.563305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816586, 39.685760, 25.874046>,  <40.375195, 40.110939, 26.062399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816586, 39.685760, 25.874046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.576714, 39.667961, 25.554445>,  <40.432789, 39.657284, 25.362684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.576714, 39.667961, 25.554445>,  <40.816586, 39.685760, 25.874046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576714, 39.667961, 25.554445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788216, 0.139591, -0.599358,
		0.138226, -0.989207, -0.048606,
		-0.599674, -0.044534, -0.799004,
		40.396809, 39.654613, 25.314745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102291, 39.263130, 25.448296>,  <40.816586, 39.685760, 25.874046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102291, 39.263130, 25.448296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.868176, 39.459911, 25.190483>,  <40.727707, 39.577980, 25.035795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.868176, 39.459911, 25.190483>,  <41.102291, 39.263130, 25.448296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868176, 39.459911, 25.190483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779174, 0.121311, -0.614957,
		-0.224343, -0.862127, -0.454320,
		-0.585285, 0.491956, -0.644532,
		40.692589, 39.607498, 24.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297878, 39.034885, 24.805412>,  <41.102291, 39.263130, 25.448296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297878, 39.034885, 24.805412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099735, 39.374981, 24.734180>,  <40.980850, 39.579041, 24.691441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099735, 39.374981, 24.734180>,  <41.297878, 39.034885, 24.805412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099735, 39.374981, 24.734180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678528, 0.250697, -0.690471,
		-0.542424, -0.462859, -0.701097,
		-0.495354, 0.850243, -0.178079,
		40.951130, 39.630054, 24.680758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230843, 39.109837, 24.046747>,  <41.297878, 39.034885, 24.805412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230843, 39.109837, 24.046747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.176876, 39.490055, 24.158640>,  <41.144497, 39.718185, 24.225777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.176876, 39.490055, 24.158640>,  <41.230843, 39.109837, 24.046747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176876, 39.490055, 24.158640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477971, 0.309730, -0.821955,
		-0.867952, 0.022810, -0.496123,
		-0.134916, 0.950551, 0.279734,
		41.136402, 39.775219, 24.242559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665932, 39.557518, 23.660816>,  <41.230843, 39.109837, 24.046747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665932, 39.557518, 23.660816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.974182, 39.768898, 23.803299>,  <41.159130, 39.895725, 23.888788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.974182, 39.768898, 23.803299>,  <40.665932, 39.557518, 23.660816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974182, 39.768898, 23.803299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258601, 0.251552, -0.932656,
		-0.582466, 0.810840, 0.057194,
		0.770622, 0.528450, 0.356205,
		41.205368, 39.927433, 23.910160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792568, 39.880657, 23.101204>,  <40.665932, 39.557518, 23.660816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792568, 39.880657, 23.101204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.083630, 40.009247, 23.343584>,  <41.258266, 40.086399, 23.489012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.083630, 40.009247, 23.343584>,  <40.792568, 39.880657, 23.101204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083630, 40.009247, 23.343584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480012, 0.392410, -0.784604,
		-0.490012, 0.861782, 0.131226,
		0.727652, 0.321475, 0.605951,
		41.301926, 40.105690, 23.525370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926739, 40.559139, 22.787586>,  <40.792568, 39.880657, 23.101204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926739, 40.559139, 22.787586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.263428, 40.427517, 22.958807>,  <41.465443, 40.348545, 23.061539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.263428, 40.427517, 22.958807>,  <40.926739, 40.559139, 22.787586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263428, 40.427517, 22.958807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534667, 0.397770, -0.745594,
		0.075077, 0.856446, 0.510748,
		0.841721, -0.329057, 0.428050,
		41.515945, 40.328800, 23.087221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636486, 40.195663, 22.196974>,  <40.926739, 40.559139, 22.787586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636486, 40.195663, 22.196974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.455265, 40.026573, 21.883018>,  <40.346535, 39.925117, 21.694645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.455265, 40.026573, 21.883018>,  <40.636486, 40.195663, 22.196974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455265, 40.026573, 21.883018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597358, -0.509587, 0.619261,
		-0.661747, 0.749415, -0.021651,
		-0.453050, -0.422727, -0.784887,
		40.319351, 39.899754, 21.647552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889557, 40.210056, 22.261492>,  <40.636486, 40.195663, 22.196974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889557, 40.210056, 22.261492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985184, 39.892815, 22.037411>,  <40.042561, 39.702469, 21.902962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985184, 39.892815, 22.037411>,  <39.889557, 40.210056, 22.261492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985184, 39.892815, 22.037411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603860, -0.573232, 0.553857,
		-0.760394, 0.205875, -0.615968,
		0.239068, -0.793108, -0.560202,
		40.056904, 39.654881, 21.869350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424660, 39.730812, 22.551245>,  <39.889557, 40.210056, 22.261492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424660, 39.730812, 22.551245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614155, 39.509335, 22.277313>,  <39.727852, 39.376446, 22.112953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614155, 39.509335, 22.277313>,  <39.424660, 39.730812, 22.551245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614155, 39.509335, 22.277313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442478, -0.821999, 0.358512,
		-0.761436, 0.133181, -0.634411,
		0.473738, -0.553697, -0.684830,
		39.756275, 39.343227, 22.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937283, 39.398979, 22.126808>,  <39.424660, 39.730812, 22.551245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937283, 39.398979, 22.126808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.277657, 39.189598, 22.109324>,  <39.481880, 39.063969, 22.098833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.277657, 39.189598, 22.109324>,  <38.937283, 39.398979, 22.126808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277657, 39.189598, 22.109324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441435, -0.757740, 0.480588,
		-0.284687, -0.389652, -0.875856,
		0.850934, -0.523451, -0.043713,
		39.532936, 39.032562, 22.096210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701656, 38.714626, 21.933949>,  <38.937283, 39.398979, 22.126808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701656, 38.714626, 21.933949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.068989, 38.663998, 22.083960>,  <39.289387, 38.633621, 22.173965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.068989, 38.663998, 22.083960>,  <38.701656, 38.714626, 21.933949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068989, 38.663998, 22.083960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301873, -0.836800, 0.456770,
		0.256006, -0.532677, -0.806670,
		0.918332, -0.126576, 0.375027,
		39.344490, 38.626026, 22.196468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805271, 38.058334, 21.869869>,  <38.701656, 38.714626, 21.933949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805271, 38.058334, 21.869869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067825, 38.171009, 22.149813>,  <39.225357, 38.238613, 22.317780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067825, 38.171009, 22.149813>,  <38.805271, 38.058334, 21.869869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067825, 38.171009, 22.149813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314242, -0.741283, 0.593086,
		0.685861, -0.609221, -0.398051,
		0.656388, 0.281690, 0.699860,
		39.264744, 38.255516, 22.359772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159187, 37.334953, 22.057112>,  <38.805271, 38.058334, 21.869869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159187, 37.334953, 22.057112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.206779, 37.596222, 22.356232>,  <39.235336, 37.752983, 22.535704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.206779, 37.596222, 22.356232>,  <39.159187, 37.334953, 22.057112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206779, 37.596222, 22.356232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315021, -0.689405, 0.652290,
		0.941597, -0.313183, 0.123737,
		0.118982, 0.653175, 0.747801,
		39.242474, 37.792175, 22.580572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317902, 36.937809, 22.600857>,  <39.159187, 37.334953, 22.057112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317902, 36.937809, 22.600857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204655, 37.279125, 22.776011>,  <39.136707, 37.483913, 22.881104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.204655, 37.279125, 22.776011>,  <39.317902, 36.937809, 22.600857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204655, 37.279125, 22.776011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408654, -0.520370, 0.749811,
		0.867668, 0.033340, 0.496025,
		-0.283115, 0.853290, 0.437884,
		39.119720, 37.535110, 22.907375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523182, 36.842918, 23.211843>,  <39.317902, 36.937809, 22.600857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523182, 36.842918, 23.211843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253010, 37.135151, 23.251921>,  <39.090908, 37.310490, 23.275967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253010, 37.135151, 23.251921>,  <39.523182, 36.842918, 23.211843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253010, 37.135151, 23.251921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366327, -0.450338, 0.814248,
		0.639999, 0.513264, 0.571805,
		-0.675430, 0.730586, 0.100194,
		39.050381, 37.354328, 23.281979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486141, 37.015968, 24.019213>,  <39.523182, 36.842918, 23.211843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486141, 37.015968, 24.019213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153214, 37.166218, 23.856165>,  <38.953457, 37.256367, 23.758335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153214, 37.166218, 23.856165>,  <39.486141, 37.015968, 24.019213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153214, 37.166218, 23.856165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535831, -0.356969, 0.765152,
		0.141903, 0.855264, 0.498384,
		-0.832315, 0.375627, -0.407622,
		38.903519, 37.278908, 23.733879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286831, 37.452236, 24.525772>,  <39.486141, 37.015968, 24.019213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286831, 37.452236, 24.525772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983356, 37.327747, 24.296852>,  <38.801270, 37.253056, 24.159500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983356, 37.327747, 24.296852>,  <39.286831, 37.452236, 24.525772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983356, 37.327747, 24.296852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293613, -0.620853, 0.726865,
		-0.581532, 0.719501, 0.379656,
		-0.758691, -0.311223, -0.572301,
		38.755749, 37.234379, 24.125162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790390, 37.431831, 24.948540>,  <39.286831, 37.452236, 24.525772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790390, 37.431831, 24.948540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631302, 37.231796, 24.640842>,  <38.535851, 37.111774, 24.456224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.631302, 37.231796, 24.640842>,  <38.790390, 37.431831, 24.948540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631302, 37.231796, 24.640842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397676, -0.661600, 0.635719,
		-0.826846, 0.558745, 0.064257,
		-0.397717, -0.500088, -0.769241,
		38.511986, 37.081768, 24.410070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034904, 37.415691, 24.961142>,  <38.790390, 37.431831, 24.948540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034904, 37.415691, 24.961142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145332, 37.088802, 24.758780>,  <38.211590, 36.892670, 24.637362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145332, 37.088802, 24.758780>,  <38.034904, 37.415691, 24.961142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145332, 37.088802, 24.758780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498595, -0.571765, 0.651527,
		-0.821699, 0.072376, -0.565307,
		0.276068, -0.817218, -0.505905,
		38.228153, 36.843636, 24.607008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437969, 37.024563, 24.798134>,  <38.034904, 37.415691, 24.961142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437969, 37.024563, 24.798134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741234, 36.763756, 24.794832>,  <37.923191, 36.607273, 24.792850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741234, 36.763756, 24.794832>,  <37.437969, 37.024563, 24.798134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741234, 36.763756, 24.794832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543292, -0.638641, 0.544951,
		-0.360586, -0.408678, -0.838427,
		0.758163, -0.652013, -0.008254,
		37.968681, 36.568153, 24.792356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728138, 36.946377, 24.444544>,  <37.437969, 37.024563, 24.798134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728138, 36.946377, 24.444544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435070, 37.189400, 24.567223>,  <36.259228, 37.335213, 24.640829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435070, 37.189400, 24.567223>,  <36.728138, 36.946377, 24.444544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435070, 37.189400, 24.567223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065826, 0.511789, -0.856586,
		-0.677390, -0.607408, -0.414967,
		-0.732673, 0.607558, 0.306697,
		36.215267, 37.371666, 24.659231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324505, 36.909836, 23.841021>,  <36.728138, 36.946377, 24.444544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324505, 36.909836, 23.841021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.206215, 37.237495, 24.037609>,  <36.135239, 37.434090, 24.155561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.206215, 37.237495, 24.037609>,  <36.324505, 36.909836, 23.841021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206215, 37.237495, 24.037609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143120, 0.546668, -0.825028,
		-0.944490, -0.173645, -0.278902,
		-0.295729, 0.819146, 0.491470,
		36.117496, 37.483238, 24.185051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865757, 37.322002, 23.426039>,  <36.324505, 36.909836, 23.841021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865757, 37.322002, 23.426039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.985321, 37.592793, 23.695068>,  <36.057060, 37.755268, 23.856485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.985321, 37.592793, 23.695068>,  <35.865757, 37.322002, 23.426039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985321, 37.592793, 23.695068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215088, 0.638865, -0.738640,
		-0.929726, 0.365447, 0.045352,
		0.298908, 0.676979, 0.672573,
		36.074993, 37.795887, 23.896841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467194, 37.956192, 23.264832>,  <35.865757, 37.322002, 23.426039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467194, 37.956192, 23.264832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792778, 38.074245, 23.464975>,  <35.988129, 38.145077, 23.585062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.792778, 38.074245, 23.464975>,  <35.467194, 37.956192, 23.264832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792778, 38.074245, 23.464975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113170, 0.764262, -0.634899,
		-0.569789, 0.573409, 0.588679,
		0.813961, 0.295137, 0.500361,
		36.036968, 38.162788, 23.615084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411377, 38.699284, 23.272062>,  <35.467194, 37.956192, 23.264832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411377, 38.699284, 23.272062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793488, 38.646805, 23.378067>,  <36.022755, 38.615318, 23.441669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793488, 38.646805, 23.378067>,  <35.411377, 38.699284, 23.272062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793488, 38.646805, 23.378067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268600, 0.759797, -0.592083,
		-0.123678, 0.636786, 0.761057,
		0.955279, -0.131192, 0.265011,
		36.080070, 38.607449, 23.457571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687302, 39.400486, 23.330244>,  <35.411377, 38.699284, 23.272062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687302, 39.400486, 23.330244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998539, 39.150482, 23.305161>,  <36.185284, 39.000481, 23.290112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998539, 39.150482, 23.305161>,  <35.687302, 39.400486, 23.330244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998539, 39.150482, 23.305161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471887, 0.647508, -0.598377,
		0.414592, 0.436005, 0.798757,
		0.778097, -0.625006, -0.062707,
		36.231968, 38.962982, 23.286348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367817, 39.778389, 23.441597>,  <35.687302, 39.400486, 23.330244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367817, 39.778389, 23.441597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456123, 39.468105, 23.205109>,  <36.509106, 39.281937, 23.063215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.456123, 39.468105, 23.205109>,  <36.367817, 39.778389, 23.441597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456123, 39.468105, 23.205109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507893, 0.608933, -0.609299,
		0.832652, -0.165767, 0.528405,
		0.220762, -0.775707, -0.591221,
		36.522350, 39.235394, 23.027742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430424, 40.446735, 23.721025>,  <36.367817, 39.778389, 23.441597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430424, 40.446735, 23.721025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183430, 40.712708, 23.552942>,  <36.035233, 40.872292, 23.452093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183430, 40.712708, 23.552942>,  <36.430424, 40.446735, 23.721025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183430, 40.712708, 23.552942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708299, -0.237708, 0.664686,
		0.342085, 0.708068, 0.617752,
		-0.617487, 0.664932, -0.420207,
		35.998184, 40.912186, 23.426880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226654, 40.901962, 24.271336>,  <36.430424, 40.446735, 23.721025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226654, 40.901962, 24.271336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.950596, 40.931118, 23.983339>,  <35.784962, 40.948612, 23.810541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.950596, 40.931118, 23.983339>,  <36.226654, 40.901962, 24.271336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950596, 40.931118, 23.983339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722766, -0.019625, 0.690815,
		0.036220, 0.997147, 0.066223,
		-0.690144, 0.072885, -0.719993,
		35.743553, 40.952984, 23.767342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707542, 41.350666, 24.589306>,  <36.226654, 40.901962, 24.271336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707542, 41.350666, 24.589306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528450, 41.133511, 24.305107>,  <35.420994, 41.003216, 24.134588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.528450, 41.133511, 24.305107>,  <35.707542, 41.350666, 24.589306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528450, 41.133511, 24.305107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705881, -0.273159, 0.653541,
		-0.548882, 0.794136, -0.260917,
		-0.447728, -0.542893, -0.710497,
		35.394131, 40.970642, 24.091957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979462, 41.652081, 24.470039>,  <35.707542, 41.350666, 24.589306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979462, 41.652081, 24.470039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995781, 41.272209, 24.345818>,  <35.005573, 41.044285, 24.271284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.995781, 41.272209, 24.345818>,  <34.979462, 41.652081, 24.470039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995781, 41.272209, 24.345818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603144, -0.271207, 0.750110,
		-0.796588, 0.156703, -0.583859,
		0.040802, -0.949680, -0.310555,
		35.008022, 40.987305, 24.252651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312542, 41.473652, 24.393003>,  <34.979462, 41.652081, 24.470039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312542, 41.473652, 24.393003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480492, 41.110844, 24.405733>,  <34.581261, 40.893158, 24.413370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480492, 41.110844, 24.405733>,  <34.312542, 41.473652, 24.393003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480492, 41.110844, 24.405733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717752, -0.310393, 0.623289,
		-0.555460, -0.284546, -0.781344,
		0.419878, -0.907022, 0.031822,
		34.606457, 40.838737, 24.415279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712841, 41.019054, 24.605125>,  <34.312542, 41.473652, 24.393003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712841, 41.019054, 24.605125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025887, 40.776711, 24.662333>,  <34.213715, 40.631302, 24.696657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025887, 40.776711, 24.662333>,  <33.712841, 41.019054, 24.605125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025887, 40.776711, 24.662333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505799, -0.484939, 0.713443,
		-0.362891, -0.630687, -0.685962,
		0.782609, -0.605861, 0.143020,
		34.260670, 40.594952, 24.705238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394203, 40.353775, 24.621561>,  <33.712841, 41.019054, 24.605125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394203, 40.353775, 24.621561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745178, 40.372688, 24.812502>,  <33.955765, 40.384037, 24.927067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745178, 40.372688, 24.812502>,  <33.394203, 40.353775, 24.621561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745178, 40.372688, 24.812502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402150, -0.469950, 0.785762,
		0.261484, -0.881426, -0.393338,
		0.877440, 0.047283, 0.477350,
		34.008411, 40.386875, 24.955708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.292297, 43.231346, 25.286259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.452286, 42.866089, 25.254791>,  <41.548279, 42.646935, 25.235910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.452286, 42.866089, 25.254791>,  <41.292297, 43.231346, 25.286259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452286, 42.866089, 25.254791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484525, -0.283524, 0.827556,
		-0.777984, -0.292882, -0.555843,
		0.399971, -0.913145, -0.078668,
		41.572277, 42.592144, 25.231192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785984, 42.787613, 25.487986>,  <41.292297, 43.231346, 25.286259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785984, 42.787613, 25.487986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100578, 42.543053, 25.522924>,  <41.289337, 42.396317, 25.543888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.100578, 42.543053, 25.522924>,  <40.785984, 42.787613, 25.487986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100578, 42.543053, 25.522924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447003, -0.465925, 0.763611,
		-0.426173, -0.639615, -0.639741,
		0.786489, -0.611397, 0.087345,
		41.336525, 42.359634, 25.549128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434086, 42.256351, 25.713928>,  <40.785984, 42.787613, 25.487986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434086, 42.256351, 25.713928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.814095, 42.140461, 25.760427>,  <41.042099, 42.070927, 25.788326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.814095, 42.140461, 25.760427>,  <40.434086, 42.256351, 25.713928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814095, 42.140461, 25.760427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272668, -0.588768, 0.760923,
		-0.152018, -0.754592, -0.638343,
		0.950023, -0.289730, 0.116249,
		41.099102, 42.053543, 25.795301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448185, 41.521229, 25.690813>,  <40.434086, 42.256351, 25.713928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448185, 41.521229, 25.690813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.775330, 41.637821, 25.889265>,  <40.971615, 41.707775, 26.008335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.775330, 41.637821, 25.889265>,  <40.448185, 41.521229, 25.690813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775330, 41.637821, 25.889265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299198, -0.521067, 0.799356,
		0.491513, -0.802202, -0.338950,
		0.817860, 0.291481, 0.496129,
		41.020687, 41.725266, 26.038103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638882, 40.902344, 25.994284>,  <40.448185, 41.521229, 25.690813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638882, 40.902344, 25.994284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823437, 41.201080, 26.185844>,  <40.934170, 41.380322, 26.300781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823437, 41.201080, 26.185844>,  <40.638882, 40.902344, 25.994284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823437, 41.201080, 26.185844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319557, -0.363668, 0.875003,
		0.827648, -0.556756, 0.070864,
		0.461392, 0.746839, 0.478904,
		40.961853, 41.425133, 26.329515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102161, 40.641685, 26.486233>,  <40.638882, 40.902344, 25.994284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102161, 40.641685, 26.486233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.006100, 41.008701, 26.613005>,  <40.948463, 41.228912, 26.689068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.006100, 41.008701, 26.613005>,  <41.102161, 40.641685, 26.486233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006100, 41.008701, 26.613005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313456, -0.382295, 0.869250,
		0.918734, 0.109410, 0.379418,
		-0.240154, 0.917540, 0.316932,
		40.934055, 41.283962, 26.708084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316940, 40.743118, 27.186619>,  <41.102161, 40.641685, 26.486233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316940, 40.743118, 27.186619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059566, 41.045612, 27.139114>,  <40.905140, 41.227108, 27.110611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059566, 41.045612, 27.139114>,  <41.316940, 40.743118, 27.186619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059566, 41.045612, 27.139114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432526, -0.231152, 0.871487,
		0.631594, 0.612114, 0.475821,
		-0.643436, 0.756231, -0.118761,
		40.866535, 41.272480, 27.103485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328911, 41.200253, 27.828133>,  <41.316940, 40.743118, 27.186619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328911, 41.200253, 27.828133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966774, 41.262409, 27.670042>,  <40.749493, 41.299706, 27.575188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.966774, 41.262409, 27.670042>,  <41.328911, 41.200253, 27.828133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966774, 41.262409, 27.670042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401491, -0.009875, 0.915810,
		0.138409, 0.987803, 0.071330,
		-0.905344, 0.155394, -0.395227,
		40.695171, 41.309029, 27.551474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049065, 41.678837, 28.281116>,  <41.328911, 41.200253, 27.828133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049065, 41.678837, 28.281116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739094, 41.514458, 28.089033>,  <40.553112, 41.415829, 27.973783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.739094, 41.514458, 28.089033>,  <41.049065, 41.678837, 28.281116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739094, 41.514458, 28.089033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507827, -0.047500, 0.860149,
		-0.376288, 0.910420, -0.171882,
		-0.774932, -0.410950, -0.480209,
		40.506615, 41.391174, 27.944971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465450, 42.074093, 28.416737>,  <41.049065, 41.678837, 28.281116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465450, 42.074093, 28.416737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317039, 41.730404, 28.275839>,  <40.227993, 41.524189, 28.191299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317039, 41.730404, 28.275839>,  <40.465450, 42.074093, 28.416737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317039, 41.730404, 28.275839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513752, -0.126055, 0.848628,
		-0.773562, 0.495831, -0.394657,
		-0.371028, -0.859222, -0.352245,
		40.205730, 41.472637, 28.170166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791195, 42.235008, 28.400490>,  <40.465450, 42.074093, 28.416737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791195, 42.235008, 28.400490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818314, 41.836117, 28.412785>,  <39.834583, 41.596783, 28.420162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818314, 41.836117, 28.412785>,  <39.791195, 42.235008, 28.400490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818314, 41.836117, 28.412785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654761, -0.021224, 0.755538,
		-0.752790, -0.071344, -0.654383,
		0.067792, -0.997226, 0.030736,
		39.838650, 41.536949, 28.422005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093464, 41.861679, 28.382990>,  <39.791195, 42.235008, 28.400490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093464, 41.861679, 28.382990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355003, 41.619576, 28.564606>,  <39.511929, 41.474316, 28.673574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.355003, 41.619576, 28.564606>,  <39.093464, 41.861679, 28.382990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355003, 41.619576, 28.564606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629179, -0.101630, 0.770587,
		-0.420258, -0.789517, -0.447265,
		0.653848, -0.605255, 0.454037,
		39.551159, 41.438000, 28.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662304, 41.605186, 27.805971>,  <39.093464, 41.861679, 28.382990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662304, 41.605186, 27.805971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292896, 41.684544, 27.674667>,  <38.071251, 41.732159, 27.595884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.292896, 41.684544, 27.674667>,  <38.662304, 41.605186, 27.805971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292896, 41.684544, 27.674667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368602, 0.222425, -0.902585,
		-0.106056, -0.954551, -0.278543,
		-0.923518, 0.198396, -0.328260,
		38.015842, 41.744061, 27.576189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679310, 41.365227, 27.079752>,  <38.662304, 41.605186, 27.805971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679310, 41.365227, 27.079752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.401535, 41.652870, 27.089874>,  <38.234871, 41.825455, 27.095947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.401535, 41.652870, 27.089874>,  <38.679310, 41.365227, 27.079752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401535, 41.652870, 27.089874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197515, 0.224324, -0.954288,
		-0.691912, -0.657696, -0.297814,
		-0.694439, 0.719107, 0.025307,
		38.193203, 41.868603, 27.097466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365669, 41.289028, 26.445089>,  <38.679310, 41.365227, 27.079752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365669, 41.289028, 26.445089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245224, 41.649422, 26.570030>,  <38.172955, 41.865658, 26.644995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245224, 41.649422, 26.570030>,  <38.365669, 41.289028, 26.445089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245224, 41.649422, 26.570030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068516, 0.347150, -0.935303,
		-0.951123, -0.260234, -0.166264,
		-0.301116, 0.900980, 0.312352,
		38.154888, 41.919716, 26.663736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796471, 41.553696, 25.998327>,  <38.365669, 41.289028, 26.445089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796471, 41.553696, 25.998327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.955685, 41.890045, 26.145021>,  <38.051212, 42.091854, 26.233038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.955685, 41.890045, 26.145021>,  <37.796471, 41.553696, 25.998327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955685, 41.890045, 26.145021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020465, 0.407806, -0.912839,
		-0.917142, 0.355837, 0.179530,
		0.398035, 0.840877, 0.366734,
		38.075096, 42.142307, 26.255041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430737, 42.171200, 25.686127>,  <37.796471, 41.553696, 25.998327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430737, 42.171200, 25.686127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757397, 42.332962, 25.850830>,  <37.953392, 42.430019, 25.949652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.757397, 42.332962, 25.850830>,  <37.430737, 42.171200, 25.686127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757397, 42.332962, 25.850830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024109, 0.688920, -0.724437,
		-0.576635, 0.601535, 0.552854,
		0.816646, 0.404407, 0.411757,
		38.002392, 42.454285, 25.974358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304592, 42.867599, 25.521870>,  <37.430737, 42.171200, 25.686127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304592, 42.867599, 25.521870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692360, 42.854454, 25.619154>,  <37.925018, 42.846565, 25.677525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.692360, 42.854454, 25.619154>,  <37.304592, 42.867599, 25.521870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692360, 42.854454, 25.619154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188861, 0.732743, -0.653773,
		-0.156723, 0.679711, 0.716540,
		0.969417, -0.032865, 0.243209,
		37.983185, 42.844593, 25.692116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550533, 43.577576, 25.690105>,  <37.304592, 42.867599, 25.521870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550533, 43.577576, 25.690105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.840324, 43.332630, 25.563530>,  <38.014198, 43.185661, 25.487585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.840324, 43.332630, 25.563530>,  <37.550533, 43.577576, 25.690105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840324, 43.332630, 25.563530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277587, 0.679404, -0.679231,
		0.630929, 0.404251, 0.662201,
		0.724482, -0.612365, -0.316441,
		38.057671, 43.148922, 25.468597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102287, 44.028706, 25.644777>,  <37.550533, 43.577576, 25.690105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102287, 44.028706, 25.644777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203060, 43.719578, 25.411787>,  <38.263523, 43.534100, 25.271992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.203060, 43.719578, 25.411787>,  <38.102287, 44.028706, 25.644777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203060, 43.719578, 25.411787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121252, 0.622356, -0.773286,
		0.960118, 0.124192, 0.250499,
		0.251936, -0.772819, -0.582476,
		38.278641, 43.487732, 25.237043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717396, 44.232548, 25.261940>,  <38.102287, 44.028706, 25.644777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717396, 44.232548, 25.261940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.557537, 43.929882, 25.054966>,  <38.461620, 43.748283, 24.930782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.557537, 43.929882, 25.054966>,  <38.717396, 44.232548, 25.261940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557537, 43.929882, 25.054966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031596, 0.575506, -0.817187,
		0.916125, -0.310237, -0.253906,
		-0.399646, -0.756668, -0.517433,
		38.437645, 43.702881, 24.899736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185425, 44.108761, 24.744827>,  <38.717396, 44.232548, 25.261940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185425, 44.108761, 24.744827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852470, 43.934978, 24.607199>,  <38.652699, 43.830708, 24.524622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.852470, 43.934978, 24.607199>,  <39.185425, 44.108761, 24.744827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852470, 43.934978, 24.607199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066942, 0.537478, -0.840617,
		0.550151, -0.722744, -0.418301,
		-0.832378, -0.434464, -0.344076,
		38.602757, 43.804642, 24.503977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470009, 44.014751, 24.105577>,  <39.185425, 44.108761, 24.744827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470009, 44.014751, 24.105577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071957, 43.975601, 24.110296>,  <38.833126, 43.952110, 24.113127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071957, 43.975601, 24.110296>,  <39.470009, 44.014751, 24.105577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071957, 43.975601, 24.110296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061062, 0.518016, -0.853189,
		0.077392, -0.849753, -0.521469,
		-0.995129, -0.097872, 0.011797,
		38.773418, 43.946239, 24.113834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252480, 43.646729, 23.362864>,  <39.470009, 44.014751, 24.105577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252480, 43.646729, 23.362864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936638, 43.834576, 23.520845>,  <38.747131, 43.947285, 23.615635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936638, 43.834576, 23.520845>,  <39.252480, 43.646729, 23.362864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936638, 43.834576, 23.520845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251529, 0.339375, -0.906398,
		-0.559696, -0.815037, -0.149850,
		-0.789603, 0.469615, 0.394953,
		38.699757, 43.975460, 23.639332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698730, 43.502422, 22.845398>,  <39.252480, 43.646729, 23.362864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698730, 43.502422, 22.845398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.599888, 43.836941, 23.041170>,  <38.540581, 44.037651, 23.158634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.599888, 43.836941, 23.041170>,  <38.698730, 43.502422, 22.845398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599888, 43.836941, 23.041170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388434, 0.377242, -0.840718,
		-0.887725, -0.397860, 0.231627,
		-0.247109, 0.836299, 0.489430,
		38.525757, 44.087830, 23.188000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166706, 43.458733, 23.393833>,  <38.698730, 43.502422, 22.845398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166706, 43.458733, 23.393833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143486, 43.360355, 23.006815>,  <38.129555, 43.301327, 22.774605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143486, 43.360355, 23.006815>,  <38.166706, 43.458733, 23.393833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143486, 43.360355, 23.006815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666668, -0.711854, 0.220946,
		-0.743091, 0.657856, -0.122644,
		-0.058046, -0.245946, -0.967544,
		38.126072, 43.286572, 22.716551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524967, 43.562584, 23.226803>,  <38.166706, 43.458733, 23.393833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524967, 43.562584, 23.226803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.653187, 43.329685, 22.927942>,  <37.730118, 43.189945, 22.748627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.653187, 43.329685, 22.927942>,  <37.524967, 43.562584, 23.226803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653187, 43.329685, 22.927942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762440, -0.626648, 0.161237,
		-0.562080, 0.517973, -0.644802,
		0.320548, -0.582251, -0.747150,
		37.749352, 43.155010, 22.703796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891525, 43.302097, 22.846815>,  <37.524967, 43.562584, 23.226803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891525, 43.302097, 22.846815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.171406, 43.030678, 22.757380>,  <37.339333, 42.867825, 22.703718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.171406, 43.030678, 22.757380>,  <36.891525, 43.302097, 22.846815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171406, 43.030678, 22.757380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698127, -0.715870, -0.012192,
		-0.151787, 0.164623, -0.974608,
		0.699700, -0.678549, -0.223587,
		37.381317, 42.827114, 22.690304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568768, 42.934277, 22.372597>,  <36.891525, 43.302097, 22.846815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568768, 42.934277, 22.372597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.852283, 42.689404, 22.512800>,  <37.022392, 42.542480, 22.596922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.852283, 42.689404, 22.512800>,  <36.568768, 42.934277, 22.372597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852283, 42.689404, 22.512800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652178, -0.758048, -0.005162,
		0.268863, -0.224936, -0.936545,
		0.708785, -0.612182, 0.350509,
		37.064919, 42.505749, 22.617952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397690, 42.350418, 22.032057>,  <36.568768, 42.934277, 22.372597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397690, 42.350418, 22.032057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.639774, 42.224682, 22.324608>,  <36.785027, 42.149242, 22.500137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.639774, 42.224682, 22.324608>,  <36.397690, 42.350418, 22.032057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639774, 42.224682, 22.324608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576567, -0.806568, 0.130454,
		0.548898, -0.500640, -0.669381,
		0.605212, -0.314336, 0.731376,
		36.821339, 42.130383, 22.544020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449387, 41.600307, 21.911707>,  <36.397690, 42.350418, 22.032057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449387, 41.600307, 21.911707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.578716, 41.629154, 22.289122>,  <36.656315, 41.646461, 22.515570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.578716, 41.629154, 22.289122>,  <36.449387, 41.600307, 21.911707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578716, 41.629154, 22.289122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593716, -0.760960, 0.261612,
		0.736860, -0.644778, -0.203221,
		0.323325, 0.072116, 0.943536,
		36.675713, 41.650787, 22.572182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583557, 40.923920, 22.167048>,  <36.449387, 41.600307, 21.911707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583557, 40.923920, 22.167048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.504475, 41.151871, 22.486084>,  <36.457024, 41.288643, 22.677505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.504475, 41.151871, 22.486084>,  <36.583557, 40.923920, 22.167048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504475, 41.151871, 22.486084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660764, -0.678495, 0.320992,
		0.724087, -0.463555, 0.510700,
		-0.197710, 0.569878, 0.797590,
		36.445160, 41.322834, 22.725361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525314, 40.455086, 22.736038>,  <36.583557, 40.923920, 22.167048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525314, 40.455086, 22.736038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.346546, 40.785934, 22.872349>,  <36.239285, 40.984444, 22.954136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.346546, 40.785934, 22.872349>,  <36.525314, 40.455086, 22.736038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346546, 40.785934, 22.872349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605935, -0.560139, 0.564879,
		0.658107, 0.045967, 0.751520,
		-0.446921, 0.827123, 0.340778,
		36.212471, 41.034073, 22.974583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997368, 39.992924, 23.165228>,  <36.525314, 40.455086, 22.736038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997368, 39.992924, 23.165228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.892960, 39.687500, 22.928978>,  <36.830315, 39.504246, 22.787228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.892960, 39.687500, 22.928978>,  <36.997368, 39.992924, 23.165228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892960, 39.687500, 22.928978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526363, 0.400302, -0.750134,
		0.809202, -0.506687, 0.297422,
		-0.261025, -0.763562, -0.590626,
		36.814651, 39.458431, 22.751789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572163, 39.799995, 22.850939>,  <36.997368, 39.992924, 23.165228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572163, 39.799995, 22.850939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.287037, 39.647930, 22.615189>,  <37.115959, 39.556690, 22.473738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.287037, 39.647930, 22.615189>,  <37.572163, 39.799995, 22.850939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287037, 39.647930, 22.615189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482622, 0.343858, -0.805505,
		0.508889, -0.858623, -0.061630,
		-0.712817, -0.380169, -0.589376,
		37.073193, 39.533878, 22.438375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923836, 39.523727, 22.292063>,  <37.572163, 39.799995, 22.850939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923836, 39.523727, 22.292063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550388, 39.564053, 22.154545>,  <37.326321, 39.588249, 22.072035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550388, 39.564053, 22.154545>,  <37.923836, 39.523727, 22.292063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550388, 39.564053, 22.154545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358066, 0.294918, -0.885896,
		0.012082, -0.950190, -0.311438,
		-0.933618, 0.100812, -0.343794,
		37.270302, 39.594296, 22.051407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001030, 39.200310, 21.639812>,  <37.923836, 39.523727, 22.292063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001030, 39.200310, 21.639812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660217, 39.409550, 21.631687>,  <37.455730, 39.535095, 21.626812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660217, 39.409550, 21.631687>,  <38.001030, 39.200310, 21.639812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660217, 39.409550, 21.631687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213875, 0.312419, -0.925555,
		-0.477813, -0.792944, -0.378068,
		-0.852028, 0.523101, -0.020313,
		37.404610, 39.566479, 21.625593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734512, 39.100536, 20.905506>,  <38.001030, 39.200310, 21.639812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734512, 39.100536, 20.905506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.582584, 39.441624, 21.048958>,  <37.491428, 39.646275, 21.135029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.582584, 39.441624, 21.048958>,  <37.734512, 39.100536, 20.905506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582584, 39.441624, 21.048958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211573, 0.457480, -0.863683,
		-0.900543, -0.252164, -0.354169,
		-0.379815, 0.852716, 0.358629,
		37.468639, 39.697437, 21.156546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200939, 39.277187, 20.375618>,  <37.734512, 39.100536, 20.905506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200939, 39.277187, 20.375618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289326, 39.605793, 20.585871>,  <37.342358, 39.802956, 20.712023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.289326, 39.605793, 20.585871>,  <37.200939, 39.277187, 20.375618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289326, 39.605793, 20.585871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197595, 0.490067, -0.848994,
		-0.955055, 0.291461, -0.054039,
		0.220966, 0.821513, 0.525632,
		37.355614, 39.852245, 20.743561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934822, 39.833256, 19.957504>,  <37.200939, 39.277187, 20.375618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934822, 39.833256, 19.957504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.180405, 40.028374, 20.205736>,  <37.327755, 40.145443, 20.354675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.180405, 40.028374, 20.205736>,  <36.934822, 39.833256, 19.957504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180405, 40.028374, 20.205736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345278, 0.541027, -0.766859,
		-0.709820, 0.685087, 0.163740,
		0.613953, 0.487796, 0.620577,
		37.364590, 40.174713, 20.391909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887390, 40.553768, 19.840696>,  <36.934822, 39.833256, 19.957504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887390, 40.553768, 19.840696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.241028, 40.512142, 20.022924>,  <37.453213, 40.487167, 20.132261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.241028, 40.512142, 20.022924>,  <36.887390, 40.553768, 19.840696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241028, 40.512142, 20.022924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349266, 0.794829, -0.496246,
		-0.310460, 0.597844, 0.739051,
		0.884097, -0.104061, 0.455569,
		37.506256, 40.480923, 20.159595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038334, 41.212681, 19.997580>,  <36.887390, 40.553768, 19.840696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038334, 41.212681, 19.997580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.386616, 41.016380, 20.010448>,  <37.595585, 40.898602, 20.018169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.386616, 41.016380, 20.010448>,  <37.038334, 41.212681, 19.997580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386616, 41.016380, 20.010448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425621, 0.719150, -0.549244,
		0.246405, 0.491924, 0.835042,
		0.870707, -0.490748, 0.032171,
		37.647827, 40.869156, 20.020100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.709492, 35.459396, 34.623081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105949, 35.411652, 34.599770>,  <33.343822, 35.383007, 34.585785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105949, 35.411652, 34.599770>,  <32.709492, 35.459396, 34.623081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105949, 35.411652, 34.599770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056272, 0.020086, -0.998214,
		0.120317, 0.992648, 0.013192,
		0.991140, -0.119359, -0.058275,
		33.403290, 35.375843, 34.582287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110016, 36.039482, 34.189415>,  <32.709492, 35.459396, 34.623081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110016, 36.039482, 34.189415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.311813, 35.694321, 34.177521>,  <33.432892, 35.487225, 34.170383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.311813, 35.694321, 34.177521>,  <33.110016, 36.039482, 34.189415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311813, 35.694321, 34.177521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135935, 0.113386, -0.984208,
		0.852645, 0.492489, 0.174502,
		0.504498, -0.862901, -0.029731,
		33.463161, 35.435452, 34.168602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821964, 36.207794, 33.964848>,  <33.110016, 36.039482, 34.189415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821964, 36.207794, 33.964848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750961, 35.820099, 33.896648>,  <33.708359, 35.587482, 33.855728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750961, 35.820099, 33.896648>,  <33.821964, 36.207794, 33.964848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750961, 35.820099, 33.896648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296883, 0.112441, -0.948271,
		0.938271, -0.218941, 0.267792,
		-0.177504, -0.969238, -0.170500,
		33.697708, 35.529327, 33.845497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409145, 35.946644, 33.695309>,  <33.821964, 36.207794, 33.964848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409145, 35.946644, 33.695309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132603, 35.681152, 33.581120>,  <33.966679, 35.521858, 33.512608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132603, 35.681152, 33.581120>,  <34.409145, 35.946644, 33.695309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132603, 35.681152, 33.581120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371793, 0.011964, -0.928239,
		0.619512, -0.747879, 0.238497,
		-0.691357, -0.663727, -0.285468,
		33.925194, 35.482033, 33.495480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784176, 35.602047, 33.238094>,  <34.409145, 35.946644, 33.695309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784176, 35.602047, 33.238094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410183, 35.482101, 33.162308>,  <34.185787, 35.410133, 33.116837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410183, 35.482101, 33.162308>,  <34.784176, 35.602047, 33.238094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410183, 35.482101, 33.162308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221813, -0.077459, -0.972008,
		0.276791, -0.950833, 0.138936,
		-0.934979, -0.299861, -0.189467,
		34.129688, 35.392143, 33.105469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862190, 35.013302, 32.752918>,  <34.784176, 35.602047, 33.238094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862190, 35.013302, 32.752918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497128, 35.159756, 32.680256>,  <34.278088, 35.247627, 32.636658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497128, 35.159756, 32.680256>,  <34.862190, 35.013302, 32.752918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497128, 35.159756, 32.680256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191137, -0.010524, -0.981507,
		-0.361273, -0.930503, -0.060376,
		-0.912660, 0.366132, -0.181656,
		34.223328, 35.269596, 32.625759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532982, 34.606609, 32.197029>,  <34.862190, 35.013302, 32.752918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532982, 34.606609, 32.197029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346798, 34.960152, 32.215565>,  <34.235088, 35.172276, 32.226685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346798, 34.960152, 32.215565>,  <34.532982, 34.606609, 32.197029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346798, 34.960152, 32.215565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120394, 0.115095, -0.986032,
		-0.876844, -0.453377, -0.159983,
		-0.465457, 0.883857, 0.046337,
		34.207161, 35.225307, 32.229465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235920, 34.707626, 31.430227>,  <34.532982, 34.606609, 32.197029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235920, 34.707626, 31.430227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219860, 35.074455, 31.588903>,  <34.210224, 35.294552, 31.684109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219860, 35.074455, 31.588903>,  <34.235920, 34.707626, 31.430227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219860, 35.074455, 31.588903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012795, 0.396504, -0.917944,
		-0.999112, -0.041930, -0.004186,
		-0.040149, 0.917075, 0.396688,
		34.207817, 35.349579, 31.707911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777954, 35.012413, 31.040125>,  <34.235920, 34.707626, 31.430227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777954, 35.012413, 31.040125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974522, 35.318295, 31.206854>,  <34.092461, 35.501823, 31.306892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974522, 35.318295, 31.206854>,  <33.777954, 35.012413, 31.040125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974522, 35.318295, 31.206854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063682, 0.508867, -0.858486,
		-0.868594, 0.395330, 0.298763,
		0.491416, 0.764702, 0.416823,
		34.121948, 35.547707, 31.331902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355526, 35.542480, 30.930393>,  <33.777954, 35.012413, 31.040125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355526, 35.542480, 30.930393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720276, 35.689743, 31.002996>,  <33.939125, 35.778099, 31.046558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720276, 35.689743, 31.002996>,  <33.355526, 35.542480, 30.930393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720276, 35.689743, 31.002996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072522, 0.579749, -0.811561,
		-0.404011, 0.726879, 0.555358,
		0.911875, 0.368156, 0.181510,
		33.993839, 35.800190, 31.057449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415909, 36.332432, 30.804447>,  <33.355526, 35.542480, 30.930393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415909, 36.332432, 30.804447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787453, 36.190895, 30.760586>,  <34.010380, 36.105972, 30.734268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.787453, 36.190895, 30.760586>,  <33.415909, 36.332432, 30.804447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787453, 36.190895, 30.760586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077980, 0.476147, -0.875901,
		0.362138, 0.805036, 0.469865,
		0.928857, -0.353837, -0.109654,
		34.066109, 36.084743, 30.727690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788555, 36.893360, 30.561848>,  <33.415909, 36.332432, 30.804447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788555, 36.893360, 30.561848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975975, 36.559246, 30.446779>,  <34.088428, 36.358776, 30.377739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975975, 36.559246, 30.446779>,  <33.788555, 36.893360, 30.561848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975975, 36.559246, 30.446779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120531, 0.383024, -0.915841,
		0.875176, 0.394445, 0.280144,
		0.468550, -0.835288, -0.287670,
		34.116539, 36.308659, 30.360477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942406, 37.561699, 30.838673>,  <33.788555, 36.893360, 30.561848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942406, 37.561699, 30.838673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625813, 37.790817, 30.753387>,  <33.435856, 37.928288, 30.702217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625813, 37.790817, 30.753387>,  <33.942406, 37.561699, 30.838673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625813, 37.790817, 30.753387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424134, -0.263565, 0.866397,
		0.440070, 0.776171, 0.451548,
		-0.791485, 0.572793, -0.213214,
		33.388367, 37.962654, 30.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899101, 37.948059, 31.385967>,  <33.942406, 37.561699, 30.838673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899101, 37.948059, 31.385967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536976, 37.989777, 31.221270>,  <33.319702, 38.014805, 31.122452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536976, 37.989777, 31.221270>,  <33.899101, 37.948059, 31.385967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536976, 37.989777, 31.221270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416115, -0.023335, 0.909012,
		0.085194, 0.994273, 0.064523,
		-0.905312, 0.104292, -0.411744,
		33.265381, 38.021065, 31.097746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635815, 38.469517, 31.815969>,  <33.899101, 37.948059, 31.385967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635815, 38.469517, 31.815969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321796, 38.281914, 31.654114>,  <33.133385, 38.169353, 31.557001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321796, 38.281914, 31.654114>,  <33.635815, 38.469517, 31.815969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321796, 38.281914, 31.654114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427201, -0.063092, 0.901953,
		-0.448548, 0.880940, -0.150828,
		-0.785050, -0.469003, -0.404638,
		33.086281, 38.141212, 31.532722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022694, 38.888573, 32.006954>,  <33.635815, 38.469517, 31.815969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022694, 38.888573, 32.006954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887062, 38.524044, 31.913567>,  <32.805683, 38.305325, 31.857533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887062, 38.524044, 31.913567>,  <33.022694, 38.888573, 32.006954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887062, 38.524044, 31.913567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445026, -0.063267, 0.893280,
		-0.828840, 0.406796, -0.384111,
		-0.339081, -0.911326, -0.233473,
		32.785339, 38.250645, 31.843525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314884, 38.886211, 32.134686>,  <33.022694, 38.888573, 32.006954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314884, 38.886211, 32.134686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431866, 38.503769, 32.142017>,  <32.502056, 38.274303, 32.146416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431866, 38.503769, 32.142017>,  <32.314884, 38.886211, 32.134686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431866, 38.503769, 32.142017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648197, -0.184113, 0.738880,
		-0.703071, -0.227969, -0.673588,
		0.292458, -0.956103, 0.018325,
		32.519604, 38.216938, 32.147514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731642, 38.592113, 32.238506>,  <32.314884, 38.886211, 32.134686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731642, 38.592113, 32.238506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997175, 38.305683, 32.324825>,  <32.156494, 38.133827, 32.376617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997175, 38.305683, 32.324825>,  <31.731642, 38.592113, 32.238506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997175, 38.305683, 32.324825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568461, -0.295620, 0.767763,
		-0.485980, -0.632338, -0.603301,
		0.663834, -0.716071, 0.215794,
		32.196327, 38.090862, 32.389565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345640, 38.066841, 32.428452>,  <31.731642, 38.592113, 32.238506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345640, 38.066841, 32.428452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691307, 37.976925, 32.608532>,  <31.898706, 37.922977, 32.716583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.691307, 37.976925, 32.608532>,  <31.345640, 38.066841, 32.428452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691307, 37.976925, 32.608532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500989, -0.300489, 0.811613,
		-0.047157, -0.926919, -0.372288,
		0.864168, -0.224786, 0.450206,
		31.950558, 37.909489, 32.743595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194752, 37.462402, 32.678902>,  <31.345640, 38.066841, 32.428452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194752, 37.462402, 32.678902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521704, 37.593029, 32.868744>,  <31.717875, 37.671406, 32.982647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521704, 37.593029, 32.868744>,  <31.194752, 37.462402, 32.678902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521704, 37.593029, 32.868744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377499, -0.318704, 0.869438,
		0.435188, -0.889821, -0.137223,
		0.817378, 0.326568, 0.474602,
		31.766916, 37.690998, 33.011124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424366, 36.940807, 33.306950>,  <31.194752, 37.462402, 32.678902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424366, 36.940807, 33.306950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561792, 37.308823, 33.382317>,  <31.644249, 37.529633, 33.427536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561792, 37.308823, 33.382317>,  <31.424366, 36.940807, 33.306950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561792, 37.308823, 33.382317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440164, -0.019473, 0.897706,
		0.829589, -0.391354, 0.398275,
		0.343566, 0.920034, 0.188414,
		31.664862, 37.584831, 33.438843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377073, 36.961075, 34.044971>,  <31.424366, 36.940807, 33.306950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377073, 36.961075, 34.044971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.427742, 37.336113, 33.915440>,  <31.458143, 37.561138, 33.837723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.427742, 37.336113, 33.915440>,  <31.377073, 36.961075, 34.044971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427742, 37.336113, 33.915440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491700, 0.342875, 0.800417,
		0.861502, 0.057836, 0.504449,
		0.126670, 0.937599, -0.323826,
		31.465744, 37.617393, 33.818291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612495, 37.199471, 34.738338>,  <31.377073, 36.961075, 34.044971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612495, 37.199471, 34.738338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526890, 37.538704, 34.544449>,  <31.475527, 37.742245, 34.428116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.526890, 37.538704, 34.544449>,  <31.612495, 37.199471, 34.738338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526890, 37.538704, 34.544449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494975, 0.333649, 0.802295,
		0.842138, 0.411631, 0.348372,
		-0.214015, 0.848079, -0.484726,
		31.462685, 37.793129, 34.399033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800482, 37.795010, 35.141479>,  <31.612495, 37.199471, 34.738338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800482, 37.795010, 35.141479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509838, 37.924721, 34.899197>,  <31.335451, 38.002548, 34.753826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509838, 37.924721, 34.899197>,  <31.800482, 37.795010, 35.141479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509838, 37.924721, 34.899197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522561, 0.311532, 0.793648,
		0.446057, 0.893193, -0.056909,
		-0.726610, 0.324274, -0.605709,
		31.291855, 38.022003, 34.717484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634659, 38.489433, 35.349117>,  <31.800482, 37.795010, 35.141479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634659, 38.489433, 35.349117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318436, 38.356670, 35.143261>,  <31.128700, 38.277012, 35.019749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318436, 38.356670, 35.143261>,  <31.634659, 38.489433, 35.349117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318436, 38.356670, 35.143261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612383, 0.426612, 0.665575,
		-0.001359, 0.841332, -0.540517,
		-0.790560, -0.331908, -0.514637,
		31.081268, 38.257099, 34.988869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247881, 39.072803, 35.208351>,  <31.634659, 38.489433, 35.349117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247881, 39.072803, 35.208351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020479, 38.744324, 35.188618>,  <30.884039, 38.547234, 35.176777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020479, 38.744324, 35.188618>,  <31.247881, 39.072803, 35.208351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020479, 38.744324, 35.188618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613212, 0.383011, 0.690849,
		-0.548430, 0.423003, -0.721313,
		-0.568502, -0.821201, -0.049336,
		30.849928, 38.497963, 35.173817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570503, 39.309677, 35.092678>,  <31.247881, 39.072803, 35.208351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570503, 39.309677, 35.092678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.571331, 38.941975, 35.250137>,  <30.571829, 38.721352, 35.344612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.571331, 38.941975, 35.250137>,  <30.570503, 39.309677, 35.092678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571331, 38.941975, 35.250137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650256, 0.297819, 0.698907,
		-0.759712, -0.257417, -0.597138,
		0.002071, -0.919261, 0.393644,
		30.571953, 38.666195, 35.368229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739662, 39.970257, 35.531311>,  <30.570503, 39.309677, 35.092678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739662, 39.970257, 35.531311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.054670, 40.159290, 35.689537>,  <31.243675, 40.272709, 35.784473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.054670, 40.159290, 35.689537>,  <30.739662, 39.970257, 35.531311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054670, 40.159290, 35.689537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270605, 0.311508, -0.910898,
		-0.553698, 0.824395, 0.117436,
		0.787523, 0.472583, 0.395567,
		31.290928, 40.301064, 35.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700760, 40.745331, 35.336342>,  <30.739662, 39.970257, 35.531311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700760, 40.745331, 35.336342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062412, 40.588657, 35.404610>,  <31.279404, 40.494652, 35.445572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062412, 40.588657, 35.404610>,  <30.700760, 40.745331, 35.336342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062412, 40.588657, 35.404610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336129, 0.405486, -0.850058,
		0.263752, 0.825931, 0.498270,
		0.904131, -0.391688, 0.170672,
		31.333651, 40.471149, 35.455811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178709, 41.176163, 35.049431>,  <30.700760, 40.745331, 35.336342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178709, 41.176163, 35.049431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.445883, 40.887981, 35.124069>,  <31.606188, 40.715073, 35.168850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.445883, 40.887981, 35.124069>,  <31.178709, 41.176163, 35.049431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445883, 40.887981, 35.124069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546199, 0.304255, -0.780446,
		0.505500, 0.623203, 0.596731,
		0.667934, -0.720450, 0.186592,
		31.646263, 40.671848, 35.180046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858475, 41.431564, 34.941444>,  <31.178709, 41.176163, 35.049431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858475, 41.431564, 34.941444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895550, 41.036602, 34.890167>,  <31.917795, 40.799625, 34.859402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895550, 41.036602, 34.890167>,  <31.858475, 41.431564, 34.941444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895550, 41.036602, 34.890167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672916, 0.157016, -0.722863,
		0.733889, -0.019264, 0.678996,
		0.092688, -0.987408, -0.128196,
		31.923357, 40.740379, 34.851707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548981, 41.116520, 35.036720>,  <31.858475, 41.431564, 34.941444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548981, 41.116520, 35.036720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370655, 40.846310, 34.801800>,  <32.263660, 40.684185, 34.660847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.370655, 40.846310, 34.801800>,  <32.548981, 41.116520, 35.036720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370655, 40.846310, 34.801800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759663, 0.061507, -0.647401,
		0.473458, -0.734769, 0.485749,
		-0.445813, -0.675523, -0.587298,
		32.236912, 40.643654, 34.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129646, 40.840504, 34.747223>,  <32.548981, 41.116520, 35.036720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129646, 40.840504, 34.747223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831886, 40.699497, 34.520382>,  <32.653229, 40.614891, 34.384277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831886, 40.699497, 34.520382>,  <33.129646, 40.840504, 34.747223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831886, 40.699497, 34.520382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637075, -0.120548, -0.761317,
		0.200016, -0.928008, 0.314317,
		-0.744399, -0.352520, -0.567099,
		32.608566, 40.593742, 34.350254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350159, 40.344685, 34.445080>,  <33.129646, 40.840504, 34.747223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350159, 40.344685, 34.445080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057926, 40.480034, 34.207844>,  <32.882587, 40.561241, 34.065502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057926, 40.480034, 34.207844>,  <33.350159, 40.344685, 34.445080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057926, 40.480034, 34.207844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577856, -0.156370, -0.801019,
		-0.363783, -0.927930, -0.081289,
		-0.730578, 0.338371, -0.593094,
		32.838753, 40.581543, 34.029915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208977, 39.720222, 33.964859>,  <33.350159, 40.344685, 34.445080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208977, 39.720222, 33.964859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130924, 40.084393, 33.818958>,  <33.084091, 40.302895, 33.731419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130924, 40.084393, 33.818958>,  <33.208977, 39.720222, 33.964859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130924, 40.084393, 33.818958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449507, -0.247522, -0.858299,
		-0.871703, -0.331441, -0.360944,
		-0.195134, 0.910429, -0.364750,
		33.072384, 40.357521, 33.709534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059319, 39.542767, 33.280403>,  <33.208977, 39.720222, 33.964859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059319, 39.542767, 33.280403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136990, 39.935150, 33.281643>,  <33.183590, 40.170582, 33.282387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136990, 39.935150, 33.281643>,  <33.059319, 39.542767, 33.280403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136990, 39.935150, 33.281643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393291, -0.074950, -0.916354,
		-0.898676, 0.179154, -0.400357,
		0.194175, 0.980962, 0.003104,
		33.195244, 40.229439, 33.282574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031696, 39.762817, 32.576042>,  <33.059319, 39.542767, 33.280403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031696, 39.762817, 32.576042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202724, 40.073925, 32.760330>,  <33.305344, 40.260590, 32.870903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202724, 40.073925, 32.760330>,  <33.031696, 39.762817, 32.576042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202724, 40.073925, 32.760330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661963, 0.077692, -0.745499,
		-0.615618, 0.623733, -0.481633,
		0.427573, 0.777766, 0.460717,
		33.330997, 40.307255, 32.898544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017876, 40.255604, 32.120087>,  <33.031696, 39.762817, 32.576042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017876, 40.255604, 32.120087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298714, 40.369160, 32.381302>,  <33.467216, 40.437294, 32.538033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298714, 40.369160, 32.381302>,  <33.017876, 40.255604, 32.120087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298714, 40.369160, 32.381302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644488, 0.136644, -0.752306,
		-0.302808, 0.949070, -0.087028,
		0.702099, 0.283893, 0.653040,
		33.509342, 40.454327, 32.577213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221573, 40.900097, 31.951462>,  <33.017876, 40.255604, 32.120087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221573, 40.900097, 31.951462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541519, 40.760590, 32.146835>,  <33.733486, 40.676884, 32.264061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541519, 40.760590, 32.146835>,  <33.221573, 40.900097, 31.951462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541519, 40.760590, 32.146835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575516, 0.214837, -0.789067,
		0.170268, 0.912252, 0.372564,
		0.799869, -0.348770, 0.488435,
		33.781479, 40.655960, 32.293365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795921, 41.201199, 31.645912>,  <33.221573, 40.900097, 31.951462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795921, 41.201199, 31.645912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982365, 40.915619, 31.854916>,  <34.094231, 40.744270, 31.980318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982365, 40.915619, 31.854916>,  <33.795921, 41.201199, 31.645912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982365, 40.915619, 31.854916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832109, 0.153139, -0.533050,
		0.300554, 0.683246, 0.665463,
		0.466113, -0.713949, 0.522509,
		34.122200, 40.701435, 32.011669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455315, 41.446308, 31.701107>,  <33.795921, 41.201199, 31.645912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455315, 41.446308, 31.701107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515327, 41.056309, 31.766665>,  <34.551334, 40.822308, 31.806000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515327, 41.056309, 31.766665>,  <34.455315, 41.446308, 31.701107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515327, 41.056309, 31.766665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788169, 0.017867, -0.615199,
		0.596892, 0.221476, 0.771147,
		0.150029, -0.975002, 0.163896,
		34.560337, 40.763809, 31.815834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082645, 41.379272, 31.983061>,  <34.455315, 41.446308, 31.701107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082645, 41.379272, 31.983061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002953, 41.037750, 31.790676>,  <34.955135, 40.832836, 31.675245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002953, 41.037750, 31.790676>,  <35.082645, 41.379272, 31.983061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002953, 41.037750, 31.790676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744470, 0.187281, -0.640852,
		0.637237, -0.485743, 0.598317,
		-0.199235, -0.853803, -0.480963,
		34.943180, 40.781609, 31.646387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631470, 41.238346, 31.609692>,  <35.082645, 41.379272, 31.983061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631470, 41.238346, 31.609692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415447, 40.952118, 31.432467>,  <35.285835, 40.780380, 31.326132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415447, 40.952118, 31.432467>,  <35.631470, 41.238346, 31.609692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415447, 40.952118, 31.432467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671504, -0.048991, -0.739379,
		0.507371, -0.696821, 0.506966,
		-0.540052, -0.715570, -0.443062,
		35.253433, 40.737446, 31.299547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134293, 40.697853, 31.310976>,  <35.631470, 41.238346, 31.609692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134293, 40.697853, 31.310976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791847, 40.632877, 31.114737>,  <35.586380, 40.593891, 30.996994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791847, 40.632877, 31.114737>,  <36.134293, 40.697853, 31.310976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791847, 40.632877, 31.114737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512499, -0.144781, -0.846394,
		0.066461, -0.976038, 0.207200,
		-0.856112, -0.162442, -0.490597,
		35.535015, 40.584145, 30.967558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196297, 40.107273, 30.873116>,  <36.134293, 40.697853, 31.310976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196297, 40.107273, 30.873116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905884, 40.322037, 30.701252>,  <35.731636, 40.450893, 30.598133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.905884, 40.322037, 30.701252>,  <36.196297, 40.107273, 30.873116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905884, 40.322037, 30.701252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494989, -0.025682, -0.868519,
		-0.477350, -0.843250, -0.247117,
		-0.726032, 0.536908, -0.429659,
		35.688076, 40.483109, 30.572353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987659, 39.797512, 30.194283>,  <36.196297, 40.107273, 30.873116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987659, 39.797512, 30.194283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887470, 40.184753, 30.191639>,  <35.827354, 40.417099, 30.190052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887470, 40.184753, 30.191639>,  <35.987659, 39.797512, 30.194283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887470, 40.184753, 30.191639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461463, 0.113388, -0.879884,
		-0.851066, -0.223440, -0.475143,
		-0.250477, 0.968100, -0.006609,
		35.812328, 40.475182, 30.189657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817696, 39.937584, 29.609627>,  <35.987659, 39.797512, 30.194283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817696, 39.937584, 29.609627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886269, 40.315498, 29.721334>,  <35.927414, 40.542248, 29.788359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.886269, 40.315498, 29.721334>,  <35.817696, 39.937584, 29.609627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886269, 40.315498, 29.721334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557933, 0.140524, -0.817902,
		-0.811986, 0.296027, -0.503037,
		0.171432, 0.944786, 0.279267,
		35.937698, 40.598934, 29.805115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730522, 40.228775, 29.037907>,  <35.817696, 39.937584, 29.609627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730522, 40.228775, 29.037907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920898, 40.516113, 29.240866>,  <36.035126, 40.688519, 29.362640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920898, 40.516113, 29.240866>,  <35.730522, 40.228775, 29.037907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920898, 40.516113, 29.240866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529977, 0.226152, -0.817300,
		-0.701855, 0.657899, -0.273072,
		0.475945, 0.718348, 0.507398,
		36.063683, 40.731617, 29.393085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680767, 40.794895, 28.582743>,  <35.730522, 40.228775, 29.037907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680767, 40.794895, 28.582743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983421, 40.873230, 28.832272>,  <36.165012, 40.920231, 28.981989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.983421, 40.873230, 28.832272>,  <35.680767, 40.794895, 28.582743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983421, 40.873230, 28.832272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501254, 0.438865, -0.745749,
		-0.419820, 0.876952, 0.233895,
		0.756634, 0.195840, 0.623820,
		36.210411, 40.931980, 29.019417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925194, 41.510143, 28.563995>,  <35.680767, 40.794895, 28.582743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925194, 41.510143, 28.563995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254139, 41.337952, 28.712809>,  <36.451508, 41.234638, 28.802095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254139, 41.337952, 28.712809>,  <35.925194, 41.510143, 28.563995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254139, 41.337952, 28.712809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564281, 0.533353, -0.630176,
		0.072853, 0.728163, 0.681521,
		0.822362, -0.430479, 0.372032,
		36.500847, 41.208809, 28.824419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348339, 42.021328, 28.628744>,  <35.925194, 41.510143, 28.563995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348339, 42.021328, 28.628744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586727, 41.700645, 28.610474>,  <36.729759, 41.508236, 28.599512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586727, 41.700645, 28.610474>,  <36.348339, 42.021328, 28.628744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586727, 41.700645, 28.610474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655572, 0.518614, -0.548875,
		0.463724, 0.297171, 0.834655,
		0.595974, -0.801704, -0.045676,
		36.765518, 41.460133, 28.596771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881588, 42.332207, 28.598104>,  <36.348339, 42.021328, 28.628744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881588, 42.332207, 28.598104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997665, 41.960102, 28.508299>,  <37.067310, 41.736839, 28.454416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997665, 41.960102, 28.508299>,  <36.881588, 42.332207, 28.598104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997665, 41.960102, 28.508299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638229, 0.362947, -0.678921,
		0.713058, 0.053727, 0.699043,
		0.290192, -0.930259, -0.224513,
		37.084724, 41.681023, 28.440945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698112, 42.332100, 28.651295>,  <36.881588, 42.332207, 28.598104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698112, 42.332100, 28.651295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603985, 42.022892, 28.415646>,  <37.547508, 41.837368, 28.274256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603985, 42.022892, 28.415646>,  <37.698112, 42.332100, 28.651295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603985, 42.022892, 28.415646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672557, 0.308067, -0.672876,
		0.701637, -0.554556, 0.447408,
		-0.235316, -0.773022, -0.589122,
		37.533390, 41.790985, 28.238909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314613, 42.071907, 28.369125>,  <37.698112, 42.332100, 28.651295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314613, 42.071907, 28.369125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015289, 41.945961, 28.135584>,  <37.835693, 41.870392, 27.995459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015289, 41.945961, 28.135584>,  <38.314613, 42.071907, 28.369125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015289, 41.945961, 28.135584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517257, 0.274063, -0.810762,
		0.415297, -0.908706, -0.042217,
		-0.748314, -0.314870, -0.583852,
		37.790794, 41.851501, 27.960428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679230, 41.316067, 28.554575>,  <38.314613, 42.071907, 28.369125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679230, 41.316067, 28.554575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.989220, 41.300434, 28.806887>,  <39.175213, 41.291054, 28.958273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.989220, 41.300434, 28.806887>,  <38.679230, 41.316067, 28.554575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989220, 41.300434, 28.806887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631714, -0.018573, 0.774979,
		-0.018573, -0.999063, -0.039082,
		-0.774979, 0.039082, -0.630778,
		39.221714, 41.288708, 28.996120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433514, 40.875858, 29.090687>,  <38.679230, 41.316067, 28.554575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433514, 40.875858, 29.090687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.763481, 41.023006, 29.262352>,  <38.961460, 41.111294, 29.365351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.763481, 41.023006, 29.262352>,  <38.433514, 40.875858, 29.090687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763481, 41.023006, 29.262352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428024, -0.089375, 0.899338,
		0.369195, -0.925572, 0.083730,
		0.824919, 0.367870, 0.429163,
		39.010956, 41.133366, 29.391102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549770, 40.367565, 29.455065>,  <38.433514, 40.875858, 29.090687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549770, 40.367565, 29.455065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725742, 40.692257, 29.608717>,  <38.831326, 40.887074, 29.700909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725742, 40.692257, 29.608717>,  <38.549770, 40.367565, 29.455065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725742, 40.692257, 29.608717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384958, -0.215989, 0.897305,
		0.811336, -0.542628, 0.217460,
		0.439933, 0.811729, 0.384128,
		38.857723, 40.935776, 29.723955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940826, 40.115929, 29.985737>,  <38.549770, 40.367565, 29.455065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940826, 40.115929, 29.985737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921124, 40.504322, 30.079338>,  <38.909302, 40.737358, 30.135498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921124, 40.504322, 30.079338>,  <38.940826, 40.115929, 29.985737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921124, 40.504322, 30.079338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399404, -0.233886, 0.886439,
		0.915451, -0.049801, 0.399337,
		-0.049253, 0.970988, 0.234002,
		38.906349, 40.795620, 30.149538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175205, 40.166252, 30.603786>,  <38.940826, 40.115929, 29.985737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175205, 40.166252, 30.603786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971722, 40.508663, 30.567072>,  <38.849632, 40.714111, 30.545042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971722, 40.508663, 30.567072>,  <39.175205, 40.166252, 30.603786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971722, 40.508663, 30.567072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341438, -0.102727, 0.934273,
		0.790337, 0.506615, 0.344540,
		-0.508711, 0.856031, -0.091789,
		38.819107, 40.765472, 30.539536>
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
