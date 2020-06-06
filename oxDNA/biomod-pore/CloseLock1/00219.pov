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
	<24.008089, 35.509682, 35.444366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116674, 35.179024, 35.247200>,  <24.181826, 34.980629, 35.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116674, 35.179024, 35.247200>,  <24.008089, 35.509682, 35.444366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116674, 35.179024, 35.247200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794082, -0.097014, 0.600018,
		-0.543821, -0.554300, 0.630087,
		0.271463, -0.826643, -0.492918,
		24.198112, 34.931030, 35.099323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085762, 34.890903, 35.917992>,  <24.008089, 35.509682, 35.444366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085762, 34.890903, 35.917992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338705, 34.945114, 35.612900>,  <24.490471, 34.977638, 35.429844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338705, 34.945114, 35.612900>,  <24.085762, 34.890903, 35.917992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338705, 34.945114, 35.612900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745159, 0.162790, 0.646713,
		0.211810, -0.977309, 0.001954,
		0.632356, 0.135524, -0.762731,
		24.528412, 34.985771, 35.384079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787149, 34.385975, 35.786224>,  <24.085762, 34.890903, 35.917992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787149, 34.385975, 35.786224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840048, 34.770073, 35.687885>,  <24.871786, 35.000530, 35.628883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840048, 34.770073, 35.687885>,  <24.787149, 34.385975, 35.786224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840048, 34.770073, 35.687885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888272, -0.004744, 0.459293,
		0.439868, -0.279116, -0.853587,
		0.132246, 0.960246, -0.245844,
		24.879721, 35.058147, 35.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209883, 34.368526, 35.196915>,  <24.787149, 34.385975, 35.786224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209883, 34.368526, 35.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298630, 34.383400, 34.807167>,  <25.351877, 34.392323, 34.573318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298630, 34.383400, 34.807167>,  <25.209883, 34.368526, 35.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298630, 34.383400, 34.807167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823419, 0.528076, 0.207647,
		0.522260, -0.848383, 0.086548,
		0.221868, 0.037180, -0.974368,
		25.365191, 34.394554, 34.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912903, 34.242054, 35.207092>,  <25.209883, 34.368526, 35.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912903, 34.242054, 35.207092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795507, 34.473885, 34.903000>,  <25.725071, 34.612984, 34.720543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795507, 34.473885, 34.903000>,  <25.912903, 34.242054, 35.207092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795507, 34.473885, 34.903000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632015, 0.714294, 0.300568,
		0.717233, -0.392265, -0.575939,
		-0.293487, 0.579579, -0.760232,
		25.707460, 34.647758, 34.674931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442909, 34.526386, 34.749603>,  <25.912903, 34.242054, 35.207092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442909, 34.526386, 34.749603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137417, 34.780376, 34.796124>,  <25.954123, 34.932770, 34.824036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137417, 34.780376, 34.796124>,  <26.442909, 34.526386, 34.749603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137417, 34.780376, 34.796124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604120, 0.639542, 0.475422,
		0.227504, 0.433350, -0.872038,
		-0.763729, 0.634975, 0.116297,
		25.908298, 34.970867, 34.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670298, 35.094727, 34.397465>,  <26.442909, 34.526386, 34.749603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670298, 35.094727, 34.397465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410183, 35.171059, 34.691597>,  <26.254114, 35.216858, 34.868076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410183, 35.171059, 34.691597>,  <26.670298, 35.094727, 34.397465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410183, 35.171059, 34.691597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605764, 0.714376, 0.350309,
		-0.458451, 0.673238, -0.580150,
		-0.650286, 0.190835, 0.735330,
		26.215097, 35.228310, 34.912197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487036, 34.636623, 33.832844>,  <26.670298, 35.094727, 34.397465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487036, 34.636623, 33.832844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786531, 34.444969, 34.016068>,  <26.966228, 34.329975, 34.125999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786531, 34.444969, 34.016068>,  <26.487036, 34.636623, 33.832844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786531, 34.444969, 34.016068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276070, -0.853646, -0.441672,
		0.602641, 0.204241, -0.771433,
		0.748738, -0.479140, 0.458057,
		27.011152, 34.301228, 34.153484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799940, 34.248188, 33.242966>,  <26.487036, 34.636623, 33.832844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799940, 34.248188, 33.242966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894669, 34.085674, 33.595974>,  <26.951506, 33.988167, 33.807781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894669, 34.085674, 33.595974>,  <26.799940, 34.248188, 33.242966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894669, 34.085674, 33.595974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240819, -0.904563, -0.351813,
		0.941235, -0.129212, -0.312060,
		0.236819, -0.406289, 0.882523,
		26.965714, 33.963787, 33.860729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258579, 33.625072, 33.029888>,  <26.799940, 34.248188, 33.242966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258579, 33.625072, 33.029888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105860, 33.583759, 33.397270>,  <27.014227, 33.558971, 33.617699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105860, 33.583759, 33.397270>,  <27.258579, 33.625072, 33.029888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105860, 33.583759, 33.397270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219153, -0.955279, -0.198527,
		0.897887, -0.277080, 0.342091,
		-0.381800, -0.103285, 0.918455,
		26.991320, 33.552773, 33.672806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271708, 32.894215, 33.199284>,  <27.258579, 33.625072, 33.029888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271708, 32.894215, 33.199284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009346, 33.032955, 33.467457>,  <26.851929, 33.116199, 33.628361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009346, 33.032955, 33.467457>,  <27.271708, 32.894215, 33.199284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009346, 33.032955, 33.467457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521943, -0.850032, -0.070860,
		0.545313, -0.396406, 0.738577,
		-0.655903, 0.346854, 0.670435,
		26.812574, 33.137012, 33.668587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242628, 32.461021, 33.638916>,  <27.271708, 32.894215, 33.199284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242628, 32.461021, 33.638916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892296, 32.634884, 33.722816>,  <26.682096, 32.739201, 33.773155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892296, 32.634884, 33.722816>,  <27.242628, 32.461021, 33.638916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892296, 32.634884, 33.722816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436255, -0.898885, 0.041077,
		0.206397, -0.055529, 0.976891,
		-0.875832, 0.434652, 0.209752,
		26.629547, 32.765278, 33.785744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897392, 32.004108, 34.151031>,  <27.242628, 32.461021, 33.638916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897392, 32.004108, 34.151031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624403, 32.229065, 33.964291>,  <26.460609, 32.364040, 33.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624403, 32.229065, 33.964291>,  <26.897392, 32.004108, 34.151031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624403, 32.229065, 33.964291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603220, -0.794065, -0.074747,
		-0.412745, 0.230600, 0.881173,
		-0.682472, 0.562393, -0.466848,
		26.419662, 32.397781, 33.824238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368315, 31.779245, 34.446503>,  <26.897392, 32.004108, 34.151031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368315, 31.779245, 34.446503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227102, 31.967834, 34.123249>,  <26.142374, 32.080990, 33.929298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227102, 31.967834, 34.123249>,  <26.368315, 31.779245, 34.446503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227102, 31.967834, 34.123249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545317, -0.805557, -0.231749,
		-0.760261, 0.358874, 0.541491,
		-0.353034, 0.471474, -0.808133,
		26.121193, 32.109276, 33.880810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792643, 31.411007, 34.324089>,  <26.368315, 31.779245, 34.446503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792643, 31.411007, 34.324089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840849, 31.589642, 33.969456>,  <25.869772, 31.696821, 33.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.840849, 31.589642, 33.969456>,  <25.792643, 31.411007, 34.324089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.840849, 31.589642, 33.969456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503635, -0.742121, -0.442275,
		-0.855469, 0.499818, 0.135479,
		0.120515, 0.446585, -0.886588,
		25.877003, 31.723618, 33.703480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199799, 31.281786, 34.029156>,  <25.792643, 31.411007, 34.324089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199799, 31.281786, 34.029156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429533, 31.374498, 33.715107>,  <25.567373, 31.430126, 33.526680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429533, 31.374498, 33.715107>,  <25.199799, 31.281786, 34.029156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429533, 31.374498, 33.715107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456781, -0.705151, -0.542322,
		-0.679329, 0.670104, -0.299121,
		0.574338, 0.231782, -0.785120,
		25.601833, 31.444033, 33.479572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753359, 31.413370, 33.520020>,  <25.199799, 31.281786, 34.029156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753359, 31.413370, 33.520020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107552, 31.333176, 33.352337>,  <25.320066, 31.285059, 33.251728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107552, 31.333176, 33.352337>,  <24.753359, 31.413370, 33.520020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107552, 31.333176, 33.352337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435192, -0.674039, -0.596892,
		-0.162892, 0.710970, -0.684097,
		0.885480, -0.200484, -0.419204,
		25.373196, 31.273031, 33.226574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563547, 31.220995, 32.840862>,  <24.753359, 31.413370, 33.520020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563547, 31.220995, 32.840862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927441, 31.069931, 32.909863>,  <25.145777, 30.979292, 32.951263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927441, 31.069931, 32.909863>,  <24.563547, 31.220995, 32.840862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927441, 31.069931, 32.909863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293957, -0.879285, -0.374763,
		0.293214, 0.290226, -0.910931,
		0.909734, -0.377660, 0.172505,
		25.200361, 30.956633, 32.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679340, 30.906031, 32.179058>,  <24.563547, 31.220995, 32.840862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679340, 30.906031, 32.179058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941448, 30.727844, 32.423084>,  <25.098713, 30.620934, 32.569500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941448, 30.727844, 32.423084>,  <24.679340, 30.906031, 32.179058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941448, 30.727844, 32.423084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081604, -0.844633, -0.529090,
		0.750976, 0.296912, -0.589812,
		0.655268, -0.445465, 0.610070,
		25.138029, 30.594204, 32.606106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062618, 30.464304, 31.763975>,  <24.679340, 30.906031, 32.179058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062618, 30.464304, 31.763975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100267, 30.312250, 32.132027>,  <25.122856, 30.221018, 32.352859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100267, 30.312250, 32.132027>,  <25.062618, 30.464304, 31.763975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100267, 30.312250, 32.132027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175561, -0.916086, -0.360507,
		0.979959, -0.127607, -0.152962,
		0.094123, -0.380136, 0.920129,
		25.128504, 30.198210, 32.408066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643045, 30.043219, 31.753651>,  <25.062618, 30.464304, 31.763975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643045, 30.043219, 31.753651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438927, 29.912075, 32.071671>,  <25.316456, 29.833389, 32.262482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438927, 29.912075, 32.071671>,  <25.643045, 30.043219, 31.753651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438927, 29.912075, 32.071671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156133, -0.944435, -0.289248,
		0.845706, -0.023469, 0.533132,
		-0.510297, -0.327859, 0.795051,
		25.285837, 29.813717, 32.310184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021959, 29.373617, 31.811085>,  <25.643045, 30.043219, 31.753651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021959, 29.373617, 31.811085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703901, 29.347260, 32.052216>,  <25.513067, 29.331446, 32.196896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703901, 29.347260, 32.052216>,  <26.021959, 29.373617, 31.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703901, 29.347260, 32.052216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110454, -0.961713, -0.250816,
		0.596275, -0.266020, 0.757423,
		-0.795145, -0.065895, 0.602828,
		25.465357, 29.327492, 32.233063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976202, 28.853708, 32.265427>,  <26.021959, 29.373617, 31.811085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976202, 28.853708, 32.265427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590158, 28.923553, 32.187378>,  <25.358532, 28.965460, 32.140549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590158, 28.923553, 32.187378>,  <25.976202, 28.853708, 32.265427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590158, 28.923553, 32.187378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065771, -0.882959, -0.464821,
		-0.253450, -0.435770, 0.863637,
		-0.965110, 0.174611, -0.195124,
		25.300625, 28.975937, 32.128841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578930, 28.195795, 32.458313>,  <25.976202, 28.853708, 32.265427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578930, 28.195795, 32.458313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328720, 28.412298, 32.233540>,  <25.178595, 28.542200, 32.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328720, 28.412298, 32.233540>,  <25.578930, 28.195795, 32.458313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328720, 28.412298, 32.233540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364208, -0.839512, -0.403202,
		-0.689981, -0.047554, 0.722264,
		-0.625523, 0.541256, -0.561928,
		25.141064, 28.574675, 32.064960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909962, 27.895481, 32.687592>,  <25.578930, 28.195795, 32.458313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909962, 27.895481, 32.687592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912445, 28.066875, 32.326180>,  <24.913935, 28.169712, 32.109333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912445, 28.066875, 32.326180>,  <24.909962, 27.895481, 32.687592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912445, 28.066875, 32.326180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241615, -0.876130, -0.417156,
		-0.970353, 0.220895, 0.098090,
		0.006208, 0.428488, -0.903526,
		24.914307, 28.195421, 32.055122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.243038, 27.820131, 32.282532>,  <24.909962, 27.895481, 32.687592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.243038, 27.820131, 32.282532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540306, 27.869953, 32.019569>,  <24.718666, 27.899845, 31.861792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.540306, 27.869953, 32.019569>,  <24.243038, 27.820131, 32.282532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.540306, 27.869953, 32.019569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243298, -0.864963, -0.438913,
		-0.623304, 0.486133, -0.612509,
		0.743168, 0.124554, -0.657410,
		24.763256, 27.907320, 31.822346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.934126, 27.650381, 31.698425>,  <24.243038, 27.820131, 32.282532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.934126, 27.650381, 31.698425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326551, 27.584578, 31.739326>,  <24.562006, 27.545095, 31.763868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326551, 27.584578, 31.739326>,  <23.934126, 27.650381, 31.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326551, 27.584578, 31.739326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134430, -0.958342, -0.252011,
		0.139452, 0.233493, -0.962307,
		0.981062, -0.164507, 0.102254,
		24.620871, 27.535225, 31.770002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033539, 27.200844, 31.180817>,  <23.934126, 27.650381, 31.698425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033539, 27.200844, 31.180817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319477, 27.175732, 31.459400>,  <24.491039, 27.160666, 31.626551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319477, 27.175732, 31.459400>,  <24.033539, 27.200844, 31.180817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319477, 27.175732, 31.459400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185093, -0.977426, 0.101874,
		0.674343, -0.201733, -0.710328,
		0.714845, -0.062779, 0.696460,
		24.533930, 27.156898, 31.668339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397444, 26.597521, 31.020386>,  <24.033539, 27.200844, 31.180817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397444, 26.597521, 31.020386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482466, 26.662069, 31.405878>,  <24.533478, 26.700798, 31.637175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482466, 26.662069, 31.405878>,  <24.397444, 26.597521, 31.020386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.482466, 26.662069, 31.405878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120571, -0.974401, 0.189748,
		0.969682, -0.156530, -0.187655,
		0.212553, 0.161369, 0.963733,
		24.546232, 26.710480, 31.694998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.771999, 26.066271, 31.156658>,  <24.397444, 26.597521, 31.020386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.771999, 26.066271, 31.156658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612930, 26.213793, 31.492716>,  <24.517488, 26.302305, 31.694351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612930, 26.213793, 31.492716>,  <24.771999, 26.066271, 31.156658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612930, 26.213793, 31.492716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296449, -0.918195, 0.262747,
		0.868318, -0.144573, 0.474471,
		-0.397670, 0.368804, 0.840144,
		24.493629, 26.324434, 31.744759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074760, 25.417955, 30.917110>,  <24.771999, 26.066271, 31.156658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074760, 25.417955, 30.917110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415680, 25.376291, 30.712078>,  <25.620232, 25.351294, 30.589058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415680, 25.376291, 30.712078>,  <25.074760, 25.417955, 30.917110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415680, 25.376291, 30.712078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452326, -0.345333, 0.822281,
		-0.262657, -0.932683, -0.247213,
		0.852298, -0.104157, -0.512581,
		25.671370, 25.345043, 30.558304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270897, 24.688511, 30.908300>,  <25.074760, 25.417955, 30.917110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270897, 24.688511, 30.908300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507254, 25.010958, 30.921078>,  <25.649069, 25.204426, 30.928743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507254, 25.010958, 30.921078>,  <25.270897, 24.688511, 30.908300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507254, 25.010958, 30.921078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315484, -0.267331, 0.910497,
		0.742507, -0.527929, -0.412281,
		0.590893, 0.806118, 0.031943,
		25.684521, 25.252792, 30.930660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846611, 24.395632, 31.336264>,  <25.270897, 24.688511, 30.908300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846611, 24.395632, 31.336264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789904, 24.345953, 31.729095>,  <25.755878, 24.316145, 31.964794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789904, 24.345953, 31.729095>,  <25.846611, 24.395632, 31.336264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789904, 24.345953, 31.729095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180657, 0.972190, 0.149026,
		-0.973275, 0.198547, -0.115390,
		-0.141770, -0.124197, 0.982077,
		25.747374, 24.308693, 32.023720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416254, 24.968222, 31.654375>,  <25.846611, 24.395632, 31.336264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416254, 24.968222, 31.654375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658421, 24.800121, 31.924740>,  <25.803720, 24.699261, 32.086960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658421, 24.800121, 31.924740>,  <25.416254, 24.968222, 31.654375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658421, 24.800121, 31.924740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185572, 0.900364, 0.393584,
		-0.773971, -0.112852, 0.623083,
		0.605418, -0.420249, 0.675914,
		25.840046, 24.674046, 32.127514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278210, 25.161392, 32.403336>,  <25.416254, 24.968222, 31.654375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278210, 25.161392, 32.403336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660259, 25.056831, 32.347618>,  <25.889490, 24.994095, 32.314186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660259, 25.056831, 32.347618>,  <25.278210, 25.161392, 32.403336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660259, 25.056831, 32.347618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294681, 0.886141, 0.357654,
		0.029944, -0.382653, 0.923407,
		0.955126, -0.261401, -0.139295,
		25.946796, 24.978411, 32.305828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626856, 25.250921, 32.992981>,  <25.278210, 25.161392, 32.403336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626856, 25.250921, 32.992981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860569, 25.288050, 32.670490>,  <26.000797, 25.310326, 32.476997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860569, 25.288050, 32.670490>,  <25.626856, 25.250921, 32.992981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860569, 25.288050, 32.670490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370881, 0.853088, 0.366998,
		0.721845, -0.513444, 0.464020,
		0.584283, 0.092819, -0.806225,
		26.035854, 25.315895, 32.428623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182081, 25.513699, 33.294514>,  <25.626856, 25.250921, 32.992981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182081, 25.513699, 33.294514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278233, 25.558071, 32.908787>,  <26.335922, 25.584696, 32.677349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278233, 25.558071, 32.908787>,  <26.182081, 25.513699, 33.294514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278233, 25.558071, 32.908787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619416, 0.747357, 0.240377,
		0.747357, -0.655096, 0.110934,
		-0.240377, -0.110934, 0.964320,
		26.350346, 25.591351, 32.619492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844238, 25.597996, 33.294762>,  <26.182081, 25.513699, 33.294514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844238, 25.597996, 33.294762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736177, 25.752478, 32.941975>,  <26.671341, 25.845167, 32.730301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736177, 25.752478, 32.941975>,  <26.844238, 25.597996, 33.294762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736177, 25.752478, 32.941975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558184, 0.809202, 0.183364,
		0.784505, -0.442762, -0.434182,
		-0.270154, 0.386203, -0.881966,
		26.655130, 25.868340, 32.677383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474554, 25.813709, 32.923264>,  <26.844238, 25.597996, 33.294762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474554, 25.813709, 32.923264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155375, 26.015480, 32.791306>,  <26.963867, 26.136541, 32.712132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155375, 26.015480, 32.791306>,  <27.474554, 25.813709, 32.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155375, 26.015480, 32.791306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486590, 0.862132, 0.141276,
		0.355674, -0.047791, -0.933387,
		-0.797951, 0.504425, -0.329893,
		26.915989, 26.166807, 32.692337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761385, 26.241945, 32.360401>,  <27.474554, 25.813709, 32.923264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761385, 26.241945, 32.360401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418024, 26.397058, 32.494724>,  <27.212008, 26.490126, 32.575317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418024, 26.397058, 32.494724>,  <27.761385, 26.241945, 32.360401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418024, 26.397058, 32.494724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468452, 0.859348, 0.205120,
		-0.209033, 0.333385, -0.919325,
		-0.858404, 0.387783, 0.335808,
		27.160503, 26.513393, 32.595467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607929, 26.831949, 31.915052>,  <27.761385, 26.241945, 32.360401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607929, 26.831949, 31.915052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389025, 26.883760, 32.245804>,  <27.257683, 26.914846, 32.444256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389025, 26.883760, 32.245804>,  <27.607929, 26.831949, 31.915052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389025, 26.883760, 32.245804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257822, 0.965999, 0.019317,
		-0.796261, 0.223759, -0.562050,
		-0.547262, 0.129527, 0.826878,
		27.224846, 26.922619, 32.493866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404961, 27.551212, 31.899223>,  <27.607929, 26.831949, 31.915052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404961, 27.551212, 31.899223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327024, 27.447985, 32.277733>,  <27.280262, 27.386047, 32.504841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327024, 27.447985, 32.277733>,  <27.404961, 27.551212, 31.899223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327024, 27.447985, 32.277733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138827, 0.947796, 0.287069,
		-0.970960, 0.187301, -0.148842,
		-0.194840, -0.258070, 0.946275,
		27.268572, 27.370564, 32.561615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859386, 27.984806, 32.110695>,  <27.404961, 27.551212, 31.899223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859386, 27.984806, 32.110695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067301, 27.853725, 32.426273>,  <27.192049, 27.775076, 32.615620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067301, 27.853725, 32.426273>,  <26.859386, 27.984806, 32.110695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067301, 27.853725, 32.426273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059498, 0.935146, 0.349231,
		-0.852224, -0.134584, 0.505571,
		0.519784, -0.327703, 0.788946,
		27.223236, 27.755415, 32.662956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526546, 28.325603, 32.639572>,  <26.859386, 27.984806, 32.110695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526546, 28.325603, 32.639572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864452, 28.202446, 32.814648>,  <27.067196, 28.128551, 32.919693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864452, 28.202446, 32.814648>,  <26.526546, 28.325603, 32.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864452, 28.202446, 32.814648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178610, 0.933226, 0.311751,
		-0.504452, -0.185180, 0.843349,
		0.844765, -0.307893, 0.437692,
		27.117882, 28.110079, 32.945953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639927, 28.496077, 33.403835>,  <26.526546, 28.325603, 32.639572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639927, 28.496077, 33.403835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003185, 28.467031, 33.238911>,  <27.221140, 28.449604, 33.139957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.003185, 28.467031, 33.238911>,  <26.639927, 28.496077, 33.403835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003185, 28.467031, 33.238911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279145, 0.838997, 0.467079,
		0.312011, -0.539269, 0.782200,
		0.908145, -0.072613, -0.412311,
		27.275629, 28.445248, 33.115219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130831, 28.736198, 33.922619>,  <26.639927, 28.496077, 33.403835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130831, 28.736198, 33.922619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366875, 28.753036, 33.600128>,  <27.508501, 28.763140, 33.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366875, 28.753036, 33.600128>,  <27.130831, 28.736198, 33.922619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366875, 28.753036, 33.600128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319434, 0.904968, 0.281059,
		0.741440, -0.423391, 0.520582,
		0.590109, 0.042097, -0.806225,
		27.543907, 28.765665, 33.358261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812307, 29.066154, 34.170708>,  <27.130831, 28.736198, 33.922619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812307, 29.066154, 34.170708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796837, 29.120378, 33.774700>,  <27.787556, 29.152912, 33.537098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796837, 29.120378, 33.774700>,  <27.812307, 29.066154, 34.170708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796837, 29.120378, 33.774700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231617, 0.964989, 0.123084,
		0.972038, -0.224544, -0.068719,
		-0.038675, 0.135559, -0.990014,
		27.785234, 29.161047, 33.477695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403299, 29.342175, 34.020435>,  <27.812307, 29.066154, 34.170708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403299, 29.342175, 34.020435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203632, 29.442158, 33.688568>,  <28.083832, 29.502148, 33.489449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203632, 29.442158, 33.688568>,  <28.403299, 29.342175, 34.020435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203632, 29.442158, 33.688568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420833, 0.906917, 0.020038,
		0.757450, -0.339150, -0.557894,
		-0.499168, 0.249958, -0.829670,
		28.053883, 29.517145, 33.439667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878891, 29.463326, 33.412369>,  <28.403299, 29.342175, 34.020435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878891, 29.463326, 33.412369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533051, 29.662718, 33.387135>,  <28.325546, 29.782354, 33.371994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533051, 29.662718, 33.387135>,  <28.878891, 29.463326, 33.412369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533051, 29.662718, 33.387135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498294, 0.866782, 0.019802,
		0.064556, -0.014317, -0.997811,
		-0.864601, 0.498482, -0.063090,
		28.273670, 29.812262, 33.368206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132435, 30.091457, 33.319164>,  <28.878891, 29.463326, 33.412369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132435, 30.091457, 33.319164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745583, 30.189156, 33.347458>,  <28.513472, 30.247774, 33.364433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745583, 30.189156, 33.347458>,  <29.132435, 30.091457, 33.319164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745583, 30.189156, 33.347458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249356, 0.965451, 0.075675,
		-0.049810, 0.090827, -0.994620,
		-0.967130, 0.244245, 0.070738,
		28.455444, 30.262428, 33.368679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073875, 30.640230, 32.845985>,  <29.132435, 30.091457, 33.319164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073875, 30.640230, 32.845985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779301, 30.651241, 33.116364>,  <28.602556, 30.657848, 33.278591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779301, 30.651241, 33.116364>,  <29.073875, 30.640230, 32.845985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779301, 30.651241, 33.116364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302244, 0.907295, 0.292342,
		-0.605233, 0.419592, -0.676488,
		-0.736439, 0.027529, 0.675944,
		28.558369, 30.659500, 33.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737171, 31.185234, 32.693668>,  <29.073875, 30.640230, 32.845985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737171, 31.185234, 32.693668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631212, 31.101685, 33.070221>,  <28.567636, 31.051556, 33.296154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631212, 31.101685, 33.070221>,  <28.737171, 31.185234, 32.693668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631212, 31.101685, 33.070221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373571, 0.877790, 0.299883,
		-0.888973, 0.431112, -0.154496,
		-0.264898, -0.208872, 0.941383,
		28.551743, 31.039022, 33.352634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496616, 31.817995, 32.913815>,  <28.737171, 31.185234, 32.693668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496616, 31.817995, 32.913815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534815, 31.634996, 33.267441>,  <28.557734, 31.525198, 33.479618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534815, 31.634996, 33.267441>,  <28.496616, 31.817995, 32.913815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534815, 31.634996, 33.267441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247468, 0.871157, 0.424082,
		-0.964179, 0.178281, 0.196406,
		0.095494, -0.457495, 0.884070,
		28.563463, 31.497747, 33.532661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157742, 32.294209, 33.328491>,  <28.496616, 31.817995, 32.913815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157742, 32.294209, 33.328491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393328, 32.057072, 33.548183>,  <28.534679, 31.914789, 33.680000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393328, 32.057072, 33.548183>,  <28.157742, 32.294209, 33.328491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393328, 32.057072, 33.548183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283272, 0.787931, 0.546737,
		-0.756885, -0.166428, 0.632002,
		0.588966, -0.592846, 0.549229,
		28.570017, 31.879217, 33.712952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994921, 32.420784, 33.992294>,  <28.157742, 32.294209, 33.328491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994921, 32.420784, 33.992294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353092, 32.250263, 34.043633>,  <28.567995, 32.147953, 34.074436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353092, 32.250263, 34.043633>,  <27.994921, 32.420784, 33.992294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353092, 32.250263, 34.043633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233841, 0.695673, 0.679232,
		-0.378843, -0.578193, 0.722614,
		0.895430, -0.426300, 0.128345,
		28.621721, 32.122372, 34.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095007, 32.323502, 34.734772>,  <27.994921, 32.420784, 33.992294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095007, 32.323502, 34.734772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443523, 32.347328, 34.539917>,  <28.652634, 32.361626, 34.423004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443523, 32.347328, 34.539917>,  <28.095007, 32.323502, 34.734772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443523, 32.347328, 34.539917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342017, 0.638160, 0.689765,
		0.351960, -0.767596, 0.535650,
		0.871291, 0.059569, -0.487138,
		28.704910, 32.365200, 34.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473118, 32.452606, 35.293259>,  <28.095007, 32.323502, 34.734772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473118, 32.452606, 35.293259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708170, 32.528515, 34.978634>,  <28.849201, 32.574062, 34.789860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708170, 32.528515, 34.978634>,  <28.473118, 32.452606, 35.293259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708170, 32.528515, 34.978634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362260, 0.807529, 0.465472,
		0.723505, -0.558465, 0.405780,
		0.587629, 0.189774, -0.786561,
		28.884459, 32.585445, 34.742664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151220, 32.511639, 35.550468>,  <28.473118, 32.452606, 35.293259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151220, 32.511639, 35.550468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096050, 32.736629, 35.224377>,  <29.062948, 32.871624, 35.028721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096050, 32.736629, 35.224377>,  <29.151220, 32.511639, 35.550468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096050, 32.736629, 35.224377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324757, 0.803274, 0.499283,
		0.935687, -0.195887, -0.293460,
		-0.137926, 0.562475, -0.815229,
		29.054672, 32.905373, 34.979809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808989, 32.860119, 35.371151>,  <29.151220, 32.511639, 35.550468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808989, 32.860119, 35.371151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498472, 33.063156, 35.221634>,  <29.312162, 33.184978, 35.131924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498472, 33.063156, 35.221634>,  <29.808989, 32.860119, 35.371151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498472, 33.063156, 35.221634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234304, 0.782830, 0.576436,
		0.585213, 0.359900, -0.726635,
		-0.776291, 0.507591, -0.373796,
		29.265585, 33.215435, 35.109493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087444, 33.453789, 35.004108>,  <29.808989, 32.860119, 35.371151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087444, 33.453789, 35.004108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753595, 33.567333, 35.192924>,  <29.553286, 33.635460, 35.306213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753595, 33.567333, 35.192924>,  <30.087444, 33.453789, 35.004108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753595, 33.567333, 35.192924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531915, 0.637952, 0.556852,
		-0.143072, 0.715849, -0.683440,
		-0.834624, 0.283862, 0.472044,
		29.503208, 33.652493, 35.334538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124748, 34.170124, 35.054661>,  <30.087444, 33.453789, 35.004108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124748, 34.170124, 35.054661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863169, 34.043468, 35.329494>,  <29.706221, 33.967476, 35.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863169, 34.043468, 35.329494>,  <30.124748, 34.170124, 35.054661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863169, 34.043468, 35.329494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438239, 0.581757, 0.685204,
		-0.616681, 0.749198, -0.241676,
		-0.653951, -0.316640, 0.687086,
		29.666983, 33.948475, 35.535622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195961, 34.669373, 35.631512>,  <30.124748, 34.170124, 35.054661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195961, 34.669373, 35.631512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997974, 34.352638, 35.774620>,  <29.879183, 34.162598, 35.860485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997974, 34.352638, 35.774620>,  <30.195961, 34.669373, 35.631512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997974, 34.352638, 35.774620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181395, 0.308506, 0.933767,
		-0.849766, 0.527082, -0.009065,
		-0.494968, -0.791839, 0.357768,
		29.849483, 34.115086, 35.881950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725933, 34.909554, 36.083462>,  <30.195961, 34.669373, 35.631512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725933, 34.909554, 36.083462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758904, 34.520157, 36.168800>,  <29.778687, 34.286518, 36.220001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758904, 34.520157, 36.168800>,  <29.725933, 34.909554, 36.083462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758904, 34.520157, 36.168800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217943, 0.226497, 0.949316,
		-0.972475, -0.031752, 0.230835,
		0.082426, -0.973494, 0.213342,
		29.783632, 34.228107, 36.232803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259645, 34.805489, 36.576218>,  <29.725933, 34.909554, 36.083462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259645, 34.805489, 36.576218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585184, 34.574379, 36.551464>,  <29.780508, 34.435715, 36.536610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585184, 34.574379, 36.551464>,  <29.259645, 34.805489, 36.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585184, 34.574379, 36.551464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229797, 0.222198, 0.947534,
		-0.533709, -0.785370, 0.313606,
		0.813848, -0.577773, -0.061887,
		29.829338, 34.401047, 36.532898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333601, 34.430206, 37.208115>,  <29.259645, 34.805489, 36.576218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333601, 34.430206, 37.208115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698446, 34.403996, 37.046249>,  <29.917353, 34.388271, 36.949131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698446, 34.403996, 37.046249>,  <29.333601, 34.430206, 37.208115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698446, 34.403996, 37.046249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406907, 0.264524, 0.874331,
		0.049754, -0.962151, 0.267939,
		0.912113, -0.065525, -0.404667,
		29.972080, 34.384338, 36.924850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792965, 34.041553, 37.710522>,  <29.333601, 34.430206, 37.208115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792965, 34.041553, 37.710522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059534, 34.243748, 37.491299>,  <30.219475, 34.365067, 37.359764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059534, 34.243748, 37.491299>,  <29.792965, 34.041553, 37.710522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059534, 34.243748, 37.491299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399643, 0.378369, 0.834939,
		0.629418, -0.775447, 0.050138,
		0.666422, 0.505488, -0.548054,
		30.259460, 34.395393, 37.326881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410986, 33.872482, 37.989494>,  <29.792965, 34.041553, 37.710522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410986, 33.872482, 37.989494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462040, 34.217148, 37.793026>,  <30.492672, 34.423946, 37.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462040, 34.217148, 37.793026>,  <30.410986, 33.872482, 37.989494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462040, 34.217148, 37.793026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416019, 0.403042, 0.815160,
		0.900354, -0.308380, -0.307025,
		0.127635, 0.861660, -0.491173,
		30.500330, 34.475647, 37.645676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049034, 34.043541, 38.080193>,  <30.410986, 33.872482, 37.989494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049034, 34.043541, 38.080193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885998, 34.394321, 37.978348>,  <30.788176, 34.604790, 37.917240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885998, 34.394321, 37.978348>,  <31.049034, 34.043541, 38.080193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885998, 34.394321, 37.978348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424312, 0.428777, 0.797565,
		0.808597, 0.217044, -0.546866,
		-0.407591, 0.876950, -0.254614,
		30.763721, 34.657406, 37.901962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514299, 34.555424, 38.226215>,  <31.049034, 34.043541, 38.080193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514299, 34.555424, 38.226215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184412, 34.781506, 38.218452>,  <30.986479, 34.917156, 38.213795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184412, 34.781506, 38.218452>,  <31.514299, 34.555424, 38.226215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184412, 34.781506, 38.218452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280366, 0.438417, 0.853923,
		0.491154, 0.698806, -0.520037,
		-0.824720, 0.565208, -0.019409,
		30.936996, 34.951069, 38.212631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659029, 35.232403, 38.454937>,  <31.514299, 34.555424, 38.226215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659029, 35.232403, 38.454937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264454, 35.199020, 38.511475>,  <31.027710, 35.178993, 38.545399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264454, 35.199020, 38.511475>,  <31.659029, 35.232403, 38.454937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264454, 35.199020, 38.511475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106110, 0.332793, 0.937011,
		-0.125236, 0.939300, -0.319424,
		-0.986436, -0.083454, 0.141347,
		30.968523, 35.173985, 38.553879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457438, 35.893230, 38.626564>,  <31.659029, 35.232403, 38.454937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457438, 35.893230, 38.626564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164709, 35.650093, 38.749828>,  <30.989073, 35.504211, 38.823788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164709, 35.650093, 38.749828>,  <31.457438, 35.893230, 38.626564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164709, 35.650093, 38.749828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009241, 0.443289, 0.896331,
		-0.681434, 0.658802, -0.318791,
		-0.731822, -0.607844, 0.308159,
		30.945162, 35.467739, 38.842278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863152, 36.294193, 38.849487>,  <31.457438, 35.893230, 38.626564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863152, 36.294193, 38.849487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828701, 35.942516, 39.036934>,  <30.808031, 35.731510, 39.149403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828701, 35.942516, 39.036934>,  <30.863152, 36.294193, 38.849487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828701, 35.942516, 39.036934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183918, 0.448248, 0.874784,
		-0.979161, 0.161529, 0.123094,
		-0.086126, -0.879194, 0.468615,
		30.802864, 35.678757, 39.177517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516869, 36.451031, 39.524418>,  <30.863152, 36.294193, 38.849487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516869, 36.451031, 39.524418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656336, 36.080029, 39.578339>,  <30.740017, 35.857430, 39.610691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656336, 36.080029, 39.578339>,  <30.516869, 36.451031, 39.524418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656336, 36.080029, 39.578339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177128, 0.206443, 0.962293,
		-0.920356, -0.311645, 0.236266,
		0.348670, -0.927501, 0.134800,
		30.760937, 35.801777, 39.618778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283150, 36.251732, 40.125061>,  <30.516869, 36.451031, 39.524418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283150, 36.251732, 40.125061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578613, 35.982578, 40.109039>,  <30.755892, 35.821087, 40.099426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578613, 35.982578, 40.109039>,  <30.283150, 36.251732, 40.125061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578613, 35.982578, 40.109039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174503, 0.133483, 0.975567,
		-0.651098, -0.727603, 0.216019,
		0.738661, -0.672886, -0.040058,
		30.800211, 35.780712, 40.097023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304205, 35.962025, 40.789608>,  <30.283150, 36.251732, 40.125061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304205, 35.962025, 40.789608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631815, 35.806808, 40.620552>,  <30.828381, 35.713676, 40.519119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631815, 35.806808, 40.620552>,  <30.304205, 35.962025, 40.789608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631815, 35.806808, 40.620552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308648, -0.322978, 0.894663,
		-0.483671, -0.863196, -0.144758,
		0.819023, -0.388043, -0.422638,
		30.877522, 35.690395, 40.493759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254829, 35.364761, 40.963654>,  <30.304205, 35.962025, 40.789608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254829, 35.364761, 40.963654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646132, 35.411133, 40.894859>,  <30.880913, 35.438957, 40.853580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646132, 35.411133, 40.894859>,  <30.254829, 35.364761, 40.963654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646132, 35.411133, 40.894859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199635, -0.301339, 0.932384,
		0.056264, -0.946443, -0.317930,
		0.978254, 0.115930, -0.171988,
		30.939608, 35.445911, 40.843262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616322, 34.719379, 40.954666>,  <30.254829, 35.364761, 40.963654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616322, 34.719379, 40.954666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880831, 35.001225, 41.057617>,  <31.039536, 35.170330, 41.119389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880831, 35.001225, 41.057617>,  <30.616322, 34.719379, 40.954666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880831, 35.001225, 41.057617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255155, -0.533916, 0.806120,
		0.705419, -0.467393, -0.532848,
		0.661271, 0.704612, 0.257377,
		31.079212, 35.212608, 41.134830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151714, 34.296391, 41.120125>,  <30.616322, 34.719379, 40.954666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151714, 34.296391, 41.120125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232693, 34.647694, 41.293411>,  <31.281279, 34.858475, 41.397385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232693, 34.647694, 41.293411>,  <31.151714, 34.296391, 41.120125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232693, 34.647694, 41.293411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367091, -0.478180, 0.797865,
		0.907888, -0.002493, -0.419206,
		0.202445, 0.878259, 0.433218,
		31.293427, 34.911171, 41.423378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805250, 34.142559, 41.461727>,  <31.151714, 34.296391, 41.120125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805250, 34.142559, 41.461727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679489, 34.490520, 41.613735>,  <31.604033, 34.699299, 41.704941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679489, 34.490520, 41.613735>,  <31.805250, 34.142559, 41.461727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679489, 34.490520, 41.613735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301411, -0.288123, 0.908921,
		0.900168, 0.400309, -0.171612,
		-0.314404, 0.869907, 0.380017,
		31.585169, 34.751492, 41.727741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287533, 34.459946, 41.817890>,  <31.805250, 34.142559, 41.461727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287533, 34.459946, 41.817890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950386, 34.601837, 41.979752>,  <31.748098, 34.686974, 42.076870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950386, 34.601837, 41.979752>,  <32.287533, 34.459946, 41.817890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950386, 34.601837, 41.979752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380866, -0.137982, 0.914277,
		0.380157, 0.924731, -0.018804,
		-0.842865, 0.354731, 0.404654,
		31.697527, 34.708256, 42.101147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494778, 34.937027, 42.378170>,  <32.287533, 34.459946, 41.817890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494778, 34.937027, 42.378170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114056, 34.851250, 42.465881>,  <31.885622, 34.799782, 42.518509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114056, 34.851250, 42.465881>,  <32.494778, 34.937027, 42.378170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114056, 34.851250, 42.465881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236016, -0.055513, 0.970162,
		-0.195872, 0.975157, 0.103450,
		-0.951804, -0.214444, 0.219280,
		31.828514, 34.786915, 42.531666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346241, 35.195168, 43.099892>,  <32.494778, 34.937027, 42.378170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346241, 35.195168, 43.099892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009441, 34.982536, 43.063087>,  <31.807362, 34.854958, 43.041004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009441, 34.982536, 43.063087>,  <32.346241, 35.195168, 43.099892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009441, 34.982536, 43.063087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062147, -0.264997, 0.962244,
		-0.535888, 0.804490, 0.256163,
		-0.841999, -0.531575, -0.092012,
		31.756842, 34.823063, 43.035484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853729, 35.495277, 43.690216>,  <32.346241, 35.195168, 43.099892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853729, 35.495277, 43.690216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771589, 35.121952, 43.572399>,  <31.722305, 34.897957, 43.501709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771589, 35.121952, 43.572399>,  <31.853729, 35.495277, 43.690216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771589, 35.121952, 43.572399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078961, -0.284172, 0.955517,
		-0.975498, 0.219474, -0.015341,
		-0.205352, -0.933315, -0.294539,
		31.709984, 34.841957, 43.484039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309574, 35.327454, 44.036270>,  <31.853729, 35.495277, 43.690216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309574, 35.327454, 44.036270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484228, 34.985783, 43.923328>,  <31.589020, 34.780781, 43.855560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484228, 34.985783, 43.923328>,  <31.309574, 35.327454, 44.036270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484228, 34.985783, 43.923328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021511, -0.303855, 0.952475,
		-0.899383, -0.421956, -0.114299,
		0.436633, -0.854181, -0.282359,
		31.615217, 34.729527, 43.838619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946394, 34.807949, 44.356052>,  <31.309574, 35.327454, 44.036270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946394, 34.807949, 44.356052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274267, 34.604160, 44.251320>,  <31.470991, 34.481888, 44.188480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274267, 34.604160, 44.251320>,  <30.946394, 34.807949, 44.356052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274267, 34.604160, 44.251320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000959, -0.455880, 0.890040,
		-0.572817, -0.729802, -0.373189,
		0.819683, -0.509472, -0.261836,
		31.520172, 34.451321, 44.172768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822025, 34.030830, 44.343861>,  <30.946394, 34.807949, 44.356052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822025, 34.030830, 44.343861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208313, 34.104031, 44.417503>,  <31.440086, 34.147949, 44.461689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208313, 34.104031, 44.417503>,  <30.822025, 34.030830, 44.343861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208313, 34.104031, 44.417503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052764, -0.556056, 0.829468,
		0.254168, -0.810748, -0.527339,
		0.965720, 0.182999, 0.184110,
		31.498030, 34.158932, 44.472736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020668, 33.514507, 44.729904>,  <30.822025, 34.030830, 44.343861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020668, 33.514507, 44.729904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344208, 33.740601, 44.794746>,  <31.538332, 33.876255, 44.833652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344208, 33.740601, 44.794746>,  <31.020668, 33.514507, 44.729904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344208, 33.740601, 44.794746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132546, -0.443848, 0.886245,
		0.572884, -0.695351, -0.433925,
		0.808848, 0.565231, 0.162107,
		31.586863, 33.910172, 44.843380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527525, 33.100067, 44.930298>,  <31.020668, 33.514507, 44.729904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527525, 33.100067, 44.930298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642159, 33.459759, 45.062519>,  <31.710939, 33.675571, 45.141850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642159, 33.459759, 45.062519>,  <31.527525, 33.100067, 44.930298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642159, 33.459759, 45.062519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376366, -0.422952, 0.824294,
		0.881033, -0.111822, -0.459649,
		0.286584, 0.899226, 0.330549,
		31.728134, 33.729527, 45.161682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247543, 33.027115, 45.121212>,  <31.527525, 33.100067, 44.930298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247543, 33.027115, 45.121212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085884, 33.338417, 45.313454>,  <31.988890, 33.525200, 45.428799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085884, 33.338417, 45.313454>,  <32.247543, 33.027115, 45.121212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085884, 33.338417, 45.313454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414118, -0.312817, 0.854782,
		0.815582, 0.544484, -0.195867,
		-0.404144, 0.778256, 0.480609,
		31.964642, 33.571896, 45.457638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729225, 33.203068, 45.656158>,  <32.247543, 33.027115, 45.121212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729225, 33.203068, 45.656158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436050, 33.440155, 45.789719>,  <32.260147, 33.582409, 45.869854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436050, 33.440155, 45.789719>,  <32.729225, 33.203068, 45.656158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436050, 33.440155, 45.789719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326993, -0.123465, 0.936927,
		0.596560, 0.795890, -0.103324,
		-0.732933, 0.592719, 0.333905,
		32.216171, 33.617970, 45.889889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043385, 33.726410, 46.167599>,  <32.729225, 33.203068, 45.656158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043385, 33.726410, 46.167599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655018, 33.674500, 46.248070>,  <32.421997, 33.643353, 46.296352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655018, 33.674500, 46.248070>,  <33.043385, 33.726410, 46.167599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655018, 33.674500, 46.248070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202335, 0.004309, 0.979307,
		-0.127958, 0.991534, 0.022075,
		-0.970921, -0.129777, 0.201174,
		32.363743, 33.635567, 46.308422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807312, 34.176014, 46.737206>,  <33.043385, 33.726410, 46.167599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807312, 34.176014, 46.737206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539612, 33.878822, 46.740944>,  <32.378990, 33.700508, 46.743187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539612, 33.878822, 46.740944>,  <32.807312, 34.176014, 46.737206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539612, 33.878822, 46.740944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034778, -0.018760, 0.999219,
		-0.742223, 0.669053, 0.038395,
		-0.669251, -0.742978, 0.009344,
		32.338837, 33.655930, 46.743748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373474, 34.295979, 47.320621>,  <32.807312, 34.176014, 46.737206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373474, 34.295979, 47.320621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284077, 33.920231, 47.216587>,  <32.230438, 33.694782, 47.154167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284077, 33.920231, 47.216587>,  <32.373474, 34.295979, 47.320621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284077, 33.920231, 47.216587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051244, -0.277789, 0.959274,
		-0.973358, 0.201060, 0.110220,
		-0.223490, -0.939366, -0.260085,
		32.217030, 33.638420, 47.138561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859266, 34.092690, 47.708652>,  <32.373474, 34.295979, 47.320621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859266, 34.092690, 47.708652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021111, 33.740105, 47.611229>,  <32.118217, 33.528553, 47.552776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021111, 33.740105, 47.611229>,  <31.859266, 34.092690, 47.708652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021111, 33.740105, 47.611229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098122, -0.306642, 0.946754,
		-0.909209, -0.359170, -0.210562,
		0.404612, -0.881458, -0.243559,
		32.142494, 33.475666, 47.538162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639093, 33.718292, 48.237656>,  <31.859266, 34.092690, 47.708652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639093, 33.718292, 48.237656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918646, 33.468502, 48.098171>,  <32.086376, 33.318630, 48.014481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918646, 33.468502, 48.098171>,  <31.639093, 33.718292, 48.237656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918646, 33.468502, 48.098171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019290, -0.503824, 0.863591,
		-0.714976, -0.596823, -0.364160,
		0.698883, -0.624471, -0.348709,
		32.128311, 33.281162, 47.993557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403294, 32.994366, 48.286503>,  <31.639093, 33.718292, 48.237656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403294, 32.994366, 48.286503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803030, 33.008251, 48.282280>,  <32.042873, 33.016582, 48.279747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803030, 33.008251, 48.282280>,  <31.403294, 32.994366, 48.286503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803030, 33.008251, 48.282280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027868, -0.547962, 0.836039,
		0.023238, -0.835783, -0.548569,
		0.999342, 0.034715, -0.010558,
		32.102833, 33.018665, 48.279114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569921, 32.434151, 48.681614>,  <31.403294, 32.994366, 48.286503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569921, 32.434151, 48.681614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922680, 32.622585, 48.674244>,  <32.134335, 32.735645, 48.669823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922680, 32.622585, 48.674244>,  <31.569921, 32.434151, 48.681614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922680, 32.622585, 48.674244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267743, -0.468295, 0.842029,
		0.388039, -0.747515, -0.539117,
		0.881895, 0.471085, -0.018425,
		32.187248, 32.763912, 48.668716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027359, 31.915075, 48.895157>,  <31.569921, 32.434151, 48.681614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027359, 31.915075, 48.895157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235168, 32.254738, 48.933159>,  <32.359856, 32.458534, 48.955959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235168, 32.254738, 48.933159>,  <32.027359, 31.915075, 48.895157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235168, 32.254738, 48.933159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411686, -0.346189, 0.843011,
		0.748737, -0.398856, -0.529440,
		0.519527, 0.849156, 0.095001,
		32.391026, 32.509483, 48.961658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772579, 31.786419, 48.928818>,  <32.027359, 31.915075, 48.895157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772579, 31.786419, 48.928818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726425, 32.143211, 49.103661>,  <32.698734, 32.357285, 49.208565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726425, 32.143211, 49.103661>,  <32.772579, 31.786419, 48.928818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726425, 32.143211, 49.103661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565994, -0.302584, 0.766873,
		0.816295, 0.335881, -0.469943,
		-0.115380, 0.891979, 0.437104,
		32.691811, 32.410805, 49.234791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467285, 31.963915, 49.252026>,  <32.772579, 31.786419, 48.928818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467285, 31.963915, 49.252026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194561, 32.179901, 49.449436>,  <33.030926, 32.309494, 49.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194561, 32.179901, 49.449436>,  <33.467285, 31.963915, 49.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194561, 32.179901, 49.449436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480238, -0.178525, 0.858778,
		0.551819, 0.822535, -0.137593,
		-0.681812, 0.539967, 0.493526,
		32.990017, 32.341892, 49.597492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926693, 32.218979, 49.657337>,  <33.467285, 31.963915, 49.252026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926693, 32.218979, 49.657337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570118, 32.282200, 49.827213>,  <33.356174, 32.320133, 49.929138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570118, 32.282200, 49.827213>,  <33.926693, 32.218979, 49.657337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570118, 32.282200, 49.827213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401864, -0.157353, 0.902078,
		0.209399, 0.974813, 0.076756,
		-0.891435, 0.158049, 0.424692,
		33.302689, 32.329613, 49.954620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136398, 32.563194, 50.252487>,  <33.926693, 32.218979, 49.657337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136398, 32.563194, 50.252487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756138, 32.476498, 50.341290>,  <33.527981, 32.424480, 50.394573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756138, 32.476498, 50.341290>,  <34.136398, 32.563194, 50.252487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756138, 32.476498, 50.341290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261775, -0.176193, 0.948910,
		-0.166554, 0.960197, 0.224236,
		-0.950649, -0.216744, 0.222010,
		33.470943, 32.411476, 50.407894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964928, 32.898537, 50.854572>,  <34.136398, 32.563194, 50.252487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964928, 32.898537, 50.854572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702854, 32.597630, 50.826775>,  <33.545609, 32.417084, 50.810097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702854, 32.597630, 50.826775>,  <33.964928, 32.898537, 50.854572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702854, 32.597630, 50.826775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111187, -0.187003, 0.976047,
		-0.747244, 0.631762, 0.206163,
		-0.655183, -0.752267, -0.069493,
		33.506298, 32.371948, 50.805927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443508, 32.895508, 51.557571>,  <33.964928, 32.898537, 50.854572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443508, 32.895508, 51.557571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408417, 32.520638, 51.422508>,  <33.387360, 32.295715, 51.341469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408417, 32.520638, 51.422508>,  <33.443508, 32.895508, 51.557571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408417, 32.520638, 51.422508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149453, -0.347512, 0.925689,
		-0.984869, 0.030749, 0.170551,
		-0.087732, -0.937171, -0.337658,
		33.382095, 32.239487, 51.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874683, 32.610905, 51.952717>,  <33.443508, 32.895508, 51.557571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874683, 32.610905, 51.952717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081467, 32.295918, 51.818470>,  <33.205536, 32.106926, 51.737923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081467, 32.295918, 51.818470>,  <32.874683, 32.610905, 51.952717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081467, 32.295918, 51.818470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013231, -0.399380, 0.916690,
		-0.855907, -0.469451, -0.216883,
		0.516960, -0.787471, -0.335621,
		33.236553, 32.059677, 51.717785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525612, 31.993103, 52.070011>,  <32.874683, 32.610905, 51.952717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525612, 31.993103, 52.070011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910378, 31.888222, 52.039085>,  <33.141235, 31.825293, 52.020531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910378, 31.888222, 52.039085>,  <32.525612, 31.993103, 52.070011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910378, 31.888222, 52.039085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080212, -0.541109, 0.837119,
		-0.261332, -0.799031, -0.541530,
		0.961910, -0.262203, -0.077317,
		33.198952, 31.809561, 52.015892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527271, 31.306477, 51.971249>,  <32.525612, 31.993103, 52.070011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527271, 31.306477, 51.971249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875240, 31.394226, 52.147930>,  <33.084023, 31.446877, 52.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875240, 31.394226, 52.147930>,  <32.527271, 31.306477, 51.971249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875240, 31.394226, 52.147930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214544, -0.638108, 0.739452,
		0.444076, -0.738033, -0.508040,
		0.869924, 0.219376, 0.441708,
		33.136219, 31.460039, 52.280441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613773, 30.749527, 52.383980>,  <32.527271, 31.306477, 51.971249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613773, 30.749527, 52.383980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876614, 31.009361, 52.536957>,  <33.034317, 31.165262, 52.628742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876614, 31.009361, 52.536957>,  <32.613773, 30.749527, 52.383980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876614, 31.009361, 52.536957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067573, -0.556068, 0.828386,
		0.750772, -0.518486, -0.409285,
		0.657097, 0.649585, 0.382444,
		33.073742, 31.204237, 52.651691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334827, 30.515823, 52.475433>,  <32.613773, 30.749527, 52.383980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334827, 30.515823, 52.475433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292416, 30.784554, 52.768665>,  <33.266968, 30.945791, 52.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292416, 30.784554, 52.768665>,  <33.334827, 30.515823, 52.475433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292416, 30.784554, 52.768665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109026, -0.724937, 0.680132,
		0.988368, 0.152037, 0.003616,
		-0.106026, 0.671827, 0.733080,
		33.260609, 30.986101, 52.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754398, 30.351692, 53.093513>,  <33.334827, 30.515823, 52.475433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754398, 30.351692, 53.093513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489033, 30.607273, 53.249268>,  <33.329815, 30.760622, 53.342720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489033, 30.607273, 53.249268>,  <33.754398, 30.351692, 53.093513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489033, 30.607273, 53.249268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169787, -0.378277, 0.909989,
		0.728734, 0.669813, 0.142469,
		-0.663415, 0.638950, 0.389388,
		33.290009, 30.798958, 53.366085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982140, 30.623348, 53.654202>,  <33.754398, 30.351692, 53.093513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982140, 30.623348, 53.654202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585308, 30.577389, 53.674534>,  <33.347210, 30.549812, 53.686733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585308, 30.577389, 53.674534>,  <33.982140, 30.623348, 53.654202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585308, 30.577389, 53.674534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106506, -0.554452, 0.825372,
		-0.066649, 0.824246, 0.562296,
		-0.992076, -0.114898, 0.050834,
		33.287685, 30.542919, 53.689785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515823, 30.759617, 53.203358>,  <33.982140, 30.623348, 53.654202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515823, 30.759617, 53.203358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864704, 30.897432, 53.342243>,  <35.074032, 30.980122, 53.425575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864704, 30.897432, 53.342243>,  <34.515823, 30.759617, 53.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864704, 30.897432, 53.342243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475569, -0.431207, -0.766743,
		-0.114450, 0.833879, -0.539951,
		0.872201, 0.344538, 0.347215,
		35.126366, 31.000793, 53.446407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763332, 31.309204, 52.843922>,  <34.515823, 30.759617, 53.203358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763332, 31.309204, 52.843922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048660, 31.069237, 52.988850>,  <35.219856, 30.925257, 53.075806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048660, 31.069237, 52.988850>,  <34.763332, 31.309204, 52.843922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048660, 31.069237, 52.988850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258259, -0.255586, -0.931653,
		0.651520, 0.758138, -0.027380,
		0.713319, -0.599919, 0.362316,
		35.262657, 30.889261, 53.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451324, 31.509855, 52.559975>,  <34.763332, 31.309204, 52.843922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451324, 31.509855, 52.559975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476868, 31.122120, 52.654888>,  <35.492191, 30.889479, 52.711838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476868, 31.122120, 52.654888>,  <35.451324, 31.509855, 52.559975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476868, 31.122120, 52.654888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260883, -0.213290, -0.941513,
		0.963256, 0.122026, 0.239264,
		0.063856, -0.969338, 0.237288,
		35.496025, 30.831318, 52.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065182, 31.205545, 52.363510>,  <35.451324, 31.509855, 52.559975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065182, 31.205545, 52.363510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783058, 30.922113, 52.354965>,  <35.613785, 30.752054, 52.349838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783058, 30.922113, 52.354965>,  <36.065182, 31.205545, 52.363510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783058, 30.922113, 52.354965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242930, -0.213282, -0.946306,
		0.665976, -0.672628, 0.322565,
		-0.705309, -0.708578, -0.021361,
		35.571465, 30.709539, 52.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431412, 30.584572, 52.197594>,  <36.065182, 31.205545, 52.363510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431412, 30.584572, 52.197594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056866, 30.623085, 52.062572>,  <35.832138, 30.646193, 51.981560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056866, 30.623085, 52.062572>,  <36.431412, 30.584572, 52.197594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056866, 30.623085, 52.062572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318205, -0.173134, -0.932078,
		-0.148180, -0.980181, 0.131482,
		-0.936370, 0.096278, -0.337554,
		35.775955, 30.651970, 51.961308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238846, 29.930771, 51.849609>,  <36.431412, 30.584572, 52.197594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238846, 29.930771, 51.849609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018669, 30.233995, 51.709690>,  <35.886562, 30.415930, 51.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018669, 30.233995, 51.709690>,  <36.238846, 29.930771, 51.849609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018669, 30.233995, 51.709690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324551, -0.191737, -0.926231,
		-0.769209, -0.623362, -0.140489,
		-0.550441, 0.758061, -0.349799,
		35.853539, 30.461414, 51.604752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967144, 29.753719, 51.060673>,  <36.238846, 29.930771, 51.849609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967144, 29.753719, 51.060673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870235, 30.140572, 51.091560>,  <35.812092, 30.372683, 51.110092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870235, 30.140572, 51.091560>,  <35.967144, 29.753719, 51.060673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870235, 30.140572, 51.091560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189714, 0.125280, -0.973814,
		-0.951480, -0.221276, -0.213830,
		-0.242270, 0.967131, 0.077222,
		35.797554, 30.430712, 51.114727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467796, 29.857967, 50.695885>,  <35.967144, 29.753719, 51.060673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467796, 29.857967, 50.695885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644150, 30.215847, 50.724545>,  <35.749962, 30.430574, 50.741741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644150, 30.215847, 50.724545>,  <35.467796, 29.857967, 50.695885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644150, 30.215847, 50.724545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008693, 0.084079, -0.996421,
		-0.897520, 0.438687, 0.044847,
		0.440887, 0.894698, 0.071649,
		35.776417, 30.484257, 50.746040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192287, 30.229452, 50.166462>,  <35.467796, 29.857967, 50.695885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192287, 30.229452, 50.166462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522156, 30.430267, 50.270668>,  <35.720078, 30.550756, 50.333191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522156, 30.430267, 50.270668>,  <35.192287, 30.229452, 50.166462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522156, 30.430267, 50.270668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207807, 0.159449, -0.965086,
		-0.526050, 0.850020, 0.027167,
		0.824674, 0.502038, 0.260519,
		35.769558, 30.580879, 50.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179249, 30.852757, 49.762386>,  <35.192287, 30.229452, 50.166462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179249, 30.852757, 49.762386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561062, 30.797739, 49.868179>,  <35.790150, 30.764729, 49.931656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561062, 30.797739, 49.868179>,  <35.179249, 30.852757, 49.762386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561062, 30.797739, 49.868179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278751, 0.097292, -0.955422,
		0.105678, 0.985706, 0.131208,
		0.954531, -0.137541, 0.264485,
		35.847420, 30.756477, 49.947525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555557, 31.468248, 49.442406>,  <35.179249, 30.852757, 49.762386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555557, 31.468248, 49.442406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 31.182856, 49.515881>,  <35.988304, 31.011620, 49.559967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826023, 31.182856, 49.515881>,  <35.555557, 31.468248, 49.442406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826023, 31.182856, 49.515881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397022, 0.142841, -0.906626,
		0.620624, 0.685958, 0.379853,
		0.676166, -0.713483, 0.183689,
		36.028873, 30.968811, 49.570988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137856, 31.664356, 49.129063>,  <35.555557, 31.468248, 49.442406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137856, 31.664356, 49.129063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246662, 31.281599, 49.169777>,  <36.311947, 31.051945, 49.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246662, 31.281599, 49.169777>,  <36.137856, 31.664356, 49.129063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246662, 31.281599, 49.169777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364408, 0.004533, -0.931228,
		0.890626, 0.290399, 0.349933,
		0.272014, -0.956895, 0.101786,
		36.328266, 30.994530, 49.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825687, 31.606062, 48.892147>,  <36.137856, 31.664356, 49.129063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825687, 31.606062, 48.892147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639782, 31.252079, 48.880543>,  <36.528236, 31.039690, 48.873581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639782, 31.252079, 48.880543>,  <36.825687, 31.606062, 48.892147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639782, 31.252079, 48.880543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150719, -0.046789, -0.987469,
		0.872510, -0.463316, 0.155125,
		-0.464768, -0.884957, -0.029007,
		36.500351, 30.986591, 48.871841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164448, 31.271284, 48.343338>,  <36.825687, 31.606062, 48.892147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164448, 31.271284, 48.343338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850430, 31.027889, 48.389721>,  <36.662018, 30.881851, 48.417553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850430, 31.027889, 48.389721>,  <37.164448, 31.271284, 48.343338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850430, 31.027889, 48.389721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065512, -0.267711, -0.961269,
		0.615965, -0.747042, 0.250028,
		-0.785044, -0.608489, 0.115960,
		36.614918, 30.845343, 48.424507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289581, 30.682657, 47.959656>,  <37.164448, 31.271284, 48.343338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289581, 30.682657, 47.959656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891502, 30.670923, 47.997025>,  <36.652657, 30.663883, 48.019447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891502, 30.670923, 47.997025>,  <37.289581, 30.682657, 47.959656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891502, 30.670923, 47.997025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086148, -0.191340, -0.977736,
		0.046557, -0.981085, 0.187894,
		-0.995194, -0.029334, 0.093426,
		36.592945, 30.662123, 48.025051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089943, 30.048689, 47.669144>,  <37.289581, 30.682657, 47.959656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089943, 30.048689, 47.669144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783836, 30.305702, 47.653576>,  <36.600174, 30.459911, 47.644234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783836, 30.305702, 47.653576>,  <37.089943, 30.048689, 47.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783836, 30.305702, 47.653576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083974, -0.159599, -0.983604,
		-0.638212, -0.749451, 0.176092,
		-0.765267, 0.642535, -0.038923,
		36.554256, 30.498463, 47.641899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490326, 29.747725, 47.279041>,  <37.089943, 30.048689, 47.669144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490326, 29.747725, 47.279041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451988, 30.144976, 47.252186>,  <36.428986, 30.383327, 47.236073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451988, 30.144976, 47.252186>,  <36.490326, 29.747725, 47.279041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451988, 30.144976, 47.252186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009285, -0.066552, -0.997740,
		-0.995354, -0.096248, -0.002843,
		-0.095841, 0.993130, -0.067136,
		36.423237, 30.442915, 47.232044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786293, 29.703396, 46.938534>,  <36.490326, 29.747725, 47.279041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786293, 29.703396, 46.938534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933651, 30.071545, 46.886074>,  <36.022068, 30.292433, 46.854599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933651, 30.071545, 46.886074>,  <35.786293, 29.703396, 46.938534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933651, 30.071545, 46.886074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389673, 0.024787, -0.920620,
		-0.844061, 0.390260, 0.367775,
		0.368398, 0.920371, -0.131152,
		36.044170, 30.347656, 46.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193310, 30.105583, 46.713711>,  <35.786293, 29.703396, 46.938534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193310, 30.105583, 46.713711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528843, 30.300617, 46.616863>,  <35.730164, 30.417637, 46.558754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528843, 30.300617, 46.616863>,  <35.193310, 30.105583, 46.713711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528843, 30.300617, 46.616863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300837, 0.044513, -0.952636,
		-0.453713, 0.871940, 0.184022,
		0.838833, 0.487584, -0.242116,
		35.780495, 30.446892, 46.544228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055176, 30.819315, 46.621094>,  <35.193310, 30.105583, 46.713711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055176, 30.819315, 46.621094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386181, 30.722883, 46.418274>,  <35.584785, 30.665024, 46.296581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386181, 30.722883, 46.418274>,  <35.055176, 30.819315, 46.621094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386181, 30.722883, 46.418274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456636, 0.236436, -0.857661,
		0.326648, 0.941264, 0.085569,
		0.827517, -0.241079, -0.507046,
		35.634438, 30.650560, 46.266159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139339, 31.333910, 46.175491>,  <35.055176, 30.819315, 46.621094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139339, 31.333910, 46.175491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363640, 31.040661, 46.021564>,  <35.498219, 30.864712, 45.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363640, 31.040661, 46.021564>,  <35.139339, 31.333910, 46.175491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363640, 31.040661, 46.021564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338426, 0.221233, -0.914617,
		0.755663, 0.643106, -0.124052,
		0.560751, -0.733124, -0.384822,
		35.531864, 30.820724, 45.906116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457367, 31.659674, 45.525307>,  <35.139339, 31.333910, 46.175491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457367, 31.659674, 45.525307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472145, 31.260406, 45.506142>,  <35.481010, 31.020845, 45.494640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472145, 31.260406, 45.506142>,  <35.457367, 31.659674, 45.525307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472145, 31.260406, 45.506142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173606, 0.040808, -0.983969,
		0.984122, 0.044668, -0.171781,
		0.036942, -0.998168, -0.047915,
		35.483227, 30.960957, 45.491768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943562, 31.477657, 44.949074>,  <35.457367, 31.659674, 45.525307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943562, 31.477657, 44.949074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697266, 31.164900, 44.988071>,  <35.549488, 30.977245, 45.011471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697266, 31.164900, 44.988071>,  <35.943562, 31.477657, 44.949074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697266, 31.164900, 44.988071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250080, 0.076593, -0.965191,
		0.747211, -0.618687, -0.242698,
		-0.615740, -0.781895, 0.097490,
		35.512543, 30.930332, 45.017319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948570, 31.275272, 44.289543>,  <35.943562, 31.477657, 44.949074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948570, 31.275272, 44.289543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642750, 31.084225, 44.462673>,  <35.459259, 30.969595, 44.566551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642750, 31.084225, 44.462673>,  <35.948570, 31.275272, 44.289543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642750, 31.084225, 44.462673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523136, 0.067522, -0.849570,
		0.376548, -0.875967, -0.301485,
		-0.764552, -0.477622, 0.432825,
		35.413383, 30.940939, 44.592522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658550, 30.669724, 43.790512>,  <35.948570, 31.275272, 44.289543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658550, 30.669724, 43.790512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378872, 30.786524, 44.051544>,  <35.211063, 30.856604, 44.208164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378872, 30.786524, 44.051544>,  <35.658550, 30.669724, 43.790512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378872, 30.786524, 44.051544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641680, 0.146148, -0.752920,
		-0.315227, -0.945185, 0.085186,
		-0.699199, 0.292003, 0.652576,
		35.169113, 30.874125, 44.247318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117035, 30.352282, 43.564636>,  <35.658550, 30.669724, 43.790512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117035, 30.352282, 43.564636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957867, 30.639055, 43.793606>,  <34.862366, 30.811119, 43.930988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957867, 30.639055, 43.793606>,  <35.117035, 30.352282, 43.564636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957867, 30.639055, 43.793606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690494, 0.176777, -0.701404,
		-0.604050, -0.674357, 0.424695,
		-0.397920, 0.716932, 0.572422,
		34.838490, 30.854136, 43.965332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427006, 30.228130, 43.560757>,  <35.117035, 30.352282, 43.564636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427006, 30.228130, 43.560757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468143, 30.618782, 43.636242>,  <34.492828, 30.853174, 43.681534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468143, 30.618782, 43.636242>,  <34.427006, 30.228130, 43.560757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468143, 30.618782, 43.636242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590731, 0.212611, -0.778353,
		-0.800287, -0.031429, 0.598793,
		0.102847, 0.976631, 0.188715,
		34.498997, 30.911772, 43.692856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807995, 30.526030, 43.778126>,  <34.427006, 30.228130, 43.560757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807995, 30.526030, 43.778126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044815, 30.787451, 43.589512>,  <34.186909, 30.944304, 43.476345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044815, 30.787451, 43.589512>,  <33.807995, 30.526030, 43.778126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044815, 30.787451, 43.589512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677739, 0.087187, -0.730116,
		-0.436058, 0.751841, 0.494558,
		0.592050, 0.653554, -0.471533,
		34.222431, 30.983517, 43.448051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405552, 30.789734, 43.358231>,  <33.807995, 30.526030, 43.778126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405552, 30.789734, 43.358231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715992, 31.008190, 43.232121>,  <33.902256, 31.139263, 43.156456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715992, 31.008190, 43.232121>,  <33.405552, 30.789734, 43.358231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715992, 31.008190, 43.232121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560457, 0.368206, -0.741830,
		-0.289059, 0.752432, 0.591854,
		0.776101, 0.546141, -0.315272,
		33.948822, 31.172033, 43.137539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177734, 31.482752, 43.101810>,  <33.405552, 30.789734, 43.358231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177734, 31.482752, 43.101810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538059, 31.463963, 42.929146>,  <33.754253, 31.452688, 42.825546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538059, 31.463963, 42.929146>,  <33.177734, 31.482752, 43.101810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538059, 31.463963, 42.929146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393071, 0.334144, -0.856647,
		0.184476, 0.941351, 0.282537,
		0.900813, -0.046974, -0.431659,
		33.808304, 31.449871, 42.799648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243454, 32.103058, 42.693253>,  <33.177734, 31.482752, 43.101810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243454, 32.103058, 42.693253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500797, 31.840067, 42.536377>,  <33.655205, 31.682272, 42.442249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500797, 31.840067, 42.536377>,  <33.243454, 32.103058, 42.693253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500797, 31.840067, 42.536377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362462, 0.189641, -0.912501,
		0.674323, 0.729221, -0.116302,
		0.643359, -0.657475, -0.392194,
		33.693806, 31.642824, 42.418720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560936, 32.441525, 42.179436>,  <33.243454, 32.103058, 42.693253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560936, 32.441525, 42.179436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626659, 32.055817, 42.096313>,  <33.666096, 31.824392, 42.046440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626659, 32.055817, 42.096313>,  <33.560936, 32.441525, 42.179436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626659, 32.055817, 42.096313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176744, 0.178483, -0.967939,
		0.970445, 0.195772, -0.141103,
		0.164311, -0.964271, -0.207809,
		33.675953, 31.766535, 42.033970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082920, 32.348225, 41.704716>,  <33.560936, 32.441525, 42.179436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082920, 32.348225, 41.704716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836517, 32.036152, 41.661175>,  <33.688675, 31.848907, 41.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836517, 32.036152, 41.661175>,  <34.082920, 32.348225, 41.704716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836517, 32.036152, 41.661175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009711, 0.130655, -0.991380,
		0.787679, -0.611756, -0.072909,
		-0.616009, -0.780182, -0.108855,
		33.651714, 31.802097, 41.628517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241074, 32.251820, 41.131748>,  <34.082920, 32.348225, 41.704716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241074, 32.251820, 41.131748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917080, 32.019585, 41.164845>,  <33.722683, 31.880243, 41.184704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917080, 32.019585, 41.164845>,  <34.241074, 32.251820, 41.131748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917080, 32.019585, 41.164845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270529, 0.244722, -0.931088,
		0.520330, -0.776549, -0.355287,
		-0.809982, -0.580588, 0.082743,
		33.674084, 31.845407, 41.189667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373013, 31.854105, 40.536484>,  <34.241074, 32.251820, 41.131748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373013, 31.854105, 40.536484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991379, 31.812979, 40.649017>,  <33.762398, 31.788303, 40.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991379, 31.812979, 40.649017>,  <34.373013, 31.854105, 40.536484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991379, 31.812979, 40.649017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296316, 0.186661, -0.936672,
		0.043790, -0.977030, -0.208557,
		-0.954085, -0.102816, 0.281335,
		33.705154, 31.782133, 40.733418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048519, 31.470606, 40.141685>,  <34.373013, 31.854105, 40.536484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048519, 31.470606, 40.141685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728722, 31.667959, 40.278732>,  <33.536842, 31.786371, 40.360962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728722, 31.667959, 40.278732>,  <34.048519, 31.470606, 40.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728722, 31.667959, 40.278732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328936, 0.117656, -0.936994,
		-0.502611, -0.861816, 0.068228,
		-0.799489, 0.493385, 0.342618,
		33.488876, 31.815975, 40.381519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485939, 31.221979, 39.825352>,  <34.048519, 31.470606, 40.141685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485939, 31.221979, 39.825352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330601, 31.568501, 39.951019>,  <33.237396, 31.776413, 40.026421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330601, 31.568501, 39.951019>,  <33.485939, 31.221979, 39.825352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330601, 31.568501, 39.951019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378788, 0.160732, -0.911419,
		-0.840063, -0.472954, 0.265725,
		-0.388349, 0.866303, 0.314174,
		33.214096, 31.828392, 40.045273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857388, 31.205767, 39.513821>,  <33.485939, 31.221979, 39.825352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857388, 31.205767, 39.513821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923759, 31.585653, 39.620029>,  <32.963585, 31.813585, 39.683754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923759, 31.585653, 39.620029>,  <32.857388, 31.205767, 39.513821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923759, 31.585653, 39.620029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494591, 0.313093, -0.810773,
		-0.853139, 0.003208, 0.521674,
		0.165934, 0.949717, 0.265525,
		32.973541, 31.870569, 39.699688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198151, 31.541382, 39.630123>,  <32.857388, 31.205767, 39.513821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198151, 31.541382, 39.630123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446018, 31.843826, 39.545921>,  <32.594738, 32.025291, 39.495399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446018, 31.843826, 39.545921>,  <32.198151, 31.541382, 39.630123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446018, 31.843826, 39.545921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647031, 0.340316, -0.682302,
		-0.444258, 0.559001, 0.700109,
		0.619666, 0.756110, -0.210503,
		32.631920, 32.070660, 39.482769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767267, 32.094322, 39.557281>,  <32.198151, 31.541382, 39.630123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767267, 32.094322, 39.557281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104191, 32.225273, 39.386009>,  <32.306343, 32.303844, 39.283245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104191, 32.225273, 39.386009>,  <31.767267, 32.094322, 39.557281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104191, 32.225273, 39.386009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529250, 0.652742, -0.542053,
		0.102035, 0.683191, 0.723075,
		0.842308, 0.327379, -0.428182,
		32.356884, 32.323486, 39.257553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641369, 32.772495, 39.363663>,  <31.767267, 32.094322, 39.557281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641369, 32.772495, 39.363663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971764, 32.716148, 39.145340>,  <32.170002, 32.682339, 39.014347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971764, 32.716148, 39.145340>,  <31.641369, 32.772495, 39.363663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971764, 32.716148, 39.145340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324288, 0.673244, -0.664515,
		0.461066, 0.725879, 0.510409,
		0.825987, -0.140866, -0.545804,
		32.219559, 32.673889, 38.981598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689726, 33.405361, 38.982525>,  <31.641369, 32.772495, 39.363663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689726, 33.405361, 38.982525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917545, 33.135498, 38.794716>,  <32.054237, 32.973579, 38.682030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917545, 33.135498, 38.794716>,  <31.689726, 33.405361, 38.982525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917545, 33.135498, 38.794716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314707, 0.348712, -0.882814,
		0.759325, 0.650567, -0.013712,
		0.569548, -0.674658, -0.469523,
		32.088409, 32.933102, 38.653858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226772, 33.723457, 38.488316>,  <31.689726, 33.405361, 38.982525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226772, 33.723457, 38.488316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203323, 33.360641, 38.321537>,  <32.189255, 33.142952, 38.221470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203323, 33.360641, 38.321537>,  <32.226772, 33.723457, 38.488316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203323, 33.360641, 38.321537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062876, 0.420195, -0.905253,
		0.996298, -0.026849, -0.081662,
		-0.058619, -0.907037, -0.416951,
		32.185738, 33.088531, 38.196453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723064, 33.692719, 37.849045>,  <32.226772, 33.723457, 38.488316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723064, 33.692719, 37.849045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435753, 33.419220, 37.797562>,  <32.263367, 33.255119, 37.766670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435753, 33.419220, 37.797562>,  <32.723064, 33.692719, 37.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435753, 33.419220, 37.797562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215890, 0.394897, -0.892999,
		0.661413, -0.613634, -0.431260,
		-0.718278, -0.683747, -0.128712,
		32.220268, 33.214096, 37.758949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357376, 33.963345, 37.592102>,  <32.723064, 33.692719, 37.849045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357376, 33.963345, 37.592102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651608, 34.104275, 37.360661>,  <33.828148, 34.188835, 37.221794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651608, 34.104275, 37.360661>,  <33.357376, 33.963345, 37.592102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651608, 34.104275, 37.360661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670813, -0.259676, 0.694678,
		0.094504, -0.899129, -0.427358,
		0.735580, 0.352328, -0.578608,
		33.872280, 34.209972, 37.187077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833447, 33.440292, 37.550179>,  <33.357376, 33.963345, 37.592102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833447, 33.440292, 37.550179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038963, 33.775982, 37.478935>,  <34.162273, 33.977394, 37.436188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038963, 33.775982, 37.478935>,  <33.833447, 33.440292, 37.550179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038963, 33.775982, 37.478935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521119, -0.140373, 0.841861,
		0.681508, -0.525357, -0.509458,
		0.513792, 0.839223, -0.178108,
		34.193100, 34.027748, 37.425503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506866, 33.222374, 37.647770>,  <33.833447, 33.440292, 37.550179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506866, 33.222374, 37.647770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493004, 33.620525, 37.683582>,  <34.484688, 33.859417, 37.705070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493004, 33.620525, 37.683582>,  <34.506866, 33.222374, 37.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493004, 33.620525, 37.683582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468912, -0.062918, 0.881001,
		0.882565, 0.072512, -0.464566,
		-0.034654, 0.995381, 0.089531,
		34.482609, 33.919140, 37.710442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183796, 33.384224, 37.662601>,  <34.506866, 33.222374, 37.647770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183796, 33.384224, 37.662601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002422, 33.692806, 37.841152>,  <34.893597, 33.877956, 37.948280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002422, 33.692806, 37.841152>,  <35.183796, 33.384224, 37.662601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002422, 33.692806, 37.841152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618199, -0.088550, 0.781018,
		0.642049, 0.630089, -0.436763,
		-0.453435, 0.771458, 0.446374,
		34.866390, 33.924244, 37.975063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689091, 33.853874, 37.818253>,  <35.183796, 33.384224, 37.662601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689091, 33.853874, 37.818253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395279, 33.974819, 38.061249>,  <35.218990, 34.047386, 38.207047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395279, 33.974819, 38.061249>,  <35.689091, 33.853874, 37.818253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395279, 33.974819, 38.061249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648111, 0.047372, 0.760071,
		0.201042, 0.952014, -0.230762,
		-0.734530, 0.302366, 0.607487,
		35.174919, 34.065529, 38.243496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023224, 34.225739, 38.294403>,  <35.689091, 33.853874, 37.818253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023224, 34.225739, 38.294403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678993, 34.126179, 38.472145>,  <35.472454, 34.066444, 38.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678993, 34.126179, 38.472145>,  <36.023224, 34.225739, 38.294403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678993, 34.126179, 38.472145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507871, -0.353729, 0.785457,
		-0.038315, 0.901625, 0.430819,
		-0.860580, -0.248896, 0.444356,
		35.420818, 34.051510, 38.605453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058685, 34.464405, 38.897610>,  <36.023224, 34.225739, 38.294403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058685, 34.464405, 38.897610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759338, 34.202530, 38.940201>,  <35.579731, 34.045406, 38.965755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759338, 34.202530, 38.940201>,  <36.058685, 34.464405, 38.897610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759338, 34.202530, 38.940201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377165, -0.287975, 0.880237,
		-0.545614, 0.698899, 0.462434,
		-0.748366, -0.654684, 0.106476,
		35.534828, 34.006126, 38.972145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705692, 34.645500, 39.531727>,  <36.058685, 34.464405, 38.897610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705692, 34.645500, 39.531727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595875, 34.265545, 39.471951>,  <35.529984, 34.037571, 39.436085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595875, 34.265545, 39.471951>,  <35.705692, 34.645500, 39.531727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595875, 34.265545, 39.471951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461073, -0.266426, 0.846421,
		-0.843822, 0.163480, 0.511115,
		-0.274547, -0.949890, -0.149440,
		35.513512, 33.980579, 39.427120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361160, 34.334282, 40.198685>,  <35.705692, 34.645500, 39.531727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361160, 34.334282, 40.198685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492496, 34.018223, 39.991661>,  <35.571301, 33.828587, 39.867447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492496, 34.018223, 39.991661>,  <35.361160, 34.334282, 40.198685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492496, 34.018223, 39.991661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238660, -0.460754, 0.854837,
		-0.913910, -0.404201, 0.037290,
		0.328345, -0.790144, -0.517554,
		35.591000, 33.781181, 39.836395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136776, 33.875225, 40.643246>,  <35.361160, 34.334282, 40.198685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136776, 33.875225, 40.643246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407944, 33.690762, 40.414246>,  <35.570644, 33.580082, 40.276844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407944, 33.690762, 40.414246>,  <35.136776, 33.875225, 40.643246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407944, 33.690762, 40.414246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363424, -0.466716, 0.806287,
		-0.639023, -0.754658, -0.148799,
		0.677918, -0.461159, -0.572503,
		35.611320, 33.552414, 40.242496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111279, 33.162857, 40.833019>,  <35.136776, 33.875225, 40.643246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111279, 33.162857, 40.833019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467182, 33.239494, 40.667309>,  <35.680725, 33.285477, 40.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467182, 33.239494, 40.667309>,  <35.111279, 33.162857, 40.833019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467182, 33.239494, 40.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446655, -0.552397, 0.703816,
		-0.093997, -0.811264, -0.577075,
		0.889755, 0.191597, -0.414279,
		35.734108, 33.296974, 40.543026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434288, 32.457767, 40.643482>,  <35.111279, 33.162857, 40.833019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434288, 32.457767, 40.643482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678711, 32.766949, 40.711781>,  <35.825367, 32.952457, 40.752762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678711, 32.766949, 40.711781>,  <35.434288, 32.457767, 40.643482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678711, 32.766949, 40.711781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477004, -0.531695, 0.699834,
		0.631722, -0.346193, -0.693597,
		0.611060, 0.772950, 0.170748,
		35.862030, 32.998833, 40.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120270, 32.207363, 40.723213>,  <35.434288, 32.457767, 40.643482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120270, 32.207363, 40.723213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136501, 32.553776, 40.922550>,  <36.146240, 32.761623, 41.042152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136501, 32.553776, 40.922550>,  <36.120270, 32.207363, 40.723213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136501, 32.553776, 40.922550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645816, -0.403303, 0.648281,
		0.762414, 0.295529, -0.575663,
		0.040580, 0.866031, 0.498341,
		36.148674, 32.813583, 41.072052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719612, 32.301609, 40.883156>,  <36.120270, 32.207363, 40.723213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719612, 32.301609, 40.883156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579277, 32.550541, 41.163048>,  <36.495075, 32.699902, 41.330982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579277, 32.550541, 41.163048>,  <36.719612, 32.301609, 40.883156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579277, 32.550541, 41.163048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672558, -0.352479, 0.650710,
		0.651596, 0.698901, -0.294890,
		-0.350839, 0.622331, 0.699726,
		36.474026, 32.737240, 41.372967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310680, 32.499474, 41.287605>,  <36.719612, 32.301609, 40.883156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310680, 32.499474, 41.287605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013565, 32.604233, 41.534077>,  <36.835297, 32.667088, 41.681961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013565, 32.604233, 41.534077>,  <37.310680, 32.499474, 41.287605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013565, 32.604233, 41.534077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555055, -0.273776, 0.785468,
		0.374409, 0.925449, 0.057989,
		-0.742787, 0.261899, 0.616179,
		36.790730, 32.682804, 41.718929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638832, 32.906197, 41.821033>,  <37.310680, 32.499474, 41.287605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638832, 32.906197, 41.821033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287201, 32.785339, 41.968510>,  <37.076221, 32.712826, 42.056995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287201, 32.785339, 41.968510>,  <37.638832, 32.906197, 41.821033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287201, 32.785339, 41.968510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455106, -0.301919, 0.837689,
		-0.141785, 0.904188, 0.402917,
		-0.879076, -0.302141, 0.368694,
		37.023479, 32.694698, 42.079117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496490, 33.337120, 42.453590>,  <37.638832, 32.906197, 41.821033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496490, 33.337120, 42.453590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307854, 32.984524, 42.463150>,  <37.194672, 32.772964, 42.468887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307854, 32.984524, 42.463150>,  <37.496490, 33.337120, 42.453590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307854, 32.984524, 42.463150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440134, -0.211812, 0.872592,
		-0.764121, 0.422027, 0.487864,
		-0.471593, -0.881492, 0.023899,
		37.166374, 32.720078, 42.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152088, 33.319225, 43.072380>,  <37.496490, 33.337120, 42.453590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152088, 33.319225, 43.072380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160915, 32.936871, 42.955219>,  <37.166210, 32.707458, 42.884922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160915, 32.936871, 42.955219>,  <37.152088, 33.319225, 43.072380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160915, 32.936871, 42.955219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161642, -0.285707, 0.944586,
		-0.986603, -0.068187, 0.148208,
		0.022065, -0.955888, -0.292901,
		37.167534, 32.650105, 42.867348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803825, 33.043648, 43.604698>,  <37.152088, 33.319225, 43.072380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803825, 33.043648, 43.604698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995415, 32.740440, 43.427616>,  <37.110367, 32.558514, 43.321365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995415, 32.740440, 43.427616>,  <36.803825, 33.043648, 43.604698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995415, 32.740440, 43.427616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133829, -0.435371, 0.890248,
		-0.867570, -0.485649, -0.107084,
		0.478969, -0.758022, -0.442709,
		37.139107, 32.513035, 43.294804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484905, 32.453388, 43.860943>,  <36.803825, 33.043648, 43.604698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484905, 32.453388, 43.860943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831306, 32.301117, 43.731251>,  <37.039146, 32.209755, 43.653435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831306, 32.301117, 43.731251>,  <36.484905, 32.453388, 43.860943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831306, 32.301117, 43.731251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201813, -0.327160, 0.923167,
		-0.457509, -0.864897, -0.206493,
		0.866001, -0.380684, -0.324226,
		37.091106, 32.186913, 43.633984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561939, 31.691200, 44.022392>,  <36.484905, 32.453388, 43.860943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561939, 31.691200, 44.022392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915436, 31.875927, 43.992107>,  <37.127533, 31.986763, 43.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915436, 31.875927, 43.992107>,  <36.561939, 31.691200, 44.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915436, 31.875927, 43.992107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253048, -0.335464, 0.907431,
		0.393668, -0.821090, -0.413324,
		0.883738, 0.461817, -0.075713,
		37.180557, 32.014473, 43.969395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075153, 31.256100, 44.352581>,  <36.561939, 31.691200, 44.022392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075153, 31.256100, 44.352581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268337, 31.605448, 44.377789>,  <37.384247, 31.815058, 44.392914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268337, 31.605448, 44.377789>,  <37.075153, 31.256100, 44.352581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268337, 31.605448, 44.377789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185880, -0.172588, 0.967296,
		0.855687, -0.455449, -0.245696,
		0.482958, 0.873372, 0.063022,
		37.413223, 31.867460, 44.396694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696575, 31.150364, 44.657745>,  <37.075153, 31.256100, 44.352581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696575, 31.150364, 44.657745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635834, 31.540726, 44.720413>,  <37.599388, 31.774942, 44.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635834, 31.540726, 44.720413>,  <37.696575, 31.150364, 44.657745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635834, 31.540726, 44.720413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307456, -0.104008, 0.945861,
		0.939367, 0.191806, -0.284254,
		-0.151857, 0.975906, 0.156674,
		37.590279, 31.833498, 44.767414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293945, 31.468016, 45.061874>,  <37.696575, 31.150364, 44.657745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293945, 31.468016, 45.061874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003078, 31.730116, 45.143730>,  <37.828560, 31.887377, 45.192844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003078, 31.730116, 45.143730>,  <38.293945, 31.468016, 45.061874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003078, 31.730116, 45.143730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280350, 0.011359, 0.959831,
		0.626606, 0.755325, -0.191960,
		-0.727165, 0.655252, 0.204638,
		37.784927, 31.926691, 45.205120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611691, 31.892235, 45.578072>,  <38.293945, 31.468016, 45.061874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611691, 31.892235, 45.578072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216507, 31.952776, 45.590939>,  <37.979397, 31.989101, 45.598660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216507, 31.952776, 45.590939>,  <38.611691, 31.892235, 45.578072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216507, 31.952776, 45.590939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055622, 0.153385, 0.986600,
		0.144390, 0.976507, -0.159956,
		-0.987956, 0.151353, 0.032168,
		37.920120, 31.998182, 45.600590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325985, 32.557823, 45.750248>,  <38.611691, 31.892235, 45.578072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325985, 32.557823, 45.750248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038265, 32.307442, 45.870770>,  <37.865631, 32.157211, 45.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038265, 32.307442, 45.870770>,  <38.325985, 32.557823, 45.750248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038265, 32.307442, 45.870770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049757, 0.386186, 0.921078,
		-0.692913, 0.677526, -0.246639,
		-0.719302, -0.625955, 0.301305,
		37.822475, 32.119656, 45.961163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901730, 32.955734, 46.034519>,  <38.325985, 32.557823, 45.750248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901730, 32.955734, 46.034519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773159, 32.609905, 46.189030>,  <37.696018, 32.402409, 46.281734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773159, 32.609905, 46.189030>,  <37.901730, 32.955734, 46.034519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773159, 32.609905, 46.189030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125129, 0.443123, 0.887685,
		-0.938632, 0.236987, -0.250612,
		-0.321422, -0.864568, 0.386276,
		37.676731, 32.350536, 46.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453358, 33.135933, 46.592434>,  <37.901730, 32.955734, 46.034519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453358, 33.135933, 46.592434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523689, 32.748753, 46.664154>,  <37.565887, 32.516445, 46.707184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523689, 32.748753, 46.664154>,  <37.453358, 33.135933, 46.592434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523689, 32.748753, 46.664154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151355, 0.153386, 0.976506,
		-0.972716, -0.198836, -0.119535,
		0.175829, -0.967955, 0.179296,
		37.576439, 32.458366, 46.717941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876122, 32.850830, 46.974575>,  <37.453358, 33.135933, 46.592434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876122, 32.850830, 46.974575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201153, 32.635506, 47.063965>,  <37.396172, 32.506310, 47.117599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201153, 32.635506, 47.063965>,  <36.876122, 32.850830, 46.974575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201153, 32.635506, 47.063965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139210, 0.193070, 0.971259,
		-0.565984, -0.820333, 0.081946,
		0.812577, -0.538310, 0.223473,
		37.444927, 32.474014, 47.131008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692623, 32.441917, 47.563591>,  <36.876122, 32.850830, 46.974575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692623, 32.441917, 47.563591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091949, 32.464092, 47.570320>,  <37.331547, 32.477398, 47.574356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091949, 32.464092, 47.570320>,  <36.692623, 32.441917, 47.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091949, 32.464092, 47.570320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036184, 0.369878, 0.928375,
		0.045249, -0.927425, 0.371263,
		0.998320, 0.055442, 0.016821,
		37.391445, 32.480724, 47.575367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918438, 32.253441, 48.270527>,  <36.692623, 32.441917, 47.563591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918438, 32.253441, 48.270527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252037, 32.422901, 48.129128>,  <37.452198, 32.524578, 48.044289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252037, 32.422901, 48.129128>,  <36.918438, 32.253441, 48.270527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252037, 32.422901, 48.129128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200189, 0.364688, 0.909355,
		0.514165, -0.829171, 0.219340,
		0.834002, 0.423649, -0.353501,
		37.502239, 32.549995, 48.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484005, 31.999615, 48.689182>,  <36.918438, 32.253441, 48.270527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484005, 31.999615, 48.689182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567280, 32.356529, 48.528942>,  <37.617245, 32.570679, 48.432796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567280, 32.356529, 48.528942>,  <37.484005, 31.999615, 48.689182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567280, 32.356529, 48.528942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287104, 0.335786, 0.897117,
		0.935002, -0.301785, -0.186271,
		0.208190, 0.892285, -0.400604,
		37.629738, 32.624214, 48.408760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978092, 32.146393, 49.118725>,  <37.484005, 31.999615, 48.689182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978092, 32.146393, 49.118725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903690, 32.487934, 48.924267>,  <37.859047, 32.692860, 48.807590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903690, 32.487934, 48.924267>,  <37.978092, 32.146393, 49.118725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903690, 32.487934, 48.924267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214893, 0.518155, 0.827850,
		0.958760, 0.049518, -0.279869,
		-0.186009, 0.853852, -0.486145,
		37.847889, 32.744091, 48.778423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444683, 32.466583, 49.429234>,  <37.978092, 32.146393, 49.118725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444683, 32.466583, 49.429234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184986, 32.731514, 49.279667>,  <38.029167, 32.890472, 49.189926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184986, 32.731514, 49.279667>,  <38.444683, 32.466583, 49.429234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184986, 32.731514, 49.279667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090010, 0.555067, 0.826921,
		0.755237, 0.503216, -0.419989,
		-0.649242, 0.662325, -0.373913,
		37.990215, 32.930210, 49.167492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789360, 33.113102, 49.622280>,  <38.444683, 32.466583, 49.429234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789360, 33.113102, 49.622280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393509, 33.145981, 49.575157>,  <38.155998, 33.165710, 49.546883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393509, 33.145981, 49.575157>,  <38.789360, 33.113102, 49.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393509, 33.145981, 49.575157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067534, 0.457568, 0.886606,
		0.126784, 0.885367, -0.447271,
		-0.989629, 0.082201, -0.117804,
		38.096619, 33.170643, 49.539814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548077, 33.803543, 49.705902>,  <38.789360, 33.113102, 49.622280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548077, 33.803543, 49.705902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222446, 33.590508, 49.798531>,  <38.027069, 33.462685, 49.854107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222446, 33.590508, 49.798531>,  <38.548077, 33.803543, 49.705902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222446, 33.590508, 49.798531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060793, 0.474703, 0.878044,
		-0.577569, 0.700716, -0.418822,
		-0.814075, -0.532592, 0.231575,
		37.978226, 33.430729, 49.868004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322453, 34.155800, 50.241970>,  <38.548077, 33.803543, 49.705902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322453, 34.155800, 50.241970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054836, 33.858627, 50.250248>,  <37.894264, 33.680325, 50.255215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054836, 33.858627, 50.250248>,  <38.322453, 34.155800, 50.241970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054836, 33.858627, 50.250248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127924, 0.142543, 0.981487,
		-0.732130, 0.654011, -0.190406,
		-0.669045, -0.742934, 0.020696,
		37.854122, 33.635746, 50.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619576, 34.423153, 50.504719>,  <38.322453, 34.155800, 50.241970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619576, 34.423153, 50.504719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721809, 34.043316, 50.577320>,  <37.783150, 33.815414, 50.620880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721809, 34.043316, 50.577320>,  <37.619576, 34.423153, 50.504719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721809, 34.043316, 50.577320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010647, 0.190493, 0.981631,
		-0.966728, -0.248959, 0.058798,
		0.255587, -0.949596, 0.181504,
		37.798485, 33.758438, 50.631771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308861, 34.593960, 51.228752>,  <37.619576, 34.423153, 50.504719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308861, 34.593960, 51.228752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365616, 34.989227, 51.205441>,  <37.399670, 35.226387, 51.191452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365616, 34.989227, 51.205441>,  <37.308861, 34.593960, 51.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365616, 34.989227, 51.205441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501174, 0.020936, -0.865093,
		-0.853635, 0.151954, 0.498214,
		0.141885, 0.988166, -0.058283,
		37.408180, 35.285679, 51.187954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695236, 34.759007, 50.881969>,  <37.308861, 34.593960, 51.228752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695236, 34.759007, 50.881969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886658, 35.109833, 50.865276>,  <37.001511, 35.320328, 50.855259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886658, 35.109833, 50.865276>,  <36.695236, 34.759007, 50.881969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886658, 35.109833, 50.865276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556891, 0.266421, -0.786697,
		-0.678866, 0.399718, 0.615927,
		0.478553, 0.877066, -0.041735,
		37.030224, 35.372952, 50.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132782, 35.301086, 50.916176>,  <36.695236, 34.759007, 50.881969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132782, 35.301086, 50.916176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465107, 35.459381, 50.759644>,  <36.664501, 35.554359, 50.665722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465107, 35.459381, 50.759644>,  <36.132782, 35.301086, 50.916176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465107, 35.459381, 50.759644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535535, 0.377040, -0.755674,
		-0.151501, 0.837396, 0.525181,
		0.830813, 0.395738, -0.391333,
		36.714352, 35.578102, 50.642242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846466, 35.894085, 50.575954>,  <36.132782, 35.301086, 50.916176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846466, 35.894085, 50.575954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192234, 35.817951, 50.389812>,  <36.399693, 35.772270, 50.278126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192234, 35.817951, 50.389812>,  <35.846466, 35.894085, 50.575954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192234, 35.817951, 50.389812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409209, 0.271423, -0.871135,
		0.292117, 0.943452, 0.156735,
		0.864416, -0.190336, -0.465357,
		36.451557, 35.760849, 50.250206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037273, 36.423473, 50.031357>,  <35.846466, 35.894085, 50.575954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037273, 36.423473, 50.031357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276939, 36.137169, 49.887863>,  <36.420738, 35.965385, 49.801765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276939, 36.137169, 49.887863>,  <36.037273, 36.423473, 50.031357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276939, 36.137169, 49.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341437, 0.176846, -0.923118,
		0.724173, 0.675582, -0.138428,
		0.599162, -0.715761, -0.358736,
		36.456688, 35.922440, 49.780243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455547, 36.688400, 49.463089>,  <36.037273, 36.423473, 50.031357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455547, 36.688400, 49.463089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420189, 36.292164, 49.421284>,  <36.398975, 36.054424, 49.396198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420189, 36.292164, 49.421284>,  <36.455547, 36.688400, 49.463089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420189, 36.292164, 49.421284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308548, 0.126997, -0.942693,
		0.947092, -0.051083, -0.316870,
		-0.088397, -0.990587, -0.104516,
		36.393669, 35.994987, 49.389931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724625, 36.603645, 48.827671>,  <36.455547, 36.688400, 49.463089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724625, 36.603645, 48.827671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568634, 36.245682, 48.914440>,  <36.475040, 36.030903, 48.966499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568634, 36.245682, 48.914440>,  <36.724625, 36.603645, 48.827671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568634, 36.245682, 48.914440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263263, -0.117383, -0.957556,
		0.882391, -0.430529, -0.189820,
		-0.389974, -0.894911, 0.216920,
		36.451641, 35.977207, 48.979515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939228, 36.102371, 48.242985>,  <36.724625, 36.603645, 48.827671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939228, 36.102371, 48.242985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610008, 35.949692, 48.411217>,  <36.412476, 35.858082, 48.512157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610008, 35.949692, 48.411217>,  <36.939228, 36.102371, 48.242985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610008, 35.949692, 48.411217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396093, -0.144972, -0.906694,
		0.407061, -0.912845, -0.031871,
		-0.823050, -0.381704, 0.420584,
		36.363094, 35.835182, 48.537392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701912, 35.622452, 47.681332>,  <36.939228, 36.102371, 48.242985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701912, 35.622452, 47.681332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389606, 35.661011, 47.928272>,  <36.202225, 35.684147, 48.076435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389606, 35.661011, 47.928272>,  <36.701912, 35.622452, 47.681332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389606, 35.661011, 47.928272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624003, -0.171082, -0.762464,
		0.032121, -0.980530, 0.193723,
		-0.780761, 0.096393, 0.617350,
		36.155376, 35.689930, 48.113476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325630, 34.966160, 47.778423>,  <36.701912, 35.622452, 47.681332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325630, 34.966160, 47.778423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073605, 35.267078, 47.855427>,  <35.922390, 35.447632, 47.901630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073605, 35.267078, 47.855427>,  <36.325630, 34.966160, 47.778423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073605, 35.267078, 47.855427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585191, -0.297027, -0.754537,
		-0.510457, -0.588066, 0.627386,
		-0.630068, 0.752299, 0.192511,
		35.884583, 35.492767, 47.913181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690514, 34.718460, 47.652908>,  <36.325630, 34.966160, 47.778423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690514, 34.718460, 47.652908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629349, 35.113464, 47.637722>,  <35.592651, 35.350468, 47.628613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629349, 35.113464, 47.637722>,  <35.690514, 34.718460, 47.652908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629349, 35.113464, 47.637722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490250, -0.109155, -0.864720,
		-0.858064, -0.113611, 0.500818,
		-0.152908, 0.987511, -0.037964,
		35.583477, 35.409718, 47.626331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064892, 34.863907, 47.261745>,  <35.690514, 34.718460, 47.652908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064892, 34.863907, 47.261745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261360, 35.211349, 47.235611>,  <35.379242, 35.419815, 47.219929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261360, 35.211349, 47.235611>,  <35.064892, 34.863907, 47.261745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261360, 35.211349, 47.235611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248430, 0.067797, -0.966274,
		-0.834886, 0.490836, 0.249089,
		0.491169, 0.868610, -0.065336,
		35.408710, 35.471931, 47.216011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615654, 35.309448, 46.893467>,  <35.064892, 34.863907, 47.261745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615654, 35.309448, 46.893467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983624, 35.460865, 46.852604>,  <35.204407, 35.551716, 46.828087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983624, 35.460865, 46.852604>,  <34.615654, 35.309448, 46.893467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983624, 35.460865, 46.852604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202094, 0.234505, -0.950876,
		-0.335991, 0.895384, 0.292229,
		0.919928, 0.378544, -0.102161,
		35.259602, 35.574429, 46.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494244, 35.877911, 46.525566>,  <34.615654, 35.309448, 46.893467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494244, 35.877911, 46.525566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886295, 35.809948, 46.484631>,  <35.121529, 35.769169, 46.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886295, 35.809948, 46.484631>,  <34.494244, 35.877911, 46.525566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886295, 35.809948, 46.484631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083682, 0.113583, -0.989998,
		0.179833, 0.978892, 0.097108,
		0.980131, -0.169908, -0.102342,
		35.180336, 35.758976, 46.453930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643002, 36.104336, 45.920254>,  <34.494244, 35.877911, 46.525566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643002, 36.104336, 45.920254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984341, 35.900402, 45.963833>,  <35.189144, 35.778042, 45.989979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984341, 35.900402, 45.963833>,  <34.643002, 36.104336, 45.920254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984341, 35.900402, 45.963833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040542, -0.273238, -0.961092,
		0.519767, 0.815726, -0.253836,
		0.853345, -0.509835, 0.108949,
		35.240345, 35.747452, 45.996517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020966, 36.325733, 45.403145>,  <34.643002, 36.104336, 45.920254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020966, 36.325733, 45.403145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174408, 35.969952, 45.502522>,  <35.266472, 35.756485, 45.562145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174408, 35.969952, 45.502522>,  <35.020966, 36.325733, 45.403145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174408, 35.969952, 45.502522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116020, -0.220473, -0.968468,
		0.916180, 0.400335, 0.018619,
		0.383606, -0.889451, 0.248440,
		35.289490, 35.703117, 45.577053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699589, 36.342056, 45.126659>,  <35.020966, 36.325733, 45.403145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699589, 36.342056, 45.126659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598255, 35.958195, 45.175453>,  <35.537457, 35.727879, 45.204731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598255, 35.958195, 45.175453>,  <35.699589, 36.342056, 45.126659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598255, 35.958195, 45.175453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256929, -0.188314, -0.947906,
		0.932636, -0.208794, 0.294270,
		-0.253332, -0.959658, 0.121983,
		35.522255, 35.670296, 45.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128838, 36.006775, 44.790260>,  <35.699589, 36.342056, 45.126659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128838, 36.006775, 44.790260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846546, 35.725121, 44.821587>,  <35.677170, 35.556129, 44.840382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846546, 35.725121, 44.821587>,  <36.128838, 36.006775, 44.790260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846546, 35.725121, 44.821587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266128, -0.365922, -0.891783,
		0.656597, -0.608516, 0.445634,
		-0.705731, -0.704138, 0.078320,
		35.634827, 35.513878, 44.845081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498096, 35.464809, 44.573719>,  <36.128838, 36.006775, 44.790260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498096, 35.464809, 44.573719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109627, 35.374348, 44.543594>,  <35.876545, 35.320072, 44.525520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109627, 35.374348, 44.543594>,  <36.498096, 35.464809, 44.573719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109627, 35.374348, 44.543594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166805, -0.419109, -0.892482,
		0.170270, -0.879320, 0.444752,
		-0.971177, -0.226150, -0.075313,
		35.818275, 35.306503, 44.521000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461624, 34.736790, 44.365799>,  <36.498096, 35.464809, 44.573719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461624, 34.736790, 44.365799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119888, 34.910641, 44.251816>,  <35.914848, 35.014950, 44.183426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119888, 34.910641, 44.251816>,  <36.461624, 34.736790, 44.365799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119888, 34.910641, 44.251816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104984, -0.392674, -0.913666,
		-0.509002, -0.810497, 0.289848,
		-0.854339, 0.434628, -0.284961,
		35.863586, 35.041027, 44.166328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185284, 34.196079, 43.915039>,  <36.461624, 34.736790, 44.365799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185284, 34.196079, 43.915039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017914, 34.554268, 43.854305>,  <35.917492, 34.769180, 43.817863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017914, 34.554268, 43.854305>,  <36.185284, 34.196079, 43.915039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017914, 34.554268, 43.854305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187740, -0.078292, -0.979094,
		-0.888635, -0.438186, -0.135356,
		-0.418428, 0.895468, -0.151838,
		35.892384, 34.822906, 43.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736977, 34.153103, 43.378757>,  <36.185284, 34.196079, 43.915039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736977, 34.153103, 43.378757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846626, 34.537735, 43.372807>,  <35.912415, 34.768513, 43.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846626, 34.537735, 43.372807>,  <35.736977, 34.153103, 43.378757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846626, 34.537735, 43.372807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136341, -0.054174, -0.989180,
		-0.951981, 0.269129, -0.145953,
		0.274124, 0.961579, -0.014879,
		35.928864, 34.826210, 43.368343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375599, 34.383034, 42.863022>,  <35.736977, 34.153103, 43.378757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375599, 34.383034, 42.863022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626560, 34.693424, 42.889023>,  <35.777138, 34.879658, 42.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626560, 34.693424, 42.889023>,  <35.375599, 34.383034, 42.863022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626560, 34.693424, 42.889023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049271, 0.043749, -0.997827,
		-0.777134, 0.629243, -0.010785,
		0.627404, 0.775977, 0.065002,
		35.814781, 34.926216, 42.908524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183876, 34.901936, 42.294533>,  <35.375599, 34.383034, 42.863022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183876, 34.901936, 42.294533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569939, 34.970898, 42.373272>,  <35.801575, 35.012276, 42.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569939, 34.970898, 42.373272>,  <35.183876, 34.901936, 42.294533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569939, 34.970898, 42.373272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181120, 0.102779, -0.978076,
		-0.188857, 0.979649, 0.067972,
		0.965157, 0.172406, 0.196845,
		35.859486, 35.022621, 42.432327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422413, 35.413509, 41.812916>,  <35.183876, 34.901936, 42.294533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422413, 35.413509, 41.812916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771351, 35.279858, 41.955677>,  <35.980713, 35.199665, 42.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771351, 35.279858, 41.955677>,  <35.422413, 35.413509, 41.812916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771351, 35.279858, 41.955677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431860, 0.184447, -0.882879,
		0.229169, 0.924302, 0.305199,
		0.872341, -0.334132, 0.356900,
		36.033054, 35.179619, 42.062748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845921, 35.892441, 41.734142>,  <35.422413, 35.413509, 41.812916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845921, 35.892441, 41.734142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088497, 35.576641, 41.771935>,  <36.234043, 35.387161, 41.794609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088497, 35.576641, 41.771935>,  <35.845921, 35.892441, 41.734142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088497, 35.576641, 41.771935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581210, 0.359056, -0.730256,
		0.542611, 0.497769, 0.676609,
		0.606439, -0.789497, 0.094481,
		36.270428, 35.339790, 41.800278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544136, 36.193024, 41.675022>,  <35.845921, 35.892441, 41.734142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544136, 36.193024, 41.675022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586948, 35.806164, 41.582794>,  <36.612637, 35.574047, 41.527458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586948, 35.806164, 41.582794>,  <36.544136, 36.193024, 41.675022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586948, 35.806164, 41.582794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462981, 0.253705, -0.849283,
		0.879882, -0.015847, 0.474928,
		0.107033, -0.967152, -0.230567,
		36.619057, 35.516018, 41.513622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221123, 36.132366, 41.404278>,  <36.544136, 36.193024, 41.675022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221123, 36.132366, 41.404278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045696, 35.795212, 41.279568>,  <36.940441, 35.592918, 41.204742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045696, 35.795212, 41.279568>,  <37.221123, 36.132366, 41.404278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045696, 35.795212, 41.279568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384668, 0.137473, -0.912760,
		0.812214, -0.520234, 0.263941,
		-0.438564, -0.842887, -0.311775,
		36.914127, 35.542347, 41.186035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725071, 35.747246, 41.096275>,  <37.221123, 36.132366, 41.404278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725071, 35.747246, 41.096275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401600, 35.582535, 40.928234>,  <37.207520, 35.483707, 40.827408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401600, 35.582535, 40.928234>,  <37.725071, 35.747246, 41.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401600, 35.582535, 40.928234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364452, 0.209880, -0.907263,
		0.461760, -0.886787, -0.019652,
		-0.808674, -0.411775, -0.420105,
		37.158997, 35.459003, 40.802204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946190, 35.350536, 40.594124>,  <37.725071, 35.747246, 41.096275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946190, 35.350536, 40.594124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572094, 35.425503, 40.473988>,  <37.347637, 35.470482, 40.401905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572094, 35.425503, 40.473988>,  <37.946190, 35.350536, 40.594124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572094, 35.425503, 40.473988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327677, 0.137155, -0.934782,
		-0.134002, -0.972658, -0.189685,
		-0.935239, 0.187418, -0.300338,
		37.291523, 35.481728, 40.383884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893501, 35.156845, 39.904724>,  <37.946190, 35.350536, 40.594124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893501, 35.156845, 39.904724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557446, 35.373741, 39.899929>,  <37.355812, 35.503880, 39.897053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557446, 35.373741, 39.899929>,  <37.893501, 35.156845, 39.904724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557446, 35.373741, 39.899929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175184, 0.250376, -0.952167,
		-0.513298, -0.802054, -0.305342,
		-0.840140, 0.542237, -0.011989,
		37.305405, 35.536411, 39.896332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561596, 35.100903, 39.178596>,  <37.893501, 35.156845, 39.904724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561596, 35.100903, 39.178596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411671, 35.415283, 39.375286>,  <37.321716, 35.603912, 39.493301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411671, 35.415283, 39.375286>,  <37.561596, 35.100903, 39.178596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411671, 35.415283, 39.375286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215069, 0.589631, -0.778512,
		-0.901810, -0.186041, -0.390035,
		-0.374811, 0.785954, 0.491724,
		37.299229, 35.651070, 39.522804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166706, 35.369411, 38.672512>,  <37.561596, 35.100903, 39.178596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166706, 35.369411, 38.672512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231049, 35.642147, 38.957951>,  <37.269653, 35.805786, 39.129215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231049, 35.642147, 38.957951>,  <37.166706, 35.369411, 38.672512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231049, 35.642147, 38.957951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342525, 0.639514, -0.688257,
		-0.925636, 0.355137, -0.130675,
		0.160857, 0.681835, 0.713600,
		37.279305, 35.846699, 39.172031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960506, 35.989170, 38.422752>,  <37.166706, 35.369411, 38.672512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960506, 35.989170, 38.422752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210159, 36.098145, 38.715668>,  <37.359951, 36.163528, 38.891415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210159, 36.098145, 38.715668>,  <36.960506, 35.989170, 38.422752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210159, 36.098145, 38.715668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379812, 0.713258, -0.589073,
		-0.682791, 0.645788, 0.341692,
		0.624131, 0.272435, 0.732284,
		37.397400, 36.179874, 38.935352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994987, 36.640827, 38.357235>,  <36.960506, 35.989170, 38.422752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994987, 36.640827, 38.357235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317314, 36.569988, 38.583260>,  <37.510712, 36.527485, 38.718872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317314, 36.569988, 38.583260>,  <36.994987, 36.640827, 38.357235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317314, 36.569988, 38.583260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441176, 0.816054, -0.373388,
		-0.394992, 0.550174, 0.735724,
		0.805820, -0.177099, 0.565058,
		37.559059, 36.516857, 38.752777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196732, 37.289192, 38.491192>,  <36.994987, 36.640827, 38.357235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196732, 37.289192, 38.491192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529400, 37.107716, 38.619244>,  <37.729000, 36.998829, 38.696075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529400, 37.107716, 38.619244>,  <37.196732, 37.289192, 38.491192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529400, 37.107716, 38.619244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552929, 0.729483, -0.402645,
		-0.050852, 0.511878, 0.857551,
		0.831675, -0.453690, 0.320129,
		37.778904, 36.971607, 38.715282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718891, 37.857407, 38.810883>,  <37.196732, 37.289192, 38.491192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718891, 37.857407, 38.810883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909538, 37.528065, 38.687649>,  <38.023926, 37.330460, 38.613708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909538, 37.528065, 38.687649>,  <37.718891, 37.857407, 38.810883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909538, 37.528065, 38.687649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570801, 0.556371, -0.603852,
		0.668594, 0.111955, 0.735152,
		0.476622, -0.823357, -0.308082,
		38.052525, 37.281059, 38.595222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399441, 37.976723, 38.663265>,  <37.718891, 37.857407, 38.810883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399441, 37.976723, 38.663265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342556, 37.644936, 38.447205>,  <38.308426, 37.445866, 38.317570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342556, 37.644936, 38.447205>,  <38.399441, 37.976723, 38.663265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342556, 37.644936, 38.447205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308819, 0.481281, -0.820366,
		0.940429, -0.283476, 0.187709,
		-0.142213, -0.829464, -0.540153,
		38.299892, 37.396095, 38.285160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027729, 37.784805, 38.327255>,  <38.399441, 37.976723, 38.663265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027729, 37.784805, 38.327255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732414, 37.626911, 38.108490>,  <38.555225, 37.532173, 37.977230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732414, 37.626911, 38.108490>,  <39.027729, 37.784805, 38.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732414, 37.626911, 38.108490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333501, 0.491166, -0.804695,
		0.586267, -0.776493, -0.230977,
		-0.738287, -0.394734, -0.546915,
		38.510929, 37.508492, 37.944416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314552, 37.445473, 37.793213>,  <39.027729, 37.784805, 38.327255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314552, 37.445473, 37.793213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951920, 37.575027, 37.684994>,  <38.734341, 37.652760, 37.620060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951920, 37.575027, 37.684994>,  <39.314552, 37.445473, 37.793213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951920, 37.575027, 37.684994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399683, 0.453128, -0.796824,
		-0.135490, -0.830524, -0.540253,
		-0.906585, 0.323891, -0.270552,
		38.679943, 37.672195, 37.603828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965702, 36.842522, 38.190788>,  <39.314552, 37.445473, 37.793213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965702, 36.842522, 38.190788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768505, 36.681896, 37.882061>,  <38.650188, 36.585522, 37.696823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768505, 36.681896, 37.882061>,  <38.965702, 36.842522, 38.190788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768505, 36.681896, 37.882061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850850, -0.407788, -0.331305,
		-0.181701, -0.820035, 0.542704,
		-0.492990, -0.401561, -0.771822,
		38.620609, 36.561428, 37.650513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215870, 36.194523, 38.007099>,  <38.965702, 36.842522, 38.190788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215870, 36.194523, 38.007099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025761, 36.278175, 37.665249>,  <38.911694, 36.328365, 37.460140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025761, 36.278175, 37.665249>,  <39.215870, 36.194523, 38.007099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025761, 36.278175, 37.665249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816727, -0.256380, -0.516940,
		-0.327216, -0.943681, -0.048951,
		-0.475276, 0.209130, -0.854621,
		38.883179, 36.340916, 37.408863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294979, 35.576050, 37.536407>,  <39.215870, 36.194523, 38.007099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294979, 35.576050, 37.536407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238632, 35.916328, 37.333839>,  <39.204823, 36.120495, 37.212299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238632, 35.916328, 37.333839>,  <39.294979, 35.576050, 37.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238632, 35.916328, 37.333839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822999, -0.183706, -0.537517,
		-0.550299, -0.492505, -0.674247,
		-0.140866, 0.850700, -0.506425,
		39.196373, 36.171539, 37.181911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142056, 35.471672, 36.728405>,  <39.294979, 35.576050, 37.536407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142056, 35.471672, 36.728405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322330, 35.814957, 36.826675>,  <39.430496, 36.020927, 36.885639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322330, 35.814957, 36.826675>,  <39.142056, 35.471672, 36.728405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322330, 35.814957, 36.826675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795165, -0.260868, -0.547413,
		-0.405706, 0.442066, -0.799988,
		0.450684, 0.858211, 0.245680,
		39.457535, 36.072418, 36.900379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321545, 35.974113, 36.177254>,  <39.142056, 35.471672, 36.728405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321545, 35.974113, 36.177254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590660, 36.012302, 36.470715>,  <39.752129, 36.035217, 36.646790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590660, 36.012302, 36.470715>,  <39.321545, 35.974113, 36.177254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590660, 36.012302, 36.470715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737436, -0.166387, -0.654601,
		0.059575, 0.981428, -0.182346,
		0.672784, 0.095471, 0.733653,
		39.792496, 36.040943, 36.690811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829872, 35.591797, 35.641064>,  <39.321545, 35.974113, 36.177254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829872, 35.591797, 35.641064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987354, 35.305050, 35.871227>,  <40.081844, 35.133003, 36.009327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987354, 35.305050, 35.871227>,  <39.829872, 35.591797, 35.641064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987354, 35.305050, 35.871227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675848, -0.198556, -0.709792,
		0.623078, 0.668340, 0.406320,
		0.393705, -0.716866, 0.575412,
		40.105465, 35.089989, 36.043850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561687, 35.710445, 35.718502>,  <39.829872, 35.591797, 35.641064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561687, 35.710445, 35.718502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467735, 35.324364, 35.764481>,  <40.411362, 35.092716, 35.792068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467735, 35.324364, 35.764481>,  <40.561687, 35.710445, 35.718502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467735, 35.324364, 35.764481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684369, -0.248189, -0.685595,
		0.690267, -0.082370, 0.718851,
		-0.234883, -0.965203, 0.114945,
		40.397270, 35.034801, 35.798965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221142, 36.075375, 35.629620>,  <40.561687, 35.710445, 35.718502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221142, 36.075375, 35.629620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615528, 36.118526, 35.680580>,  <41.852161, 36.144417, 35.711159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615528, 36.118526, 35.680580>,  <41.221142, 36.075375, 35.629620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615528, 36.118526, 35.680580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044519, 0.905439, -0.422136,
		-0.160895, 0.410541, 0.897535,
		0.985967, 0.107877, 0.127404,
		41.911320, 36.150890, 35.718800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256943, 36.758617, 35.490524>,  <41.221142, 36.075375, 35.629620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256943, 36.758617, 35.490524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644260, 36.660332, 35.508518>,  <41.876652, 36.601360, 35.519314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644260, 36.660332, 35.508518>,  <41.256943, 36.758617, 35.490524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644260, 36.660332, 35.508518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230109, 0.807326, -0.543391,
		0.097197, 0.536517, 0.838273,
		0.968299, -0.245711, 0.044988,
		41.934750, 36.586620, 35.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560776, 37.468071, 35.635170>,  <41.256943, 36.758617, 35.490524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560776, 37.468071, 35.635170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852966, 37.228054, 35.504719>,  <42.028278, 37.084045, 35.426449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852966, 37.228054, 35.504719>,  <41.560776, 37.468071, 35.635170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852966, 37.228054, 35.504719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320055, 0.722625, -0.612681,
		0.603301, 0.343168, 0.719905,
		0.730474, -0.600040, -0.326128,
		42.072109, 37.048042, 35.406879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164810, 37.843796, 35.660358>,  <41.560776, 37.468071, 35.635170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164810, 37.843796, 35.660358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270710, 37.550549, 35.409775>,  <42.334248, 37.374599, 35.259426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270710, 37.550549, 35.409775>,  <42.164810, 37.843796, 35.660358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270710, 37.550549, 35.409775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433146, 0.670819, -0.601985,
		0.861565, -0.111973, 0.495144,
		0.264746, -0.733119, -0.626455,
		42.350132, 37.330612, 35.221840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896061, 37.899242, 35.567825>,  <42.164810, 37.843796, 35.660358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896061, 37.899242, 35.567825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697186, 37.719990, 35.270645>,  <42.577858, 37.612438, 35.092339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697186, 37.719990, 35.270645>,  <42.896061, 37.899242, 35.567825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697186, 37.719990, 35.270645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376176, 0.660284, -0.650013,
		0.781852, -0.602661, -0.159710,
		-0.497192, -0.448135, -0.742951,
		42.548027, 37.585548, 35.047760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365948, 37.815090, 35.046124>,  <42.896061, 37.899242, 35.567825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365948, 37.815090, 35.046124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033058, 37.773949, 34.828197>,  <42.833324, 37.749264, 34.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033058, 37.773949, 34.828197>,  <43.365948, 37.815090, 35.046124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033058, 37.773949, 34.828197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356212, 0.653823, -0.667554,
		0.424874, -0.749624, -0.507489,
		-0.832223, -0.102853, -0.544818,
		42.783390, 37.743092, 34.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478626, 37.659370, 34.317009>,  <43.365948, 37.815090, 35.046124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478626, 37.659370, 34.317009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103668, 37.795799, 34.288857>,  <42.878693, 37.877659, 34.271965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103668, 37.795799, 34.288857>,  <43.478626, 37.659370, 34.317009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103668, 37.795799, 34.288857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291970, 0.659490, -0.692695,
		-0.189844, -0.669881, -0.717788,
		-0.937397, 0.341076, -0.070385,
		42.822449, 37.898121, 34.267742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114941, 37.585541, 33.720047>,  <43.478626, 37.659370, 34.317009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114941, 37.585541, 33.720047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927917, 37.906944, 33.867435>,  <42.815704, 38.099785, 33.955868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927917, 37.906944, 33.867435>,  <43.114941, 37.585541, 33.720047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927917, 37.906944, 33.867435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334144, 0.546562, -0.767866,
		-0.818374, -0.235902, -0.524037,
		-0.467559, 0.803505, 0.368467,
		42.787651, 38.147995, 33.977974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989506, 37.866291, 33.113815>,  <43.114941, 37.585541, 33.720047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989506, 37.866291, 33.113815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935444, 38.156227, 33.384029>,  <42.903008, 38.330189, 33.546158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935444, 38.156227, 33.384029>,  <42.989506, 37.866291, 33.113815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935444, 38.156227, 33.384029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065126, 0.686814, -0.723910,
		-0.988683, -0.053842, -0.140029,
		-0.135151, 0.724836, 0.675534,
		42.894897, 38.373676, 33.586689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411903, 38.315762, 32.919292>,  <42.989506, 37.866291, 33.113815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411903, 38.315762, 32.919292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640114, 38.561310, 33.137524>,  <42.777042, 38.708641, 33.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640114, 38.561310, 33.137524>,  <42.411903, 38.315762, 32.919292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640114, 38.561310, 33.137524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060118, 0.693738, -0.717714,
		-0.819073, 0.376678, 0.432703,
		0.570530, 0.613873, 0.545577,
		42.811272, 38.745472, 33.301197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004768, 38.830238, 32.957077>,  <42.411903, 38.315762, 32.919292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004768, 38.830238, 32.957077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358910, 38.980797, 33.066238>,  <42.571396, 39.071133, 33.131737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358910, 38.980797, 33.066238>,  <42.004768, 38.830238, 32.957077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358910, 38.980797, 33.066238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096877, 0.723469, -0.683525,
		-0.454713, 0.578723, 0.676990,
		0.885353, 0.376393, 0.272906,
		42.624516, 39.093716, 33.148109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874619, 39.523174, 33.009876>,  <42.004768, 38.830238, 32.957077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874619, 39.523174, 33.009876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271355, 39.480659, 32.981712>,  <42.509396, 39.455151, 32.964813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271355, 39.480659, 32.981712>,  <41.874619, 39.523174, 33.009876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271355, 39.480659, 32.981712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016810, 0.656456, -0.754177,
		0.126377, 0.746840, 0.652885,
		0.991840, -0.106286, -0.070406,
		42.568905, 39.448772, 32.960590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206745, 40.250008, 33.003147>,  <41.874619, 39.523174, 33.009876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206745, 40.250008, 33.003147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441833, 39.980206, 32.824429>,  <42.582886, 39.818325, 32.717197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441833, 39.980206, 32.824429>,  <42.206745, 40.250008, 33.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441833, 39.980206, 32.824429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017619, 0.562778, -0.826420,
		0.808870, 0.477834, 0.342642,
		0.587723, -0.674504, -0.446795,
		42.618149, 39.777855, 32.690392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503006, 40.676994, 32.553318>,  <42.206745, 40.250008, 33.003147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503006, 40.676994, 32.553318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600159, 40.312740, 32.419605>,  <42.658451, 40.094189, 32.339378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600159, 40.312740, 32.419605>,  <42.503006, 40.676994, 32.553318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600159, 40.312740, 32.419605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088138, 0.363894, -0.927261,
		0.966043, 0.195752, 0.168645,
		0.242883, -0.910638, -0.334284,
		42.673023, 40.039547, 32.319321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095963, 40.804016, 32.196518>,  <42.503006, 40.676994, 32.553318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095963, 40.804016, 32.196518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950432, 40.464863, 32.042259>,  <42.863113, 40.261372, 31.949705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950432, 40.464863, 32.042259>,  <43.095963, 40.804016, 32.196518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950432, 40.464863, 32.042259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153394, 0.353829, -0.922646,
		0.918748, -0.394842, 0.001327,
		-0.363830, -0.847882, -0.385646,
		42.841282, 40.210499, 31.926565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450733, 40.735306, 31.485592>,  <43.095963, 40.804016, 32.196518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450733, 40.735306, 31.485592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123077, 40.506119, 31.474863>,  <42.926483, 40.368607, 31.468426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123077, 40.506119, 31.474863>,  <43.450733, 40.735306, 31.485592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123077, 40.506119, 31.474863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079454, 0.159653, -0.983971,
		0.568069, -0.803875, -0.176302,
		-0.819137, -0.572971, -0.026823,
		42.877335, 40.334229, 31.466816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538166, 40.263397, 30.936825>,  <43.450733, 40.735306, 31.485592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538166, 40.263397, 30.936825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144077, 40.303619, 30.992294>,  <42.907623, 40.327751, 31.025576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144077, 40.303619, 30.992294>,  <43.538166, 40.263397, 30.936825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144077, 40.303619, 30.992294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111880, 0.235271, -0.965469,
		-0.129710, -0.966714, -0.220544,
		-0.985220, 0.100556, 0.138673,
		42.848511, 40.333786, 31.033895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299950, 39.956287, 30.264523>,  <43.538166, 40.263397, 30.936825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299950, 39.956287, 30.264523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972477, 40.122425, 30.423136>,  <42.775993, 40.222107, 30.518303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972477, 40.122425, 30.423136>,  <43.299950, 39.956287, 30.264523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972477, 40.122425, 30.423136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268269, 0.333909, -0.903624,
		-0.507725, -0.846162, -0.161942,
		-0.818686, 0.415348, 0.396533,
		42.726871, 40.247028, 30.542095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754696, 39.716984, 29.860973>,  <43.299950, 39.956287, 30.264523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754696, 39.716984, 29.860973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634827, 40.062572, 30.022839>,  <42.562904, 40.269924, 30.119959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634827, 40.062572, 30.022839>,  <42.754696, 39.716984, 29.860973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634827, 40.062572, 30.022839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259101, 0.334513, -0.906072,
		-0.918184, -0.376375, 0.123611,
		-0.299674, 0.863969, 0.404664,
		42.544926, 40.321762, 30.144238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167091, 39.906036, 29.509121>,  <42.754696, 39.716984, 29.860973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167091, 39.906036, 29.509121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273975, 40.254765, 29.673326>,  <42.338108, 40.464001, 29.771851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273975, 40.254765, 29.673326>,  <42.167091, 39.906036, 29.509121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273975, 40.254765, 29.673326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202293, 0.467263, -0.860664,
		-0.942165, 0.146935, 0.301222,
		0.267212, 0.871823, 0.410515,
		42.354137, 40.516312, 29.796480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684143, 40.363182, 29.218069>,  <42.167091, 39.906036, 29.509121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684143, 40.363182, 29.218069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003242, 40.577919, 29.327902>,  <42.194702, 40.706760, 29.393801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003242, 40.577919, 29.327902>,  <41.684143, 40.363182, 29.218069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003242, 40.577919, 29.327902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074422, 0.364227, -0.928332,
		-0.598379, 0.761011, 0.250609,
		0.797750, 0.536843, 0.274581,
		42.242569, 40.738972, 29.410276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568436, 40.789337, 28.722918>,  <41.684143, 40.363182, 29.218069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568436, 40.789337, 28.722918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946571, 40.764191, 28.850904>,  <42.173454, 40.749104, 28.927696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946571, 40.764191, 28.850904>,  <41.568436, 40.789337, 28.722918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946571, 40.764191, 28.850904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319232, 0.378520, -0.868800,
		-0.066499, 0.923456, 0.377898,
		0.945341, -0.062863, 0.319968,
		42.230175, 40.745331, 28.946896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934738, 41.372116, 28.475996>,  <41.568436, 40.789337, 28.722918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934738, 41.372116, 28.475996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219570, 41.109894, 28.576546>,  <42.390469, 40.952560, 28.636875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219570, 41.109894, 28.576546>,  <41.934738, 41.372116, 28.475996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219570, 41.109894, 28.576546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588079, 0.361313, -0.723614,
		0.383545, 0.663098, 0.642802,
		0.712079, -0.655556, 0.251374,
		42.433193, 40.913227, 28.651958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597286, 41.695469, 28.369713>,  <41.934738, 41.372116, 28.475996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597286, 41.695469, 28.369713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655846, 41.302715, 28.321600>,  <42.690983, 41.067062, 28.292732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655846, 41.302715, 28.321600>,  <42.597286, 41.695469, 28.369713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655846, 41.302715, 28.321600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419765, 0.171765, -0.891232,
		0.895748, 0.079987, 0.437308,
		0.146401, -0.981886, -0.120282,
		42.699764, 41.008148, 28.285515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237152, 41.731705, 28.096596>,  <42.597286, 41.695469, 28.369713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237152, 41.731705, 28.096596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091881, 41.363949, 28.036150>,  <43.004719, 41.143295, 27.999882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091881, 41.363949, 28.036150>,  <43.237152, 41.731705, 28.096596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091881, 41.363949, 28.036150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334096, 0.022901, -0.942261,
		0.869761, -0.392691, 0.298846,
		-0.363173, -0.919385, -0.151115,
		42.982929, 41.088135, 27.990816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754848, 41.353989, 27.738472>,  <43.237152, 41.731705, 28.096596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754848, 41.353989, 27.738472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393688, 41.195030, 27.672941>,  <43.176991, 41.099655, 27.633623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393688, 41.195030, 27.672941>,  <43.754848, 41.353989, 27.738472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393688, 41.195030, 27.672941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113829, 0.146467, -0.982645,
		0.414496, -0.905882, -0.087011,
		-0.902904, -0.397398, -0.163825,
		43.122818, 41.075809, 27.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797787, 40.766430, 27.243895>,  <43.754848, 41.353989, 27.738472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797787, 40.766430, 27.243895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463837, 40.986607, 27.244902>,  <43.263466, 41.118713, 27.245506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463837, 40.986607, 27.244902>,  <43.797787, 40.766430, 27.243895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463837, 40.986607, 27.244902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094199, 0.147378, -0.984584,
		-0.542325, -0.821764, -0.174892,
		-0.834871, 0.550439, 0.002518,
		43.213375, 41.151737, 27.245657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596745, 40.345078, 26.634901>,  <43.797787, 40.766430, 27.243895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596745, 40.345078, 26.634901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934185, 40.442585, 26.443521>,  <44.136650, 40.501087, 26.328693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934185, 40.442585, 26.443521>,  <43.596745, 40.345078, 26.634901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934185, 40.442585, 26.443521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536687, -0.353939, 0.765959,
		0.017375, -0.902942, -0.429411,
		0.843602, 0.243767, -0.478447,
		44.187267, 40.515717, 26.299988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996693, 39.713169, 26.479439>,  <43.596745, 40.345078, 26.634901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996693, 39.713169, 26.479439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215229, 40.045891, 26.518681>,  <44.346352, 40.245522, 26.542225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215229, 40.045891, 26.518681>,  <43.996693, 39.713169, 26.479439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215229, 40.045891, 26.518681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484154, -0.409215, 0.773394,
		0.683455, -0.375037, -0.626288,
		0.546338, 0.831800, 0.098104,
		44.379131, 40.295429, 26.548111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773350, 39.925476, 26.398039>,  <43.996693, 39.713169, 26.479439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773350, 39.925476, 26.398039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772171, 40.214725, 26.674322>,  <44.771465, 40.388275, 26.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772171, 40.214725, 26.674322>,  <44.773350, 39.925476, 26.398039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772171, 40.214725, 26.674322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032396, -0.690417, 0.722686,
		0.999471, -0.020247, 0.025461,
		-0.002946, 0.723128, 0.690708,
		44.771286, 40.431664, 26.881535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365177, 39.967041, 26.979656>,  <44.773350, 39.925476, 26.398039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365177, 39.967041, 26.979656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035484, 40.116653, 27.149708>,  <44.837669, 40.206421, 27.251740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035484, 40.116653, 27.149708>,  <45.365177, 39.967041, 26.979656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035484, 40.116653, 27.149708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051130, -0.698558, 0.713725,
		0.563934, 0.610014, 0.556652,
		-0.824236, 0.374032, 0.425130,
		44.788212, 40.228863, 27.277246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498840, 40.203468, 27.599556>,  <45.365177, 39.967041, 26.979656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498840, 40.203468, 27.599556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104038, 40.151306, 27.637129>,  <44.867157, 40.120010, 27.659672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104038, 40.151306, 27.637129>,  <45.498840, 40.203468, 27.599556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104038, 40.151306, 27.637129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138696, -0.395880, 0.907768,
		-0.081193, 0.908996, 0.408821,
		-0.987001, -0.130406, 0.093931,
		44.807938, 40.112183, 27.665308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392437, 40.457970, 28.171227>,  <45.498840, 40.203468, 27.599556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392437, 40.457970, 28.171227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110424, 40.186722, 28.088207>,  <44.941216, 40.023972, 28.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110424, 40.186722, 28.088207>,  <45.392437, 40.457970, 28.171227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110424, 40.186722, 28.088207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108469, -0.392332, 0.913406,
		-0.700830, 0.621469, 0.350162,
		-0.705033, -0.678124, -0.207548,
		44.898914, 39.983284, 28.025944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920662, 40.520958, 28.726822>,  <45.392437, 40.457970, 28.171227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920662, 40.520958, 28.726822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867180, 40.146088, 28.597937>,  <44.835091, 39.921165, 28.520605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867180, 40.146088, 28.597937>,  <44.920662, 40.520958, 28.726822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867180, 40.146088, 28.597937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106781, -0.309616, 0.944847,
		-0.985251, 0.160739, -0.058675,
		-0.133706, -0.937177, -0.322213,
		44.827068, 39.864933, 28.501272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305389, 40.252544, 29.068047>,  <44.920662, 40.520958, 28.726822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305389, 40.252544, 29.068047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496063, 39.921597, 28.949228>,  <44.610470, 39.723030, 28.877937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496063, 39.921597, 28.949228>,  <44.305389, 40.252544, 29.068047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496063, 39.921597, 28.949228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284655, -0.464980, 0.838311,
		-0.831710, -0.315056, -0.457163,
		0.476687, -0.827366, -0.297046,
		44.639069, 39.673386, 28.860115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812595, 39.731331, 29.240925>,  <44.305389, 40.252544, 29.068047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812595, 39.731331, 29.240925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165672, 39.548073, 29.199062>,  <44.377518, 39.438118, 29.173944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.165672, 39.548073, 29.199062>,  <43.812595, 39.731331, 29.240925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165672, 39.548073, 29.199062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186816, -0.546430, 0.816403,
		-0.431217, -0.701084, -0.567920,
		0.882696, -0.458143, -0.104657,
		44.430481, 39.410629, 29.167665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645985, 39.047581, 29.253918>,  <43.812595, 39.731331, 29.240925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645985, 39.047581, 29.253918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031479, 39.058121, 29.360140>,  <44.262775, 39.064445, 29.423874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031479, 39.058121, 29.360140>,  <43.645985, 39.047581, 29.253918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031479, 39.058121, 29.360140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197507, -0.598763, 0.776192,
		0.179458, -0.800493, -0.571845,
		0.963735, 0.026350, 0.265556,
		44.320599, 39.066025, 29.439806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688721, 38.482422, 29.622913>,  <43.645985, 39.047581, 29.253918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688721, 38.482422, 29.622913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050068, 38.630199, 29.710039>,  <44.266876, 38.718864, 29.762314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050068, 38.630199, 29.710039>,  <43.688721, 38.482422, 29.622913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050068, 38.630199, 29.710039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018813, -0.473255, 0.880725,
		0.428458, -0.799714, -0.420572,
		0.903366, 0.369441, 0.217815,
		44.321079, 38.741032, 29.775383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142597, 37.866852, 29.683769>,  <43.688721, 38.482422, 29.622913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142597, 37.866852, 29.683769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295071, 38.178642, 29.882612>,  <44.386555, 38.365715, 30.001919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295071, 38.178642, 29.882612>,  <44.142597, 37.866852, 29.683769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295071, 38.178642, 29.882612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094973, -0.567877, 0.817616,
		0.919608, -0.264451, -0.290495,
		0.381185, 0.779475, 0.497108,
		44.409428, 38.412483, 30.031744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793221, 37.591076, 30.030727>,  <44.142597, 37.866852, 29.683769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793221, 37.591076, 30.030727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711117, 37.927017, 30.231731>,  <44.661854, 38.128582, 30.352333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711117, 37.927017, 30.231731>,  <44.793221, 37.591076, 30.030727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711117, 37.927017, 30.231731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155580, -0.478913, 0.863966,
		0.966262, 0.255519, -0.032361,
		-0.205262, 0.839853, 0.502509,
		44.649540, 38.178974, 30.382484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424236, 37.726162, 30.397570>,  <44.793221, 37.591076, 30.030727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424236, 37.726162, 30.397570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133873, 37.928417, 30.584070>,  <44.959656, 38.049770, 30.695971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133873, 37.928417, 30.584070>,  <45.424236, 37.726162, 30.397570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133873, 37.928417, 30.584070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241162, -0.447742, 0.861027,
		0.644128, 0.737467, 0.203078,
		-0.725906, 0.505637, 0.466252,
		44.916100, 38.080109, 30.723946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749451, 37.955059, 30.965458>,  <45.424236, 37.726162, 30.397570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749451, 37.955059, 30.965458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359837, 37.970814, 31.054638>,  <45.126068, 37.980267, 31.108147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359837, 37.970814, 31.054638>,  <45.749451, 37.955059, 30.965458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359837, 37.970814, 31.054638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157433, -0.589862, 0.792008,
		0.162709, 0.806543, 0.568344,
		-0.974033, 0.039390, 0.222952,
		45.067627, 37.982632, 31.121523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682869, 38.165703, 31.627655>,  <45.749451, 37.955059, 30.965458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682869, 38.165703, 31.627655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330406, 37.987633, 31.563929>,  <45.118927, 37.880791, 31.525694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330406, 37.987633, 31.563929>,  <45.682869, 38.165703, 31.627655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330406, 37.987633, 31.563929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024525, -0.293456, 0.955658,
		-0.472188, 0.845991, 0.247663,
		-0.881156, -0.445177, -0.159314,
		45.066059, 37.854080, 31.516134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379253, 38.280067, 32.286629>,  <45.682869, 38.165703, 31.627655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379253, 38.280067, 32.286629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182144, 37.984398, 32.102978>,  <45.063881, 37.806995, 31.992786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182144, 37.984398, 32.102978>,  <45.379253, 38.280067, 32.286629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182144, 37.984398, 32.102978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298190, -0.352247, 0.887133,
		-0.817471, 0.574062, -0.046836,
		-0.492772, -0.739171, -0.459131,
		45.034313, 37.762646, 31.965239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712589, 38.181519, 32.630527>,  <45.379253, 38.280067, 32.286629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712589, 38.181519, 32.630527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777763, 37.831299, 32.448597>,  <44.816868, 37.621166, 32.339439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777763, 37.831299, 32.448597>,  <44.712589, 38.181519, 32.630527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777763, 37.831299, 32.448597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139968, -0.476831, 0.867779,
		-0.976658, -0.077729, -0.200241,
		0.162933, -0.875551, -0.454822,
		44.826645, 37.568634, 32.312149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240875, 37.622517, 32.910709>,  <44.712589, 38.181519, 32.630527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240875, 37.622517, 32.910709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514980, 37.403111, 32.719067>,  <44.679443, 37.271469, 32.604080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514980, 37.403111, 32.719067>,  <44.240875, 37.622517, 32.910709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514980, 37.403111, 32.719067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118167, -0.565394, 0.816312,
		-0.718642, -0.616006, -0.322629,
		0.685267, -0.548512, -0.479108,
		44.720562, 37.238556, 32.575333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063103, 37.055904, 33.184582>,  <44.240875, 37.622517, 32.910709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063103, 37.055904, 33.184582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428463, 36.969254, 33.046726>,  <44.647678, 36.917263, 32.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428463, 36.969254, 33.046726>,  <44.063103, 37.055904, 33.184582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428463, 36.969254, 33.046726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242559, -0.390283, 0.888169,
		-0.326908, -0.894848, -0.303939,
		0.913398, -0.216627, -0.344640,
		44.702480, 36.904266, 32.943333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148026, 36.327106, 33.145641>,  <44.063103, 37.055904, 33.184582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148026, 36.327106, 33.145641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508324, 36.494167, 33.193352>,  <44.724503, 36.594402, 33.221977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508324, 36.494167, 33.193352>,  <44.148026, 36.327106, 33.145641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508324, 36.494167, 33.193352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182611, -0.613295, 0.768455,
		0.394097, -0.670400, -0.628690,
		0.900745, 0.417651, 0.119275,
		44.778545, 36.619461, 33.229134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546234, 35.740761, 33.373051>,  <44.148026, 36.327106, 33.145641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546234, 35.740761, 33.373051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767216, 36.054974, 33.484570>,  <44.899807, 36.243504, 33.551479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767216, 36.054974, 33.484570>,  <44.546234, 35.740761, 33.373051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767216, 36.054974, 33.484570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281758, -0.490774, 0.824471,
		0.784477, -0.376931, -0.492462,
		0.552456, 0.785535, 0.278798,
		44.932953, 36.290634, 33.568211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152809, 35.447147, 33.584183>,  <44.546234, 35.740761, 33.373051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152809, 35.447147, 33.584183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137379, 35.820084, 33.727989>,  <45.128120, 36.043846, 33.814274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.137379, 35.820084, 33.727989>,  <45.152809, 35.447147, 33.584183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137379, 35.820084, 33.727989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139140, -0.351271, 0.925877,
		0.989521, 0.085743, -0.116174,
		-0.038579, 0.932339, 0.359520,
		45.125805, 36.099785, 33.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796741, 35.445728, 33.964558>,  <45.152809, 35.447147, 33.584183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796741, 35.445728, 33.964558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579617, 35.753510, 34.099197>,  <45.449341, 35.938179, 34.179981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579617, 35.753510, 34.099197>,  <45.796741, 35.445728, 33.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579617, 35.753510, 34.099197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264439, -0.223818, 0.938071,
		0.797136, 0.598208, -0.081981,
		-0.542813, 0.769449, 0.336603,
		45.416771, 35.984344, 34.200180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229553, 35.702896, 34.571388>,  <45.796741, 35.445728, 33.964558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229553, 35.702896, 34.571388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881500, 35.890259, 34.632660>,  <45.672668, 36.002678, 34.669422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881500, 35.890259, 34.632660>,  <46.229553, 35.702896, 34.571388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881500, 35.890259, 34.632660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045160, -0.233734, 0.971251,
		0.490745, 0.852035, 0.182226,
		-0.870132, 0.468407, 0.153181,
		45.620461, 36.030781, 34.678616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354382, 36.199036, 35.059483>,  <46.229553, 35.702896, 34.571388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354382, 36.199036, 35.059483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980743, 36.056801, 35.072254>,  <45.756561, 35.971458, 35.079918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.980743, 36.056801, 35.072254>,  <46.354382, 36.199036, 35.059483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980743, 36.056801, 35.072254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049238, -0.039741, 0.997996,
		-0.353607, 0.933797, 0.054631,
		-0.934097, -0.355588, 0.031925,
		45.700516, 35.950123, 35.081833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554298, 35.520882, 35.388275>,  <46.354382, 36.199036, 35.059483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554298, 35.520882, 35.388275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359703, 35.231312, 35.583931>,  <46.242947, 35.057571, 35.701324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359703, 35.231312, 35.583931>,  <46.554298, 35.520882, 35.388275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359703, 35.231312, 35.583931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144642, -0.485398, -0.862246,
		0.861630, -0.490224, 0.131431,
		-0.486490, -0.723926, 0.489141,
		46.213757, 35.014133, 35.730675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859459, 34.934959, 35.094570>,  <46.554298, 35.520882, 35.388275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859459, 34.934959, 35.094570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494389, 34.837948, 35.226143>,  <46.275345, 34.779739, 35.305084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494389, 34.837948, 35.226143>,  <46.859459, 34.934959, 35.094570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494389, 34.837948, 35.226143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159316, -0.530034, -0.832876,
		0.376343, -0.812552, 0.445112,
		-0.912680, -0.242533, 0.328928,
		46.220585, 34.765186, 35.324821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475452, 34.964954, 35.522091>,  <46.859459, 34.934959, 35.094570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475452, 34.964954, 35.522091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783787, 35.126469, 35.325005>,  <47.968788, 35.223377, 35.206753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783787, 35.126469, 35.325005>,  <47.475452, 34.964954, 35.522091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.783787, 35.126469, 35.325005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630194, 0.370314, -0.682439,
		-0.093097, 0.836556, 0.539913,
		0.770836, 0.403783, -0.492717,
		48.015038, 35.247604, 35.177189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.391590, 37.877663, 46.036697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111645, 37.602619, 45.959354>,  <31.943678, 37.437595, 45.912949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.111645, 37.602619, 45.959354>,  <32.391590, 37.877663, 46.036697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111645, 37.602619, 45.959354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200682, 0.070510, -0.977116,
		0.685505, -0.722652, 0.088643,
		-0.699864, -0.687607, -0.193358,
		31.901686, 37.396336, 45.901348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718838, 37.451385, 45.538395>,  <32.391590, 37.877663, 46.036697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718838, 37.451385, 45.538395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.326981, 37.373661, 45.518227>,  <32.091866, 37.327026, 45.506126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.326981, 37.373661, 45.518227>,  <32.718838, 37.451385, 45.538395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326981, 37.373661, 45.518227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056942, -0.028119, -0.997982,
		0.192498, -0.980538, 0.038611,
		-0.979644, -0.194308, -0.050421,
		32.033089, 37.315369, 45.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667217, 36.917919, 45.041298>,  <32.718838, 37.451385, 45.538395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667217, 36.917919, 45.041298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.297058, 37.069496, 45.038872>,  <32.074963, 37.160442, 45.037415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.297058, 37.069496, 45.038872>,  <32.667217, 36.917919, 45.041298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297058, 37.069496, 45.038872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005647, -0.029801, -0.999540,
		-0.378946, -0.924942, 0.029718,
		-0.925402, 0.378939, -0.006070,
		32.019436, 37.183178, 45.037052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322021, 36.450218, 44.671967>,  <32.667217, 36.917919, 45.041298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322021, 36.450218, 44.671967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.116302, 36.792641, 44.651306>,  <31.992872, 36.998093, 44.638912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.116302, 36.792641, 44.651306>,  <32.322021, 36.450218, 44.671967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116302, 36.792641, 44.651306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023744, -0.074413, -0.996945,
		-0.857285, -0.511497, 0.058597,
		-0.514295, 0.856057, -0.051648,
		31.962013, 37.049458, 44.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764107, 36.345432, 44.227043>,  <32.322021, 36.450218, 44.671967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764107, 36.345432, 44.227043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.785341, 36.744591, 44.241894>,  <31.798082, 36.984085, 44.250805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.785341, 36.744591, 44.241894>,  <31.764107, 36.345432, 44.227043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785341, 36.744591, 44.241894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157873, 0.028327, -0.987053,
		-0.986031, 0.058261, -0.156037,
		0.053087, 0.997899, 0.037129,
		31.801268, 37.043961, 44.253033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298454, 36.615044, 43.773838>,  <31.764107, 36.345432, 44.227043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298454, 36.615044, 43.773838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550282, 36.923515, 43.811642>,  <31.701378, 37.108597, 43.834324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550282, 36.923515, 43.811642>,  <31.298454, 36.615044, 43.773838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550282, 36.923515, 43.811642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069160, 0.176783, -0.981817,
		-0.773862, 0.611583, 0.164631,
		0.629566, 0.771177, 0.094508,
		31.739151, 37.154869, 43.839993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009382, 37.134521, 43.415024>,  <31.298454, 36.615044, 43.773838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009382, 37.134521, 43.415024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.396572, 37.222874, 43.462749>,  <31.628885, 37.275887, 43.491386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.396572, 37.222874, 43.462749>,  <31.009382, 37.134521, 43.415024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396572, 37.222874, 43.462749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108721, 0.059566, -0.992286,
		-0.226284, 0.973480, 0.033643,
		0.967975, 0.220881, 0.119317,
		31.686964, 37.289139, 43.498543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121702, 37.799988, 43.112709>,  <31.009382, 37.134521, 43.415024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121702, 37.799988, 43.112709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.461613, 37.589298, 43.104321>,  <31.665558, 37.462883, 43.099285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.461613, 37.589298, 43.104321>,  <31.121702, 37.799988, 43.112709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461613, 37.589298, 43.104321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131581, 0.250475, -0.959140,
		0.510460, 0.812293, 0.282155,
		0.849775, -0.526728, -0.020975,
		31.716545, 37.431278, 43.098026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604914, 38.095596, 42.503139>,  <31.121702, 37.799988, 43.112709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604914, 38.095596, 42.503139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807051, 37.755600, 42.562675>,  <31.928333, 37.551601, 42.598396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.807051, 37.755600, 42.562675>,  <31.604914, 38.095596, 42.503139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807051, 37.755600, 42.562675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267786, -0.009494, -0.963432,
		0.820317, 0.526719, 0.222817,
		0.505343, -0.849986, 0.148836,
		31.958652, 37.500603, 42.607327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351982, 38.211349, 42.363621>,  <31.604914, 38.095596, 42.503139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351982, 38.211349, 42.363621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288242, 37.817783, 42.331337>,  <32.249996, 37.581642, 42.311966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288242, 37.817783, 42.331337>,  <32.351982, 38.211349, 42.363621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288242, 37.817783, 42.331337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347778, 0.020561, -0.937351,
		0.923936, -0.177437, 0.338909,
		-0.159353, -0.983917, -0.080706,
		32.240437, 37.522610, 42.307125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041962, 37.997364, 42.259811>,  <32.351982, 38.211349, 42.363621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041962, 37.997364, 42.259811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794682, 37.722031, 42.108006>,  <32.646313, 37.556831, 42.016922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.794682, 37.722031, 42.108006>,  <33.041962, 37.997364, 42.259811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794682, 37.722031, 42.108006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508072, 0.018481, -0.861117,
		0.599747, -0.725161, 0.338297,
		-0.618196, -0.688331, -0.379518,
		32.609222, 37.515530, 41.994152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447994, 37.468796, 41.839668>,  <33.041962, 37.997364, 42.259811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447994, 37.468796, 41.839668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.074303, 37.412628, 41.708515>,  <32.850090, 37.378929, 41.629826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.074303, 37.412628, 41.708515>,  <33.447994, 37.468796, 41.839668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074303, 37.412628, 41.708515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345077, -0.123232, -0.930449,
		0.090248, -0.982393, 0.163582,
		-0.934226, -0.140420, -0.327879,
		32.794037, 37.370502, 41.610153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412907, 36.884998, 41.403175>,  <33.447994, 37.468796, 41.839668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412907, 36.884998, 41.403175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.079048, 37.073837, 41.289692>,  <32.878735, 37.187141, 41.221603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.079048, 37.073837, 41.289692>,  <33.412907, 36.884998, 41.403175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079048, 37.073837, 41.289692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275860, -0.087529, -0.957204,
		-0.476731, -0.877187, -0.057179,
		-0.834643, 0.472102, -0.283709,
		32.828655, 37.215469, 41.204578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904610, 36.377514, 40.972244>,  <33.412907, 36.884998, 41.403175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904610, 36.377514, 40.972244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830158, 36.766148, 40.913757>,  <32.785488, 36.999329, 40.878666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830158, 36.766148, 40.913757>,  <32.904610, 36.377514, 40.972244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830158, 36.766148, 40.913757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258097, -0.095243, -0.961413,
		-0.948020, -0.216683, -0.233036,
		-0.186126, 0.971585, -0.146218,
		32.774319, 37.057625, 40.869892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514858, 36.461479, 40.317413>,  <32.904610, 36.377514, 40.972244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514858, 36.461479, 40.317413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686764, 36.815472, 40.389095>,  <32.789906, 37.027866, 40.432102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686764, 36.815472, 40.389095>,  <32.514858, 36.461479, 40.317413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686764, 36.815472, 40.389095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260226, 0.068651, -0.963104,
		-0.864631, 0.460539, -0.200791,
		0.429762, 0.884981, 0.179202,
		32.815693, 37.080967, 40.442856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254738, 36.928314, 39.794807>,  <32.514858, 36.461479, 40.317413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254738, 36.928314, 39.794807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.581989, 37.119686, 39.922413>,  <32.778339, 37.234509, 39.998974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.581989, 37.119686, 39.922413>,  <32.254738, 36.928314, 39.794807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581989, 37.119686, 39.922413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234200, 0.229440, -0.944726,
		-0.525175, 0.847624, 0.075664,
		0.818133, 0.478427, 0.319010,
		32.827431, 37.263214, 40.018116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280239, 37.598904, 39.519032>,  <32.254738, 36.928314, 39.794807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280239, 37.598904, 39.519032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660160, 37.500935, 39.596893>,  <32.888111, 37.442154, 39.643612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.660160, 37.500935, 39.596893>,  <32.280239, 37.598904, 39.519032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660160, 37.500935, 39.596893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249766, 0.218918, -0.943235,
		0.188409, 0.944503, 0.269103,
		0.949799, -0.244926, 0.194659,
		32.945099, 37.427456, 39.655293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695930, 38.068161, 39.128086>,  <32.280239, 37.598904, 39.519032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695930, 38.068161, 39.128086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962475, 37.778061, 39.197330>,  <33.122402, 37.604000, 39.238876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962475, 37.778061, 39.197330>,  <32.695930, 38.068161, 39.128086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962475, 37.778061, 39.197330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475917, 0.234976, -0.847520,
		0.573988, 0.647145, 0.501739,
		0.666364, -0.725252, 0.173114,
		33.162384, 37.560486, 39.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239471, 38.444126, 38.924641>,  <32.695930, 38.068161, 39.128086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239471, 38.444126, 38.924641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361073, 38.063061, 38.923267>,  <33.434036, 37.834423, 38.922443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361073, 38.063061, 38.923267>,  <33.239471, 38.444126, 38.924641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361073, 38.063061, 38.923267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416972, 0.136296, -0.898642,
		0.856571, 0.271764, 0.438669,
		0.304008, -0.952663, -0.003429,
		33.452274, 37.777260, 38.922237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868824, 38.370846, 38.674610>,  <33.239471, 38.444126, 38.924641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868824, 38.370846, 38.674610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737873, 38.001114, 38.596180>,  <33.659302, 37.779274, 38.549122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.737873, 38.001114, 38.596180>,  <33.868824, 38.370846, 38.674610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737873, 38.001114, 38.596180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498361, 0.007387, -0.866939,
		0.802782, -0.381532, 0.458229,
		-0.327380, -0.924326, -0.196071,
		33.639660, 37.723816, 38.537357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450516, 37.985149, 38.416313>,  <33.868824, 38.370846, 38.674610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450516, 37.985149, 38.416313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132755, 37.779839, 38.286407>,  <33.942101, 37.656651, 38.208462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132755, 37.779839, 38.286407>,  <34.450516, 37.985149, 38.416313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132755, 37.779839, 38.286407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385336, -0.012563, -0.922691,
		0.469520, -0.858129, 0.207766,
		-0.794398, -0.513281, -0.324769,
		33.894436, 37.625854, 38.188976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698311, 37.458931, 38.043011>,  <34.450516, 37.985149, 38.416313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698311, 37.458931, 38.043011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333481, 37.518623, 37.890251>,  <34.114582, 37.554440, 37.798595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.333481, 37.518623, 37.890251>,  <34.698311, 37.458931, 38.043011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333481, 37.518623, 37.890251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385689, -0.003798, -0.922621,
		-0.139134, -0.988795, -0.054093,
		-0.912078, 0.149231, -0.381895,
		34.059856, 37.563393, 37.775684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294922, 37.922203, 38.105450>,  <34.698311, 37.458931, 38.043011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294922, 37.922203, 38.105450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632969, 38.135082, 38.085289>,  <35.835796, 38.262810, 38.073193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632969, 38.135082, 38.085289>,  <35.294922, 37.922203, 38.105450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632969, 38.135082, 38.085289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079023, -0.031120, 0.996387,
		0.528705, -0.846049, -0.068356,
		0.845119, 0.532197, -0.050404,
		35.886505, 38.294743, 38.070168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703815, 37.517651, 38.341629>,  <35.294922, 37.922203, 38.105450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703815, 37.517651, 38.341629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.883003, 37.872871, 38.382984>,  <35.990517, 38.086002, 38.407795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.883003, 37.872871, 38.382984>,  <35.703815, 37.517651, 38.341629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883003, 37.872871, 38.382984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081499, -0.155717, 0.984434,
		0.890328, -0.432567, -0.142131,
		0.447965, 0.888053, 0.103386,
		36.017391, 38.139286, 38.414001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376797, 37.498116, 38.712967>,  <35.703815, 37.517651, 38.341629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376797, 37.498116, 38.712967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237526, 37.869438, 38.765160>,  <36.153961, 38.092232, 38.796474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237526, 37.869438, 38.765160>,  <36.376797, 37.498116, 38.712967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237526, 37.869438, 38.765160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139505, -0.086333, 0.986451,
		0.926989, 0.361666, -0.099443,
		-0.348180, 0.928302, 0.130484,
		36.133072, 38.147930, 38.804306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719982, 37.657028, 39.310562>,  <36.376797, 37.498116, 38.712967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719982, 37.657028, 39.310562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451447, 37.951309, 39.274693>,  <36.290325, 38.127880, 39.253170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451447, 37.951309, 39.274693>,  <36.719982, 37.657028, 39.310562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451447, 37.951309, 39.274693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052617, 0.167996, 0.984383,
		0.739281, 0.656136, -0.151493,
		-0.671339, 0.735706, -0.089672,
		36.250046, 38.172020, 39.247791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028934, 38.326656, 39.495670>,  <36.719982, 37.657028, 39.310562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028934, 38.326656, 39.495670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633797, 38.324787, 39.557812>,  <36.396713, 38.323666, 39.595097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633797, 38.324787, 39.557812>,  <37.028934, 38.326656, 39.495670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633797, 38.324787, 39.557812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151850, 0.184212, 0.971086,
		-0.033155, 0.982876, -0.181264,
		-0.987847, -0.004672, 0.155357,
		36.337444, 38.323387, 39.604420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841732, 38.939705, 39.837379>,  <37.028934, 38.326656, 39.495670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841732, 38.939705, 39.837379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536877, 38.694027, 39.919270>,  <36.353966, 38.546619, 39.968403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536877, 38.694027, 39.919270>,  <36.841732, 38.939705, 39.837379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536877, 38.694027, 39.919270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093684, 0.417522, 0.903824,
		-0.640603, 0.669657, -0.375749,
		-0.762136, -0.614194, 0.204730,
		36.308235, 38.509769, 39.980690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327435, 39.355003, 40.274597>,  <36.841732, 38.939705, 39.837379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327435, 39.355003, 40.274597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220821, 38.971848, 40.317318>,  <36.156853, 38.741955, 40.342949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220821, 38.971848, 40.317318>,  <36.327435, 39.355003, 40.274597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220821, 38.971848, 40.317318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238464, 0.172904, 0.955635,
		-0.933859, 0.229243, -0.274508,
		-0.266537, -0.957889, 0.106802,
		36.140862, 38.684483, 40.349358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605022, 39.404835, 40.430359>,  <36.327435, 39.355003, 40.274597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605022, 39.404835, 40.430359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763020, 39.057259, 40.549644>,  <35.857819, 38.848713, 40.621216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763020, 39.057259, 40.549644>,  <35.605022, 39.404835, 40.430359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763020, 39.057259, 40.549644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368214, 0.147650, 0.917942,
		-0.841664, -0.472387, -0.261634,
		0.394993, -0.868936, 0.298212,
		35.881519, 38.796577, 40.639107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264156, 39.247467, 40.976986>,  <35.605022, 39.404835, 40.430359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264156, 39.247467, 40.976986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529751, 38.952126, 41.024242>,  <35.689106, 38.774921, 41.052597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.529751, 38.952126, 41.024242>,  <35.264156, 39.247467, 40.976986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529751, 38.952126, 41.024242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221322, -0.043147, 0.974246,
		-0.714242, -0.673031, -0.192063,
		0.663984, -0.738355, 0.118139,
		35.728947, 38.730618, 41.059685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919025, 38.581028, 41.095558>,  <35.264156, 39.247467, 40.976986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919025, 38.581028, 41.095558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291428, 38.575760, 41.241467>,  <35.514870, 38.572601, 41.329014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291428, 38.575760, 41.241467>,  <34.919025, 38.581028, 41.095558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291428, 38.575760, 41.241467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351790, -0.298921, 0.887068,
		0.097358, -0.954187, -0.282929,
		0.931003, -0.013168, 0.364776,
		35.570728, 38.571808, 41.350899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971931, 37.948715, 41.478218>,  <34.919025, 38.581028, 41.095558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971931, 37.948715, 41.478218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.266388, 38.181782, 41.615974>,  <35.443062, 38.321621, 41.698627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.266388, 38.181782, 41.615974>,  <34.971931, 37.948715, 41.478218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266388, 38.181782, 41.615974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223908, -0.270536, 0.936309,
		0.638724, -0.766364, -0.068689,
		0.736137, 0.582663, 0.344392,
		35.487228, 38.356579, 41.719292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354061, 37.495853, 41.901688>,  <34.971931, 37.948715, 41.478218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354061, 37.495853, 41.901688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454735, 37.868279, 42.007351>,  <35.515137, 38.091732, 42.070747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454735, 37.868279, 42.007351>,  <35.354061, 37.495853, 41.901688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454735, 37.868279, 42.007351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021854, -0.267406, 0.963336,
		0.967563, -0.248227, -0.046953,
		0.251681, 0.931063, 0.264157,
		35.530239, 38.147598, 42.086597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551033, 37.436020, 42.649250>,  <35.354061, 37.495853, 41.901688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551033, 37.436020, 42.649250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442722, 37.815769, 42.585548>,  <35.377735, 38.043621, 42.547329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442722, 37.815769, 42.585548>,  <35.551033, 37.436020, 42.649250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442722, 37.815769, 42.585548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264669, 0.085637, 0.960529,
		0.925543, 0.302240, 0.228082,
		-0.270778, 0.949377, -0.159254,
		35.361488, 38.100582, 42.537773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813591, 37.756065, 43.249729>,  <35.551033, 37.436020, 42.649250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813591, 37.756065, 43.249729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528774, 37.991661, 43.096844>,  <35.357883, 38.133018, 43.005112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528774, 37.991661, 43.096844>,  <35.813591, 37.756065, 43.249729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528774, 37.991661, 43.096844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144142, 0.410143, 0.900558,
		0.687182, 0.696328, -0.207141,
		-0.712042, 0.588990, -0.382214,
		35.315163, 38.168358, 42.982178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014557, 38.434177, 43.412502>,  <35.813591, 37.756065, 43.249729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014557, 38.434177, 43.412502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621384, 38.408531, 43.343525>,  <35.385479, 38.393143, 43.302139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.621384, 38.408531, 43.343525>,  <36.014557, 38.434177, 43.412502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621384, 38.408531, 43.343525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183165, 0.253099, 0.949943,
		-0.017257, 0.965314, -0.260522,
		-0.982931, -0.064112, -0.172444,
		35.326504, 38.389297, 43.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729893, 38.997894, 43.728359>,  <36.014557, 38.434177, 43.412502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729893, 38.997894, 43.728359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422462, 38.744083, 43.695713>,  <35.238003, 38.591797, 43.676125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422462, 38.744083, 43.695713>,  <35.729893, 38.997894, 43.728359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422462, 38.744083, 43.695713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271052, 0.207419, 0.939951,
		-0.579501, 0.744545, -0.331408,
		-0.768577, -0.634531, -0.081611,
		35.191891, 38.553722, 43.671230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102131, 39.224094, 44.127460>,  <35.729893, 38.997894, 43.728359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102131, 39.224094, 44.127460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015808, 38.833721, 44.114960>,  <34.964016, 38.599495, 44.107460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.015808, 38.833721, 44.114960>,  <35.102131, 39.224094, 44.127460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015808, 38.833721, 44.114960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551407, 0.095394, 0.828765,
		-0.805840, 0.196083, -0.558724,
		-0.215805, -0.975936, -0.031249,
		34.951065, 38.540939, 44.105583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362560, 39.150261, 44.162106>,  <35.102131, 39.224094, 44.127460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362560, 39.150261, 44.162106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.497036, 38.793911, 44.284302>,  <34.577721, 38.580101, 44.357620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.497036, 38.793911, 44.284302>,  <34.362560, 39.150261, 44.162106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497036, 38.793911, 44.284302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665913, 0.004526, 0.746015,
		-0.665987, -0.454232, -0.591722,
		0.336186, -0.890872, 0.305493,
		34.597893, 38.526649, 44.375950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.779129, 38.667694, 44.512321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109383, 38.477924, 44.634472>,  <34.307533, 38.364063, 44.707764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.109383, 38.477924, 44.634472>,  <33.779129, 38.667694, 44.512321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109383, 38.477924, 44.634472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433789, -0.187666, 0.881254,
		-0.360778, -0.860061, -0.360742,
		0.825631, -0.474423, 0.305379,
		34.357071, 38.335598, 44.726086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533985, 37.964176, 44.853271>,  <33.779129, 38.667694, 44.512321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533985, 37.964176, 44.853271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907249, 38.030895, 44.980637>,  <34.131207, 38.070927, 45.057056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907249, 38.030895, 44.980637>,  <33.533985, 37.964176, 44.853271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907249, 38.030895, 44.980637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258923, -0.302549, 0.917291,
		0.249338, -0.938426, -0.239139,
		0.933161, 0.166797, 0.318417,
		34.187199, 38.080933, 45.076160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612095, 37.493641, 45.371853>,  <33.533985, 37.964176, 44.853271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612095, 37.493641, 45.371853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928848, 37.732967, 45.420753>,  <34.118900, 37.876564, 45.450092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928848, 37.732967, 45.420753>,  <33.612095, 37.493641, 45.371853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928848, 37.732967, 45.420753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015291, -0.180700, 0.983419,
		0.610487, -0.780618, -0.133944,
		0.791879, 0.598317, 0.122251,
		34.166412, 37.912464, 45.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965927, 37.096550, 45.904541>,  <33.612095, 37.493641, 45.371853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965927, 37.096550, 45.904541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073383, 37.481091, 45.928654>,  <34.137856, 37.711815, 45.943119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073383, 37.481091, 45.928654>,  <33.965927, 37.096550, 45.904541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073383, 37.481091, 45.928654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141428, -0.101265, 0.984756,
		0.952802, -0.256018, -0.163166,
		0.268638, 0.961353, 0.060277,
		34.153976, 37.769497, 45.946735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446877, 37.103687, 46.391388>,  <33.965927, 37.096550, 45.904541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446877, 37.103687, 46.391388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327156, 37.484406, 46.364555>,  <34.255322, 37.712837, 46.348454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327156, 37.484406, 46.364555>,  <34.446877, 37.103687, 46.391388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327156, 37.484406, 46.364555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062990, 0.089864, 0.993960,
		0.952076, 0.293272, -0.086851,
		-0.299305, 0.951796, -0.067084,
		34.237366, 37.769943, 46.344429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949612, 37.496792, 46.703064>,  <34.446877, 37.103687, 46.391388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949612, 37.496792, 46.703064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611332, 37.708050, 46.733646>,  <34.408363, 37.834805, 46.751995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611332, 37.708050, 46.733646>,  <34.949612, 37.496792, 46.703064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611332, 37.708050, 46.733646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010239, -0.127183, 0.991827,
		0.533555, 0.839574, 0.102151,
		-0.845703, 0.528148, 0.076455,
		34.357620, 37.866493, 46.756584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080307, 37.862003, 47.282486>,  <34.949612, 37.496792, 46.703064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080307, 37.862003, 47.282486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 37.929249, 47.225353>,  <34.456074, 37.969597, 47.191074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 37.929249, 47.225353>,  <35.080307, 37.862003, 47.282486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690163, 37.929249, 47.225353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114834, 0.165906, 0.979433,
		0.188354, 0.971706, -0.142514,
		-0.975365, 0.168115, -0.142834,
		34.397552, 37.979683, 47.182503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957909, 38.426342, 47.709450>,  <35.080307, 37.862003, 47.282486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957909, 38.426342, 47.709450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604301, 38.248806, 47.650776>,  <34.392136, 38.142284, 47.615570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604301, 38.248806, 47.650776>,  <34.957909, 38.426342, 47.709450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604301, 38.248806, 47.650776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204572, 0.085184, 0.975138,
		-0.420310, 0.892048, -0.166101,
		-0.884019, -0.443840, -0.146684,
		34.339096, 38.115654, 47.606770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531406, 38.710903, 48.209045>,  <34.957909, 38.426342, 47.709450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531406, 38.710903, 48.209045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310940, 38.392082, 48.110313>,  <34.178661, 38.200790, 48.051075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310940, 38.392082, 48.110313>,  <34.531406, 38.710903, 48.209045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310940, 38.392082, 48.110313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227582, -0.141002, 0.963496,
		-0.802762, 0.587217, -0.103680,
		-0.551163, -0.797054, -0.246830,
		34.145592, 38.152966, 48.036263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861866, 38.799831, 48.527363>,  <34.531406, 38.710903, 48.209045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861866, 38.799831, 48.527363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915199, 38.406628, 48.476891>,  <33.947197, 38.170708, 48.446606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.915199, 38.406628, 48.476891>,  <33.861866, 38.799831, 48.527363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915199, 38.406628, 48.476891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227845, -0.154311, 0.961392,
		-0.964526, -0.099431, -0.244547,
		0.133328, -0.983006, -0.126183,
		33.955196, 38.111725, 48.439037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260441, 38.410976, 48.870167>,  <33.861866, 38.799831, 48.527363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260441, 38.410976, 48.870167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.568451, 38.156578, 48.849854>,  <33.753258, 38.003941, 48.837666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.568451, 38.156578, 48.849854>,  <33.260441, 38.410976, 48.870167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568451, 38.156578, 48.849854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170815, -0.282186, 0.944030,
		-0.614728, -0.718249, -0.325927,
		0.770021, -0.635995, -0.050780,
		33.799458, 37.965778, 48.834621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043449, 37.810608, 49.204422>,  <33.260441, 38.410976, 48.870167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043449, 37.810608, 49.204422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442944, 37.791424, 49.198517>,  <33.682640, 37.779911, 49.194973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442944, 37.791424, 49.198517>,  <33.043449, 37.810608, 49.204422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442944, 37.791424, 49.198517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007505, -0.433538, 0.901104,
		-0.049619, -0.899858, -0.433351,
		0.998740, -0.047964, -0.014758,
		33.742565, 37.777035, 49.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247864, 37.085968, 49.524212>,  <33.043449, 37.810608, 49.204422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247864, 37.085968, 49.524212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583164, 37.301506, 49.557640>,  <33.784344, 37.430828, 49.577698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583164, 37.301506, 49.557640>,  <33.247864, 37.085968, 49.524212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583164, 37.301506, 49.557640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134341, -0.352606, 0.926078,
		0.528479, -0.765058, -0.367961,
		0.838249, 0.538846, 0.083566,
		33.834641, 37.463161, 49.582710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730000, 36.649662, 49.907829>,  <33.247864, 37.085968, 49.524212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730000, 36.649662, 49.907829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898693, 37.011478, 49.932945>,  <33.999908, 37.228569, 49.948013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.898693, 37.011478, 49.932945>,  <33.730000, 36.649662, 49.907829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898693, 37.011478, 49.932945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315066, -0.211122, 0.925290,
		0.850221, -0.370443, -0.374028,
		0.421733, 0.904544, 0.062786,
		34.025211, 37.282841, 49.951782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387924, 36.572300, 50.109905>,  <33.730000, 36.649662, 49.907829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387924, 36.572300, 50.109905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.387680, 36.958431, 50.214325>,  <34.387531, 37.190109, 50.276978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.387680, 36.958431, 50.214325>,  <34.387924, 36.572300, 50.109905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387680, 36.958431, 50.214325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524164, -0.222003, 0.822172,
		0.851617, 0.137336, -0.505853,
		-0.000614, 0.965326, 0.261048,
		34.387497, 37.248028, 50.292641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945625, 36.699764, 50.553337>,  <34.387924, 36.572300, 50.109905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945625, 36.699764, 50.553337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778271, 37.059914, 50.601151>,  <34.677860, 37.276001, 50.629841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778271, 37.059914, 50.601151>,  <34.945625, 36.699764, 50.553337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778271, 37.059914, 50.601151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507267, 0.122461, 0.853044,
		0.753416, 0.417536, -0.507964,
		-0.418383, 0.900370, 0.119538,
		34.652756, 37.330025, 50.637012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463379, 37.216312, 50.535400>,  <34.945625, 36.699764, 50.553337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463379, 37.216312, 50.535400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156300, 37.357124, 50.749580>,  <34.972054, 37.441612, 50.878090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156300, 37.357124, 50.749580>,  <35.463379, 37.216312, 50.535400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156300, 37.357124, 50.749580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623044, 0.214654, 0.752156,
		0.149848, 0.911041, -0.384122,
		-0.767699, 0.352034, 0.535454,
		34.925991, 37.462734, 50.910217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743397, 37.828423, 50.969364>,  <35.463379, 37.216312, 50.535400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743397, 37.828423, 50.969364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418892, 37.654202, 51.125385>,  <35.224190, 37.549667, 51.218998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418892, 37.654202, 51.125385>,  <35.743397, 37.828423, 50.969364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418892, 37.654202, 51.125385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441038, -0.017901, 0.897310,
		-0.383846, 0.899984, 0.206619,
		-0.811263, -0.435555, 0.390056,
		35.175514, 37.523537, 51.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609024, 38.144077, 51.657307>,  <35.743397, 37.828423, 50.969364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609024, 38.144077, 51.657307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407707, 37.801437, 51.702805>,  <35.286919, 37.595856, 51.730103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407707, 37.801437, 51.702805>,  <35.609024, 38.144077, 51.657307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407707, 37.801437, 51.702805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396154, -0.111747, 0.911358,
		-0.767957, 0.503740, 0.395586,
		-0.503294, -0.856597, 0.113742,
		35.256718, 37.544456, 51.736927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437317, 38.228413, 52.241482>,  <35.609024, 38.144077, 51.657307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437317, 38.228413, 52.241482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375320, 37.835541, 52.198952>,  <35.338123, 37.599819, 52.173431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375320, 37.835541, 52.198952>,  <35.437317, 38.228413, 52.241482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375320, 37.835541, 52.198952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247526, -0.142806, 0.958299,
		-0.956403, 0.122213, 0.265249,
		-0.154996, -0.982176, -0.106329,
		35.328823, 37.540890, 52.167053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136063, 38.057709, 52.810200>,  <35.437317, 38.228413, 52.241482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136063, 38.057709, 52.810200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252106, 37.695850, 52.685337>,  <35.321732, 37.478733, 52.610420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.252106, 37.695850, 52.685337>,  <35.136063, 38.057709, 52.810200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252106, 37.695850, 52.685337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283738, -0.230212, 0.930857,
		-0.913963, -0.358623, 0.189897,
		0.290111, -0.904650, -0.312161,
		35.339138, 37.424454, 52.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859142, 37.490726, 53.098228>,  <35.136063, 38.057709, 52.810200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859142, 37.490726, 53.098228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.193989, 37.307072, 52.979279>,  <35.394897, 37.196880, 52.907909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.193989, 37.307072, 52.979279>,  <34.859142, 37.490726, 53.098228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193989, 37.307072, 52.979279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159103, -0.315767, 0.935402,
		-0.523379, -0.830353, -0.191283,
		0.837114, -0.459136, -0.297377,
		35.445122, 37.169331, 52.890064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940292, 36.697750, 53.305393>,  <34.859142, 37.490726, 53.098228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940292, 36.697750, 53.305393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286499, 36.893169, 53.261200>,  <35.494225, 37.010422, 53.234684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286499, 36.893169, 53.261200>,  <34.940292, 36.697750, 53.305393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286499, 36.893169, 53.261200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250583, -0.231351, 0.940045,
		0.433693, -0.841309, -0.322659,
		0.865516, 0.488544, -0.110483,
		35.546154, 37.039734, 53.228054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838837, 35.906322, 53.259357>,  <34.940292, 36.697750, 53.305393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838837, 35.906322, 53.259357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623482, 35.569698, 53.276867>,  <34.494267, 35.367725, 53.287373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623482, 35.569698, 53.276867>,  <34.838837, 35.906322, 53.259357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623482, 35.569698, 53.276867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108782, 0.017890, -0.993905,
		0.835645, -0.539871, -0.101178,
		-0.538390, -0.841558, 0.043778,
		34.461964, 35.317230, 53.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983971, 35.487926, 52.773338>,  <34.838837, 35.906322, 53.259357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983971, 35.487926, 52.773338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628082, 35.323185, 52.852100>,  <34.414547, 35.224342, 52.899357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628082, 35.323185, 52.852100>,  <34.983971, 35.487926, 52.773338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628082, 35.323185, 52.852100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206279, -0.022075, -0.978244,
		0.407237, -0.910984, -0.065315,
		-0.889723, -0.411850, 0.196906,
		34.361164, 35.199631, 52.911171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903950, 34.990932, 52.219177>,  <34.983971, 35.487926, 52.773338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903950, 34.990932, 52.219177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534874, 35.042412, 52.364544>,  <34.313427, 35.073299, 52.451763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534874, 35.042412, 52.364544>,  <34.903950, 34.990932, 52.219177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534874, 35.042412, 52.364544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362939, 0.028014, -0.931392,
		-0.130051, -0.991288, 0.020862,
		-0.922693, 0.128700, 0.363420,
		34.258064, 35.081020, 52.473572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551270, 34.436905, 51.926289>,  <34.903950, 34.990932, 52.219177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551270, 34.436905, 51.926289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266457, 34.706646, 52.004520>,  <34.095570, 34.868492, 52.051460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266457, 34.706646, 52.004520>,  <34.551270, 34.436905, 51.926289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266457, 34.706646, 52.004520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370469, -0.124205, -0.920503,
		-0.596456, -0.727884, 0.338266,
		-0.712034, 0.674357, 0.195576,
		34.052845, 34.908955, 52.063194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903042, 34.146210, 51.710423>,  <34.551270, 34.436905, 51.926289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903042, 34.146210, 51.710423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826351, 34.538754, 51.705200>,  <33.780338, 34.774281, 51.702065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826351, 34.538754, 51.705200>,  <33.903042, 34.146210, 51.710423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826351, 34.538754, 51.705200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467354, -0.102991, -0.878050,
		-0.863030, -0.162242, 0.478390,
		-0.191726, 0.981362, -0.013060,
		33.768833, 34.833160, 51.701283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111160, 34.146378, 51.441353>,  <33.903042, 34.146210, 51.710423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111160, 34.146378, 51.441353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262726, 34.514095, 51.398800>,  <33.353664, 34.734726, 51.373268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262726, 34.514095, 51.398800>,  <33.111160, 34.146378, 51.441353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262726, 34.514095, 51.398800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673154, 0.194904, -0.713355,
		-0.635051, 0.341912, 0.692680,
		0.378911, 0.919298, -0.106386,
		33.376400, 34.789886, 51.366882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571129, 34.593502, 51.416691>,  <33.111160, 34.146378, 51.441353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571129, 34.593502, 51.416691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864899, 34.790714, 51.230125>,  <33.041161, 34.909042, 51.118187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.864899, 34.790714, 51.230125>,  <32.571129, 34.593502, 51.416691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864899, 34.790714, 51.230125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610027, 0.178329, -0.772053,
		-0.297474, 0.851537, 0.431733,
		0.734422, 0.493035, -0.466412,
		33.085224, 34.938625, 51.090202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239738, 35.153278, 51.179554>,  <32.571129, 34.593502, 51.416691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239738, 35.153278, 51.179554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576466, 35.114483, 50.967167>,  <32.778503, 35.091206, 50.839733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576466, 35.114483, 50.967167>,  <32.239738, 35.153278, 51.179554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576466, 35.114483, 50.967167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477316, 0.325520, -0.816215,
		0.252005, 0.940548, 0.227735,
		0.841821, -0.096988, -0.530971,
		32.829014, 35.085388, 50.807877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090099, 35.678516, 50.611576>,  <32.239738, 35.153278, 51.179554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090099, 35.678516, 50.611576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426968, 35.484791, 50.516762>,  <32.629089, 35.368557, 50.459873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426968, 35.484791, 50.516762>,  <32.090099, 35.678516, 50.611576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426968, 35.484791, 50.516762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234721, 0.066490, -0.969786,
		0.485440, 0.872365, -0.057682,
		0.842172, -0.484312, -0.237040,
		32.679619, 35.339497, 50.445648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301224, 36.056263, 50.119522>,  <32.090099, 35.678516, 50.611576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301224, 36.056263, 50.119522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520706, 35.725346, 50.071346>,  <32.652397, 35.526794, 50.042442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520706, 35.725346, 50.071346>,  <32.301224, 36.056263, 50.119522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520706, 35.725346, 50.071346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005704, 0.140358, -0.990085,
		0.835996, 0.543952, 0.072296,
		0.548705, -0.827295, -0.120441,
		32.685318, 35.477158, 50.035213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871449, 36.118652, 49.748138>,  <32.301224, 36.056263, 50.119522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871449, 36.118652, 49.748138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798424, 35.728680, 49.697254>,  <32.754608, 35.494698, 49.666725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798424, 35.728680, 49.697254>,  <32.871449, 36.118652, 49.748138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798424, 35.728680, 49.697254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157522, 0.156717, -0.975001,
		0.970493, -0.157964, -0.182184,
		-0.182566, -0.974929, -0.127210,
		32.743652, 35.436199, 49.659092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320461, 35.826710, 49.262974>,  <32.871449, 36.118652, 49.748138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320461, 35.826710, 49.262974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.000076, 35.587234, 49.260571>,  <32.807846, 35.443550, 49.259129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.000076, 35.587234, 49.260571>,  <33.320461, 35.826710, 49.262974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000076, 35.587234, 49.260571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187654, 0.260560, -0.947045,
		0.568548, -0.757419, -0.321044,
		-0.800961, -0.598686, -0.006009,
		32.759789, 35.407627, 49.258766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353706, 35.408504, 48.673660>,  <33.320461, 35.826710, 49.262974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353706, 35.408504, 48.673660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971970, 35.378025, 48.789188>,  <32.742928, 35.359737, 48.858505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971970, 35.378025, 48.789188>,  <33.353706, 35.408504, 48.673660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971970, 35.378025, 48.789188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298521, 0.277266, -0.913241,
		-0.010490, -0.957767, -0.287355,
		-0.954345, -0.076202, 0.288822,
		32.685665, 35.355164, 48.875835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041859, 35.124569, 48.048046>,  <33.353706, 35.408504, 48.673660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041859, 35.124569, 48.048046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738991, 35.298985, 48.242596>,  <32.557270, 35.403633, 48.359325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.738991, 35.298985, 48.242596>,  <33.041859, 35.124569, 48.048046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738991, 35.298985, 48.242596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288185, 0.445212, -0.847782,
		-0.586208, -0.782082, -0.211441,
		-0.757172, 0.436043, 0.486372,
		32.511841, 35.429798, 48.388508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538788, 35.040878, 47.627216>,  <33.041859, 35.124569, 48.048046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538788, 35.040878, 47.627216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415409, 35.345844, 47.854752>,  <32.341381, 35.528824, 47.991272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415409, 35.345844, 47.854752>,  <32.538788, 35.040878, 47.627216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415409, 35.345844, 47.854752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354136, 0.462975, -0.812552,
		-0.882864, -0.452075, 0.127198,
		-0.308445, 0.762419, 0.568840,
		32.322876, 35.574570, 48.025402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930748, 35.323608, 47.306789>,  <32.538788, 35.040878, 47.627216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930748, 35.323608, 47.306789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031467, 35.614162, 47.562588>,  <32.091900, 35.788494, 47.716068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031467, 35.614162, 47.562588>,  <31.930748, 35.323608, 47.306789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031467, 35.614162, 47.562588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219313, 0.686428, -0.693338,
		-0.942603, 0.034330, 0.332146,
		0.251797, 0.726387, 0.639500,
		32.107006, 35.832077, 47.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276310, 35.688210, 47.404434>,  <31.930748, 35.323608, 47.306789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276310, 35.688210, 47.404434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.607924, 35.904663, 47.460831>,  <31.806892, 36.034534, 47.494667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.607924, 35.904663, 47.460831>,  <31.276310, 35.688210, 47.404434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607924, 35.904663, 47.460831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348809, 0.697483, -0.625979,
		-0.437074, 0.469781, 0.766989,
		0.829035, 0.541131, 0.140988,
		31.856634, 36.067001, 47.503128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035891, 36.293789, 47.459728>,  <31.276310, 35.688210, 47.404434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035891, 36.293789, 47.459728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.423794, 36.336216, 47.371799>,  <31.656536, 36.361671, 47.319042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.423794, 36.336216, 47.371799>,  <31.035891, 36.293789, 47.459728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423794, 36.336216, 47.371799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238200, 0.607673, -0.757624,
		0.053225, 0.787073, 0.614559,
		0.969757, 0.106063, -0.219824,
		31.714722, 36.368034, 47.305851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013817, 36.970032, 47.238464>,  <31.035891, 36.293789, 47.459728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013817, 36.970032, 47.238464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366758, 36.846672, 47.096287>,  <31.578524, 36.772655, 47.010979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366758, 36.846672, 47.096287>,  <31.013817, 36.970032, 47.238464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366758, 36.846672, 47.096287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134927, 0.557812, -0.818927,
		0.450832, 0.770541, 0.450574,
		0.882352, -0.308404, -0.355446,
		31.631464, 36.754150, 46.989655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349901, 37.599781, 47.037956>,  <31.013817, 36.970032, 47.238464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349901, 37.599781, 47.037956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520531, 37.297379, 46.839367>,  <31.622908, 37.115936, 46.720211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.520531, 37.297379, 46.839367>,  <31.349901, 37.599781, 47.037956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520531, 37.297379, 46.839367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096466, 0.507764, -0.856079,
		0.899294, 0.413073, 0.143669,
		0.426573, -0.756007, -0.496476,
		31.648502, 37.070576, 46.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812721, 37.975277, 46.603764>,  <31.349901, 37.599781, 47.037956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812721, 37.975277, 46.603764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780439, 37.609623, 46.444847>,  <31.761070, 37.390228, 46.349499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780439, 37.609623, 46.444847>,  <31.812721, 37.975277, 46.603764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780439, 37.609623, 46.444847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079672, 0.403229, -0.911624,
		0.993549, -0.041919, -0.105373,
		-0.080704, -0.914139, -0.397288,
		31.756227, 37.335381, 46.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.219883, 41.385464, 29.887989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892834, 41.208031, 29.741167>,  <42.696606, 41.101570, 29.653074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.892834, 41.208031, 29.741167>,  <43.219883, 41.385464, 29.887989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892834, 41.208031, 29.741167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280792, -0.249351, 0.926812,
		-0.502642, 0.860848, 0.079321,
		-0.817623, -0.443582, -0.367053,
		42.647549, 41.074955, 29.631052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688873, 41.658131, 30.183699>,  <43.219883, 41.385464, 29.887989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688873, 41.658131, 30.183699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539639, 41.304108, 30.072359>,  <42.450100, 41.091694, 30.005556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539639, 41.304108, 30.072359>,  <42.688873, 41.658131, 30.183699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539639, 41.304108, 30.072359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205283, -0.213828, 0.955058,
		-0.904802, 0.413457, -0.101912,
		-0.373084, -0.885060, -0.278348,
		42.427711, 41.038589, 29.988855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074154, 41.410110, 30.658033>,  <42.688873, 41.658131, 30.183699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074154, 41.410110, 30.658033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224377, 41.077118, 30.495096>,  <42.314510, 40.877323, 30.397333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224377, 41.077118, 30.495096>,  <42.074154, 41.410110, 30.658033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224377, 41.077118, 30.495096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019774, -0.446615, 0.894508,
		-0.926590, -0.327880, -0.184189,
		0.375553, -0.832484, -0.407345,
		42.337044, 40.827374, 30.372892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661770, 40.815460, 31.023542>,  <42.074154, 41.410110, 30.658033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661770, 40.815460, 31.023542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997055, 40.653271, 30.877668>,  <42.198227, 40.555958, 30.790144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.997055, 40.653271, 30.877668>,  <41.661770, 40.815460, 31.023542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997055, 40.653271, 30.877668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188088, -0.412743, 0.891216,
		-0.511884, -0.815620, -0.269702,
		0.838211, -0.405472, -0.364685,
		42.248520, 40.531631, 30.768263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574612, 40.259300, 31.289299>,  <41.661770, 40.815460, 31.023542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574612, 40.259300, 31.289299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.964390, 40.273510, 31.200586>,  <42.198257, 40.282036, 31.147360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.964390, 40.273510, 31.200586>,  <41.574612, 40.259300, 31.289299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964390, 40.273510, 31.200586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200878, -0.579553, 0.789789,
		-0.100479, -0.814160, -0.571881,
		0.974450, 0.035521, -0.221779,
		42.256725, 40.284164, 31.134052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811695, 39.618607, 31.335556>,  <41.574612, 40.259300, 31.289299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811695, 39.618607, 31.335556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.136909, 39.845573, 31.387722>,  <42.332039, 39.981754, 31.419022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.136909, 39.845573, 31.387722>,  <41.811695, 39.618607, 31.335556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136909, 39.845573, 31.387722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217491, -0.503781, 0.836004,
		0.540062, -0.651339, -0.533001,
		0.813038, 0.567417, 0.130413,
		42.380821, 40.015797, 31.426846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328632, 39.101822, 31.511446>,  <41.811695, 39.618607, 31.335556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328632, 39.101822, 31.511446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521252, 39.426899, 31.642681>,  <42.636822, 39.621944, 31.721422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521252, 39.426899, 31.642681>,  <42.328632, 39.101822, 31.511446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521252, 39.426899, 31.642681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205808, -0.468736, 0.859028,
		0.851915, -0.346137, -0.392976,
		0.481544, 0.812697, 0.328086,
		42.665714, 39.670708, 31.741106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983711, 38.892746, 31.804747>,  <42.328632, 39.101822, 31.511446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983711, 38.892746, 31.804747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918003, 39.254375, 31.962563>,  <42.878578, 39.471355, 32.057251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918003, 39.254375, 31.962563>,  <42.983711, 38.892746, 31.804747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918003, 39.254375, 31.962563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231357, -0.353503, 0.906372,
		0.958900, 0.240168, -0.151095,
		-0.164268, 0.904077, 0.394538,
		42.868721, 39.525600, 32.080925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559994, 38.989941, 32.217602>,  <42.983711, 38.892746, 31.804747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559994, 38.989941, 32.217602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275360, 39.232040, 32.360332>,  <43.104580, 39.377300, 32.445972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275360, 39.232040, 32.360332>,  <43.559994, 38.989941, 32.217602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275360, 39.232040, 32.360332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135781, -0.379826, 0.915039,
		0.689360, 0.699573, 0.188095,
		-0.711580, 0.605252, 0.356826,
		43.061886, 39.413616, 32.467381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822010, 39.293713, 32.743301>,  <43.559994, 38.989941, 32.217602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822010, 39.293713, 32.743301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432072, 39.342224, 32.818100>,  <43.198109, 39.371330, 32.862980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432072, 39.342224, 32.818100>,  <43.822010, 39.293713, 32.743301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432072, 39.342224, 32.818100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137570, -0.332712, 0.932940,
		0.175362, 0.935197, 0.307659,
		-0.974845, 0.121278, 0.187001,
		43.139618, 39.378609, 32.874199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762562, 39.646629, 33.463665>,  <43.822010, 39.293713, 32.743301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762562, 39.646629, 33.463665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418011, 39.467121, 33.368465>,  <43.211281, 39.359417, 33.311348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418011, 39.467121, 33.368465>,  <43.762562, 39.646629, 33.463665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418011, 39.467121, 33.368465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016181, -0.492527, 0.870147,
		-0.507713, 0.745671, 0.431512,
		-0.861374, -0.448767, -0.237996,
		43.159599, 39.332493, 33.297066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327187, 39.581493, 34.117924>,  <43.762562, 39.646629, 33.463665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327187, 39.581493, 34.117924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171314, 39.304485, 33.875088>,  <43.077789, 39.138279, 33.729385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.171314, 39.304485, 33.875088>,  <43.327187, 39.581493, 34.117924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171314, 39.304485, 33.875088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142494, -0.605927, 0.782654,
		-0.909860, 0.391492, 0.137438,
		-0.389680, -0.692522, -0.607094,
		43.054409, 39.096729, 33.692959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605541, 39.433304, 34.375118>,  <43.327187, 39.581493, 34.117924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605541, 39.433304, 34.375118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680496, 39.107895, 34.154911>,  <42.725468, 38.912651, 34.022785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680496, 39.107895, 34.154911>,  <42.605541, 39.433304, 34.375118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680496, 39.107895, 34.154911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310321, -0.580772, 0.752599,
		-0.931981, 0.029812, -0.361280,
		0.187385, -0.813521, -0.550519,
		42.736713, 38.863838, 33.989754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960045, 39.076637, 34.325550>,  <42.605541, 39.433304, 34.375118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960045, 39.076637, 34.325550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240623, 38.803074, 34.245308>,  <42.408970, 38.638935, 34.197163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240623, 38.803074, 34.245308>,  <41.960045, 39.076637, 34.325550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240623, 38.803074, 34.245308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489901, -0.667094, 0.561234,
		-0.517652, -0.295402, -0.802978,
		0.701451, -0.683904, -0.200605,
		42.451057, 38.597904, 34.185127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615265, 38.269253, 34.325745>,  <41.960045, 39.076637, 34.325550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615265, 38.269253, 34.325745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.993404, 38.145744, 34.283852>,  <42.220287, 38.071640, 34.258717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.993404, 38.145744, 34.283852>,  <41.615265, 38.269253, 34.325745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993404, 38.145744, 34.283852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253848, -0.898595, 0.357893,
		-0.204619, -0.311749, -0.927870,
		0.945353, -0.308770, -0.104733,
		42.277012, 38.053112, 34.252430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622707, 37.508434, 34.068394>,  <41.615265, 38.269253, 34.325745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622707, 37.508434, 34.068394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975208, 37.578415, 34.244026>,  <42.186707, 37.620403, 34.349407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.975208, 37.578415, 34.244026>,  <41.622707, 37.508434, 34.068394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975208, 37.578415, 34.244026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131210, -0.801907, 0.582863,
		0.454077, -0.571259, -0.683723,
		0.881248, 0.174953, 0.439083,
		42.239582, 37.630901, 34.375751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888691, 36.874382, 34.140568>,  <41.622707, 37.508434, 34.068394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888691, 36.874382, 34.140568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.085861, 37.105324, 34.400936>,  <42.204163, 37.243889, 34.557156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.085861, 37.105324, 34.400936>,  <41.888691, 36.874382, 34.140568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085861, 37.105324, 34.400936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057237, -0.724981, 0.686387,
		0.868188, -0.375593, -0.324314,
		0.492923, 0.577350, 0.650918,
		42.233738, 37.278530, 34.596210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403793, 36.365334, 34.407551>,  <41.888691, 36.874382, 34.140568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403793, 36.365334, 34.407551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.427872, 36.672554, 34.662575>,  <42.442318, 36.856884, 34.815590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.427872, 36.672554, 34.662575>,  <42.403793, 36.365334, 34.407551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427872, 36.672554, 34.662575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135004, -0.626583, 0.767572,
		0.989015, -0.132277, 0.065972,
		0.060195, 0.768047, 0.637558,
		42.445930, 36.902969, 34.853844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767879, 36.043934, 34.814140>,  <42.403793, 36.365334, 34.407551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767879, 36.043934, 34.814140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609402, 36.359421, 35.002163>,  <42.514313, 36.548714, 35.114979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609402, 36.359421, 35.002163>,  <42.767879, 36.043934, 34.814140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609402, 36.359421, 35.002163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187218, -0.570597, 0.799606,
		0.898875, 0.228799, 0.373731,
		-0.396199, 0.788715, 0.470060,
		42.490543, 36.596035, 35.143181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150341, 36.221703, 35.370281>,  <42.767879, 36.043934, 34.814140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150341, 36.221703, 35.370281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.766937, 36.319893, 35.428253>,  <42.536896, 36.378807, 35.463036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.766937, 36.319893, 35.428253>,  <43.150341, 36.221703, 35.370281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766937, 36.319893, 35.428253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044561, -0.631169, 0.774364,
		0.281564, 0.735776, 0.615919,
		-0.958507, 0.245479, 0.144927,
		42.479385, 36.393536, 35.471733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765938, 36.518967, 35.245102>,  <43.150341, 36.221703, 35.370281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765938, 36.518967, 35.245102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784977, 36.661343, 34.871784>,  <43.796402, 36.746769, 34.647793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784977, 36.661343, 34.871784>,  <43.765938, 36.518967, 35.245102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784977, 36.661343, 34.871784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154335, -0.920513, -0.358938,
		-0.986871, 0.161126, 0.011119,
		0.047599, 0.355942, -0.933295,
		43.799255, 36.768124, 34.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402767, 36.213085, 34.913715>,  <43.765938, 36.518967, 35.245102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402767, 36.213085, 34.913715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797306, 36.185513, 34.853886>,  <45.034027, 36.168968, 34.817989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.797306, 36.185513, 34.853886>,  <44.402767, 36.213085, 34.913715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797306, 36.185513, 34.853886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116163, 0.352614, -0.928531,
		0.116751, 0.933226, 0.339791,
		0.986344, -0.068935, -0.149574,
		45.093208, 36.164833, 34.809013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740124, 36.872547, 34.815483>,  <44.402767, 36.213085, 34.913715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740124, 36.872547, 34.815483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952415, 36.605377, 34.606792>,  <45.079792, 36.445076, 34.481579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952415, 36.605377, 34.606792>,  <44.740124, 36.872547, 34.815483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952415, 36.605377, 34.606792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178281, 0.513821, -0.839169,
		0.828577, 0.538387, 0.153623,
		0.530732, -0.667928, -0.521724,
		45.111633, 36.404999, 34.450275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202236, 37.294254, 34.372803>,  <44.740124, 36.872547, 34.815483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202236, 37.294254, 34.372803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.158474, 36.926514, 34.221638>,  <45.132217, 36.705868, 34.130939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.158474, 36.926514, 34.221638>,  <45.202236, 37.294254, 34.372803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158474, 36.926514, 34.221638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001580, 0.380355, -0.924839,
		0.993996, -0.100587, -0.043066,
		-0.109408, -0.919354, -0.377913,
		45.125652, 36.650707, 34.108265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665279, 37.314716, 33.942871>,  <45.202236, 37.294254, 34.372803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665279, 37.314716, 33.942871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.448776, 37.001152, 33.821201>,  <45.318874, 36.813015, 33.748199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.448776, 37.001152, 33.821201>,  <45.665279, 37.314716, 33.942871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448776, 37.001152, 33.821201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133778, 0.276854, -0.951554,
		0.830144, -0.555732, -0.044981,
		-0.541262, -0.783909, -0.304174,
		45.286396, 36.765980, 33.729950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044338, 36.946472, 33.380848>,  <45.665279, 37.314716, 33.942871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044338, 36.946472, 33.380848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.661991, 36.847206, 33.317944>,  <45.432583, 36.787647, 33.280201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.661991, 36.847206, 33.317944>,  <46.044338, 36.946472, 33.380848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661991, 36.847206, 33.317944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129003, 0.126391, -0.983557,
		0.263963, -0.960436, -0.088799,
		-0.955867, -0.248167, -0.157262,
		45.375233, 36.772755, 33.270763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982147, 36.816742, 32.679710>,  <46.044338, 36.946472, 33.380848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982147, 36.816742, 32.679710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590965, 36.832275, 32.761772>,  <45.356255, 36.841595, 32.811008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590965, 36.832275, 32.761772>,  <45.982147, 36.816742, 32.679710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590965, 36.832275, 32.761772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179672, 0.344049, -0.921601,
		-0.106369, -0.938149, -0.329489,
		-0.977959, 0.038830, 0.205155,
		45.297577, 36.843925, 32.823318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548016, 36.437145, 32.057850>,  <45.982147, 36.816742, 32.679710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548016, 36.437145, 32.057850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308769, 36.704742, 32.234356>,  <45.165222, 36.865299, 32.340260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308769, 36.704742, 32.234356>,  <45.548016, 36.437145, 32.057850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308769, 36.704742, 32.234356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291195, 0.331560, -0.897370,
		-0.746638, -0.665221, -0.003503,
		-0.598111, 0.668990, 0.441265,
		45.129337, 36.905441, 32.366734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984394, 36.519863, 31.620789>,  <45.548016, 36.437145, 32.057850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984394, 36.519863, 31.620789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937424, 36.845531, 31.848240>,  <44.909241, 37.040932, 31.984711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937424, 36.845531, 31.848240>,  <44.984394, 36.519863, 31.620789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937424, 36.845531, 31.848240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223533, 0.536225, -0.813938,
		-0.967597, -0.222685, 0.119027,
		-0.117427, 0.814171, 0.568627,
		44.902195, 37.089783, 32.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352047, 36.825745, 31.420988>,  <44.984394, 36.519863, 31.620789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352047, 36.825745, 31.420988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566330, 37.112370, 31.599676>,  <44.694901, 37.284344, 31.706888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.566330, 37.112370, 31.599676>,  <44.352047, 36.825745, 31.420988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566330, 37.112370, 31.599676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173112, 0.610995, -0.772475,
		-0.826471, 0.336485, 0.451358,
		0.535703, 0.716563, 0.446720,
		44.727039, 37.327339, 31.733692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853687, 37.256580, 31.436653>,  <44.352047, 36.825745, 31.420988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853687, 37.256580, 31.436653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.212799, 37.432747, 31.434423>,  <44.428265, 37.538445, 31.433086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.212799, 37.432747, 31.434423>,  <43.853687, 37.256580, 31.436653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212799, 37.432747, 31.434423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312871, 0.628778, -0.711864,
		-0.310010, 0.640839, 0.702295,
		0.897778, 0.440412, -0.005572,
		44.482132, 37.564869, 31.432753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760479, 37.999325, 31.465452>,  <43.853687, 37.256580, 31.436653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760479, 37.999325, 31.465452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136597, 37.969727, 31.332561>,  <44.362267, 37.951965, 31.252827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136597, 37.969727, 31.332561>,  <43.760479, 37.999325, 31.465452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136597, 37.969727, 31.332561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169816, 0.743929, -0.646322,
		0.294982, 0.664149, 0.686944,
		0.940292, -0.074000, -0.332228,
		44.418686, 37.947525, 31.232893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945873, 38.761673, 31.299330>,  <43.760479, 37.999325, 31.465452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945873, 38.761673, 31.299330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246460, 38.558071, 31.131420>,  <44.426811, 38.435909, 31.030674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.246460, 38.558071, 31.131420>,  <43.945873, 38.761673, 31.299330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246460, 38.558071, 31.131420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066540, 0.574533, -0.815772,
		0.656405, 0.640959, 0.397875,
		0.751468, -0.509003, -0.419776,
		44.471901, 38.405369, 31.005487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232910, 39.247730, 30.962263>,  <43.945873, 38.761673, 31.299330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232910, 39.247730, 30.962263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396835, 38.923107, 30.795685>,  <44.495190, 38.728333, 30.695738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396835, 38.923107, 30.795685>,  <44.232910, 39.247730, 30.962263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396835, 38.923107, 30.795685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196748, 0.524442, -0.828402,
		0.890700, 0.257552, 0.374594,
		0.409809, -0.811559, -0.416448,
		44.519779, 38.679638, 30.670750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979889, 39.384041, 30.704960>,  <44.232910, 39.247730, 30.962263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979889, 39.384041, 30.704960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801842, 39.091709, 30.497978>,  <44.695015, 38.916309, 30.373789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801842, 39.091709, 30.497978>,  <44.979889, 39.384041, 30.704960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801842, 39.091709, 30.497978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289059, 0.429653, -0.855478,
		0.847535, -0.530363, 0.020007,
		-0.445117, -0.730831, -0.517452,
		44.668308, 38.872459, 30.342743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332710, 39.415100, 30.156672>,  <44.979889, 39.384041, 30.704960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332710, 39.415100, 30.156672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.038162, 39.178719, 30.024897>,  <44.861435, 39.036888, 29.945831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.038162, 39.178719, 30.024897>,  <45.332710, 39.415100, 30.156672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038162, 39.178719, 30.024897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139782, 0.343533, -0.928680,
		0.661980, -0.729903, -0.170363,
		-0.736371, -0.590954, -0.329440,
		44.817249, 39.001434, 29.926065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632660, 39.087860, 29.570482>,  <45.332710, 39.415100, 30.156672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632660, 39.087860, 29.570482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234798, 39.054081, 29.546715>,  <44.996082, 39.033813, 29.532455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234798, 39.054081, 29.546715>,  <45.632660, 39.087860, 29.570482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234798, 39.054081, 29.546715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030040, 0.313881, -0.948987,
		0.098790, -0.945699, -0.309667,
		-0.994655, -0.084448, -0.059417,
		44.936401, 39.028748, 29.528889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579578, 38.777439, 29.011463>,  <45.632660, 39.087860, 29.570482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579578, 38.777439, 29.011463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.232414, 38.967541, 29.069233>,  <45.024117, 39.081600, 29.103895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.232414, 38.967541, 29.069233>,  <45.579578, 38.777439, 29.011463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232414, 38.967541, 29.069233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009233, 0.275273, -0.961322,
		-0.496629, -0.835678, -0.234525,
		-0.867913, 0.475255, 0.144424,
		44.972038, 39.110119, 29.112560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199715, 38.629673, 28.435707>,  <45.579578, 38.777439, 29.011463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199715, 38.629673, 28.435707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020931, 38.960098, 28.573019>,  <44.913662, 39.158356, 28.655405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020931, 38.960098, 28.573019>,  <45.199715, 38.629673, 28.435707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020931, 38.960098, 28.573019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134169, 0.317497, -0.938720,
		-0.884436, -0.465626, -0.031076,
		-0.446959, 0.826068, 0.343278,
		44.886845, 39.207920, 28.676003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692398, 38.684460, 27.938244>,  <45.199715, 38.629673, 28.435707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692398, 38.684460, 27.938244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715557, 39.035732, 28.128168>,  <44.729454, 39.246494, 28.242123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.715557, 39.035732, 28.128168>,  <44.692398, 38.684460, 27.938244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715557, 39.035732, 28.128168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127985, 0.478215, -0.868868,
		-0.990084, -0.010459, 0.140084,
		0.057902, 0.878181, 0.474811,
		44.732929, 39.299187, 28.270611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025177, 39.060913, 27.805510>,  <44.692398, 38.684460, 27.938244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025177, 39.060913, 27.805510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.321087, 39.319923, 27.878660>,  <44.498631, 39.475330, 27.922550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.321087, 39.319923, 27.878660>,  <44.025177, 39.060913, 27.805510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321087, 39.319923, 27.878660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244797, 0.512172, -0.823258,
		-0.626747, 0.564257, 0.537404,
		0.739772, 0.647529, 0.182874,
		44.543018, 39.514183, 27.933523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796097, 39.721416, 27.380512>,  <44.025177, 39.060913, 27.805510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796097, 39.721416, 27.380512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186203, 39.781391, 27.445477>,  <44.420265, 39.817375, 27.484455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186203, 39.781391, 27.445477>,  <43.796097, 39.721416, 27.380512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186203, 39.781391, 27.445477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067689, 0.496862, -0.865186,
		-0.210420, 0.854779, 0.474423,
		0.975265, 0.149939, 0.162408,
		44.478783, 39.826374, 27.494200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.879784, 39.392616, 42.402283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808472, 39.003288, 42.344513>,  <35.765686, 38.769691, 42.309849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808472, 39.003288, 42.344513>,  <35.879784, 39.392616, 42.402283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808472, 39.003288, 42.344513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409095, 0.060175, -0.910505,
		0.894907, -0.221408, 0.387454,
		-0.178278, -0.973323, -0.144428,
		35.754990, 38.711292, 42.301186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516788, 39.095795, 42.086639>,  <35.879784, 39.392616, 42.402283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516788, 39.095795, 42.086639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201714, 38.871517, 41.984524>,  <36.012669, 38.736950, 41.923256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201714, 38.871517, 41.984524>,  <36.516788, 39.095795, 42.086639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201714, 38.871517, 41.984524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402799, -0.155165, -0.902040,
		0.466160, -0.813353, 0.348070,
		-0.787685, -0.560697, -0.255286,
		35.965408, 38.703308, 41.907940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781487, 38.371960, 41.783867>,  <36.516788, 39.095795, 42.086639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781487, 38.371960, 41.783867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407249, 38.434341, 41.657162>,  <36.182705, 38.471771, 41.581139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407249, 38.434341, 41.657162>,  <36.781487, 38.371960, 41.783867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407249, 38.434341, 41.657162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283669, -0.202162, -0.937370,
		-0.210249, -0.966851, 0.144894,
		-0.935589, 0.155979, -0.316770,
		36.126572, 38.481129, 41.562130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717815, 37.916332, 41.264648>,  <36.781487, 38.371960, 41.783867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717815, 37.916332, 41.264648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411209, 38.165554, 41.202351>,  <36.227245, 38.315086, 41.164974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411209, 38.165554, 41.202351>,  <36.717815, 37.916332, 41.264648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411209, 38.165554, 41.202351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113058, -0.107804, -0.987723,
		-0.632191, -0.774716, 0.012193,
		-0.766519, 0.623051, -0.155740,
		36.181252, 38.352470, 41.155628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237103, 37.538742, 40.928150>,  <36.717815, 37.916332, 41.264648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237103, 37.538742, 40.928150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141373, 37.921532, 40.862507>,  <36.083935, 38.151203, 40.823120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141373, 37.921532, 40.862507>,  <36.237103, 37.538742, 40.928150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141373, 37.921532, 40.862507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097931, -0.191952, -0.976506,
		-0.965988, -0.217630, 0.139656,
		-0.239325, 0.956970, -0.164111,
		36.069576, 38.208622, 40.813274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632145, 37.492233, 40.519234>,  <36.237103, 37.538742, 40.928150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632145, 37.492233, 40.519234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787220, 37.857342, 40.467773>,  <35.880264, 38.076408, 40.436897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787220, 37.857342, 40.467773>,  <35.632145, 37.492233, 40.519234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787220, 37.857342, 40.467773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069078, -0.110400, -0.991484,
		-0.919201, 0.393268, 0.020252,
		0.387684, 0.912771, -0.128646,
		35.903526, 38.131172, 40.429180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179821, 37.826374, 40.037514>,  <35.632145, 37.492233, 40.519234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179821, 37.826374, 40.037514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527664, 38.022289, 40.012569>,  <35.736370, 38.139839, 39.997604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527664, 38.022289, 40.012569>,  <35.179821, 37.826374, 40.037514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527664, 38.022289, 40.012569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099733, 0.050555, -0.993729,
		-0.483563, 0.870375, 0.092811,
		0.869609, 0.489787, -0.062358,
		35.788548, 38.169224, 39.993862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016552, 38.423710, 39.701893>,  <35.179821, 37.826374, 40.037514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016552, 38.423710, 39.701893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414719, 38.414841, 39.664680>,  <35.653618, 38.409519, 39.642353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414719, 38.414841, 39.664680>,  <35.016552, 38.423710, 39.701893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414719, 38.414841, 39.664680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092210, 0.035522, -0.995106,
		0.025370, 0.999123, 0.033314,
		0.995416, -0.022174, -0.093030,
		35.713345, 38.408188, 39.636772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156940, 38.912258, 39.250366>,  <35.016552, 38.423710, 39.701893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156940, 38.912258, 39.250366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498390, 38.703991, 39.256290>,  <35.703262, 38.579029, 39.259846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498390, 38.703991, 39.256290>,  <35.156940, 38.912258, 39.250366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498390, 38.703991, 39.256290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119643, 0.168315, -0.978446,
		0.506956, 0.837001, 0.205973,
		0.853628, -0.520672, 0.014813,
		35.754478, 38.547791, 39.260735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702976, 39.364922, 38.838879>,  <35.156940, 38.912258, 39.250366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702976, 39.364922, 38.838879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847359, 38.991894, 38.836975>,  <35.933987, 38.768078, 38.835831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847359, 38.991894, 38.836975>,  <35.702976, 39.364922, 38.838879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847359, 38.991894, 38.836975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104363, 0.045468, -0.993499,
		0.926727, 0.358109, 0.113738,
		0.360952, -0.932572, -0.004764,
		35.955643, 38.712124, 38.835545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435524, 39.299831, 38.561928>,  <35.702976, 39.364922, 38.838879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435524, 39.299831, 38.561928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343079, 38.914062, 38.510590>,  <36.287613, 38.682602, 38.479786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343079, 38.914062, 38.510590>,  <36.435524, 39.299831, 38.561928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343079, 38.914062, 38.510590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219262, 0.076892, -0.972631,
		0.947898, -0.252928, 0.193691,
		-0.231112, -0.964425, -0.128343,
		36.273746, 38.624737, 38.472088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973595, 38.972118, 38.189907>,  <36.435524, 39.299831, 38.561928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973595, 38.972118, 38.189907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642982, 38.755596, 38.128147>,  <36.444614, 38.625683, 38.091091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642982, 38.755596, 38.128147>,  <36.973595, 38.972118, 38.189907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642982, 38.755596, 38.128147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204785, -0.033658, -0.978228,
		0.524324, -0.840151, 0.138671,
		-0.826527, -0.541307, -0.154403,
		36.395023, 38.593204, 38.081825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114990, 38.253628, 37.881767>,  <36.973595, 38.972118, 38.189907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114990, 38.253628, 37.881767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751419, 38.354347, 37.748837>,  <36.533276, 38.414780, 37.669079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751419, 38.354347, 37.748837>,  <37.114990, 38.253628, 37.881767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751419, 38.354347, 37.748837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309238, -0.127522, -0.942396,
		-0.279673, -0.959341, 0.038043,
		-0.908931, 0.251798, -0.332329,
		36.478741, 38.429886, 37.649139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848118, 37.672371, 37.545643>,  <37.114990, 38.253628, 37.881767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848118, 37.672371, 37.545643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629017, 37.965508, 37.384193>,  <36.497555, 38.141388, 37.287323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629017, 37.965508, 37.384193>,  <36.848118, 37.672371, 37.545643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629017, 37.965508, 37.384193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143059, -0.393290, -0.908217,
		-0.824319, -0.555220, 0.110586,
		-0.547753, 0.732839, -0.403625,
		36.464691, 38.185360, 37.263107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448879, 37.783119, 37.307934>,  <36.848118, 37.672371, 37.545643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448879, 37.783119, 37.307934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842827, 37.734047, 37.356895>,  <38.079197, 37.704605, 37.386272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842827, 37.734047, 37.356895>,  <37.448879, 37.783119, 37.307934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842827, 37.734047, 37.356895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170598, -0.810543, 0.560283,
		0.030477, -0.572687, -0.819207,
		0.984869, -0.122679, 0.122402,
		38.138287, 37.697243, 37.393616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493515, 37.025589, 37.349751>,  <37.448879, 37.783119, 37.307934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493515, 37.025589, 37.349751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832226, 37.164471, 37.510956>,  <38.035454, 37.247799, 37.607677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832226, 37.164471, 37.510956>,  <37.493515, 37.025589, 37.349751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832226, 37.164471, 37.510956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077347, -0.669199, 0.739047,
		0.526295, -0.656979, -0.539807,
		0.846777, 0.347205, 0.403011,
		38.086258, 37.268631, 37.631859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887367, 36.435600, 37.587437>,  <37.493515, 37.025589, 37.349751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887367, 36.435600, 37.587437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032055, 36.741501, 37.800724>,  <38.118866, 36.925041, 37.928696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032055, 36.741501, 37.800724>,  <37.887367, 36.435600, 37.587437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032055, 36.741501, 37.800724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025115, -0.579733, 0.814419,
		0.931949, -0.281197, -0.228906,
		0.361717, 0.764747, 0.533220,
		38.140572, 36.970924, 37.960690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490234, 36.209301, 38.008358>,  <37.887367, 36.435600, 37.587437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490234, 36.209301, 38.008358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349628, 36.531879, 38.198551>,  <38.265263, 36.725426, 38.312668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349628, 36.531879, 38.198551>,  <38.490234, 36.209301, 38.008358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349628, 36.531879, 38.198551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140613, -0.456652, 0.878463,
		0.925561, 0.375655, 0.047126,
		-0.351519, 0.806444, 0.475481,
		38.244171, 36.773811, 38.341194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787594, 36.237057, 38.693096>,  <38.490234, 36.209301, 38.008358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787594, 36.237057, 38.693096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457966, 36.462009, 38.720329>,  <38.260189, 36.596981, 38.736671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457966, 36.462009, 38.720329>,  <38.787594, 36.237057, 38.693096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457966, 36.462009, 38.720329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278697, -0.507119, 0.815572,
		0.493189, 0.653114, 0.574636,
		-0.824071, 0.562380, 0.068084,
		38.210743, 36.630722, 38.740753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657684, 36.364498, 39.427147>,  <38.787594, 36.237057, 38.693096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657684, 36.364498, 39.427147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314983, 36.407562, 39.225403>,  <38.109364, 36.433403, 39.104355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314983, 36.407562, 39.225403>,  <38.657684, 36.364498, 39.427147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314983, 36.407562, 39.225403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488060, -0.485278, 0.725468,
		-0.166652, 0.867706, 0.468309,
		-0.856753, 0.107662, -0.504365,
		38.057957, 36.439861, 39.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194313, 36.560989, 39.839165>,  <38.657684, 36.364498, 39.427147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194313, 36.560989, 39.839165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932526, 36.433586, 39.564873>,  <37.775452, 36.357143, 39.400299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932526, 36.433586, 39.564873>,  <38.194313, 36.560989, 39.839165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932526, 36.433586, 39.564873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652524, -0.220208, 0.725066,
		-0.381944, 0.921986, -0.063717,
		-0.654470, -0.318511, -0.685725,
		37.736183, 36.338032, 39.359154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589504, 36.907684, 39.912182>,  <38.194313, 36.560989, 39.839165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589504, 36.907684, 39.912182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499466, 36.569710, 39.718105>,  <37.445442, 36.366924, 39.601658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499466, 36.569710, 39.718105>,  <37.589504, 36.907684, 39.912182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499466, 36.569710, 39.718105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636943, -0.249230, 0.729512,
		-0.737317, 0.473251, -0.482076,
		-0.225095, -0.844937, -0.485195,
		37.431938, 36.316227, 39.572548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933273, 36.695896, 40.112164>,  <37.589504, 36.907684, 39.912182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933273, 36.695896, 40.112164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064514, 36.357204, 39.944637>,  <37.143261, 36.153992, 39.844124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064514, 36.357204, 39.944637>,  <36.933273, 36.695896, 40.112164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064514, 36.357204, 39.944637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463161, -0.530604, 0.709888,
		-0.823304, -0.038940, -0.566264,
		0.328105, -0.846725, -0.418813,
		37.162945, 36.103188, 39.818993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321659, 36.269028, 40.127476>,  <36.933273, 36.695896, 40.112164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321659, 36.269028, 40.127476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640255, 36.034863, 40.066952>,  <36.831413, 35.894363, 40.030636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640255, 36.034863, 40.066952>,  <36.321659, 36.269028, 40.127476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640255, 36.034863, 40.066952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386428, -0.685303, 0.617279,
		-0.465058, -0.433185, -0.772057,
		0.796489, -0.585415, -0.151311,
		36.879200, 35.859238, 40.021557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076828, 35.646324, 40.030807>,  <36.321659, 36.269028, 40.127476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076828, 35.646324, 40.030807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454575, 35.568577, 40.136929>,  <36.681225, 35.521927, 40.200600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454575, 35.568577, 40.136929>,  <36.076828, 35.646324, 40.030807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454575, 35.568577, 40.136929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323083, -0.397405, 0.858887,
		-0.061510, -0.896821, -0.438096,
		0.944370, -0.194371, 0.265303,
		36.737885, 35.510265, 40.216518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074883, 35.015064, 40.253784>,  <36.076828, 35.646324, 40.030807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074883, 35.015064, 40.253784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405148, 35.163643, 40.423637>,  <36.603306, 35.252789, 40.525551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405148, 35.163643, 40.423637>,  <36.074883, 35.015064, 40.253784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405148, 35.163643, 40.423637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290971, -0.364471, 0.884588,
		0.483339, -0.853927, -0.192851,
		0.825663, 0.371442, 0.424631,
		36.652847, 35.275074, 40.551025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379089, 34.465618, 40.675358>,  <36.074883, 35.015064, 40.253784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379089, 34.465618, 40.675358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533886, 34.793549, 40.844181>,  <36.626762, 34.990307, 40.945473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533886, 34.793549, 40.844181>,  <36.379089, 34.465618, 40.675358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533886, 34.793549, 40.844181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156277, -0.392784, 0.906255,
		0.908745, -0.416667, -0.023883,
		0.386988, 0.819823, 0.422056,
		36.649982, 35.039494, 40.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799080, 34.232517, 41.203445>,  <36.379089, 34.465618, 40.675358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799080, 34.232517, 41.203445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739769, 34.616505, 41.298496>,  <36.704182, 34.846897, 41.355526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739769, 34.616505, 41.298496>,  <36.799080, 34.232517, 41.203445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739769, 34.616505, 41.298496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114143, -0.255294, 0.960102,
		0.982337, 0.115237, 0.147428,
		-0.148277, 0.959972, 0.237631,
		36.695286, 34.904495, 41.369785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880775, 33.824493, 40.680454>,  <36.799080, 34.232517, 41.203445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880775, 33.824493, 40.680454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575329, 33.573307, 40.740509>,  <36.392059, 33.422596, 40.776543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575329, 33.573307, 40.740509>,  <36.880775, 33.824493, 40.680454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575329, 33.573307, 40.740509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354690, 0.213685, -0.910238,
		0.539516, -0.748330, -0.385908,
		-0.763621, -0.627966, 0.150138,
		36.346241, 33.384918, 40.785549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861031, 33.586540, 40.011101>,  <36.880775, 33.824493, 40.680454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861031, 33.586540, 40.011101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517479, 33.471317, 40.180500>,  <36.311348, 33.402184, 40.282139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517479, 33.471317, 40.180500>,  <36.861031, 33.586540, 40.011101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517479, 33.471317, 40.180500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511788, 0.450450, -0.731552,
		0.019962, -0.845056, -0.534305,
		-0.858880, -0.288054, 0.423498,
		36.259815, 33.384899, 40.307549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556240, 33.137730, 39.497780>,  <36.861031, 33.586540, 40.011101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556240, 33.137730, 39.497780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253471, 33.253632, 39.732082>,  <36.071812, 33.323174, 39.872665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253471, 33.253632, 39.732082>,  <36.556240, 33.137730, 39.497780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253471, 33.253632, 39.732082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527694, 0.257735, -0.809389,
		-0.385495, -0.921745, -0.042183,
		-0.756923, 0.289756, 0.585755,
		36.026394, 33.340557, 39.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012848, 32.796402, 39.155369>,  <36.556240, 33.137730, 39.497780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012848, 32.796402, 39.155369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864025, 33.094688, 39.376453>,  <35.774734, 33.273659, 39.509102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864025, 33.094688, 39.376453>,  <36.012848, 32.796402, 39.155369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864025, 33.094688, 39.376453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657192, 0.208877, -0.724202,
		-0.655496, -0.632676, 0.412365,
		-0.372052, 0.745715, 0.552708,
		35.752411, 33.318401, 39.542267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191181, 32.759026, 39.181519>,  <36.012848, 32.796402, 39.155369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191181, 32.759026, 39.181519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293758, 33.137966, 39.258209>,  <35.355305, 33.365330, 39.304226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293758, 33.137966, 39.258209>,  <35.191181, 32.759026, 39.181519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293758, 33.137966, 39.258209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611900, 0.312676, -0.726507,
		-0.748207, 0.068990, 0.659869,
		0.256447, 0.947351, 0.191731,
		35.370693, 33.422173, 39.315727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513149, 33.150246, 39.202579>,  <35.191181, 32.759026, 39.181519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513149, 33.150246, 39.202579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819790, 33.397541, 39.133179>,  <35.003777, 33.545918, 39.091537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819790, 33.397541, 39.133179>,  <34.513149, 33.150246, 39.202579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819790, 33.397541, 39.133179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550533, 0.493737, -0.673155,
		-0.330502, 0.611563, 0.718859,
		0.766604, 0.618235, -0.173505,
		35.049770, 33.583012, 39.081127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320332, 33.809174, 39.161674>,  <34.513149, 33.150246, 39.202579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320332, 33.809174, 39.161674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663853, 33.890160, 38.973434>,  <34.869965, 33.938751, 38.860493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663853, 33.890160, 38.973434>,  <34.320332, 33.809174, 39.161674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663853, 33.890160, 38.973434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502933, 0.508061, -0.699237,
		0.097521, 0.837187, 0.538152,
		0.858806, 0.202464, -0.470596,
		34.921494, 33.950897, 38.832256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231815, 34.535839, 38.981392>,  <34.320332, 33.809174, 39.161674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231815, 34.535839, 38.981392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518616, 34.367294, 38.759270>,  <34.690697, 34.266167, 38.625996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518616, 34.367294, 38.759270>,  <34.231815, 34.535839, 38.981392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518616, 34.367294, 38.759270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359026, 0.459605, -0.812320,
		0.597498, 0.781806, 0.178260,
		0.717005, -0.421359, -0.555302,
		34.733719, 34.240887, 38.592678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206196, 34.946033, 38.453609>,  <34.231815, 34.535839, 38.981392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206196, 34.946033, 38.453609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437572, 34.650608, 38.315086>,  <34.576401, 34.473354, 38.231972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437572, 34.650608, 38.315086>,  <34.206196, 34.946033, 38.453609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437572, 34.650608, 38.315086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372901, 0.138172, -0.917526,
		0.725497, 0.659878, -0.195484,
		0.578445, -0.738559, -0.346312,
		34.611107, 34.429039, 38.211193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474606, 35.196690, 37.823547>,  <34.206196, 34.946033, 38.453609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474606, 35.196690, 37.823547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504730, 34.800587, 37.776684>,  <34.522804, 34.562927, 37.748566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504730, 34.800587, 37.776684>,  <34.474606, 35.196690, 37.823547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504730, 34.800587, 37.776684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447397, 0.071448, -0.891477,
		0.891159, 0.119558, -0.437656,
		0.075313, -0.990253, -0.117162,
		34.527325, 34.503510, 37.741535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832699, 35.133045, 37.241055>,  <34.474606, 35.196690, 37.823547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832699, 35.133045, 37.241055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649944, 34.781689, 37.297165>,  <34.540291, 34.570873, 37.330830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649944, 34.781689, 37.297165>,  <34.832699, 35.133045, 37.241055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649944, 34.781689, 37.297165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432515, 0.081578, -0.897929,
		0.777292, -0.470925, -0.417190,
		-0.456890, -0.878393, 0.140272,
		34.512878, 34.518169, 37.339245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900890, 34.816967, 36.585747>,  <34.832699, 35.133045, 37.241055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900890, 34.816967, 36.585747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582489, 34.662434, 36.772137>,  <34.391449, 34.569714, 36.883968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582489, 34.662434, 36.772137>,  <34.900890, 34.816967, 36.585747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582489, 34.662434, 36.772137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509866, 0.013058, -0.860155,
		0.326221, -0.922267, -0.207372,
		-0.796000, -0.386333, 0.465973,
		34.343689, 34.546535, 36.911930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.322105, 32.553482, 43.796127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966766, 32.382080, 43.862129>,  <37.753563, 32.279240, 43.901730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966766, 32.382080, 43.862129>,  <38.322105, 32.553482, 43.796127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966766, 32.382080, 43.862129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174903, -0.016496, -0.984447,
		0.424560, -0.903390, -0.060293,
		-0.888345, -0.428502, 0.165009,
		37.700264, 32.253529, 43.911633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311550, 31.918039, 43.307331>,  <38.322105, 32.553482, 43.796127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311550, 31.918039, 43.307331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936859, 32.014194, 43.409115>,  <37.712044, 32.071888, 43.470184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936859, 32.014194, 43.409115>,  <38.311550, 31.918039, 43.307331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936859, 32.014194, 43.409115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237218, 0.098633, -0.966436,
		-0.257416, -0.965653, -0.035369,
		-0.936731, 0.240386, 0.254460,
		37.655838, 32.086311, 43.485455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967865, 31.486593, 42.884460>,  <38.311550, 31.918039, 43.307331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967865, 31.486593, 42.884460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754868, 31.805485, 42.998215>,  <37.627068, 31.996820, 43.066467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754868, 31.805485, 42.998215>,  <37.967865, 31.486593, 42.884460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754868, 31.805485, 42.998215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228579, 0.188057, -0.955189,
		-0.814987, -0.573636, 0.082091,
		-0.532493, 0.797231, 0.284385,
		37.595119, 32.044655, 43.083530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226753, 31.411884, 42.533298>,  <37.967865, 31.486593, 42.884460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226753, 31.411884, 42.533298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191345, 31.791368, 42.654701>,  <37.170101, 32.019058, 42.727543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191345, 31.791368, 42.654701>,  <37.226753, 31.411884, 42.533298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191345, 31.791368, 42.654701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296408, 0.265810, -0.917326,
		-0.950950, -0.171161, 0.257676,
		-0.088517, 0.948709, 0.303505,
		37.164791, 32.075981, 42.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519520, 31.639027, 42.477245>,  <37.226753, 31.411884, 42.533298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519520, 31.639027, 42.477245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.731483, 31.978235, 42.480030>,  <36.858662, 32.181759, 42.481701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.731483, 31.978235, 42.480030>,  <36.519520, 31.639027, 42.477245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731483, 31.978235, 42.480030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504027, 0.321539, -0.801604,
		-0.682017, 0.421272, 0.597815,
		0.529914, 0.848023, 0.006963,
		36.890457, 32.232643, 42.482121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003197, 32.154526, 42.653679>,  <36.519520, 31.639027, 42.477245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003197, 32.154526, 42.653679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.313980, 32.302963, 42.450256>,  <36.500450, 32.392025, 42.328205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.313980, 32.302963, 42.450256>,  <36.003197, 32.154526, 42.653679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313980, 32.302963, 42.450256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627622, 0.393345, -0.671841,
		-0.049280, 0.841171, 0.538520,
		0.776957, 0.371095, -0.508553,
		36.547066, 32.414291, 42.297691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916180, 32.907566, 42.641529>,  <36.003197, 32.154526, 42.653679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916180, 32.907566, 42.641529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176395, 32.807053, 42.354847>,  <36.332523, 32.746746, 42.182838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176395, 32.807053, 42.354847>,  <35.916180, 32.907566, 42.641529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176395, 32.807053, 42.354847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493819, 0.577013, -0.650537,
		0.577013, 0.777118, 0.251281,
		0.650537, -0.251281, -0.716701,
		36.371555, 32.731667, 42.139835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955627, 33.596680, 42.161659>,  <35.916180, 32.907566, 42.641529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955627, 33.596680, 42.161659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165180, 33.356567, 41.919930>,  <36.290913, 33.212502, 41.774891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165180, 33.356567, 41.919930>,  <35.955627, 33.596680, 42.161659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165180, 33.356567, 41.919930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382564, 0.468078, -0.796585,
		0.761044, 0.648513, 0.015575,
		0.523886, -0.600278, -0.604326,
		36.322346, 33.176483, 41.738632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396217, 33.968376, 41.724121>,  <35.955627, 33.596680, 42.161659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396217, 33.968376, 41.724121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306461, 33.625244, 41.539177>,  <36.252609, 33.419365, 41.428211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306461, 33.625244, 41.539177>,  <36.396217, 33.968376, 41.724121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306461, 33.625244, 41.539177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310838, 0.512677, -0.800339,
		0.923596, -0.035867, -0.381685,
		-0.224386, -0.857832, -0.462358,
		36.239143, 33.367893, 41.400471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060032, 34.329819, 41.979340>,  <36.396217, 33.968376, 41.724121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060032, 34.329819, 41.979340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839275, 34.655495, 41.907219>,  <36.706821, 34.850899, 41.863945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839275, 34.655495, 41.907219>,  <37.060032, 34.329819, 41.979340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839275, 34.655495, 41.907219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253360, 0.042281, 0.966447,
		0.794496, 0.579055, 0.182949,
		-0.551892, 0.814191, -0.180301,
		36.673706, 34.899754, 41.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207008, 34.694992, 42.528072>,  <37.060032, 34.329819, 41.979340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207008, 34.694992, 42.528072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864067, 34.846554, 42.388714>,  <36.658302, 34.937489, 42.305099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864067, 34.846554, 42.388714>,  <37.207008, 34.694992, 42.528072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864067, 34.846554, 42.388714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331960, 0.110271, 0.936826,
		0.393382, 0.918844, 0.031238,
		-0.857352, 0.378900, -0.348399,
		36.606861, 34.960224, 42.284195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091351, 35.350628, 42.830463>,  <37.207008, 34.694992, 42.528072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091351, 35.350628, 42.830463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.725147, 35.226456, 42.728115>,  <36.505424, 35.151951, 42.666706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.725147, 35.226456, 42.728115>,  <37.091351, 35.350628, 42.830463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725147, 35.226456, 42.728115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314863, 0.157039, 0.936055,
		-0.250397, 0.937535, -0.241514,
		-0.915512, -0.310430, -0.255873,
		36.450493, 35.133327, 42.651352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612476, 35.922123, 43.090717>,  <37.091351, 35.350628, 42.830463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612476, 35.922123, 43.090717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375683, 35.605301, 43.031113>,  <36.233604, 35.415207, 42.995350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375683, 35.605301, 43.031113>,  <36.612476, 35.922123, 43.090717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375683, 35.605301, 43.031113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496543, 0.212804, 0.841522,
		-0.634819, 0.572160, -0.519266,
		-0.591987, -0.792052, -0.149010,
		36.198086, 35.367683, 42.986408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974773, 36.129353, 43.402111>,  <36.612476, 35.922123, 43.090717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974773, 36.129353, 43.402111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955399, 35.730091, 43.387474>,  <35.943775, 35.490532, 43.378693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955399, 35.730091, 43.387474>,  <35.974773, 36.129353, 43.402111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955399, 35.730091, 43.387474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731023, 0.010459, 0.682273,
		-0.680632, 0.059796, -0.730181,
		-0.048434, -0.998156, -0.036593,
		35.940868, 35.430645, 43.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228687, 35.912266, 43.532471>,  <35.974773, 36.129353, 43.402111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228687, 35.912266, 43.532471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438946, 35.578972, 43.601067>,  <35.565102, 35.378994, 43.642223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.438946, 35.578972, 43.601067>,  <35.228687, 35.912266, 43.532471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438946, 35.578972, 43.601067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514103, -0.150530, 0.844416,
		-0.677786, -0.532027, -0.507496,
		0.525646, -0.833239, 0.171489,
		35.596638, 35.328999, 43.652512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741562, 35.595356, 43.828926>,  <35.228687, 35.912266, 43.532471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741562, 35.595356, 43.828926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093224, 35.432365, 43.927765>,  <35.304218, 35.334572, 43.987068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.093224, 35.432365, 43.927765>,  <34.741562, 35.595356, 43.828926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093224, 35.432365, 43.927765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275536, -0.011589, 0.961221,
		-0.388813, -0.913141, -0.122463,
		0.879150, -0.407478, 0.247097,
		35.356968, 35.310123, 44.001896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565041, 35.031124, 44.321037>,  <34.741562, 35.595356, 43.828926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565041, 35.031124, 44.321037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949276, 35.121288, 44.386097>,  <35.179817, 35.175388, 44.425133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.949276, 35.121288, 44.386097>,  <34.565041, 35.031124, 44.321037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949276, 35.121288, 44.386097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150202, -0.071418, 0.986073,
		0.233892, -0.971642, -0.034745,
		0.960591, 0.225415, 0.162646,
		35.237453, 35.188911, 44.434891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715736, 34.586052, 44.898777>,  <34.565041, 35.031124, 44.321037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715736, 34.586052, 44.898777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012947, 34.853226, 44.881912>,  <35.191273, 35.013531, 44.871792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012947, 34.853226, 44.881912>,  <34.715736, 34.586052, 44.898777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012947, 34.853226, 44.881912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008863, 0.072815, 0.997306,
		0.669201, -0.740654, 0.060024,
		0.743029, 0.667930, -0.042164,
		35.235855, 35.053604, 44.869263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307693, 34.361832, 45.350899>,  <34.715736, 34.586052, 44.898777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307693, 34.361832, 45.350899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377769, 34.752659, 45.302483>,  <35.419815, 34.987156, 45.273434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377769, 34.752659, 45.302483>,  <35.307693, 34.361832, 45.350899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377769, 34.752659, 45.302483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271608, 0.070211, 0.959844,
		0.946328, -0.201036, -0.253078,
		0.175195, 0.977064, -0.121045,
		35.430328, 35.045776, 45.266171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942818, 34.582211, 45.739712>,  <35.307693, 34.361832, 45.350899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942818, 34.582211, 45.739712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.740398, 34.925152, 45.702049>,  <35.618946, 35.130917, 45.679451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.740398, 34.925152, 45.702049>,  <35.942818, 34.582211, 45.739712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740398, 34.925152, 45.702049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263452, 0.257596, 0.929644,
		0.821286, 0.445637, -0.356227,
		-0.506046, 0.857352, -0.094156,
		35.588585, 35.182358, 45.673801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262310, 34.927452, 46.130817>,  <35.942818, 34.582211, 45.739712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262310, 34.927452, 46.130817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957302, 35.182457, 46.086731>,  <35.774296, 35.335461, 46.060280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957302, 35.182457, 46.086731>,  <36.262310, 34.927452, 46.130817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957302, 35.182457, 46.086731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194385, 0.388239, 0.900825,
		0.617073, 0.665472, -0.419962,
		-0.762519, 0.637509, -0.110214,
		35.728546, 35.373711, 46.053665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468472, 35.516224, 46.393307>,  <36.262310, 34.927452, 46.130817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468472, 35.516224, 46.393307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.075329, 35.589199, 46.403976>,  <35.839443, 35.632984, 46.410378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.075329, 35.589199, 46.403976>,  <36.468472, 35.516224, 46.393307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075329, 35.589199, 46.403976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074090, 0.258321, 0.963214,
		0.168838, 0.948676, -0.267409,
		-0.982855, 0.182440, 0.026673,
		35.780472, 35.643932, 46.411980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431114, 36.155273, 46.656422>,  <36.468472, 35.516224, 46.393307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431114, 36.155273, 46.656422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073257, 35.989796, 46.723911>,  <35.858543, 35.890507, 46.764404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073257, 35.989796, 46.723911>,  <36.431114, 36.155273, 46.656422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073257, 35.989796, 46.723911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068972, 0.245228, 0.967009,
		-0.441424, 0.876766, -0.190858,
		-0.894644, -0.413697, 0.168722,
		35.804863, 35.865688, 46.774529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.045452, 33.423763, 46.403385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429300, 33.536129, 46.409229>,  <31.659609, 33.603550, 46.412735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429300, 33.536129, 46.409229>,  <31.045452, 33.423763, 46.403385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429300, 33.536129, 46.409229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103196, 0.399889, -0.910736,
		-0.261680, 0.872454, 0.412731,
		0.959622, 0.280914, 0.014610,
		31.717186, 33.620403, 46.413612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100401, 34.188316, 46.214329>,  <31.045452, 33.423763, 46.403385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100401, 34.188316, 46.214329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445881, 34.008282, 46.123604>,  <31.653170, 33.900261, 46.069168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445881, 34.008282, 46.123604>,  <31.100401, 34.188316, 46.214329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445881, 34.008282, 46.123604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043418, 0.514793, -0.856215,
		0.502130, 0.729666, 0.464169,
		0.863702, -0.450084, -0.226813,
		31.704990, 33.873257, 46.055561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707714, 34.730553, 46.117001>,  <31.100401, 34.188316, 46.214329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707714, 34.730553, 46.117001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787371, 34.400097, 45.906158>,  <31.835165, 34.201824, 45.779652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787371, 34.400097, 45.906158>,  <31.707714, 34.730553, 46.117001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787371, 34.400097, 45.906158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215622, 0.487758, -0.845930,
		0.955955, 0.282113, -0.081002,
		0.199139, -0.826138, -0.527105,
		31.847113, 34.152256, 45.748028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294037, 34.805676, 45.627403>,  <31.707714, 34.730553, 46.117001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294037, 34.805676, 45.627403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107140, 34.488155, 45.471676>,  <31.995001, 34.297646, 45.378239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107140, 34.488155, 45.471676>,  <32.294037, 34.805676, 45.627403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107140, 34.488155, 45.471676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033537, 0.424114, -0.904987,
		0.883493, -0.435905, -0.171543,
		-0.467243, -0.793797, -0.389321,
		31.966967, 34.250015, 45.354881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615337, 34.695976, 45.067680>,  <32.294037, 34.805676, 45.627403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615337, 34.695976, 45.067680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313587, 34.441509, 45.002918>,  <32.132538, 34.288830, 44.964062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.313587, 34.441509, 45.002918>,  <32.615337, 34.695976, 45.067680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313587, 34.441509, 45.002918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022631, 0.271695, -0.962117,
		0.656057, -0.722131, -0.219356,
		-0.754372, -0.636168, -0.161905,
		32.087276, 34.250660, 44.954346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791985, 34.189342, 44.580219>,  <32.615337, 34.695976, 45.067680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791985, 34.189342, 44.580219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.393246, 34.208359, 44.554825>,  <32.154003, 34.219769, 44.539589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.393246, 34.208359, 44.554825>,  <32.791985, 34.189342, 44.580219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393246, 34.208359, 44.554825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061077, -0.050603, -0.996849,
		-0.050603, -0.997587, 0.047540,
		0.996849, -0.047540, 0.063490,
		32.094193, 34.222622, 44.535778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597588, 33.781509, 43.932495>,  <32.791985, 34.189342, 44.580219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597588, 33.781509, 43.932495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270401, 33.995148, 44.017982>,  <32.074089, 34.123329, 44.069275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.270401, 33.995148, 44.017982>,  <32.597588, 33.781509, 43.932495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270401, 33.995148, 44.017982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172745, 0.126317, -0.976833,
		-0.548720, -0.835933, -0.011060,
		-0.817965, 0.534097, 0.213716,
		32.025013, 34.155376, 44.082096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138561, 33.606655, 43.351734>,  <32.597588, 33.781509, 43.932495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138561, 33.606655, 43.351734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972996, 33.940701, 43.496658>,  <31.873657, 34.141129, 43.583611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972996, 33.940701, 43.496658>,  <32.138561, 33.606655, 43.351734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972996, 33.940701, 43.496658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360031, 0.215373, -0.907740,
		-0.836094, -0.506168, 0.211519,
		-0.413913, 0.835110, 0.362308,
		31.848822, 34.191235, 43.605350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475826, 33.575287, 43.043251>,  <32.138561, 33.606655, 43.351734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475826, 33.575287, 43.043251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.531612, 33.946850, 43.180473>,  <31.565084, 34.169788, 43.262806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.531612, 33.946850, 43.180473>,  <31.475826, 33.575287, 43.043251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531612, 33.946850, 43.180473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382762, 0.370085, -0.846482,
		-0.913259, -0.013252, 0.407163,
		0.139467, 0.928903, 0.343056,
		31.573452, 34.225521, 43.283390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947489, 33.862450, 42.796261>,  <31.475826, 33.575287, 43.043251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947489, 33.862450, 42.796261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205183, 34.158638, 42.872860>,  <31.359800, 34.336349, 42.918819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205183, 34.158638, 42.872860>,  <30.947489, 33.862450, 42.796261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205183, 34.158638, 42.872860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285552, 0.465137, -0.837919,
		-0.709521, 0.485136, 0.511100,
		0.644236, 0.740466, 0.191494,
		31.398455, 34.380779, 42.930309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569521, 34.580482, 42.794430>,  <30.947489, 33.862450, 42.796261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569521, 34.580482, 42.794430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.956802, 34.642128, 42.715614>,  <31.189171, 34.679115, 42.668324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.956802, 34.642128, 42.715614>,  <30.569521, 34.580482, 42.794430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956802, 34.642128, 42.715614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243604, 0.401803, -0.882729,
		-0.056873, 0.902664, 0.426572,
		0.968206, 0.154118, -0.197041,
		31.247265, 34.688362, 42.656502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684496, 35.316162, 42.683357>,  <30.569521, 34.580482, 42.794430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684496, 35.316162, 42.683357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.978434, 35.127296, 42.488602>,  <31.154797, 35.013977, 42.371750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.978434, 35.127296, 42.488602>,  <30.684496, 35.316162, 42.683357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978434, 35.127296, 42.488602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192318, 0.543348, -0.817182,
		0.650396, 0.694140, 0.308471,
		0.734846, -0.472168, -0.486887,
		31.198887, 34.985645, 42.342537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118858, 35.801884, 42.310978>,  <30.684496, 35.316162, 42.683357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118858, 35.801884, 42.310978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.220173, 35.459507, 42.130665>,  <31.280962, 35.254082, 42.022476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.220173, 35.459507, 42.130665>,  <31.118858, 35.801884, 42.310978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220173, 35.459507, 42.130665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075030, 0.447194, -0.891285,
		0.964478, 0.259571, 0.049046,
		0.253285, -0.855944, -0.450784,
		31.296158, 35.202724, 41.995430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749510, 36.028301, 41.936234>,  <31.118858, 35.801884, 42.310978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749510, 36.028301, 41.936234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594713, 35.709312, 41.751076>,  <31.501835, 35.517918, 41.639980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.594713, 35.709312, 41.751076>,  <31.749510, 36.028301, 41.936234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594713, 35.709312, 41.751076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012731, 0.506583, -0.862097,
		0.921996, -0.327730, -0.206196,
		-0.386990, -0.797475, -0.462895,
		31.478617, 35.470070, 41.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137028, 36.271927, 42.346043>,  <31.749510, 36.028301, 41.936234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137028, 36.271927, 42.346043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.173298, 36.669926, 42.329288>,  <32.195061, 36.908726, 42.319237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.173298, 36.669926, 42.329288>,  <32.137028, 36.271927, 42.346043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173298, 36.669926, 42.329288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058138, 0.036700, 0.997633,
		0.994182, -0.092894, -0.054520,
		0.090674, 0.994999, -0.041888,
		32.200500, 36.968426, 42.316723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680759, 36.440830, 42.862938>,  <32.137028, 36.271927, 42.346043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680759, 36.440830, 42.862938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449020, 36.761070, 42.801750>,  <32.309975, 36.953213, 42.765038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449020, 36.761070, 42.801750>,  <32.680759, 36.440830, 42.862938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449020, 36.761070, 42.801750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056383, 0.226584, 0.972358,
		0.813125, 0.554713, -0.176411,
		-0.579351, 0.800596, -0.152965,
		32.275215, 37.001247, 42.755859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915604, 36.891582, 43.387001>,  <32.680759, 36.440830, 42.862938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915604, 36.891582, 43.387001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557133, 37.037571, 43.286072>,  <32.342052, 37.125164, 43.225513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557133, 37.037571, 43.286072>,  <32.915604, 36.891582, 43.387001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557133, 37.037571, 43.286072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236599, 0.088004, 0.967614,
		0.375354, 0.926851, 0.007484,
		-0.896175, 0.364969, -0.252324,
		32.288280, 37.147060, 43.210373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926266, 37.554234, 43.725586>,  <32.915604, 36.891582, 43.387001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926266, 37.554234, 43.725586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544823, 37.462696, 43.647339>,  <32.315956, 37.407772, 43.600391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.544823, 37.462696, 43.647339>,  <32.926266, 37.554234, 43.725586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544823, 37.462696, 43.647339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227791, 0.123617, 0.965832,
		-0.196847, 0.965581, -0.170011,
		-0.953605, -0.228848, -0.195617,
		32.258739, 37.394043, 43.588654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524586, 38.164303, 43.996433>,  <32.926266, 37.554234, 43.725586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524586, 38.164303, 43.996433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282921, 37.851837, 43.933475>,  <32.137924, 37.664356, 43.895702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282921, 37.851837, 43.933475>,  <32.524586, 38.164303, 43.996433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282921, 37.851837, 43.933475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271095, 0.015754, 0.962424,
		-0.749331, 0.624127, -0.221288,
		-0.604161, -0.781164, -0.157393,
		32.101673, 37.617489, 43.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937832, 38.379612, 44.401314>,  <32.524586, 38.164303, 43.996433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937832, 38.379612, 44.401314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880892, 37.987381, 44.347359>,  <31.846727, 37.752041, 44.314983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880892, 37.987381, 44.347359>,  <31.937832, 38.379612, 44.401314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880892, 37.987381, 44.347359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282478, -0.090366, 0.955008,
		-0.948653, 0.174049, -0.264129,
		-0.142350, -0.980582, -0.134891,
		31.838186, 37.693207, 44.306892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221621, 38.144810, 44.623310>,  <31.937832, 38.379612, 44.401314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221621, 38.144810, 44.623310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438046, 37.808430, 44.626244>,  <31.567900, 37.606602, 44.628002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438046, 37.808430, 44.626244>,  <31.221621, 38.144810, 44.623310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438046, 37.808430, 44.626244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204455, -0.123081, 0.971107,
		-0.815751, -0.526928, -0.238530,
		0.541062, -0.840951, 0.007330,
		31.600365, 37.556145, 44.628441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864199, 37.714546, 44.987171>,  <31.221621, 38.144810, 44.623310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864199, 37.714546, 44.987171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225624, 37.543198, 44.990551>,  <31.442480, 37.440388, 44.992580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225624, 37.543198, 44.990551>,  <30.864199, 37.714546, 44.987171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225624, 37.543198, 44.990551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135809, -0.267648, 0.953898,
		-0.406359, -0.863055, -0.300014,
		0.903565, -0.428369, 0.008449,
		31.496693, 37.414688, 44.993088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705128, 37.166557, 45.353325>,  <30.864199, 37.714546, 44.987171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705128, 37.166557, 45.353325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102474, 37.196491, 45.388248>,  <31.340881, 37.214451, 45.409203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.102474, 37.196491, 45.388248>,  <30.705128, 37.166557, 45.353325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102474, 37.196491, 45.388248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061273, -0.298015, 0.952592,
		0.097309, -0.951623, -0.291453,
		0.993366, 0.074837, 0.087308,
		31.400484, 37.218941, 45.414440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945141, 36.551552, 45.735405>,  <30.705128, 37.166557, 45.353325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945141, 36.551552, 45.735405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259027, 36.797047, 45.770164>,  <31.447359, 36.944344, 45.791019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259027, 36.797047, 45.770164>,  <30.945141, 36.551552, 45.735405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259027, 36.797047, 45.770164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164352, -0.341180, 0.925519,
		0.597671, -0.711987, -0.368598,
		0.784715, 0.613735, 0.086896,
		31.494442, 36.981167, 45.796234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608488, 36.159580, 45.790356>,  <30.945141, 36.551552, 45.735405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608488, 36.159580, 45.790356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660141, 36.526203, 45.941753>,  <31.691133, 36.746178, 46.032593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660141, 36.526203, 45.941753>,  <31.608488, 36.159580, 45.790356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660141, 36.526203, 45.941753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522320, -0.387316, 0.759716,
		0.842916, 0.099588, -0.528749,
		0.129134, 0.916553, 0.378491,
		31.698881, 36.801170, 46.055302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293484, 36.144249, 46.065357>,  <31.608488, 36.159580, 45.790356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293484, 36.144249, 46.065357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096722, 36.433578, 46.259197>,  <31.978664, 36.607174, 46.375500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096722, 36.433578, 46.259197>,  <32.293484, 36.144249, 46.065357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096722, 36.433578, 46.259197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415893, -0.293771, 0.860657,
		0.764892, 0.624904, -0.156317,
		-0.491907, 0.723321, 0.484597,
		31.949150, 36.650574, 46.404575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801094, 36.386547, 46.535263>,  <32.293484, 36.144249, 46.065357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801094, 36.386547, 46.535263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443401, 36.489517, 46.681732>,  <32.228786, 36.551300, 46.769615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443401, 36.489517, 46.681732>,  <32.801094, 36.386547, 46.535263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443401, 36.489517, 46.681732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260799, -0.365213, 0.893646,
		0.363783, 0.894623, 0.259447,
		-0.894229, 0.257430, 0.366175,
		32.175133, 36.566746, 46.791584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874687, 36.838276, 47.102043>,  <32.801094, 36.386547, 46.535263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874687, 36.838276, 47.102043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517391, 36.666504, 47.155277>,  <32.303013, 36.563438, 47.187218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517391, 36.666504, 47.155277>,  <32.874687, 36.838276, 47.102043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517391, 36.666504, 47.155277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281645, -0.303767, 0.910166,
		-0.350430, 0.850478, 0.392284,
		-0.893238, -0.429434, 0.133084,
		32.249420, 36.537674, 47.195202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131855, 37.501732, 47.397873>,  <32.874687, 36.838276, 47.102043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131855, 37.501732, 47.397873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.491699, 37.666775, 47.455078>,  <33.707607, 37.765800, 47.489403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.491699, 37.666775, 47.455078>,  <33.131855, 37.501732, 47.397873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491699, 37.666775, 47.455078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075222, 0.176178, -0.981480,
		-0.430165, 0.893708, 0.127454,
		0.899611, 0.412611, 0.143012,
		33.761581, 37.790558, 47.497982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130596, 38.187973, 47.142563>,  <33.131855, 37.501732, 47.397873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130596, 38.187973, 47.142563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524940, 38.121044, 47.138737>,  <33.761547, 38.080887, 47.136440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524940, 38.121044, 47.138737>,  <33.130596, 38.187973, 47.142563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524940, 38.121044, 47.138737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026285, 0.210749, -0.977187,
		0.165519, 0.963114, 0.212167,
		0.985856, -0.167319, -0.009567,
		33.820698, 38.070847, 47.135868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409912, 38.733059, 46.837528>,  <33.130596, 38.187973, 47.142563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409912, 38.733059, 46.837528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689438, 38.450020, 46.795643>,  <33.857151, 38.280197, 46.770512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.689438, 38.450020, 46.795643>,  <33.409912, 38.733059, 46.837528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689438, 38.450020, 46.795643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206112, 0.339371, -0.917794,
		0.684968, 0.619781, 0.383001,
		0.698810, -0.707601, -0.104714,
		33.899082, 38.237740, 46.764229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864040, 39.028210, 46.430031>,  <33.409912, 38.733059, 46.837528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864040, 39.028210, 46.430031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.997131, 38.652138, 46.400761>,  <34.076984, 38.426495, 46.383198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.997131, 38.652138, 46.400761>,  <33.864040, 39.028210, 46.430031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997131, 38.652138, 46.400761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395746, 0.209641, -0.894112,
		0.855966, 0.268538, 0.441826,
		0.332728, -0.940180, -0.073172,
		34.096951, 38.370083, 46.378807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669197, 38.869659, 46.390278>,  <33.864040, 39.028210, 46.430031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669197, 38.869659, 46.390278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485439, 38.575836, 46.190525>,  <34.375187, 38.399540, 46.070675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485439, 38.575836, 46.190525>,  <34.669197, 38.869659, 46.390278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485439, 38.575836, 46.190525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630140, 0.126717, -0.766072,
		0.626006, -0.666607, 0.404663,
		-0.459391, -0.734560, -0.499381,
		34.347622, 38.355469, 46.040710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051483, 38.787548, 45.802082>,  <34.669197, 38.869659, 46.390278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051483, 38.787548, 45.802082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795734, 38.496819, 45.701729>,  <34.642284, 38.322380, 45.641518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795734, 38.496819, 45.701729>,  <35.051483, 38.787548, 45.802082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795734, 38.496819, 45.701729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439361, -0.077576, -0.894955,
		0.631008, -0.682433, 0.368936,
		-0.639368, -0.726819, -0.250883,
		34.603924, 38.278774, 45.626465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411335, 38.224491, 45.533848>,  <35.051483, 38.787548, 45.802082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411335, 38.224491, 45.533848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036213, 38.198349, 45.397469>,  <34.811138, 38.182663, 45.315639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.036213, 38.198349, 45.397469>,  <35.411335, 38.224491, 45.533848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036213, 38.198349, 45.397469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345767, -0.263526, -0.900555,
		-0.030994, -0.962436, 0.269734,
		-0.937809, -0.065354, -0.340947,
		34.754871, 38.178741, 45.295185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423996, 37.624683, 45.027050>,  <35.411335, 38.224491, 45.533848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423996, 37.624683, 45.027050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094303, 37.834919, 44.942768>,  <34.896488, 37.961060, 44.892197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.094303, 37.834919, 44.942768>,  <35.423996, 37.624683, 45.027050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094303, 37.834919, 44.942768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172177, -0.121866, -0.977499,
		-0.539438, -0.841967, 0.009953,
		-0.824234, 0.525586, -0.210707,
		34.847034, 37.992596, 44.879555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018990, 37.164902, 44.485760>,  <35.423996, 37.624683, 45.027050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018990, 37.164902, 44.485760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921791, 37.552406, 44.465969>,  <34.863472, 37.784908, 44.454094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921791, 37.552406, 44.465969>,  <35.018990, 37.164902, 44.485760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921791, 37.552406, 44.465969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209516, 0.002618, -0.977802,
		-0.947131, -0.247967, -0.203608,
		-0.242996, 0.968765, -0.049473,
		34.848892, 37.843037, 44.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741325, 37.281651, 43.842831>,  <35.018990, 37.164902, 44.485760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741325, 37.281651, 43.842831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811035, 37.662441, 43.943527>,  <34.852859, 37.890915, 44.003944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.811035, 37.662441, 43.943527>,  <34.741325, 37.281651, 43.842831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811035, 37.662441, 43.943527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118119, 0.233602, -0.965131,
		-0.977587, 0.197934, -0.071735,
		0.174275, 0.951973, 0.251746,
		34.863319, 37.948032, 44.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271976, 37.684513, 43.441528>,  <34.741325, 37.281651, 43.842831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271976, 37.684513, 43.441528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530823, 37.973881, 43.537781>,  <34.686131, 38.147503, 43.595531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530823, 37.973881, 43.537781>,  <34.271976, 37.684513, 43.441528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530823, 37.973881, 43.537781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145662, 0.192494, -0.970427,
		-0.748349, 0.663028, 0.019190,
		0.647114, 0.723423, 0.240630,
		34.724957, 38.190907, 43.609970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043743, 38.395023, 43.237362>,  <34.271976, 37.684513, 43.441528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043743, 38.395023, 43.237362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441944, 38.357155, 43.236595>,  <34.680866, 38.334435, 43.236134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441944, 38.357155, 43.236595>,  <34.043743, 38.395023, 43.237362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441944, 38.357155, 43.236595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007825, 0.102428, -0.994710,
		0.094368, 0.990225, 0.102708,
		0.995507, -0.094673, -0.001918,
		34.740597, 38.328754, 43.236019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172535, 38.657719, 42.628967>,  <34.043743, 38.395023, 43.237362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172535, 38.657719, 42.628967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528210, 38.503059, 42.726822>,  <34.741615, 38.410263, 42.785534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528210, 38.503059, 42.726822>,  <34.172535, 38.657719, 42.628967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528210, 38.503059, 42.726822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232314, -0.079100, -0.969419,
		0.394172, 0.918830, 0.019488,
		0.889190, -0.386645, 0.244636,
		34.794968, 38.387066, 42.800213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942783, 39.076557, 42.078926>,  <34.172535, 38.657719, 42.628967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942783, 39.076557, 42.078926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795303, 38.710144, 42.142109>,  <33.706818, 38.490295, 42.180019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795303, 38.710144, 42.142109>,  <33.942783, 39.076557, 42.078926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795303, 38.710144, 42.142109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127049, -0.217994, -0.967645,
		0.920827, -0.336698, 0.196754,
		-0.368696, -0.916031, 0.157958,
		33.684696, 38.435333, 42.189495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.636148, 28.831753, 30.897966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.686466, 28.663095, 31.257164>,  <24.716658, 28.561901, 31.472683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.686466, 28.663095, 31.257164>,  <24.636148, 28.831753, 30.897966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686466, 28.663095, 31.257164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141034, 0.888389, 0.436892,
		-0.981980, -0.181606, 0.052289,
		0.125795, -0.421645, 0.897993,
		24.724205, 28.536602, 31.526562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.169828, 29.146397, 31.422045>,  <24.636148, 28.831753, 30.897966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.169828, 29.146397, 31.422045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.461693, 28.971699, 31.632509>,  <24.636812, 28.866880, 31.758789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.461693, 28.971699, 31.632509>,  <24.169828, 29.146397, 31.422045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461693, 28.971699, 31.632509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016032, 0.780175, 0.625356,
		-0.683619, -0.447864, 0.576266,
		0.729663, -0.436744, 0.526162,
		24.680592, 28.840675, 31.790358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.036831, 29.228376, 32.138645>,  <24.169828, 29.146397, 31.422045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.036831, 29.228376, 32.138645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.432053, 29.170900, 32.116386>,  <24.669186, 29.136414, 32.103031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.432053, 29.170900, 32.116386>,  <24.036831, 29.228376, 32.138645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432053, 29.170900, 32.116386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149379, 0.804548, 0.574794,
		-0.037821, -0.576242, 0.816404,
		0.988056, -0.143693, -0.055649,
		24.728470, 29.127792, 32.099693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217447, 29.491842, 32.746433>,  <24.036831, 29.228376, 32.138645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217447, 29.491842, 32.746433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.579994, 29.407492, 32.599995>,  <24.797523, 29.356882, 32.512131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.579994, 29.407492, 32.599995>,  <24.217447, 29.491842, 32.746433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579994, 29.407492, 32.599995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403828, 0.687088, 0.604014,
		0.124170, -0.695300, 0.707912,
		0.906369, -0.210874, -0.366097,
		24.851906, 29.344229, 32.490166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672571, 29.446154, 33.400204>,  <24.217447, 29.491842, 32.746433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672571, 29.446154, 33.400204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.844122, 29.549255, 33.053879>,  <24.947052, 29.611116, 32.846085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.844122, 29.549255, 33.053879>,  <24.672571, 29.446154, 33.400204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844122, 29.549255, 33.053879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355244, 0.833089, 0.423985,
		0.830580, -0.489412, 0.265729,
		0.428880, 0.257755, -0.865809,
		24.972784, 29.626583, 32.794136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246712, 29.746845, 33.633293>,  <24.672571, 29.446154, 33.400204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246712, 29.746845, 33.633293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.239668, 29.870960, 33.253101>,  <25.235441, 29.945429, 33.024986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.239668, 29.870960, 33.253101>,  <25.246712, 29.746845, 33.633293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239668, 29.870960, 33.253101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381263, 0.880884, 0.280504,
		0.924299, -0.357443, -0.133815,
		-0.017612, 0.310288, -0.950479,
		25.234385, 29.964046, 32.967957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943420, 30.004715, 33.503933>,  <25.246712, 29.746845, 33.633293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943420, 30.004715, 33.503933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.708450, 30.184050, 33.234436>,  <25.567469, 30.291651, 33.072739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.708450, 30.184050, 33.234436>,  <25.943420, 30.004715, 33.503933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708450, 30.184050, 33.234436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356391, 0.890758, 0.282021,
		0.726578, -0.074448, -0.683039,
		-0.587426, 0.448339, -0.673738,
		25.532223, 30.318552, 33.032314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373215, 30.409372, 32.942112>,  <25.943420, 30.004715, 33.503933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373215, 30.409372, 32.942112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.009052, 30.572384, 32.970619>,  <25.790554, 30.670191, 32.987724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.009052, 30.572384, 32.970619>,  <26.373215, 30.409372, 32.942112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009052, 30.572384, 32.970619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406890, 0.850863, 0.332376,
		0.074816, 0.331595, -0.940451,
		-0.910408, 0.407527, 0.071264,
		25.735929, 30.694641, 32.991997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505978, 31.042633, 32.577679>,  <26.373215, 30.409372, 32.942112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505978, 31.042633, 32.577679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167749, 31.094809, 32.784752>,  <25.964813, 31.126114, 32.908997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167749, 31.094809, 32.784752>,  <26.505978, 31.042633, 32.577679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167749, 31.094809, 32.784752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271404, 0.940066, 0.206436,
		-0.459732, 0.315058, -0.830292,
		-0.845569, 0.130440, 0.517686,
		25.914080, 31.133940, 32.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285177, 31.765213, 32.427372>,  <26.505978, 31.042633, 32.577679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285177, 31.765213, 32.427372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098934, 31.660643, 32.765572>,  <25.987188, 31.597900, 32.968491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098934, 31.660643, 32.765572>,  <26.285177, 31.765213, 32.427372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098934, 31.660643, 32.765572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212514, 0.894392, 0.393574,
		-0.859096, 0.362932, -0.360881,
		-0.465610, -0.261425, 0.845497,
		25.959251, 31.582214, 33.019222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246635, 32.324409, 32.639988>,  <26.285177, 31.765213, 32.427372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246635, 32.324409, 32.639988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133026, 32.121754, 32.965599>,  <26.064861, 32.000160, 33.160965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133026, 32.121754, 32.965599>,  <26.246635, 32.324409, 32.639988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133026, 32.121754, 32.965599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172643, 0.808096, 0.563183,
		-0.943146, 0.300494, -0.142050,
		-0.284024, -0.506640, 0.814031,
		26.047819, 31.969761, 33.209808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580664, 32.619175, 32.828480>,  <26.246635, 32.324409, 32.639988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580664, 32.619175, 32.828480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.790234, 32.469547, 33.134571>,  <25.915976, 32.379772, 33.318226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.790234, 32.469547, 33.134571>,  <25.580664, 32.619175, 32.828480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790234, 32.469547, 33.134571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229019, 0.927187, 0.296437,
		-0.820398, 0.019942, 0.571445,
		0.523925, -0.374068, 0.765229,
		25.947411, 32.357327, 33.364140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467220, 33.120811, 33.336102>,  <25.580664, 32.619175, 32.828480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467220, 33.120811, 33.336102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770750, 32.908104, 33.486519>,  <25.952868, 32.780479, 33.576767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770750, 32.908104, 33.486519>,  <25.467220, 33.120811, 33.336102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770750, 32.908104, 33.486519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334430, 0.813580, 0.475650,
		-0.558875, -0.235177, 0.795205,
		0.758825, -0.531770, 0.376039,
		25.998398, 32.748573, 33.599331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498501, 33.323673, 34.039169>,  <25.467220, 33.120811, 33.336102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498501, 33.323673, 34.039169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850393, 33.152508, 33.956264>,  <26.061529, 33.049809, 33.906521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850393, 33.152508, 33.956264>,  <25.498501, 33.323673, 34.039169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850393, 33.152508, 33.956264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475079, 0.808736, 0.346766,
		0.019231, -0.403527, 0.914766,
		0.879733, -0.427917, -0.207260,
		26.114313, 33.024132, 33.894085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958614, 33.477512, 34.592369>,  <25.498501, 33.323673, 34.039169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958614, 33.477512, 34.592369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.208626, 33.390057, 34.292625>,  <26.358633, 33.337585, 34.112778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.208626, 33.390057, 34.292625>,  <25.958614, 33.477512, 34.592369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208626, 33.390057, 34.292625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672374, 0.638466, 0.374533,
		0.396553, -0.737943, 0.546065,
		0.625027, -0.218637, -0.749359,
		26.396133, 33.324467, 34.067818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564318, 33.267914, 34.908581>,  <25.958614, 33.477512, 34.592369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564318, 33.267914, 34.908581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670612, 33.365128, 34.535416>,  <26.734388, 33.423454, 34.311516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.670612, 33.365128, 34.535416>,  <26.564318, 33.267914, 34.908581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670612, 33.365128, 34.535416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798888, 0.486128, 0.354200,
		0.539596, -0.839413, -0.064976,
		0.265734, 0.243033, -0.932910,
		26.750332, 33.438038, 34.255543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241732, 33.279232, 34.915245>,  <26.564318, 33.267914, 34.908581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241732, 33.279232, 34.915245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.155283, 33.497768, 34.591564>,  <27.103415, 33.628891, 34.397358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.155283, 33.497768, 34.591564>,  <27.241732, 33.279232, 34.915245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155283, 33.497768, 34.591564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666439, 0.688240, 0.286679,
		0.713547, -0.477325, -0.512846,
		-0.216122, 0.546340, -0.809200,
		27.090446, 33.661671, 34.348804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941376, 33.627335, 34.671429>,  <27.241732, 33.279232, 34.915245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941376, 33.627335, 34.671429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658384, 33.853531, 34.501869>,  <27.488588, 33.989250, 34.400135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658384, 33.853531, 34.501869>,  <27.941376, 33.627335, 34.671429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658384, 33.853531, 34.501869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487372, 0.824745, 0.286818,
		0.511802, -0.003678, -0.859096,
		-0.707480, 0.565493, -0.423899,
		27.446140, 34.023178, 34.374699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429329, 33.640594, 34.163521>,  <27.941376, 33.627335, 34.671429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429329, 33.640594, 34.163521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.738482, 33.588158, 34.411865>,  <28.923973, 33.556694, 34.560871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.738482, 33.588158, 34.411865>,  <28.429329, 33.640594, 34.163521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738482, 33.588158, 34.411865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214701, -0.866697, -0.450267,
		0.597127, 0.481302, -0.641707,
		0.772880, -0.131091, 0.620864,
		28.970346, 33.548832, 34.598125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047331, 33.562130, 33.831017>,  <28.429329, 33.640594, 34.163521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047331, 33.562130, 33.831017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073219, 33.360790, 34.175678>,  <29.088753, 33.239986, 34.382477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073219, 33.360790, 34.175678>,  <29.047331, 33.562130, 33.831017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073219, 33.360790, 34.175678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073246, -0.863533, -0.498944,
		0.995212, -0.030819, -0.092758,
		0.064723, -0.503349, 0.861656,
		29.092636, 33.209785, 34.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590393, 33.129757, 33.801174>,  <29.047331, 33.562130, 33.831017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590393, 33.129757, 33.801174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360683, 32.961937, 34.082367>,  <29.222857, 32.861244, 34.251083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360683, 32.961937, 34.082367>,  <29.590393, 33.129757, 33.801174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360683, 32.961937, 34.082367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102724, -0.814983, -0.570308,
		0.812192, -0.399727, 0.424927,
		-0.574276, -0.419549, 0.702984,
		29.188400, 32.836071, 34.293262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975061, 32.489555, 33.994377>,  <29.590393, 33.129757, 33.801174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975061, 32.489555, 33.994377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584932, 32.464531, 34.079075>,  <29.350855, 32.449516, 34.129894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584932, 32.464531, 34.079075>,  <29.975061, 32.489555, 33.994377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584932, 32.464531, 34.079075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047834, -0.876370, -0.479257,
		0.215550, -0.477557, 0.851749,
		-0.975321, -0.062561, 0.211745,
		29.292336, 32.445763, 34.142597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878389, 31.784294, 34.203945>,  <29.975061, 32.489555, 33.994377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878389, 31.784294, 34.203945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493778, 31.883511, 34.156715>,  <29.263012, 31.943041, 34.128380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493778, 31.883511, 34.156715>,  <29.878389, 31.784294, 34.203945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493778, 31.883511, 34.156715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216115, -0.948338, -0.232270,
		-0.169582, -0.197817, 0.965459,
		-0.961528, 0.248039, -0.118070,
		29.205320, 31.957922, 34.121296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537882, 31.145594, 34.327873>,  <29.878389, 31.784294, 34.203945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537882, 31.145594, 34.327873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.245548, 31.349174, 34.145950>,  <29.070148, 31.471323, 34.036797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.245548, 31.349174, 34.145950>,  <29.537882, 31.145594, 34.327873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245548, 31.349174, 34.145950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390902, -0.858329, -0.332368,
		-0.559531, -0.065122, 0.826247,
		-0.730836, 0.508951, -0.454805,
		29.026299, 31.501860, 34.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894220, 30.866507, 34.559822>,  <29.537882, 31.145594, 34.327873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894220, 30.866507, 34.559822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791262, 31.081034, 34.238297>,  <28.729486, 31.209749, 34.045383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791262, 31.081034, 34.238297>,  <28.894220, 30.866507, 34.559822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791262, 31.081034, 34.238297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600969, -0.740242, -0.301460,
		-0.756692, 0.405469, 0.512847,
		-0.257398, 0.536318, -0.803809,
		28.714043, 31.241928, 33.997154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216805, 30.877703, 34.617363>,  <28.894220, 30.866507, 34.559822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216805, 30.877703, 34.617363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309292, 30.909834, 34.229530>,  <28.364784, 30.929113, 33.996830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.309292, 30.909834, 34.229530>,  <28.216805, 30.877703, 34.617363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309292, 30.909834, 34.229530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621315, -0.754703, -0.210691,
		-0.748670, 0.651130, -0.124592,
		0.231218, 0.080327, -0.969580,
		28.378656, 30.933931, 33.938656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612061, 30.824810, 34.214973>,  <28.216805, 30.877703, 34.617363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612061, 30.824810, 34.214973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899240, 30.750452, 33.946648>,  <28.071548, 30.705837, 33.785652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899240, 30.750452, 33.946648>,  <27.612061, 30.824810, 34.214973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899240, 30.750452, 33.946648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545951, -0.748219, -0.376969,
		-0.431839, 0.636877, -0.638673,
		0.717950, -0.185895, -0.670814,
		28.114626, 30.694683, 33.745403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234447, 30.541590, 33.675575>,  <27.612061, 30.824810, 34.214973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234447, 30.541590, 33.675575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604639, 30.458080, 33.549145>,  <27.826754, 30.407974, 33.473286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604639, 30.458080, 33.549145>,  <27.234447, 30.541590, 33.675575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604639, 30.458080, 33.549145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348157, -0.797581, -0.492596,
		-0.149254, 0.565931, -0.810830,
		0.925478, -0.208775, -0.316075,
		27.882282, 30.395449, 33.454323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183563, 30.381655, 32.987312>,  <27.234447, 30.541590, 33.675575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183563, 30.381655, 32.987312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520176, 30.216528, 33.126686>,  <27.722143, 30.117451, 33.210312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520176, 30.216528, 33.126686>,  <27.183563, 30.381655, 32.987312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520176, 30.216528, 33.126686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267700, -0.878913, -0.394778,
		0.469215, 0.238942, -0.850143,
		0.841531, -0.412819, 0.348435,
		27.772635, 30.092682, 33.231216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262947, 29.906149, 32.471809>,  <27.183563, 30.381655, 32.987312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262947, 29.906149, 32.471809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505503, 29.791451, 32.768475>,  <27.651037, 29.722631, 32.946476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505503, 29.791451, 32.768475>,  <27.262947, 29.906149, 32.471809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505503, 29.791451, 32.768475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129819, -0.955903, -0.263433,
		0.784499, 0.063461, -0.616875,
		0.606390, -0.286744, 0.741666,
		27.687420, 29.705427, 32.990974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753962, 29.342436, 32.199692>,  <27.262947, 29.906149, 32.471809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753962, 29.342436, 32.199692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738573, 29.276779, 32.593967>,  <27.729340, 29.237385, 32.830532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.738573, 29.276779, 32.593967>,  <27.753962, 29.342436, 32.199692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738573, 29.276779, 32.593967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179916, -0.969159, -0.168409,
		0.982929, -0.183819, 0.007751,
		-0.038469, -0.164140, 0.985687,
		27.727032, 29.227537, 32.889675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213345, 28.838717, 32.273247>,  <27.753962, 29.342436, 32.199692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213345, 28.838717, 32.273247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989779, 28.811834, 32.603844>,  <27.855639, 28.795706, 32.802204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989779, 28.811834, 32.603844>,  <28.213345, 28.838717, 32.273247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989779, 28.811834, 32.603844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041917, -0.993146, -0.109103,
		0.828164, -0.095623, 0.552268,
		-0.558916, -0.067206, 0.826496,
		27.822104, 28.791672, 32.851791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371975, 28.144669, 32.492378>,  <28.213345, 28.838717, 32.273247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371975, 28.144669, 32.492378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031418, 28.243805, 32.677292>,  <27.827084, 28.303288, 32.788239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.031418, 28.243805, 32.677292>,  <28.371975, 28.144669, 32.492378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031418, 28.243805, 32.677292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325887, -0.940527, -0.095954,
		0.411006, -0.232346, 0.881527,
		-0.851394, 0.247841, 0.462280,
		27.775999, 28.318157, 32.815975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302158, 27.603758, 33.082153>,  <28.371975, 28.144669, 32.492378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302158, 27.603758, 33.082153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945366, 27.779743, 33.040573>,  <27.731291, 27.885334, 33.015625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.945366, 27.779743, 33.040573>,  <28.302158, 27.603758, 33.082153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945366, 27.779743, 33.040573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436197, -0.897994, -0.057777,
		-0.118764, -0.006195, 0.992903,
		-0.891980, 0.439963, -0.103948,
		27.677773, 27.911732, 33.009388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797813, 27.375410, 33.712193>,  <28.302158, 27.603758, 33.082153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797813, 27.375410, 33.712193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624077, 27.507683, 33.377052>,  <27.519835, 27.587046, 33.175968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624077, 27.507683, 33.377052>,  <27.797813, 27.375410, 33.712193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624077, 27.507683, 33.377052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598377, -0.801192, -0.006013,
		-0.673269, 0.498741, 0.545862,
		-0.434342, 0.330680, -0.837853,
		27.493774, 27.606886, 33.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037998, 27.262100, 33.799408>,  <27.797813, 27.375410, 33.712193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037998, 27.262100, 33.799408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123343, 27.281292, 33.409092>,  <27.174549, 27.292807, 33.174900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123343, 27.281292, 33.409092>,  <27.037998, 27.262100, 33.799408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123343, 27.281292, 33.409092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560460, -0.812087, -0.162479,
		-0.800225, 0.581561, -0.146378,
		0.213363, 0.047981, -0.975794,
		27.187351, 27.295687, 33.116352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465708, 27.265938, 33.507607>,  <27.037998, 27.262100, 33.799408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465708, 27.265938, 33.507607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722998, 27.134703, 33.230877>,  <26.877371, 27.055962, 33.064838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722998, 27.134703, 33.230877>,  <26.465708, 27.265938, 33.507607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722998, 27.134703, 33.230877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599104, -0.778307, -0.187917,
		-0.476798, 0.535347, -0.697185,
		0.643224, -0.328088, -0.691824,
		26.915964, 27.036276, 33.023331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013365, 27.022009, 33.020607>,  <26.465708, 27.265938, 33.507607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013365, 27.022009, 33.020607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.360481, 26.879707, 32.881824>,  <26.568752, 26.794327, 32.798557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.360481, 26.879707, 32.881824>,  <26.013365, 27.022009, 33.020607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360481, 26.879707, 32.881824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474824, -0.799537, -0.367807,
		-0.146553, 0.483922, -0.862752,
		0.867793, -0.355752, -0.346952,
		26.620819, 26.772982, 32.777740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824011, 26.814054, 32.399433>,  <26.013365, 27.022009, 33.020607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824011, 26.814054, 32.399433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167559, 26.618786, 32.461437>,  <26.373688, 26.501625, 32.498638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.167559, 26.618786, 32.461437>,  <25.824011, 26.814054, 32.399433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167559, 26.618786, 32.461437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340958, -0.770762, -0.538213,
		0.382215, 0.409404, -0.828432,
		0.858871, -0.488173, 0.155007,
		26.425220, 26.472334, 32.507938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003073, 26.519051, 31.651636>,  <25.824011, 26.814054, 32.399433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003073, 26.519051, 31.651636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222383, 26.341331, 31.935041>,  <26.353970, 26.234699, 32.105083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.222383, 26.341331, 31.935041>,  <26.003073, 26.519051, 31.651636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222383, 26.341331, 31.935041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349576, -0.891395, -0.288464,
		0.759728, -0.089520, -0.644049,
		0.548279, -0.444298, 0.708512,
		26.386868, 26.208042, 32.147594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424845, 25.941790, 31.366684>,  <26.003073, 26.519051, 31.651636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424845, 25.941790, 31.366684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.406052, 25.832314, 31.750952>,  <26.394775, 25.766628, 31.981512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.406052, 25.832314, 31.750952>,  <26.424845, 25.941790, 31.366684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406052, 25.832314, 31.750952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234112, -0.931928, -0.276951,
		0.971074, -0.237916, -0.020290,
		-0.046982, -0.273690, 0.960670,
		26.391956, 25.750206, 32.039154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802420, 25.318638, 31.434753>,  <26.424845, 25.941790, 31.366684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802420, 25.318638, 31.434753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526505, 25.337292, 31.723757>,  <26.360956, 25.348484, 31.897158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526505, 25.337292, 31.723757>,  <26.802420, 25.318638, 31.434753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526505, 25.337292, 31.723757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355305, -0.891298, -0.281685,
		0.630833, -0.451013, 0.631377,
		-0.689788, 0.046635, 0.722507,
		26.319569, 25.351282, 31.940510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.111660, 36.535210, 47.272419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865341, 36.222927, 47.229912>,  <35.717548, 36.035557, 47.204407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865341, 36.222927, 47.229912>,  <36.111660, 36.535210, 47.272419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865341, 36.222927, 47.229912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255082, 0.069930, 0.964388,
		-0.745470, 0.620975, -0.242206,
		-0.615798, -0.780705, -0.106269,
		35.680603, 35.988716, 47.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512207, 36.709522, 47.640213>,  <36.111660, 36.535210, 47.272419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512207, 36.709522, 47.640213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533489, 36.310123, 47.634846>,  <35.546261, 36.070484, 47.631626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533489, 36.310123, 47.634846>,  <35.512207, 36.709522, 47.640213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533489, 36.310123, 47.634846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057169, -0.010371, 0.998311,
		-0.996946, -0.053885, 0.056531,
		0.053207, -0.998493, -0.013420,
		35.549450, 36.010574, 47.630821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070152, 36.502052, 48.117275>,  <35.512207, 36.709522, 47.640213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070152, 36.502052, 48.117275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334225, 36.206703, 48.062191>,  <35.492668, 36.029495, 48.029140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334225, 36.206703, 48.062191>,  <35.070152, 36.502052, 48.117275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334225, 36.206703, 48.062191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261173, 0.053763, 0.963794,
		-0.704234, -0.672248, 0.228337,
		0.660184, -0.738372, -0.137711,
		35.532280, 35.985191, 48.020878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027954, 35.989376, 48.696537>,  <35.070152, 36.502052, 48.117275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027954, 35.989376, 48.696537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381062, 35.894737, 48.534184>,  <35.592926, 35.837955, 48.436771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381062, 35.894737, 48.534184>,  <35.027954, 35.989376, 48.696537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381062, 35.894737, 48.534184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364838, -0.199088, 0.909537,
		-0.296002, -0.950992, -0.089428,
		0.882766, -0.236598, -0.405888,
		35.645893, 35.823757, 48.412418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257019, 35.369602, 49.040569>,  <35.027954, 35.989376, 48.696537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257019, 35.369602, 49.040569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587540, 35.525146, 48.877590>,  <35.785851, 35.618473, 48.779804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.587540, 35.525146, 48.877590>,  <35.257019, 35.369602, 49.040569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587540, 35.525146, 48.877590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523595, -0.263768, 0.810108,
		0.207551, -0.882729, -0.421559,
		0.826299, 0.388865, -0.407447,
		35.835430, 35.641808, 48.755356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749443, 34.874184, 49.184032>,  <35.257019, 35.369602, 49.040569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749443, 34.874184, 49.184032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952991, 35.211720, 49.115925>,  <36.075119, 35.414242, 49.075062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952991, 35.211720, 49.115925>,  <35.749443, 34.874184, 49.184032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952991, 35.211720, 49.115925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514748, -0.139731, 0.845878,
		0.689992, -0.518086, -0.505468,
		0.508867, 0.843838, -0.170270,
		36.105652, 35.464870, 49.064842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452965, 34.711243, 49.308403>,  <35.749443, 34.874184, 49.184032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452965, 34.711243, 49.308403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424225, 35.109001, 49.339420>,  <36.406982, 35.347656, 49.358032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424225, 35.109001, 49.339420>,  <36.452965, 34.711243, 49.308403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424225, 35.109001, 49.339420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520796, -0.028906, 0.853192,
		0.850653, 0.101683, -0.515801,
		-0.071845, 0.994397, 0.077545,
		36.402672, 35.407322, 49.362682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036163, 34.882771, 49.447449>,  <36.452965, 34.711243, 49.308403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036163, 34.882771, 49.447449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821701, 35.203331, 49.553505>,  <36.693024, 35.395668, 49.617138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821701, 35.203331, 49.553505>,  <37.036163, 34.882771, 49.447449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821701, 35.203331, 49.553505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400384, -0.035080, 0.915676,
		0.743123, 0.597100, -0.302059,
		-0.536154, 0.801399, 0.265138,
		36.660854, 35.443752, 49.633045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567875, 35.367710, 49.562893>,  <37.036163, 34.882771, 49.447449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567875, 35.367710, 49.562893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242256, 35.463814, 49.774403>,  <37.046883, 35.521477, 49.901310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242256, 35.463814, 49.774403>,  <37.567875, 35.367710, 49.562893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242256, 35.463814, 49.774403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559797, 0.081970, 0.824566,
		0.154763, 0.967243, -0.201222,
		-0.814049, 0.240256, 0.528773,
		36.998043, 35.535889, 49.933033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696049, 35.962242, 49.925091>,  <37.567875, 35.367710, 49.562893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696049, 35.962242, 49.925091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395309, 35.837139, 50.157265>,  <37.214867, 35.762077, 50.296570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395309, 35.837139, 50.157265>,  <37.696049, 35.962242, 49.925091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395309, 35.837139, 50.157265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548701, 0.191330, 0.813830,
		-0.365587, 0.930363, 0.027759,
		-0.751847, -0.312757, 0.580439,
		37.169754, 35.743313, 50.331398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728310, 36.442879, 50.516384>,  <37.696049, 35.962242, 49.925091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728310, 36.442879, 50.516384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542835, 36.106468, 50.627869>,  <37.431553, 35.904621, 50.694759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542835, 36.106468, 50.627869>,  <37.728310, 36.442879, 50.516384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542835, 36.106468, 50.627869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411782, 0.073970, 0.908275,
		-0.784497, 0.535919, 0.312019,
		-0.463682, -0.841023, 0.278711,
		37.403732, 35.854160, 50.711483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530201, 36.597919, 51.223900>,  <37.728310, 36.442879, 50.516384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530201, 36.597919, 51.223900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497005, 36.199753, 51.204929>,  <37.477089, 35.960854, 51.193546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497005, 36.199753, 51.204929>,  <37.530201, 36.597919, 51.223900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497005, 36.199753, 51.204929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607052, -0.088238, 0.789748,
		-0.790317, 0.036747, 0.611595,
		-0.082987, -0.995421, -0.047429,
		37.472111, 35.901127, 51.190701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322582, 36.434212, 51.842064>,  <37.530201, 36.597919, 51.223900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322582, 36.434212, 51.842064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497868, 36.105164, 51.697144>,  <37.603039, 35.907734, 51.610191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497868, 36.105164, 51.697144>,  <37.322582, 36.434212, 51.842064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497868, 36.105164, 51.697144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501211, -0.110962, 0.858181,
		-0.746159, -0.557659, 0.363681,
		0.438217, -0.822621, -0.362300,
		37.629333, 35.858379, 51.588455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207386, 36.642658, 52.641876>,  <37.322582, 36.434212, 51.842064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207386, 36.642658, 52.641876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950825, 36.350719, 52.736473>,  <36.796890, 36.175556, 52.793232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950825, 36.350719, 52.736473>,  <37.207386, 36.642658, 52.641876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950825, 36.350719, 52.736473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299679, 0.045424, 0.952958,
		-0.706256, 0.682099, 0.189585,
		-0.641400, -0.729847, 0.236492,
		36.758404, 36.131763, 52.807423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458729, 36.635933, 52.375057>,  <37.207386, 36.642658, 52.641876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458729, 36.635933, 52.375057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116608, 36.750935, 52.547478>,  <35.911335, 36.819935, 52.650932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116608, 36.750935, 52.547478>,  <36.458729, 36.635933, 52.375057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116608, 36.750935, 52.547478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415915, 0.115178, -0.902080,
		-0.308998, -0.950829, 0.021064,
		-0.855298, 0.287502, 0.431054,
		35.860020, 36.837185, 52.676792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958080, 36.358688, 51.993229>,  <36.458729, 36.635933, 52.375057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958080, 36.358688, 51.993229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760979, 36.651791, 52.180958>,  <35.642719, 36.827652, 52.293594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760979, 36.651791, 52.180958>,  <35.958080, 36.358688, 51.993229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760979, 36.651791, 52.180958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479443, 0.221476, -0.849166,
		-0.726174, -0.643444, 0.242180,
		-0.492754, 0.732753, 0.469325,
		35.613152, 36.871616, 52.321754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168217, 36.231647, 51.962051>,  <35.958080, 36.358688, 51.993229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168217, 36.231647, 51.962051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196972, 36.624706, 52.030457>,  <35.214226, 36.860542, 52.071499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196972, 36.624706, 52.030457>,  <35.168217, 36.231647, 51.962051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196972, 36.624706, 52.030457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596861, 0.179749, -0.781951,
		-0.799118, -0.045853, 0.599424,
		0.071891, 0.982644, 0.171008,
		35.218540, 36.919498, 52.081760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502716, 36.502094, 51.829685>,  <35.168217, 36.231647, 51.962051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502716, 36.502094, 51.829685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738491, 36.824879, 51.814838>,  <34.879955, 37.018547, 51.805931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.738491, 36.824879, 51.814838>,  <34.502716, 36.502094, 51.829685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738491, 36.824879, 51.814838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514395, 0.339521, -0.787478,
		-0.622861, 0.483264, 0.615223,
		0.589442, 0.806958, -0.037114,
		34.915325, 37.066967, 51.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111748, 37.100460, 51.888382>,  <34.502716, 36.502094, 51.829685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111748, 37.100460, 51.888382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429234, 37.222668, 51.677982>,  <34.619724, 37.295990, 51.551743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429234, 37.222668, 51.677982>,  <34.111748, 37.100460, 51.888382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429234, 37.222668, 51.677982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600249, 0.253257, -0.758658,
		-0.098569, 0.917890, 0.384399,
		0.793716, 0.305515, -0.525999,
		34.667347, 37.314323, 51.520184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913109, 37.802902, 51.591972>,  <34.111748, 37.100460, 51.888382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913109, 37.802902, 51.591972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220234, 37.675411, 51.369667>,  <34.404510, 37.598915, 51.236282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220234, 37.675411, 51.369667>,  <33.913109, 37.802902, 51.591972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220234, 37.675411, 51.369667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501771, 0.240213, -0.830978,
		0.398358, 0.916903, 0.024510,
		0.767813, -0.318728, -0.555765,
		34.450577, 37.579792, 51.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166889, 38.397285, 51.109402>,  <33.913109, 37.802902, 51.591972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166889, 38.397285, 51.109402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279015, 38.048077, 50.949772>,  <34.346291, 37.838551, 50.853996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279015, 38.048077, 50.949772>,  <34.166889, 38.397285, 51.109402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279015, 38.048077, 50.949772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343420, 0.297014, -0.890980,
		0.896373, 0.386807, -0.216553,
		0.280318, -0.873019, -0.399073,
		34.363110, 37.786171, 50.830051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031124, 38.500210, 50.463795>,  <34.166889, 38.397285, 51.109402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031124, 38.500210, 50.463795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140835, 38.117580, 50.424313>,  <34.206661, 37.888004, 50.400623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140835, 38.117580, 50.424313>,  <34.031124, 38.500210, 50.463795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140835, 38.117580, 50.424313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117607, 0.068506, -0.990695,
		0.954433, 0.283331, -0.093710,
		0.274275, -0.956573, -0.098705,
		34.223118, 37.830608, 50.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642010, 38.467731, 50.013706>,  <34.031124, 38.500210, 50.463795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642010, 38.467731, 50.013706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433655, 38.126568, 49.999695>,  <34.308643, 37.921871, 49.991287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433655, 38.126568, 49.999695>,  <34.642010, 38.467731, 50.013706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433655, 38.126568, 49.999695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072752, 0.085237, -0.993701,
		0.850520, -0.515058, -0.106450,
		-0.520887, -0.852906, -0.035025,
		34.277390, 37.870697, 49.989189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884014, 38.202305, 49.377205>,  <34.642010, 38.467731, 50.013706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884014, 38.202305, 49.377205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578201, 37.956097, 49.453751>,  <34.394714, 37.808372, 49.499680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.578201, 37.956097, 49.453751>,  <34.884014, 38.202305, 49.377205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578201, 37.956097, 49.453751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203391, -0.051354, -0.977750,
		0.611656, -0.786443, -0.085930,
		-0.764531, -0.615524, 0.191367,
		34.348843, 37.771439, 49.511162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006630, 37.568916, 49.009216>,  <34.884014, 38.202305, 49.377205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006630, 37.568916, 49.009216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613323, 37.597992, 49.076035>,  <34.377338, 37.615437, 49.116127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.613323, 37.597992, 49.076035>,  <35.006630, 37.568916, 49.009216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613323, 37.597992, 49.076035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170692, -0.047189, -0.984194,
		-0.063672, -0.996237, 0.058810,
		-0.983265, 0.072704, 0.167045,
		34.318344, 37.619801, 49.126148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680939, 36.991917, 48.736862>,  <35.006630, 37.568916, 49.009216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680939, 36.991917, 48.736862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413342, 37.289207, 48.739956>,  <34.252781, 37.467583, 48.741814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413342, 37.289207, 48.739956>,  <34.680939, 36.991917, 48.736862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413342, 37.289207, 48.739956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086797, -0.067780, -0.993918,
		-0.738180, -0.665599, 0.109854,
		-0.668996, 0.743225, 0.007738,
		34.212643, 37.512177, 48.742279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184704, 36.829773, 48.206573>,  <34.680939, 36.991917, 48.736862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184704, 36.829773, 48.206573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132820, 37.221451, 48.268990>,  <34.101692, 37.456459, 48.306438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132820, 37.221451, 48.268990>,  <34.184704, 36.829773, 48.206573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132820, 37.221451, 48.268990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302314, 0.110825, -0.946744,
		-0.944342, -0.169972, 0.281650,
		-0.129706, 0.979197, 0.156042,
		34.093906, 37.515209, 48.315804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541416, 37.057304, 47.855511>,  <34.184704, 36.829773, 48.206573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541416, 37.057304, 47.855511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740051, 37.402088, 47.896378>,  <33.859230, 37.608959, 47.920898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740051, 37.402088, 47.896378>,  <33.541416, 37.057304, 47.855511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740051, 37.402088, 47.896378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214690, 0.236021, -0.947735,
		-0.841019, 0.448695, 0.302257,
		0.496583, 0.861955, 0.102168,
		33.889027, 37.660675, 47.927029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785599, 36.898464, 47.839134>,  <33.541416, 37.057304, 47.855511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785599, 36.898464, 47.839134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499077, 36.634689, 47.747879>,  <32.327164, 36.476425, 47.693127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499077, 36.634689, 47.747879>,  <32.785599, 36.898464, 47.839134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499077, 36.634689, 47.747879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022366, -0.348479, 0.937049,
		-0.697425, 0.666114, 0.264368,
		-0.716309, -0.659434, -0.228139,
		32.284184, 36.436859, 47.679436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365051, 36.886959, 48.411602>,  <32.785599, 36.898464, 47.839134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365051, 36.886959, 48.411602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308273, 36.540852, 48.219280>,  <32.274208, 36.333187, 48.103889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308273, 36.540852, 48.219280>,  <32.365051, 36.886959, 48.411602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308273, 36.540852, 48.219280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093450, -0.495262, 0.863703,
		-0.985454, 0.077665, 0.151157,
		-0.141943, -0.865265, -0.480800,
		32.265690, 36.281273, 48.075039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824499, 36.523911, 48.750877>,  <32.365051, 36.886959, 48.411602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824499, 36.523911, 48.750877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993242, 36.230118, 48.538250>,  <32.094486, 36.053841, 48.410671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993242, 36.230118, 48.538250>,  <31.824499, 36.523911, 48.750877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993242, 36.230118, 48.538250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081368, -0.553259, 0.829026,
		-0.903004, -0.392983, -0.173632,
		0.421856, -0.734486, -0.531571,
		32.119801, 36.009773, 48.378780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423677, 35.911404, 48.909725>,  <31.824499, 36.523911, 48.750877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423677, 35.911404, 48.909725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.772160, 35.782887, 48.761257>,  <31.981249, 35.705776, 48.672176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.772160, 35.782887, 48.761257>,  <31.423677, 35.911404, 48.909725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772160, 35.782887, 48.761257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156366, -0.535079, 0.830205,
		-0.465346, -0.781319, -0.415925,
		0.871208, -0.321295, -0.371169,
		32.033524, 35.686497, 48.649906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378206, 35.248848, 49.126423>,  <31.423677, 35.911404, 48.909725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378206, 35.248848, 49.126423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769411, 35.293316, 49.055843>,  <32.004135, 35.319996, 49.013496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769411, 35.293316, 49.055843>,  <31.378206, 35.248848, 49.126423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769411, 35.293316, 49.055843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208234, -0.567359, 0.796707,
		-0.011538, -0.815931, -0.578034,
		0.978011, 0.111174, -0.176451,
		32.062813, 35.326668, 49.002907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739153, 34.671322, 49.441730>,  <31.378206, 35.248848, 49.126423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739153, 34.671322, 49.441730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064472, 34.893234, 49.371574>,  <32.259663, 35.026382, 49.329479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.064472, 34.893234, 49.371574>,  <31.739153, 34.671322, 49.441730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064472, 34.893234, 49.371574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437318, -0.384014, 0.813195,
		0.383795, -0.738072, -0.554934,
		0.813299, 0.554783, -0.175389,
		32.308460, 35.059669, 49.318958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375492, 34.190193, 49.430565>,  <31.739153, 34.671322, 49.441730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375492, 34.190193, 49.430565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475861, 34.569908, 49.506348>,  <32.536083, 34.797737, 49.551815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475861, 34.569908, 49.506348>,  <32.375492, 34.190193, 49.430565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475861, 34.569908, 49.506348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385016, -0.277440, 0.880222,
		0.888145, -0.147923, -0.435106,
		0.250921, 0.949287, 0.189455,
		32.551136, 34.854694, 49.563183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894260, 33.706230, 49.129704>,  <32.375492, 34.190193, 49.430565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894260, 33.706230, 49.129704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781380, 33.327061, 49.070633>,  <32.713654, 33.099560, 49.035191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781380, 33.327061, 49.070633>,  <32.894260, 33.706230, 49.129704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781380, 33.327061, 49.070633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228775, 0.215988, -0.949216,
		0.931679, -0.234082, -0.277812,
		-0.282198, -0.947922, -0.147679,
		32.696720, 33.042683, 49.026329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393116, 33.273891, 48.679821>,  <32.894260, 33.706230, 49.129704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393116, 33.273891, 48.679821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019726, 33.133564, 48.650005>,  <32.795692, 33.049366, 48.632114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019726, 33.133564, 48.650005>,  <33.393116, 33.273891, 48.679821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019726, 33.133564, 48.650005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067146, 0.033213, -0.997190,
		0.352310, -0.935854, -0.007447,
		-0.933472, -0.350820, -0.074540,
		32.739685, 33.028316, 48.627644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342300, 32.814384, 48.145344>,  <33.393116, 33.273891, 48.679821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342300, 32.814384, 48.145344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955936, 32.905697, 48.194191>,  <32.724117, 32.960484, 48.223499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955936, 32.905697, 48.194191>,  <33.342300, 32.814384, 48.145344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955936, 32.905697, 48.194191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110647, 0.062429, -0.991897,
		-0.234058, -0.971591, -0.035042,
		-0.965906, 0.228284, 0.122116,
		32.666164, 32.974182, 48.230827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052563, 32.537556, 47.536526>,  <33.342300, 32.814384, 48.145344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052563, 32.537556, 47.536526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741825, 32.760998, 47.652786>,  <32.555382, 32.895061, 47.722542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741825, 32.760998, 47.652786>,  <33.052563, 32.537556, 47.536526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741825, 32.760998, 47.652786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320346, 0.046787, -0.946145,
		-0.542120, -0.828113, 0.142601,
		-0.776843, 0.558605, 0.290647,
		32.508774, 32.928577, 47.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555416, 32.324539, 47.170532>,  <33.052563, 32.537556, 47.536526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555416, 32.324539, 47.170532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409649, 32.676903, 47.291325>,  <32.322189, 32.888321, 47.363800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409649, 32.676903, 47.291325>,  <32.555416, 32.324539, 47.170532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409649, 32.676903, 47.291325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226470, 0.230710, -0.946300,
		-0.903278, -0.413239, 0.115426,
		-0.364418, 0.880912, 0.301982,
		32.300323, 32.941177, 47.381920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909908, 32.383770, 46.863998>,  <32.555416, 32.324539, 47.170532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909908, 32.383770, 46.863998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026279, 32.760174, 46.933125>,  <32.096104, 32.986015, 46.974602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026279, 32.760174, 46.933125>,  <31.909908, 32.383770, 46.863998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026279, 32.760174, 46.933125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309447, 0.263472, -0.913688,
		-0.905319, 0.212340, 0.367843,
		0.290928, 0.941007, 0.172818,
		32.113560, 33.042477, 46.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409361, 32.771725, 46.545593>,  <31.909908, 32.383770, 46.863998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409361, 32.771725, 46.545593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674059, 33.059647, 46.629467>,  <31.832878, 33.232399, 46.679790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674059, 33.059647, 46.629467>,  <31.409361, 32.771725, 46.545593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674059, 33.059647, 46.629467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281968, 0.498094, -0.819998,
		-0.694685, 0.483505, 0.532575,
		0.661745, 0.719809, 0.209685,
		31.872583, 33.275589, 46.692371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.565678, 32.700207, 50.987179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.506882, 33.061588, 50.826099>,  <37.471603, 33.278416, 50.729454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.506882, 33.061588, 50.826099>,  <37.565678, 32.700207, 50.987179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506882, 33.061588, 50.826099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259976, -0.357517, -0.896992,
		-0.954362, -0.236538, -0.182326,
		-0.146988, 0.903455, -0.402695,
		37.462784, 33.332626, 50.705292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181522, 32.562363, 50.403263>,  <37.565678, 32.700207, 50.987179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181522, 32.562363, 50.403263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.344048, 32.924564, 50.354321>,  <37.441563, 33.141884, 50.324955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.344048, 32.924564, 50.354321>,  <37.181522, 32.562363, 50.403263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344048, 32.924564, 50.354321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076347, -0.167083, -0.982982,
		-0.910540, 0.390055, -0.137021,
		0.406311, 0.905506, -0.122356,
		37.465942, 33.196217, 50.317616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764530, 33.008888, 49.912357>,  <37.181522, 32.562363, 50.403263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764530, 33.008888, 49.912357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.137016, 33.154163, 49.900116>,  <37.360508, 33.241329, 49.892773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.137016, 33.154163, 49.900116>,  <36.764530, 33.008888, 49.912357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137016, 33.154163, 49.900116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002162, -0.089472, -0.995987,
		-0.364469, 0.927410, -0.084103,
		0.931213, 0.363188, -0.030605,
		37.416382, 33.263119, 49.890934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844566, 33.480541, 49.331917>,  <36.764530, 33.008888, 49.912357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844566, 33.480541, 49.331917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.224201, 33.374557, 49.400070>,  <37.451981, 33.310966, 49.440964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.224201, 33.374557, 49.400070>,  <36.844566, 33.480541, 49.331917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224201, 33.374557, 49.400070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139298, -0.132139, -0.981394,
		0.282542, 0.955163, -0.088504,
		0.949087, -0.264957, 0.170387,
		37.508926, 33.295071, 49.451187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176311, 33.879280, 48.778648>,  <36.844566, 33.480541, 49.331917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176311, 33.879280, 48.778648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.421658, 33.586128, 48.896408>,  <37.568863, 33.410236, 48.967064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.421658, 33.586128, 48.896408>,  <37.176311, 33.879280, 48.778648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421658, 33.586128, 48.896408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111343, -0.288795, -0.950894,
		0.781913, 0.616023, -0.095535,
		0.613363, -0.732879, 0.294403,
		37.605667, 33.366264, 48.984730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693790, 33.912086, 48.309563>,  <37.176311, 33.879280, 48.778648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693790, 33.912086, 48.309563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.707748, 33.543159, 48.463501>,  <37.716125, 33.321804, 48.555862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.707748, 33.543159, 48.463501>,  <37.693790, 33.912086, 48.309563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707748, 33.543159, 48.463501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101883, -0.379792, -0.919444,
		0.994184, 0.071296, 0.080715,
		0.034898, -0.922320, 0.384847,
		37.718216, 33.266464, 48.578957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190525, 33.684841, 47.932705>,  <37.693790, 33.912086, 48.309563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190525, 33.684841, 47.932705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.024975, 33.347126, 48.068871>,  <37.925644, 33.144497, 48.150570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.024975, 33.347126, 48.068871>,  <38.190525, 33.684841, 47.932705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024975, 33.347126, 48.068871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238910, -0.461577, -0.854324,
		0.878422, -0.272259, 0.392746,
		-0.413880, -0.844288, 0.340414,
		37.900810, 33.093842, 48.170994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631229, 33.130337, 47.690521>,  <38.190525, 33.684841, 47.932705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631229, 33.130337, 47.690521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.281643, 32.957016, 47.778549>,  <38.071892, 32.853024, 47.831367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.281643, 32.957016, 47.778549>,  <38.631229, 33.130337, 47.690521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281643, 32.957016, 47.778549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058850, -0.543861, -0.837110,
		0.482412, -0.718654, 0.500816,
		-0.873966, -0.433304, 0.220071,
		38.019455, 32.827026, 47.844570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693539, 32.400543, 47.627747>,  <38.631229, 33.130337, 47.690521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693539, 32.400543, 47.627747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.299129, 32.451153, 47.584377>,  <38.062485, 32.481518, 47.558357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.299129, 32.451153, 47.584377>,  <38.693539, 32.400543, 47.627747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299129, 32.451153, 47.584377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038231, -0.461527, -0.886302,
		-0.162177, -0.878057, 0.450238,
		-0.986021, 0.126525, -0.108418,
		38.003323, 32.489109, 47.551853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511116, 31.786442, 47.281490>,  <38.693539, 32.400543, 47.627747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511116, 31.786442, 47.281490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.175102, 32.002617, 47.262440>,  <37.973495, 32.132320, 47.251007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.175102, 32.002617, 47.262440>,  <38.511116, 31.786442, 47.281490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175102, 32.002617, 47.262440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285965, -0.515670, -0.807656,
		-0.461047, -0.664840, 0.587728,
		-0.840035, 0.540437, -0.047627,
		37.923092, 32.164749, 47.248150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851940, 31.299669, 47.187477>,  <38.511116, 31.786442, 47.281490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851940, 31.299669, 47.187477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751034, 31.651434, 47.025982>,  <37.690491, 31.862492, 46.929085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751034, 31.651434, 47.025982>,  <37.851940, 31.299669, 47.187477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751034, 31.651434, 47.025982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235404, -0.460466, -0.855895,
		-0.938589, -0.120869, 0.323175,
		-0.252262, 0.879410, -0.403735,
		37.675354, 31.915257, 46.904861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196400, 31.245350, 46.759247>,  <37.851940, 31.299669, 47.187477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196400, 31.245350, 46.759247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371433, 31.580345, 46.628323>,  <37.476456, 31.781342, 46.549767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371433, 31.580345, 46.628323>,  <37.196400, 31.245350, 46.759247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371433, 31.580345, 46.628323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223213, -0.251442, -0.941782,
		-0.871030, 0.485172, 0.076910,
		0.437588, 0.837487, -0.327310,
		37.502708, 31.831591, 46.530128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620274, 31.563271, 46.805027>,  <37.196400, 31.245350, 46.759247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620274, 31.563271, 46.805027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.427090, 31.213018, 46.806698>,  <36.311180, 31.002867, 46.807701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.427090, 31.213018, 46.806698>,  <36.620274, 31.563271, 46.805027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427090, 31.213018, 46.806698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126982, 0.074753, 0.989084,
		-0.866384, 0.477162, -0.147292,
		-0.482964, -0.875630, 0.004174,
		36.282200, 30.950329, 46.807949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982700, 31.661425, 47.087959>,  <36.620274, 31.563271, 46.805027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982700, 31.661425, 47.087959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.081429, 31.278687, 47.149307>,  <36.140667, 31.049044, 47.186115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.081429, 31.278687, 47.149307>,  <35.982700, 31.661425, 47.087959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081429, 31.278687, 47.149307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052141, 0.144925, 0.988068,
		-0.967657, -0.251876, -0.014120,
		0.246824, -0.956847, 0.153371,
		36.155476, 30.991632, 47.195320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533333, 31.296524, 47.689865>,  <35.982700, 31.661425, 47.087959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533333, 31.296524, 47.689865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.846111, 31.048979, 47.660023>,  <36.033779, 30.900452, 47.642117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.846111, 31.048979, 47.660023>,  <35.533333, 31.296524, 47.689865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846111, 31.048979, 47.660023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038503, -0.071511, 0.996696,
		-0.622156, -0.782235, -0.032089,
		0.781946, -0.618865, -0.074610,
		36.080696, 30.863319, 47.637638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320465, 30.711039, 48.049564>,  <35.533333, 31.296524, 47.689865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320465, 30.711039, 48.049564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719673, 30.685913, 48.047848>,  <35.959198, 30.670837, 48.046818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.719673, 30.685913, 48.047848>,  <35.320465, 30.711039, 48.049564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719673, 30.685913, 48.047848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002478, -0.028978, 0.999577,
		-0.062913, -0.997604, -0.028765,
		0.998016, -0.062815, -0.004295,
		36.019077, 30.667070, 48.046558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567253, 30.101580, 48.411114>,  <35.320465, 30.711039, 48.049564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567253, 30.101580, 48.411114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.887711, 30.338661, 48.444279>,  <36.079987, 30.480909, 48.464176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.887711, 30.338661, 48.444279>,  <35.567253, 30.101580, 48.411114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887711, 30.338661, 48.444279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089805, -0.017909, 0.995798,
		0.591697, -0.805222, 0.038880,
		0.801143, 0.592702, 0.082909,
		36.128052, 30.516472, 48.469151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910988, 29.836014, 48.902328>,  <35.567253, 30.101580, 48.411114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910988, 29.836014, 48.902328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.106136, 30.185007, 48.891346>,  <36.223225, 30.394403, 48.884758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.106136, 30.185007, 48.891346>,  <35.910988, 29.836014, 48.902328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106136, 30.185007, 48.891346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101998, -0.025738, 0.994452,
		0.866938, -0.487962, -0.101548,
		0.487868, 0.872485, -0.027458,
		36.252499, 30.446753, 48.883110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401718, 29.730375, 49.335388>,  <35.910988, 29.836014, 48.902328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401718, 29.730375, 49.335388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392494, 30.127731, 49.290401>,  <36.386959, 30.366144, 49.263409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.392494, 30.127731, 49.290401>,  <36.401718, 29.730375, 49.335388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392494, 30.127731, 49.290401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109026, 0.114321, 0.987443,
		0.993771, 0.010506, -0.110941,
		-0.023057, 0.993388, -0.112464,
		36.385578, 30.425747, 49.256660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970764, 30.102282, 49.766888>,  <36.401718, 29.730375, 49.335388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970764, 30.102282, 49.766888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.643883, 30.327724, 49.718674>,  <36.447754, 30.462990, 49.689747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.643883, 30.327724, 49.718674>,  <36.970764, 30.102282, 49.766888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643883, 30.327724, 49.718674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047691, 0.142288, 0.988676,
		0.574376, 0.813695, -0.089399,
		-0.817201, 0.563608, -0.120533,
		36.398724, 30.496807, 49.682514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063972, 30.631353, 50.232578>,  <36.970764, 30.102282, 49.766888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063972, 30.631353, 50.232578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.675987, 30.682119, 50.149567>,  <36.443195, 30.712578, 50.099758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.675987, 30.682119, 50.149567>,  <37.063972, 30.631353, 50.232578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675987, 30.682119, 50.149567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178421, 0.208752, 0.961555,
		0.165358, 0.969699, -0.179837,
		-0.969960, 0.126914, -0.207533,
		36.384998, 30.720194, 50.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786400, 31.277821, 50.563698>,  <37.063972, 30.631353, 50.232578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786400, 31.277821, 50.563698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.482197, 31.025721, 50.501186>,  <36.299675, 30.874460, 50.463680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.482197, 31.025721, 50.501186>,  <36.786400, 31.277821, 50.563698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482197, 31.025721, 50.501186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294399, 0.120152, 0.948099,
		-0.578761, 0.767040, -0.276921,
		-0.760503, -0.630248, -0.156277,
		36.254047, 30.836647, 50.454304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338703, 31.663731, 50.824261>,  <36.786400, 31.277821, 50.563698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338703, 31.663731, 50.824261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192814, 31.292082, 50.799915>,  <36.105282, 31.069092, 50.785309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192814, 31.292082, 50.799915>,  <36.338703, 31.663731, 50.824261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192814, 31.292082, 50.799915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378933, 0.088402, 0.921192,
		-0.850521, 0.359045, -0.384318,
		-0.364724, -0.929124, -0.060866,
		36.083397, 31.013344, 50.781654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612705, 31.686275, 51.178024>,  <36.338703, 31.663731, 50.824261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612705, 31.686275, 51.178024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.674282, 31.291121, 51.185818>,  <35.711227, 31.054028, 51.190495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.674282, 31.291121, 51.185818>,  <35.612705, 31.686275, 51.178024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674282, 31.291121, 51.185818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421530, -0.047825, 0.905552,
		-0.893652, -0.147616, -0.423787,
		0.153942, -0.987888, 0.019486,
		35.720463, 30.994755, 51.191662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984589, 31.341022, 51.221405>,  <35.612705, 31.686275, 51.178024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984589, 31.341022, 51.221405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.248379, 31.070465, 51.352604>,  <35.406651, 30.908131, 51.431324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.248379, 31.070465, 51.352604>,  <34.984589, 31.341022, 51.221405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248379, 31.070465, 51.352604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530784, -0.110003, 0.840338,
		-0.532319, -0.728278, -0.431564,
		0.659472, -0.676396, 0.328001,
		35.446220, 30.867546, 51.451004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540081, 30.787550, 51.515289>,  <34.984589, 31.341022, 51.221405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540081, 30.787550, 51.515289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.906612, 30.775196, 51.674984>,  <35.126530, 30.767784, 51.770802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.906612, 30.775196, 51.674984>,  <34.540081, 30.787550, 51.515289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906612, 30.775196, 51.674984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395246, -0.229606, 0.889416,
		0.064198, -0.972794, -0.222601,
		0.916329, -0.030883, 0.399233,
		35.181511, 30.765930, 51.794754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921936, 31.102259, 51.157265>,  <34.540081, 30.787550, 51.515289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921936, 31.102259, 51.157265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700504, 31.379646, 51.341721>,  <33.567646, 31.546080, 51.452393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700504, 31.379646, 51.341721>,  <33.921936, 31.102259, 51.157265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700504, 31.379646, 51.341721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388766, 0.274493, -0.879497,
		-0.736483, -0.666148, 0.117643,
		-0.553583, 0.693470, 0.461135,
		33.534428, 31.587687, 51.480061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313103, 31.059383, 50.772846>,  <33.921936, 31.102259, 51.157265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313103, 31.059383, 50.772846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314034, 31.418978, 50.948036>,  <33.314594, 31.634733, 51.053150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.314034, 31.418978, 50.948036>,  <33.313103, 31.059383, 50.772846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314034, 31.418978, 50.948036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331824, 0.413856, -0.847713,
		-0.943339, -0.143354, 0.299269,
		0.002331, 0.898985, 0.437974,
		33.314732, 31.688673, 51.079430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667706, 31.366585, 50.774273>,  <33.313103, 31.059383, 50.772846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667706, 31.366585, 50.774273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.906483, 31.686573, 50.798618>,  <33.049747, 31.878567, 50.813225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.906483, 31.686573, 50.798618>,  <32.667706, 31.366585, 50.774273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906483, 31.686573, 50.798618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346414, 0.325436, -0.879823,
		-0.723641, 0.504120, 0.471388,
		0.596943, 0.799972, 0.060865,
		33.085567, 31.926565, 50.816879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268726, 31.957972, 50.632816>,  <32.667706, 31.366585, 50.774273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268726, 31.957972, 50.632816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.638355, 32.096565, 50.568279>,  <32.860134, 32.179722, 50.529556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.638355, 32.096565, 50.568279>,  <32.268726, 31.957972, 50.632816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638355, 32.096565, 50.568279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290298, 0.361667, -0.885960,
		-0.248616, 0.865533, 0.434791,
		0.924077, 0.346482, -0.161346,
		32.915577, 32.200508, 50.519875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206593, 32.596874, 50.609333>,  <32.268726, 31.957972, 50.632816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206593, 32.596874, 50.609333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.534920, 32.518044, 50.394890>,  <32.731915, 32.470745, 50.266224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.534920, 32.518044, 50.394890>,  <32.206593, 32.596874, 50.609333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534920, 32.518044, 50.394890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443993, 0.370336, -0.815918,
		0.359342, 0.907750, 0.216477,
		0.820819, -0.197080, -0.536112,
		32.781166, 32.458920, 50.234055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277554, 33.197685, 50.276318>,  <32.206593, 32.596874, 50.609333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277554, 33.197685, 50.276318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.513538, 32.948246, 50.071156>,  <32.655128, 32.798580, 49.948059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.513538, 32.948246, 50.071156>,  <32.277554, 33.197685, 50.276318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513538, 32.948246, 50.071156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201526, 0.501399, -0.841419,
		0.781880, 0.599765, 0.170133,
		0.589959, -0.623602, -0.512902,
		32.690525, 32.761166, 49.917286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634186, 33.582211, 49.778290>,  <32.277554, 33.197685, 50.276318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634186, 33.582211, 49.778290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637192, 33.214596, 49.620655>,  <32.638996, 32.994026, 49.526073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637192, 33.214596, 49.620655>,  <32.634186, 33.582211, 49.778290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637192, 33.214596, 49.620655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311935, 0.372282, -0.874130,
		0.950074, 0.129496, -0.283885,
		0.007511, -0.919041, -0.394089,
		32.639446, 32.938885, 49.502430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006069, 34.215931, 49.858253>,  <32.634186, 33.582211, 49.778290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006069, 34.215931, 49.858253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909161, 34.600258, 49.912132>,  <32.851017, 34.830853, 49.944458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909161, 34.600258, 49.912132>,  <33.006069, 34.215931, 49.858253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909161, 34.600258, 49.912132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502494, 0.005501, 0.864563,
		0.829943, 0.277142, -0.484136,
		-0.242270, 0.960813, 0.134697,
		32.836479, 34.888500, 49.952541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652870, 34.519192, 50.009277>,  <33.006069, 34.215931, 49.858253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652870, 34.519192, 50.009277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362286, 34.767727, 50.126709>,  <33.187935, 34.916847, 50.197170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362286, 34.767727, 50.126709>,  <33.652870, 34.519192, 50.009277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362286, 34.767727, 50.126709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437173, 0.088233, 0.895039,
		0.530218, 0.778559, -0.335731,
		-0.726463, 0.621338, 0.293582,
		33.144348, 34.954128, 50.214783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926437, 35.190804, 50.210842>,  <33.652870, 34.519192, 50.009277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926437, 35.190804, 50.210842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.570038, 35.174103, 50.391674>,  <33.356197, 35.164082, 50.500172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.570038, 35.174103, 50.391674>,  <33.926437, 35.190804, 50.210842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570038, 35.174103, 50.391674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446406, 0.100808, 0.889134,
		-0.082695, 0.994029, -0.071183,
		-0.891001, -0.041751, 0.452077,
		33.302738, 35.161579, 50.527298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894104, 35.786575, 50.663391>,  <33.926437, 35.190804, 50.210842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894104, 35.786575, 50.663391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642799, 35.501614, 50.788464>,  <33.492016, 35.330635, 50.863506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642799, 35.501614, 50.788464>,  <33.894104, 35.786575, 50.663391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642799, 35.501614, 50.788464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267025, 0.180034, 0.946724,
		-0.730742, 0.678283, 0.077121,
		-0.628262, -0.712404, 0.312677,
		33.454319, 35.287891, 50.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878117, 35.964756, 51.272537>,  <33.894104, 35.786575, 50.663391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878117, 35.964756, 51.272537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701843, 35.607162, 51.304993>,  <33.596077, 35.392605, 51.324467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701843, 35.607162, 51.304993>,  <33.878117, 35.964756, 51.272537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701843, 35.607162, 51.304993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234259, -0.027276, 0.971791,
		-0.866555, 0.447264, 0.221445,
		-0.440687, -0.893986, 0.081139,
		33.569637, 35.338966, 51.329334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408878, 36.036942, 51.818581>,  <33.878117, 35.964756, 51.272537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408878, 36.036942, 51.818581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.499615, 35.648235, 51.792599>,  <33.554058, 35.415012, 51.777008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.499615, 35.648235, 51.792599>,  <33.408878, 36.036942, 51.818581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499615, 35.648235, 51.792599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172767, -0.025489, 0.984633,
		-0.958485, -0.234582, 0.162106,
		0.226845, -0.971762, -0.064959,
		33.567669, 35.356709, 51.773109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134464, 35.775055, 52.362385>,  <33.408878, 36.036942, 51.818581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134464, 35.775055, 52.362385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.403576, 35.494385, 52.268562>,  <33.565044, 35.325985, 52.212269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.403576, 35.494385, 52.268562>,  <33.134464, 35.775055, 52.362385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403576, 35.494385, 52.268562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220871, -0.112088, 0.968841,
		-0.706101, -0.703627, 0.079568,
		0.672783, -0.701673, -0.234556,
		33.605412, 35.283882, 52.198196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045525, 35.142250, 52.831764>,  <33.134464, 35.775055, 52.362385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045525, 35.142250, 52.831764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.426010, 35.093830, 52.718250>,  <33.654301, 35.064777, 52.650143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.426010, 35.093830, 52.718250>,  <33.045525, 35.142250, 52.831764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426010, 35.093830, 52.718250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251233, -0.229970, 0.940211,
		-0.179072, -0.965640, -0.188340,
		0.951218, -0.121048, -0.283782,
		33.711376, 35.057514, 52.633114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288578, 34.553654, 53.164032>,  <33.045525, 35.142250, 52.831764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288578, 34.553654, 53.164032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.616520, 34.769440, 53.087280>,  <33.813286, 34.898911, 53.041229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.616520, 34.769440, 53.087280>,  <33.288578, 34.553654, 53.164032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616520, 34.769440, 53.087280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327069, -0.166176, 0.930275,
		0.469969, -0.825444, -0.312683,
		0.819851, 0.539469, -0.191879,
		33.862476, 34.931282, 53.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.823235, 37.442616, 37.422813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201698, 37.440502, 37.552280>,  <33.428776, 37.439236, 37.629963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201698, 37.440502, 37.552280>,  <32.823235, 37.442616, 37.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201698, 37.440502, 37.552280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318890, -0.187165, 0.929128,
		0.055673, -0.982314, -0.178771,
		0.946155, -0.005281, 0.323670,
		33.485546, 37.438919, 37.649380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923504, 36.886406, 37.793068>,  <32.823235, 37.442616, 37.422813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923504, 36.886406, 37.793068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238125, 37.101093, 37.915226>,  <33.426899, 37.229904, 37.988522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238125, 37.101093, 37.915226>,  <32.923504, 36.886406, 37.793068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238125, 37.101093, 37.915226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267968, -0.148907, 0.951851,
		0.556350, -0.830519, 0.026700,
		0.786554, 0.536717, 0.305397,
		33.474091, 37.262108, 38.006844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252155, 36.514790, 38.395821>,  <32.923504, 36.886406, 37.793068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252155, 36.514790, 38.395821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396538, 36.885334, 38.438835>,  <33.483166, 37.107662, 38.464645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396538, 36.885334, 38.438835>,  <33.252155, 36.514790, 38.395821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396538, 36.885334, 38.438835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138793, -0.060664, 0.988462,
		0.922198, -0.371713, 0.106676,
		0.360953, 0.926363, 0.107536,
		33.504822, 37.163242, 38.471096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807869, 36.497551, 38.867393>,  <33.252155, 36.514790, 38.395821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807869, 36.497551, 38.867393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688683, 36.879101, 38.881973>,  <33.617168, 37.108032, 38.890720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688683, 36.879101, 38.881973>,  <33.807869, 36.497551, 38.867393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688683, 36.879101, 38.881973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305859, -0.131571, 0.942942,
		0.904248, 0.269822, 0.330957,
		-0.297971, 0.953879, 0.036445,
		33.599293, 37.165264, 38.892906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114223, 36.742214, 39.528934>,  <33.807869, 36.497551, 38.867393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114223, 36.742214, 39.528934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830254, 37.008072, 39.435768>,  <33.659870, 37.167587, 39.379868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830254, 37.008072, 39.435768>,  <34.114223, 36.742214, 39.528934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830254, 37.008072, 39.435768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277944, 0.039471, 0.959786,
		0.647113, 0.746114, 0.156713,
		-0.709924, 0.664648, -0.232920,
		33.617275, 37.207466, 39.365891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181778, 37.310585, 40.073608>,  <34.114223, 36.742214, 39.528934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181778, 37.310585, 40.073608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813171, 37.334454, 39.920116>,  <33.592007, 37.348774, 39.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813171, 37.334454, 39.920116>,  <34.181778, 37.310585, 40.073608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813171, 37.334454, 39.920116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347880, 0.312300, 0.883996,
		0.172584, 0.948108, -0.267032,
		-0.921517, 0.059668, -0.383726,
		33.536716, 37.352356, 39.805000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897385, 37.927265, 40.384037>,  <34.181778, 37.310585, 40.073608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897385, 37.927265, 40.384037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586277, 37.706814, 40.263149>,  <33.399612, 37.574543, 40.190617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586277, 37.706814, 40.263149>,  <33.897385, 37.927265, 40.384037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586277, 37.706814, 40.263149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499589, 0.250251, 0.829328,
		-0.381436, 0.796009, -0.469975,
		-0.777765, -0.551130, -0.302222,
		33.352947, 37.541473, 40.172482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254196, 38.287838, 40.571957>,  <33.897385, 37.927265, 40.384037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254196, 38.287838, 40.571957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122295, 37.912846, 40.527424>,  <33.043156, 37.687851, 40.500702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122295, 37.912846, 40.527424>,  <33.254196, 38.287838, 40.571957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122295, 37.912846, 40.527424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585796, 0.110702, 0.802863,
		-0.740343, 0.329963, -0.585676,
		-0.329750, -0.937480, -0.111334,
		33.023369, 37.631603, 40.494022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463356, 38.323715, 40.620323>,  <33.254196, 38.287838, 40.571957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463356, 38.323715, 40.620323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574505, 37.947098, 40.696510>,  <32.641193, 37.721127, 40.742222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574505, 37.947098, 40.696510>,  <32.463356, 38.323715, 40.620323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574505, 37.947098, 40.696510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558406, 0.003019, 0.829562,
		-0.781646, -0.336870, -0.524926,
		0.277870, -0.941546, 0.190470,
		32.657867, 37.664635, 40.753651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827330, 37.848335, 40.738140>,  <32.463356, 38.323715, 40.620323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827330, 37.848335, 40.738140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146233, 37.663471, 40.893467>,  <32.337574, 37.552551, 40.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146233, 37.663471, 40.893467>,  <31.827330, 37.848335, 40.738140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146233, 37.663471, 40.893467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480169, -0.095705, 0.871940,
		-0.365816, -0.881615, -0.298218,
		0.797256, -0.462164, 0.388314,
		32.385410, 37.524822, 41.009960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509571, 37.280766, 41.119217>,  <31.827330, 37.848335, 40.738140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509571, 37.280766, 41.119217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879871, 37.310749, 41.267467>,  <32.102051, 37.328739, 41.356419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879871, 37.310749, 41.267467>,  <31.509571, 37.280766, 41.119217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879871, 37.310749, 41.267467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318165, -0.375254, 0.870606,
		0.204340, -0.923886, -0.323542,
		0.925751, 0.074959, 0.370628,
		32.157597, 37.333237, 41.378654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753817, 36.652283, 41.530281>,  <31.509571, 37.280766, 41.119217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753817, 36.652283, 41.530281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031052, 36.897060, 41.682674>,  <32.197392, 37.043926, 41.774113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031052, 36.897060, 41.682674>,  <31.753817, 36.652283, 41.530281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031052, 36.897060, 41.682674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241257, -0.301126, 0.922561,
		0.679281, -0.731333, -0.061071,
		0.693089, 0.611945, 0.380988,
		32.238979, 37.080643, 41.796970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031677, 36.057991, 41.255882>,  <31.753817, 36.652283, 41.530281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031677, 36.057991, 41.255882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735773, 35.791183, 41.220451>,  <31.558231, 35.631100, 41.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735773, 35.791183, 41.220451>,  <32.031677, 36.057991, 41.255882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735773, 35.791183, 41.220451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131810, 0.272748, -0.953013,
		0.659834, -0.693325, -0.289687,
		-0.739760, -0.667014, -0.088581,
		31.513845, 35.591080, 41.193878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227978, 35.611969, 40.715210>,  <32.031677, 36.057991, 41.255882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227978, 35.611969, 40.715210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830212, 35.571938, 40.728611>,  <31.591553, 35.547920, 40.736652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830212, 35.571938, 40.728611>,  <32.227978, 35.611969, 40.715210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830212, 35.571938, 40.728611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041618, 0.080142, -0.995914,
		0.096995, -0.991746, -0.083860,
		-0.994414, -0.100089, 0.033501,
		31.531887, 35.541916, 40.738663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150230, 35.600391, 40.035969>,  <32.227978, 35.611969, 40.715210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150230, 35.600391, 40.035969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778456, 35.582893, 40.182522>,  <31.555391, 35.572395, 40.270454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778456, 35.582893, 40.182522>,  <32.150230, 35.600391, 40.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778456, 35.582893, 40.182522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347253, -0.232010, -0.908618,
		0.124750, -0.971729, 0.200449,
		-0.929437, -0.043744, 0.366379,
		31.499624, 35.569771, 40.292435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765059, 35.013538, 39.811348>,  <32.150230, 35.600391, 40.035969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765059, 35.013538, 39.811348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474106, 35.268978, 39.911835>,  <31.299534, 35.422241, 39.972126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474106, 35.268978, 39.911835>,  <31.765059, 35.013538, 39.811348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474106, 35.268978, 39.911835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490164, -0.227285, -0.841476,
		-0.480268, -0.735210, 0.478341,
		-0.727380, 0.638599, 0.251215,
		31.255892, 35.460556, 39.987198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180870, 34.616806, 39.870415>,  <31.765059, 35.013538, 39.811348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180870, 34.616806, 39.870415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070295, 34.987930, 39.770218>,  <31.003950, 35.210606, 39.710102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070295, 34.987930, 39.770218>,  <31.180870, 34.616806, 39.870415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070295, 34.987930, 39.770218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307008, -0.332246, -0.891829,
		-0.910675, -0.169630, 0.376691,
		-0.276435, 0.927813, -0.250491,
		30.987364, 35.266273, 39.695072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513180, 34.535381, 39.698311>,  <31.180870, 34.616806, 39.870415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513180, 34.535381, 39.698311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608545, 34.893864, 39.548660>,  <30.665766, 35.108955, 39.458870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608545, 34.893864, 39.548660>,  <30.513180, 34.535381, 39.698311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608545, 34.893864, 39.548660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268898, -0.309255, -0.912170,
		-0.933194, 0.318078, 0.167257,
		0.238416, 0.896207, -0.374126,
		30.680071, 35.162727, 39.436424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047953, 34.629822, 39.208744>,  <30.513180, 34.535381, 39.698311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047953, 34.629822, 39.208744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311356, 34.908535, 39.095001>,  <30.469397, 35.075764, 39.026756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311356, 34.908535, 39.095001>,  <30.047953, 34.629822, 39.208744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311356, 34.908535, 39.095001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304221, -0.099131, -0.947430,
		-0.688344, 0.710395, 0.146698,
		0.658507, 0.696787, -0.284353,
		30.508907, 35.117573, 39.009697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671869, 35.051933, 38.713104>,  <30.047953, 34.629822, 39.208744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671869, 35.051933, 38.713104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067917, 35.069832, 38.659946>,  <30.305546, 35.080570, 38.628052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067917, 35.069832, 38.659946>,  <29.671869, 35.051933, 38.713104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067917, 35.069832, 38.659946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121455, -0.200003, -0.972238,
		-0.070087, 0.978773, -0.192592,
		0.990119, 0.044750, -0.132895,
		30.364952, 35.083256, 38.620079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837551, 35.566948, 38.128628>,  <29.671869, 35.051933, 38.713104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837551, 35.566948, 38.128628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136631, 35.305840, 38.177341>,  <30.316078, 35.149174, 38.206570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136631, 35.305840, 38.177341>,  <29.837551, 35.566948, 38.128628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136631, 35.305840, 38.177341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033543, -0.220297, -0.974856,
		0.663189, 0.724815, -0.186612,
		0.747700, -0.652773, 0.121786,
		30.360941, 35.110008, 38.213879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434101, 35.814468, 37.537792>,  <29.837551, 35.566948, 38.128628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434101, 35.814468, 37.537792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484104, 35.432137, 37.644192>,  <30.514107, 35.202736, 37.708031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484104, 35.432137, 37.644192>,  <30.434101, 35.814468, 37.537792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484104, 35.432137, 37.644192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086747, -0.256543, -0.962632,
		0.988356, 0.143413, 0.050846,
		0.125009, -0.955834, 0.265996,
		30.521606, 35.145386, 37.723991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518337, 35.520592, 36.890034>,  <30.434101, 35.814468, 37.537792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518337, 35.520592, 36.890034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547117, 35.199959, 37.127449>,  <30.564386, 35.007580, 37.269897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547117, 35.199959, 37.127449>,  <30.518337, 35.520592, 36.890034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547117, 35.199959, 37.127449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117760, -0.597741, -0.792993,
		0.990432, -0.012838, -0.137403,
		0.071952, -0.801586, 0.593534,
		30.568703, 34.959484, 37.305508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033463, 35.074429, 36.563492>,  <30.518337, 35.520592, 36.890034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033463, 35.074429, 36.563492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777071, 34.883530, 36.803955>,  <30.623236, 34.768990, 36.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777071, 34.883530, 36.803955>,  <31.033463, 35.074429, 36.563492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777071, 34.883530, 36.803955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339120, -0.526537, -0.779587,
		0.688583, -0.703561, 0.175656,
		-0.640976, -0.477243, 0.601156,
		30.584778, 34.740356, 36.984303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137409, 34.306496, 36.447472>,  <31.033463, 35.074429, 36.563492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137409, 34.306496, 36.447472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769062, 34.343689, 36.598923>,  <30.548054, 34.366005, 36.689793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769062, 34.343689, 36.598923>,  <31.137409, 34.306496, 36.447472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769062, 34.343689, 36.598923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386503, -0.345189, -0.855255,
		0.051177, -0.933916, 0.353810,
		-0.920867, 0.092979, 0.378627,
		30.492802, 34.371582, 36.712509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877098, 33.580776, 36.428043>,  <31.137409, 34.306496, 36.447472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877098, 33.580776, 36.428043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571392, 33.837727, 36.450836>,  <30.387968, 33.991898, 36.464512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571392, 33.837727, 36.450836>,  <30.877098, 33.580776, 36.428043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571392, 33.837727, 36.450836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468305, -0.492067, -0.733866,
		-0.443380, -0.587555, 0.676900,
		-0.764267, 0.642378, 0.056982,
		30.342112, 34.030441, 36.467930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365311, 33.677464, 37.022018>,  <30.877098, 33.580776, 36.428043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365311, 33.677464, 37.022018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673527, 33.442177, 36.923820>,  <31.858456, 33.301003, 36.864902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673527, 33.442177, 36.923820>,  <31.365311, 33.677464, 37.022018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673527, 33.442177, 36.923820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087997, -0.283296, 0.954987,
		-0.631290, -0.757457, -0.166529,
		0.770538, -0.588220, -0.245496,
		31.904688, 33.265709, 36.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219584, 32.966728, 37.362442>,  <31.365311, 33.677464, 37.022018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219584, 32.966728, 37.362442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612503, 32.974533, 37.287926>,  <31.848255, 32.979218, 37.243217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612503, 32.974533, 37.287926>,  <31.219584, 32.966728, 37.362442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612503, 32.974533, 37.287926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174773, -0.453245, 0.874084,
		-0.067377, -0.891172, -0.448634,
		0.982301, 0.019516, -0.186291,
		31.907194, 32.980389, 37.232037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527111, 32.268433, 37.365150>,  <31.219584, 32.966728, 37.362442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527111, 32.268433, 37.365150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777733, 32.554825, 37.488312>,  <31.928106, 32.726658, 37.562210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777733, 32.554825, 37.488312>,  <31.527111, 32.268433, 37.365150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777733, 32.554825, 37.488312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189182, -0.522965, 0.831094,
		0.756070, -0.462474, -0.463115,
		0.626552, 0.715979, 0.307906,
		31.965698, 32.769619, 37.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919863, 31.890795, 37.810822>,  <31.527111, 32.268433, 37.365150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919863, 31.890795, 37.810822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035595, 32.260338, 37.911041>,  <32.105034, 32.482063, 37.971172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035595, 32.260338, 37.911041>,  <31.919863, 31.890795, 37.810822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035595, 32.260338, 37.911041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420724, -0.357838, 0.833632,
		0.859813, -0.135786, -0.492224,
		0.289332, 0.923858, 0.250546,
		32.122395, 32.537495, 37.986206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576077, 31.903410, 37.989502>,  <31.919863, 31.890795, 37.810822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576077, 31.903410, 37.989502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451698, 32.226112, 38.190483>,  <32.377071, 32.419735, 38.311073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451698, 32.226112, 38.190483>,  <32.576077, 31.903410, 37.989502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451698, 32.226112, 38.190483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553602, -0.275979, 0.785723,
		0.772552, 0.522479, -0.360805,
		-0.310949, 0.806754, 0.502453,
		32.358414, 32.468140, 38.341221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128128, 32.252964, 38.194534>,  <32.576077, 31.903410, 37.989502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128128, 32.252964, 38.194534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837132, 32.397152, 38.428051>,  <32.662533, 32.483665, 38.568161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837132, 32.397152, 38.428051>,  <33.128128, 32.252964, 38.194534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837132, 32.397152, 38.428051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536605, -0.231307, 0.811512,
		0.427565, 0.903634, -0.025159,
		-0.727491, 0.360474, 0.583793,
		32.618885, 32.505295, 38.603188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489273, 32.640930, 38.765472>,  <33.128128, 32.252964, 38.194534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489273, 32.640930, 38.765472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130383, 32.538982, 38.909710>,  <32.915051, 32.477814, 38.996254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130383, 32.538982, 38.909710>,  <33.489273, 32.640930, 38.765472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130383, 32.538982, 38.909710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435017, -0.369927, 0.820923,
		-0.075837, 0.893417, 0.442781,
		-0.897223, -0.254873, 0.360597,
		32.861214, 32.462521, 39.017887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508186, 33.023327, 39.472923>,  <33.489273, 32.640930, 38.765472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508186, 33.023327, 39.472923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216450, 32.749714, 39.478062>,  <33.041409, 32.585548, 39.481144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216450, 32.749714, 39.478062>,  <33.508186, 33.023327, 39.472923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216450, 32.749714, 39.478062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288723, -0.290722, 0.912206,
		-0.620241, 0.669018, 0.409531,
		-0.729342, -0.684029, 0.012843,
		32.997646, 32.544506, 39.481915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104858, 33.105778, 40.063576>,  <33.508186, 33.023327, 39.472923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104858, 33.105778, 40.063576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069099, 32.725807, 39.943810>,  <33.047646, 32.497826, 39.871948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069099, 32.725807, 39.943810>,  <33.104858, 33.105778, 40.063576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069099, 32.725807, 39.943810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172897, -0.310855, 0.934600,
		-0.980875, 0.031781, 0.192028,
		-0.089395, -0.949926, -0.299415,
		33.042282, 32.440830, 39.853985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615273, 32.875267, 40.468834>,  <33.104858, 33.105778, 40.063576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615273, 32.875267, 40.468834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809574, 32.549664, 40.341442>,  <32.926155, 32.354301, 40.265007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809574, 32.549664, 40.341442>,  <32.615273, 32.875267, 40.468834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809574, 32.549664, 40.341442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121209, -0.298108, 0.946805,
		-0.865649, -0.498520, -0.046142,
		0.485757, -0.814009, -0.318482,
		32.955299, 32.305462, 40.245899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384094, 32.301903, 40.852245>,  <32.615273, 32.875267, 40.468834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384094, 32.301903, 40.852245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728443, 32.154888, 40.711491>,  <32.935051, 32.066681, 40.627037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728443, 32.154888, 40.711491>,  <32.384094, 32.301903, 40.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728443, 32.154888, 40.711491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284595, -0.225477, 0.931754,
		-0.421792, -0.902264, -0.089508,
		0.860870, -0.367533, -0.351884,
		32.986706, 32.044628, 40.605927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496540, 31.736589, 41.200535>,  <32.384094, 32.301903, 40.852245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496540, 31.736589, 41.200535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861393, 31.705421, 41.039570>,  <33.080307, 31.686720, 40.942989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861393, 31.705421, 41.039570>,  <32.496540, 31.736589, 41.200535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861393, 31.705421, 41.039570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328135, -0.449521, 0.830818,
		-0.245631, -0.889865, -0.384456,
		0.912136, -0.077921, -0.402412,
		33.135033, 31.682045, 40.918846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750435, 31.048735, 41.200317>,  <32.496540, 31.736589, 41.200535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750435, 31.048735, 41.200317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071030, 31.287428, 41.184700>,  <33.263386, 31.430643, 41.175331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071030, 31.287428, 41.184700>,  <32.750435, 31.048735, 41.200317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071030, 31.287428, 41.184700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275445, -0.310433, 0.909814,
		0.530796, -0.739960, -0.413176,
		0.801489, 0.596733, -0.039042,
		33.311478, 31.466448, 41.172989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288815, 30.571442, 41.486603>,  <32.750435, 31.048735, 41.200317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288815, 30.571442, 41.486603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420181, 30.948587, 41.509052>,  <33.499001, 31.174875, 41.522522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420181, 30.948587, 41.509052>,  <33.288815, 30.571442, 41.486603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420181, 30.948587, 41.509052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538103, -0.235607, 0.809280,
		0.776265, -0.235580, -0.584735,
		0.328418, 0.942863, 0.056127,
		33.518707, 31.231447, 41.525890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858921, 30.543339, 41.774982>,  <33.288815, 30.571442, 41.486603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858921, 30.543339, 41.774982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800114, 30.930265, 41.857624>,  <33.764828, 31.162422, 41.907207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800114, 30.930265, 41.857624>,  <33.858921, 30.543339, 41.774982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800114, 30.930265, 41.857624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421218, -0.127758, 0.897916,
		0.894964, 0.219034, -0.388668,
		-0.147019, 0.967317, 0.206600,
		33.756008, 31.220461, 41.919605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530216, 30.741611, 42.005402>,  <33.858921, 30.543339, 41.774982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530216, 30.741611, 42.005402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276009, 31.029232, 42.117889>,  <34.123486, 31.201803, 42.185383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276009, 31.029232, 42.117889>,  <34.530216, 30.741611, 42.005402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276009, 31.029232, 42.117889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447884, 0.046650, 0.892874,
		0.628902, 0.693391, -0.351698,
		-0.635517, 0.719050, 0.281221,
		34.085354, 31.244947, 42.202255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966648, 31.234831, 42.310555>,  <34.530216, 30.741611, 42.005402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966648, 31.234831, 42.310555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593925, 31.287222, 42.445953>,  <34.370293, 31.318657, 42.527191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593925, 31.287222, 42.445953>,  <34.966648, 31.234831, 42.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593925, 31.287222, 42.445953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350289, 0.080334, 0.933190,
		0.095035, 0.988125, -0.120736,
		-0.931808, 0.130979, 0.338495,
		34.314384, 31.326515, 42.547501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060417, 31.789665, 42.786320>,  <34.966648, 31.234831, 42.310555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060417, 31.789665, 42.786320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724102, 31.602280, 42.894844>,  <34.522312, 31.489847, 42.959957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724102, 31.602280, 42.894844>,  <35.060417, 31.789665, 42.786320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724102, 31.602280, 42.894844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261213, 0.087890, 0.961271,
		-0.474168, 0.879099, 0.048472,
		-0.840793, -0.468466, 0.271307,
		34.471863, 31.461740, 42.976234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624081, 32.188389, 43.238617>,  <35.060417, 31.789665, 42.786320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624081, 32.188389, 43.238617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494099, 31.824640, 43.342491>,  <34.416107, 31.606390, 43.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494099, 31.824640, 43.342491>,  <34.624081, 32.188389, 43.238617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494099, 31.824640, 43.342491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359858, 0.135041, 0.923183,
		-0.874588, 0.393447, 0.283363,
		-0.324958, -0.909375, 0.259690,
		34.396610, 31.551828, 43.420399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541870, 32.155701, 44.036449>,  <34.624081, 32.188389, 43.238617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541870, 32.155701, 44.036449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500565, 31.770287, 43.937702>,  <34.475780, 31.539040, 43.878456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500565, 31.770287, 43.937702>,  <34.541870, 32.155701, 44.036449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500565, 31.770287, 43.937702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239931, -0.264993, 0.933923,
		-0.965282, 0.037213, 0.258547,
		-0.103268, -0.963532, -0.246864,
		34.469585, 31.481228, 43.863644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433445, 31.808716, 44.677277>,  <34.541870, 32.155701, 44.036449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433445, 31.808716, 44.677277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525051, 31.480513, 44.467773>,  <34.580013, 31.283590, 44.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525051, 31.480513, 44.467773>,  <34.433445, 31.808716, 44.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525051, 31.480513, 44.467773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529762, -0.346339, 0.774210,
		-0.816643, -0.454770, 0.355358,
		0.229013, -0.820508, -0.523755,
		34.593754, 31.234360, 44.310646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196007, 31.201982, 45.015781>,  <34.433445, 31.808716, 44.677277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196007, 31.201982, 45.015781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504101, 31.082792, 44.790234>,  <34.688957, 31.011278, 44.654907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504101, 31.082792, 44.790234>,  <34.196007, 31.201982, 45.015781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504101, 31.082792, 44.790234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374991, -0.503556, 0.778340,
		-0.515866, -0.810951, -0.276118,
		0.770236, -0.297977, -0.563866,
		34.735172, 30.993401, 44.621075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370090, 30.541454, 45.338467>,  <34.196007, 31.201982, 45.015781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370090, 30.541454, 45.338467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667717, 30.636288, 45.088619>,  <34.846294, 30.693188, 44.938709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667717, 30.636288, 45.088619>,  <34.370090, 30.541454, 45.338467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667717, 30.636288, 45.088619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665429, -0.346522, 0.661156,
		-0.059696, -0.907587, -0.415598,
		0.744070, 0.237083, -0.624620,
		34.890938, 30.707413, 44.901234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727978, 29.914429, 45.276989>,  <34.370090, 30.541454, 45.338467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727978, 29.914429, 45.276989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960175, 30.225281, 45.179749>,  <35.099491, 30.411793, 45.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960175, 30.225281, 45.179749>,  <34.727978, 29.914429, 45.276989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960175, 30.225281, 45.179749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602565, -0.209169, 0.770172,
		0.547674, -0.593563, -0.589692,
		0.580490, 0.777130, -0.243104,
		35.134323, 30.458420, 45.106819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488819, 29.728441, 45.308479>,  <34.727978, 29.914429, 45.276989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488819, 29.728441, 45.308479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522072, 30.126848, 45.295616>,  <35.542023, 30.365892, 45.287899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522072, 30.126848, 45.295616>,  <35.488819, 29.728441, 45.308479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522072, 30.126848, 45.295616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689807, -0.034226, 0.723184,
		0.719205, -0.082305, -0.689906,
		0.083135, 0.996019, -0.032159,
		35.547012, 30.425653, 45.285969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223240, 29.869600, 45.396835>,  <35.488819, 29.728441, 45.308479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223240, 29.869600, 45.396835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039520, 30.200508, 45.526245>,  <35.929287, 30.399054, 45.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039520, 30.200508, 45.526245>,  <36.223240, 29.869600, 45.396835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039520, 30.200508, 45.526245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647842, 0.062788, 0.759183,
		0.607735, 0.558286, -0.564778,
		-0.459303, 0.827269, 0.323523,
		35.901730, 30.448689, 45.623302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696384, 30.409958, 45.540092>,  <36.223240, 29.869600, 45.396835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696384, 30.409958, 45.540092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378056, 30.481798, 45.771408>,  <36.187057, 30.524902, 45.910198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378056, 30.481798, 45.771408>,  <36.696384, 30.409958, 45.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378056, 30.481798, 45.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595427, 0.058333, 0.801289,
		0.110178, 0.982009, -0.153361,
		-0.795819, 0.179599, 0.578287,
		36.139309, 30.535677, 45.944893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899300, 30.875179, 46.060074>,  <36.696384, 30.409958, 45.540092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899300, 30.875179, 46.060074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577789, 30.695351, 46.215935>,  <36.384884, 30.587454, 46.309452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577789, 30.695351, 46.215935>,  <36.899300, 30.875179, 46.060074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577789, 30.695351, 46.215935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437817, -0.003535, 0.899057,
		-0.402815, 0.893236, 0.199673,
		-0.803776, -0.449574, 0.389650,
		36.336655, 30.560478, 46.332829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716846, 31.600101, 46.087345>,  <36.899300, 30.875179, 46.060074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716846, 31.600101, 46.087345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078300, 31.769640, 46.062683>,  <37.295174, 31.871363, 46.047886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078300, 31.769640, 46.062683>,  <36.716846, 31.600101, 46.087345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078300, 31.769640, 46.062683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222755, 0.342109, -0.912875,
		-0.365824, 0.838639, 0.403555,
		0.903633, 0.423846, -0.061659,
		37.349392, 31.896793, 46.044186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690762, 32.358479, 45.869640>,  <36.716846, 31.600101, 46.087345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690762, 32.358479, 45.869640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048203, 32.212841, 45.764637>,  <37.262669, 32.125458, 45.701637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048203, 32.212841, 45.764637>,  <36.690762, 32.358479, 45.869640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048203, 32.212841, 45.764637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118485, 0.372749, -0.920337,
		0.432939, 0.853518, 0.289950,
		0.893603, -0.364095, -0.262506,
		37.316284, 32.103611, 45.685886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868595, 32.787457, 45.354767>,  <36.690762, 32.358479, 45.869640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868595, 32.787457, 45.354767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155090, 32.511433, 45.313145>,  <37.326988, 32.345818, 45.288170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155090, 32.511433, 45.313145>,  <36.868595, 32.787457, 45.354767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155090, 32.511433, 45.313145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024493, 0.173878, -0.984462,
		0.697429, 0.702558, 0.141439,
		0.716235, -0.690057, -0.104060,
		37.369961, 32.304417, 45.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510891, 33.143951, 44.944466>,  <36.868595, 32.787457, 45.354767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510891, 33.143951, 44.944466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513741, 32.747585, 44.890759>,  <37.515450, 32.509766, 44.858536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513741, 32.747585, 44.890759>,  <37.510891, 33.143951, 44.944466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513741, 32.747585, 44.890759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049116, 0.133762, -0.989796,
		0.998768, 0.013644, -0.047717,
		0.007122, -0.990919, -0.134268,
		37.515877, 32.450310, 44.850479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980827, 33.041222, 44.343250>,  <37.510891, 33.143951, 44.944466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980827, 33.041222, 44.343250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797276, 32.686623, 44.367107>,  <37.687145, 32.473866, 44.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797276, 32.686623, 44.367107>,  <37.980827, 33.041222, 44.343250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797276, 32.686623, 44.367107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088846, -0.021011, -0.995824,
		0.884046, -0.462262, -0.069120,
		-0.458879, -0.886495, 0.059645,
		37.659611, 32.420673, 44.385002>
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
